/-
Copyright (c) 2021 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
prelude
import Lean.Environment
import Lean.Parser.Term
import Lean.Data.FuzzyMatching
import Lean.Data.Lsp.LanguageFeatures
import Lean.Data.Lsp.Capabilities
import Lean.Data.Lsp.Utf16
import Lean.Meta.CompletionName
import Lean.Meta.Tactic.Apply
import Lean.Meta.Match.MatcherInfo
import Lean.Server.InfoUtils
import Lean.Parser.Extension
import Lean.Server.FileSource
import Lean.Server.CompletionItemData

private partial def Lean.Server.Completion.consumeImplicitPrefix (e : Expr) (k : Expr → MetaM α) : MetaM α := do
  match e with
  | Expr.forallE n d b c =>
    -- We do not consume instance implicit arguments because the user probably wants be aware of this dependency
    if c == .implicit then
      Meta.withLocalDecl n c d fun arg =>
        consumeImplicitPrefix (b.instantiate1 arg) k
    else
      k e
  | _ => k e

namespace Lean.Lsp

/--
Identifier that is sent from the server to the client as part of the `CompletionItem.data?` field.
Needed to resolve the `CompletionItem` when the client sends a `completionItem/resolve` request
for that item, again containing the `data?` field provided by the server.
-/
inductive CompletionIdentifier where
  | const (declName : Name)
  | fvar  (id       : FVarId)
  deriving FromJson, ToJson

/--
`CompletionItemData` that also contains a `CompletionIdentifier`.
See the documentation of`CompletionItemData` and `CompletionIdentifier`.
-/
structure CompletionItemDataWithId extends CompletionItemData where
  id?    : Option CompletionIdentifier
  deriving FromJson, ToJson

/--
Fills the `CompletionItem.detail?` field of `item` using the pretty-printed type identified by `id`.
-/
def CompletionItem.resolve
    (item : CompletionItem)
    (id   : CompletionIdentifier)
    : MetaM CompletionItem := do
  let env ← getEnv
  let lctx ← getLCtx
  let mut item := item

  if item.detail?.isNone then
    let type? := match id with
      | .const declName =>
        env.find? declName |>.map ConstantInfo.type
      | .fvar id =>
        lctx.find? id |>.map LocalDecl.type
    let detail? ← type?.mapM fun type =>
      Lean.Server.Completion.consumeImplicitPrefix type fun typeWithoutImplicits =>
        return toString (← Meta.ppExpr typeWithoutImplicits)
    item := { item with detail? := detail? }

  return item

end Lean.Lsp

namespace Lean.Server.Completion
open Lsp
open Elab
open Meta
open FuzzyMatching

abbrev EligibleHeaderDecls := HashMap Name ConstantInfo

/-- Cached header declarations for which `allowCompletion headerEnv decl` is true. -/
builtin_initialize eligibleHeaderDeclsRef : IO.Ref (Option EligibleHeaderDecls) ←
  IO.mkRef none

/--
Returns the declarations in the header for which `allowCompletion env decl` is true, caching them
if not already cached.
-/
def getEligibleHeaderDecls (env : Environment) : IO EligibleHeaderDecls := do
  eligibleHeaderDeclsRef.modifyGet fun
    | some eligibleHeaderDecls => (eligibleHeaderDecls, some eligibleHeaderDecls)
    | none =>
      let (_, eligibleHeaderDecls) :=
        StateT.run (m := Id) (s := {}) do
          -- `map₁` are the header decls
          env.constants.map₁.forM fun declName c => do
            modify fun eligibleHeaderDecls =>
              if allowCompletion env declName then
                eligibleHeaderDecls.insert declName c
              else
                eligibleHeaderDecls
      (eligibleHeaderDecls, some eligibleHeaderDecls)

/-- Iterate over all declarations that are allowed in completion results. -/
private def forEligibleDeclsM [Monad m] [MonadEnv m] [MonadLiftT (ST IO.RealWorld) m]
    [MonadLiftT IO m] (f : Name → ConstantInfo → m PUnit) : m PUnit := do
  let env ← getEnv
  (← getEligibleHeaderDecls env).forM f
  -- map₂ are exactly the local decls
  env.constants.map₂.forM fun name c => do
    if allowCompletion env name then
      f name c

/-- Checks whether this declaration can appear in completion results. -/
private def allowCompletion (eligibleHeaderDecls : EligibleHeaderDecls) (env : Environment)
    (declName : Name) : Bool :=
  eligibleHeaderDecls.contains declName ||
    env.constants.map₂.contains declName && Lean.Meta.allowCompletion env declName

/--
Sorts `items` descendingly according to their score and ascendingly according to their label
for equal scores.
-/
private def sortCompletionItems (items : Array (CompletionItem × Float)) : Array CompletionItem :=
  let items := items.qsort fun (i1, s1) (i2, s2) =>
    if s1 != s2 then
      s1 > s2
    else
      i1.label.map (·.toLower) < i2.label.map (·.toLower)
  items.map (·.1)

/-- Intermediate state while completions are being computed. -/
structure State where
  /-- All completion items and their fuzzy match scores so far. -/
  items  : Array (CompletionItem × Float) := #[]

/--
Monad used for completion computation that allows modifying a completion `State` and reading
`CompletionParams`.
-/
abbrev M := OptionT $ ReaderT CompletionParams $ StateRefT State MetaM

/-- Adds a new completion item to the state in `M`. -/
private def addItem
    (item  : CompletionItem)
    (score : Float)
    (id?   : Option CompletionIdentifier := none)
    : M Unit := do
  let params ← read
  let data := { params, id? : CompletionItemDataWithId }
  let item := { item with data? := toJson data }
  modify fun s => { s with items := s.items.push (item, score) }

/--
Adds a new completion item with the given `label`, `id`, `kind` and `score` to the state in `M`.
Computes the doc string from the environment if available.
-/
private def addUnresolvedCompletionItem
    (label         : Name)
    (id            : CompletionIdentifier)
    (kind          : CompletionItemKind)
    (score         : Float)
    : M Unit := do
  let doc? ← do
    match id with
    | .const declName =>
      let docString? ← findDocString? (← getEnv) declName
      pure <| docString?.map fun docString =>
        { value := docString, kind := MarkupKind.markdown : MarkupContent }
    | .fvar _ => pure none
  let item := { label := label.toString, kind? := kind, documentation? := doc? }
  addItem item score id

private def getCompletionKindForDecl (constInfo : ConstantInfo) : M CompletionItemKind := do
  let env ← getEnv
  if constInfo.isCtor then
    return CompletionItemKind.constructor
  else if constInfo.isInductive then
    if isClass env constInfo.name then
      return CompletionItemKind.class
    else if (← isEnumType constInfo.name) then
      return CompletionItemKind.enum
    else
      return CompletionItemKind.struct
  else if (← isProjectionFn constInfo.name) then
    return CompletionItemKind.field
  else if (← whnf constInfo.type).isForall then
    return CompletionItemKind.function
  else
    return CompletionItemKind.constant

private def addUnresolvedCompletionItemForDecl (label : Name) (declName : Name) (score : Float) : M Unit := do
  if let some c := (← getEnv).find? declName then
    addUnresolvedCompletionItem label (.const declName) (← getCompletionKindForDecl c) score

private def addKeywordCompletionItem (keyword : String) (score : Float) : M Unit := do
  let item := { label := keyword, detail? := "keyword", documentation? := none, kind? := CompletionItemKind.keyword }
  addItem item score

private def addNamespaceCompletionItem (ns : Name) (score : Float) : M Unit := do
  let item := { label := ns.toString, detail? := "namespace", documentation? := none, kind? := CompletionItemKind.module }
  addItem item score

private def runM (params : CompletionParams) (ctx : ContextInfo) (lctx : LocalContext) (x : M Unit)
    : IO (Option CompletionList) :=
  ctx.runMetaM lctx do
    match (← x.run |>.run params |>.run {}) with
    | (none, _) => return none
    | (some _, s) =>
      return some { items := sortCompletionItems s.items, isIncomplete := true }

private def matchAtomic (id : Name) (declName : Name) : Option Float :=
  match id, declName with
  | .str .anonymous s₁, .str .anonymous s₂ => fuzzyMatchScoreWithThreshold? s₁ s₂
  | _, _ => none

private def normPrivateName? (declName : Name) : MetaM (Option Name) := do
  match privateToUserName? declName with
  | none => return declName
  | some userName =>
    if mkPrivateName (← getEnv) userName == declName then
      return userName
    else
      return none

/--
  Return the auto-completion label if `id` can be auto completed using `declName` assuming namespace `ns` is open.
  This function only succeeds with atomic labels. BTW, it seems most clients only use the last part.

  Remark: `danglingDot == true` when the completion point is an identifier followed by `.`.
-/
private def matchDecl? (ns : Name) (id : Name) (danglingDot : Bool) (declName : Name) : MetaM (Option (Name × Float)) := do
  -- dbg_trace "{ns}, {id}, {declName}, {danglingDot}"
  let some declName ← normPrivateName? declName
    | return none
  if !ns.isPrefixOf declName then
    return none
  let declName := declName.replacePrefix ns Name.anonymous
  if danglingDot then
    -- If the input is `id.` and `declName` is of the form `id.atomic`, complete with `atomicName`
    if id.isPrefixOf declName then
      let declName := declName.replacePrefix id Name.anonymous
      if declName.isAtomic && !declName.isAnonymous then
        return some (declName, 1)
  else if let (.str p₁ s₁, .str p₂ s₂) := (id, declName) then
    if p₁ == p₂ then
      -- If the namespaces agree, fuzzy-match on the trailing part
      return fuzzyMatchScoreWithThreshold? s₁ s₂ |>.map (.mkSimple s₂, ·)
    else if p₁.isAnonymous then
      -- If `id` is namespace-less, also fuzzy-match declaration names in arbitrary namespaces
      -- (but don't match the namespace itself).
      -- Penalize score by component length of added namespace.
      return fuzzyMatchScoreWithThreshold? s₁ s₂ |>.map (declName, · / (p₂.getNumParts + 1).toFloat)
  return none

/--
  Truncate the given identifier and make sure it has length `≤ newLength`.
  This function assumes `id` does not contain `Name.num` constructors.
-/
private partial def truncate (id : Name) (newLen : Nat) : Name :=
  let rec go (id : Name) : Name × Nat :=
     match id with
     | Name.anonymous => (id, 0)
     | Name.num ..    => unreachable!
     | .str p s =>
       let (p', len) := go p
       if len + 1 >= newLen then
         (p', len)
       else
         let optDot := if p.isAnonymous then 0 else 1
         let len'   := len + optDot + s.length
         if len' ≤ newLen then
           (id, len')
         else
           (Name.mkStr p (s.extract 0 ⟨newLen - optDot - len⟩), newLen)
  (go id).1

inductive HoverInfo where
  | after
  | inside (delta : Nat)

def matchNamespace (ns : Name) (nsFragment : Name) (danglingDot : Bool) : Option Float :=
  if danglingDot then
    if nsFragment != ns && nsFragment.isPrefixOf ns then
      some 1
    else
      none
  else
    match ns, nsFragment with
    | .str p₁ s₁, .str p₂ s₂ =>
      if p₁ == p₂ then fuzzyMatchScoreWithThreshold? s₂ s₁ else none
    | _, _ => none

def completeNamespaces (ctx : ContextInfo) (id : Name) (danglingDot : Bool) : M Unit := do
  let env ← getEnv
  let add (ns : Name) (ns' : Name) (score : Float) : M Unit :=
    if danglingDot then
      addNamespaceCompletionItem (ns.replacePrefix (ns' ++ id) Name.anonymous) score
    else
      addNamespaceCompletionItem (ns.replacePrefix ns' Name.anonymous) score
  env.getNamespaceSet |>.forM fun ns => do
    unless ns.isInternal || env.contains ns do -- Ignore internal and namespaces that are also declaration names
      for openDecl in ctx.openDecls do
        match openDecl with
        | OpenDecl.simple ns' _      =>
          if let some score := matchNamespace ns (ns' ++ id) danglingDot then
            add ns ns' score
            return ()
        | _ => pure ()
      -- use current namespace
      let rec visitNamespaces (ns' : Name) : M Unit := do
        if let some score := matchNamespace ns (ns' ++ id) danglingDot then
          add ns ns' score
        else
          match ns' with
          | Name.str p .. => visitNamespaces p
          | _ => return ()
      visitNamespaces ctx.currNamespace

private def idCompletionCore
    (ctx         : ContextInfo)
    (id          : Name)
    (hoverInfo   : HoverInfo)
    (danglingDot : Bool)
    : M Unit := do
  let mut id := id.eraseMacroScopes
  let mut danglingDot := danglingDot
  if let HoverInfo.inside delta := hoverInfo then
    id := truncate id delta
    danglingDot := false
  -- dbg_trace ">> id {id} : {expectedType?}"
  if id.isAtomic then
    -- search for matches in the local context
    for localDecl in (← getLCtx) do
      if let some score := matchAtomic id localDecl.userName then
        addUnresolvedCompletionItem localDecl.userName (.fvar localDecl.fvarId) (kind := CompletionItemKind.variable) score
  -- search for matches in the environment
  let env ← getEnv
  forEligibleDeclsM fun declName c => do
    let bestMatch? ← (·.2) <$> StateT.run (s := none) do
      let matchUsingNamespace (ns : Name) : StateT (Option (Name × Float)) M Unit := do
        let some (label, score) ← matchDecl? ns id danglingDot declName
          | return
        modify fun
          | none =>
            some (label, score)
          | some (bestLabel, bestScore) =>
            -- for open namespaces `A` and `A.B` and a decl `A.B.c`, pick the decl `c` over `B.c`
            if label.isSuffixOf bestLabel then
              some (label, score)
            else
              some (bestLabel, bestScore)
      let rec visitNamespaces (ns : Name) : StateT (Option (Name × Float)) M Unit := do
        let Name.str p .. := ns
          | return ()
        matchUsingNamespace ns
        visitNamespaces p
      -- use current namespace
      visitNamespaces ctx.currNamespace
      -- use open decls
      for openDecl in ctx.openDecls do
        let OpenDecl.simple ns exs := openDecl
          | pure ()
        if exs.contains declName then
          continue
        matchUsingNamespace ns
      matchUsingNamespace Name.anonymous
    if let some (bestLabel, bestScore) := bestMatch? then
      addUnresolvedCompletionItem bestLabel (.const declName) (← getCompletionKindForDecl c) bestScore
  -- Recall that aliases may not be atomic and include the namespace where they were created.
  let matchAlias (ns : Name) (alias : Name) : Option Float :=
    if ns.isPrefixOf alias then
      matchAtomic id (alias.replacePrefix ns Name.anonymous)
    else
      none
  let eligibleHeaderDecls ← getEligibleHeaderDecls env
  -- Auxiliary function for `alias`
  let addAlias (alias : Name) (declNames : List Name) (score : Float) : M Unit := do
    declNames.forM fun declName => do
      if allowCompletion eligibleHeaderDecls env declName then
        addUnresolvedCompletionItemForDecl (.mkSimple alias.getString!) declName score
  -- search explicitly open `ids`
  for openDecl in ctx.openDecls do
    match openDecl with
    | OpenDecl.explicit openedId resolvedId =>
      if allowCompletion eligibleHeaderDecls env resolvedId then
        if let some score := matchAtomic id openedId then
          addUnresolvedCompletionItemForDecl (.mkSimple openedId.getString!) resolvedId score
    | OpenDecl.simple ns _      =>
      getAliasState env |>.forM fun alias declNames => do
        if let some score := matchAlias ns alias then
          addAlias alias declNames score
  -- search for aliases
  getAliasState env |>.forM fun alias declNames => do
    -- use current namespace
    let rec searchAlias (ns : Name) : M Unit := do
      if let some score := matchAlias ns alias then
        addAlias alias declNames score
      else
        match ns with
        | Name.str p ..  => searchAlias p
        | _ => return ()
    searchAlias ctx.currNamespace
  -- Search keywords
  if let .str .anonymous s := id then
    let keywords := Parser.getTokenTable env
    for keyword in keywords.findPrefix s do
      if let some score := fuzzyMatchScoreWithThreshold? s keyword then
        addKeywordCompletionItem keyword score
  -- Search namespaces
  completeNamespaces ctx id danglingDot

private def idCompletion
    (params        : CompletionParams)
    (ctx           : ContextInfo)
    (lctx          : LocalContext)
    (id            : Name)
    (hoverInfo     : HoverInfo)
    (danglingDot   : Bool)
    : IO (Option CompletionList) :=
  runM params ctx lctx do
    idCompletionCore ctx id hoverInfo danglingDot

private def unfoldeDefinitionGuarded? (e : Expr) : MetaM (Option Expr) :=
  try unfoldDefinition? e catch _ => pure none

/-- Return `true` if `e` is a `declName`-application, or can be unfolded (delta-reduced) to one. -/
private partial def isDefEqToAppOf (e : Expr) (declName : Name) : MetaM Bool := do
  let isConstOf := match e.getAppFn with
    | .const name .. => (privateToUserName? name).getD name == declName
    | _ => false
  if isConstOf then
    return true
  let some e ← unfoldeDefinitionGuarded? e | return false
  isDefEqToAppOf e declName

private def isDotCompletionMethod (typeName : Name) (info : ConstantInfo) : MetaM Bool :=
  forallTelescopeReducing info.type fun xs _ => do
    for x in xs do
      let localDecl ← x.fvarId!.getDecl
      let type := localDecl.type.consumeMData
      if (← isDefEqToAppOf type typeName) then
        return true
    return false

/--
Checks whether the expected type of `info.type` can be reduced to an application of `typeName`.
-/
private def isDotIdCompletionMethod (typeName : Name) (info : ConstantInfo) : MetaM Bool := do
  forallTelescopeReducing info.type fun _ type =>
    isDefEqToAppOf type.consumeMData typeName

/--
Converts `n` to `Name.anonymous` if `n` is a private prefix (see `Lean.isPrivatePrefix`).
-/
private def stripPrivatePrefix (n : Name) : Name :=
  match n with
  | .num _ 0 => if isPrivatePrefix n then .anonymous else n
  | _ => n

/--
Compares `n₁` and `n₂` modulo private prefixes. Similar to `Name.cmp` but ignores all
private prefixes in both names.
Necessary because the namespaces of private names do not contain private prefixes.
-/
partial def cmpModPrivate (n₁ n₂ : Name) : Ordering :=
  let n₁ := stripPrivatePrefix n₁
  let n₂ := stripPrivatePrefix n₂
  match n₁, n₂ with
  | .anonymous, .anonymous => Ordering.eq
  | .anonymous, _          => Ordering.lt
  | _,          .anonymous => Ordering.gt
  | .num p₁ i₁, .num p₂ i₂ =>
    match compare i₁ i₂ with
    | Ordering.eq => cmpModPrivate p₁ p₂
    | ord         => ord
  | .num _ _,   .str _ _   => Ordering.lt
  | .str _ _,   .num _ _   => Ordering.gt
  | .str p₁ n₁, .str p₂ n₂ =>
    match compare n₁ n₂ with
    | Ordering.eq => cmpModPrivate p₁ p₂
    | ord         => ord

/--
`NameSet` where names are compared according to `cmpModPrivate`.
Helps speed up dot completion because it allows us to look up names without first having to
strip the private prefix from deep in the name, letting us reject most names without
having to scan the full name first.
-/
def NameSetModPrivate := RBTree Name cmpModPrivate

/--
  Given a type, try to extract relevant type names for dot notation field completion.
  We extract the type name, parent struct names, and unfold the type.
  The process mimics the dot notation elaboration procedure at `App.lean` -/
private partial def getDotCompletionTypeNames (type : Expr) : MetaM NameSetModPrivate :=
  return (← visit type |>.run RBTree.empty).2
where
  visit (type : Expr) : StateRefT NameSetModPrivate MetaM Unit := do
    let .const typeName _ := type.getAppFn | return ()
    modify fun s => s.insert typeName
    if isStructure (← getEnv) typeName then
      for parentName in getAllParentStructures (← getEnv) typeName do
        modify fun s => s.insert parentName
    let some type ← unfoldeDefinitionGuarded? type | return ()
    visit type

private def dotCompletion
    (params        : CompletionParams)
    (ctx           : ContextInfo)
    (info          : TermInfo)
    (hoverInfo     : HoverInfo)
    : IO (Option CompletionList) :=
  runM params ctx info.lctx do
    let nameSet ← try
      getDotCompletionTypeNames (← instantiateMVars (← inferType info.expr))
    catch _ =>
      pure RBTree.empty

    if nameSet.isEmpty then
      let stx := info.stx
      if stx.isIdent then
        idCompletionCore ctx stx.getId hoverInfo (danglingDot := false)
      else if stx.getKind == ``Lean.Parser.Term.completion && stx[0].isIdent then
        -- TODO: truncation when there is a dangling dot
        idCompletionCore ctx stx[0].getId HoverInfo.after (danglingDot := true)
      else
        failure
      return

    forEligibleDeclsM fun declName c => do
      let unnormedTypeName := declName.getPrefix
      if ! nameSet.contains unnormedTypeName then
        return
      let some declName ← normPrivateName? declName
        | return
      let typeName := declName.getPrefix
      if ! (← isDotCompletionMethod typeName c) then
        return
      let completionKind ← getCompletionKindForDecl c
      addUnresolvedCompletionItem (.mkSimple c.name.getString!) (.const c.name) (kind := completionKind) 1

private def dotIdCompletion
    (params        : CompletionParams)
    (ctx           : ContextInfo)
    (lctx          : LocalContext)
    (id            : Name)
    (expectedType? : Option Expr)
    : IO (Option CompletionList) :=
  runM params ctx lctx do
    let some expectedType := expectedType?
      | return ()

    let resultTypeFn := (← instantiateMVars expectedType).cleanupAnnotations.getAppFn.cleanupAnnotations
    let .const .. := resultTypeFn
      | return ()

    let nameSet ← try
      getDotCompletionTypeNames resultTypeFn
    catch _ =>
      pure RBTree.empty

    forEligibleDeclsM fun declName c => do
      let unnormedTypeName := declName.getPrefix
      if ! nameSet.contains unnormedTypeName then
        return

      let some declName ← normPrivateName? declName
        | return

      let typeName := declName.getPrefix
      if ! (← isDotIdCompletionMethod typeName c) then
        return

      let completionKind ← getCompletionKindForDecl c
      if id.isAnonymous then
        -- We're completing a lone dot => offer all decls of the type
        addUnresolvedCompletionItem (.mkSimple c.name.getString!) (.const c.name) completionKind 1
        return

      let some (label, score) ← matchDecl? typeName id (danglingDot := false) declName | pure ()
      addUnresolvedCompletionItem label (.const c.name) completionKind score

private def fieldIdCompletion
    (params     : CompletionParams)
    (ctx        : ContextInfo)
    (lctx       : LocalContext)
    (id         : Name)
    (structName : Name)
    : IO (Option CompletionList) :=
  runM params ctx lctx do
    let idStr := id.toString
    let fieldNames := getStructureFieldsFlattened (← getEnv) structName (includeSubobjectFields := false)
    for fieldName in fieldNames do
      let .str _ fieldName := fieldName | continue
      let some score := fuzzyMatchScoreWithThreshold? idStr fieldName | continue
      let item := { label := fieldName, detail? := "field", documentation? := none, kind? := CompletionItemKind.field }
      addItem item score

private def optionCompletion
    (params : CompletionParams)
    (ctx    : ContextInfo)
    (stx    : Syntax)
    (caps   : ClientCapabilities)
    : IO (Option CompletionList) :=
  ctx.runMetaM {} do
    let (partialName, trailingDot) :=
      -- `stx` is from `"set_option" >> ident`
      match stx[1].getSubstring? (withLeading := false) (withTrailing := false) with
      | none => ("", false)  -- the `ident` is `missing`, list all options
      | some ss =>
        if !ss.str.atEnd ss.stopPos && ss.str.get ss.stopPos == '.' then
          -- include trailing dot, which is not parsed by `ident`
          (ss.toString ++ ".", true)
        else
          (ss.toString, false)
    -- HACK(WN): unfold the type so ForIn works
    let (decls : RBMap _ _ _) ← getOptionDecls
    let opts ← getOptions
    let mut items := #[]
    for ⟨name, decl⟩ in decls do
      if let some score := fuzzyMatchScoreWithThreshold? partialName name.toString then
        let textEdit :=
          if !caps.textDocument?.any (·.completion?.any (·.completionItem?.any (·.insertReplaceSupport?.any (·)))) then
            none -- InsertReplaceEdit not supported by client
          else if let some ⟨start, stop⟩ := stx[1].getRange? then
            let stop := if trailingDot then stop + ' ' else stop
            let range := ⟨ctx.fileMap.utf8PosToLspPos start, ctx.fileMap.utf8PosToLspPos stop⟩
            some { newText := name.toString, insert := range, replace := range : InsertReplaceEdit }
          else
            none
        items := items.push
          ({ label := name.toString
             detail? := s!"({opts.get name decl.defValue}), {decl.descr}"
             documentation? := none,
             kind? := CompletionItemKind.property -- TODO: investigate whether this is the best kind for options.
             textEdit? := textEdit
             data? := toJson { params, id? := none : CompletionItemDataWithId } }, score)
    return some { items := sortCompletionItems items, isIncomplete := true }

private def tacticCompletion (params : CompletionParams) (ctx : ContextInfo) : IO (Option CompletionList) :=
  -- Just return the list of tactics for now.
  ctx.runMetaM {} do
    let table := Parser.getCategory (Parser.parserExtension.getState (← getEnv)).categories `tactic |>.get!.tables.leadingTable
    let items : Array (CompletionItem × Float) := table.fold (init := #[]) fun items tk _ =>
      -- TODO pretty print tactic syntax
      items.push ({
        label          := tk.toString
        detail?        := none
        documentation? := none
        kind?          := CompletionItemKind.keyword
        data?          := toJson { params, id? := none : CompletionItemDataWithId }
      }, 1)
    return some { items := sortCompletionItems items, isIncomplete := true }

private def findCompletionInfoAt?
    (fileMap  : FileMap)
    (hoverPos : String.Pos)
    (infoTree : InfoTree)
    : Option (HoverInfo × ContextInfo × CompletionInfo) :=
  let ⟨hoverLine, _⟩ := fileMap.toPosition hoverPos
  match infoTree.foldInfo (init := none) (choose hoverLine) with
  | some (hoverInfo, ctx, Info.ofCompletionInfo info) =>
    some (hoverInfo, ctx, info)
  | _ =>
    -- TODO try to extract id from `fileMap` and some `ContextInfo` from `InfoTree`
    none
where
  choose
      (hoverLine : Nat)
      (ctx       : ContextInfo)
      (info      : Info)
      (best?     : Option (HoverInfo × ContextInfo × Info))
      : Option (HoverInfo × ContextInfo × Info) :=
    if !info.isCompletion then
      best?
    else if info.occursInside? hoverPos |>.isSome then
      let headPos          := info.pos?.get!
      let ⟨headPosLine, _⟩ := fileMap.toPosition headPos
      let ⟨tailPosLine, _⟩ := fileMap.toPosition info.tailPos?.get!
      if headPosLine != hoverLine || headPosLine != tailPosLine then
        best?
      else match best? with
        | none                         => (HoverInfo.inside (hoverPos - headPos).byteIdx, ctx, info)
        | some (HoverInfo.after, _, _) => (HoverInfo.inside (hoverPos - headPos).byteIdx, ctx, info)
        | some (_, _, best) =>
          if info.isSmaller best then
            (HoverInfo.inside (hoverPos - headPos).byteIdx, ctx, info)
          else
            best?
    else if let some (HoverInfo.inside _, _, _) := best? then
      -- We assume the "inside matches" have precedence over "before ones".
      best?
    else if info.occursDirectlyBefore hoverPos then
      let pos := info.tailPos?.get!
      let ⟨line, _⟩ := fileMap.toPosition pos
      if line != hoverLine then best?
      else match best? with
        | none => (HoverInfo.after, ctx, info)
        | some (_, _, best) =>
          if info.isSmaller best then
            (HoverInfo.after, ctx, info)
          else
            best?
    else
      best?

/--
Assigns the `CompletionItem.sortText?` for all items in `completions` according to their order
in `completions`. This is necessary because clients will use their own sort order if the server
does not set it.
-/
private def assignSortTexts (completions : CompletionList) : CompletionList := Id.run do
  if completions.items.isEmpty then
    return completions
  let items := completions.items.mapIdx fun i item =>
    { item with sortText? := toString i.val }
  let maxDigits := items[items.size - 1]!.sortText?.get!.length
  let items := items.map fun item =>
    let sortText := item.sortText?.get!
    let pad := List.replicate (maxDigits - sortText.length) '0' |>.asString
    { item with sortText? := pad ++ sortText }
  { completions with items := items }

partial def find?
    (params   : CompletionParams)
    (fileMap  : FileMap)
    (hoverPos : String.Pos)
    (infoTree : InfoTree)
    (caps     : ClientCapabilities)
    : IO (Option CompletionList) := do
  let some (hoverInfo, ctx, info) := findCompletionInfoAt? fileMap hoverPos infoTree
    | return none
  let completionList? ←
    match info with
    | .dot info .. =>
      dotCompletion params ctx info hoverInfo
    | .id _ id danglingDot lctx .. =>
      idCompletion params ctx lctx id hoverInfo danglingDot
    | .dotId _ id lctx expectedType? =>
      dotIdCompletion params ctx lctx id expectedType?
    | .fieldId _ id lctx structName =>
      fieldIdCompletion params ctx lctx id structName
    | .option stx =>
      optionCompletion params ctx stx caps
    | .tactic .. =>
      tacticCompletion params ctx
    | _ => return none
  return completionList?.map assignSortTexts

/--
Fills the `CompletionItem.detail?` field of `item` using the pretty-printed type identified by `id`
in the context found at `hoverPos` in `infoTree`.
-/
def resolveCompletionItem?
    (fileMap  : FileMap)
    (hoverPos : String.Pos)
    (infoTree : InfoTree)
    (item     : CompletionItem)
    (id       : CompletionIdentifier)
    : IO CompletionItem := do
  let some (_, ctx, info) := findCompletionInfoAt? fileMap hoverPos infoTree
    | return item
  ctx.runMetaM info.lctx (item.resolve id)

end Lean.Server.Completion
