# 4 元编程

## 4.1 句法解析参考
- Lean 内部解析器使用宏 `leading_parser parser` 或 `trailing_parser parser` 进行句法解析，前者调用函数 `leadingNode` 从而创建节点 `node name parser`，其中 `name : SyntaxNodeKind` 是节点类别

    ```lean linenums="1"
    @[builtin_term_parser]
    def «leading_parser» := leading_parser:leadPrec "leading_parser"
      >> optExprPrecedence
      >> optional withAnonymousAntiquot
      >> ppSpace
      >> termParser

    @[builtin_term_parser]
    def «trailing_parser» := leading_parser:leadPrec "trailing_parser"
      >> optExprPrecedence
      >> optExprPrecedence
      >> ppSpace
      >> termParser
    ```

    1. 当 `parser` 为 `String` 元素时，存在 `Coe` 隐式转换为 `Parser` 元素的实现
    2. 称 `Parser → Parser` 或返回 `Parser` 元素的函数为组合子，其在 `leading_parser` 宏中通常与其他 `Parser` 元素组合使用

### 4.1.1 解析器
1. `CategoryParser`：特定范畴的句法解析器

    ```lean linenums="1"
    def termParser                (prec : Nat := 0) : Parser := categoryParser `term    prec
    @[inline] def commandParser    (rbp : Nat := 0) : Parser := categoryParser `command  rbp
    @[inline] def attrParser       (rbp : Nat := 0) : Parser := categoryParser `attr     rbp
    @[inline] def tacticParser     (rbp : Nat := 0) : Parser := categoryParser `tactic   rbp
    @[inline] def syntaxParser     (rbp : Nat := 0) : Parser := categoryParser `stx      rbp
    @[inline] def levelParser      (rbp : Nat := 0) : Parser := categoryParser `level    rbp
    @[inline] def priorityParser   (rbp : Nat := 0) : Parser := categoryParser `prio     rbp
    @[inline] def precedenceParser (rbp : Nat := 0) : Parser := categoryParser `prec     rbp
    @[inline] def doElemParser     (rbp : Nat := 0) : Parser := categoryParser `doElem   rbp
    ```

2. 标识符解析器
    1. `ident` 与 `rawIdent`：解析（可能带有命名空间的）标识符
    2. `identWithPartialTrailingDot`：无法解析成功；用于自动补全
    3. `hygieneInfo`：不解析字符，捕捉环境信息并创建匿名标识符；用于实现 `have := ...` 句法
3. 字面值解析器
    1. `numLit`：解析二进制、八进制、十六进制或十进制的整数字面值
    2. `scientificLit`：解析科学计数法记号的浮点数字面值
    3. `strLit`：解析字符串字面值，可以包含 C 风格转义字符
    4. `charLit`：解析单个 Unicode 码点的字符字面值，可以包含 C 风格转义字符
    5. `nameLit`：解析以单个反引号开头的名称字面值
4. 位置解析器：规范代码缩进深度
    1. `colEq`：要求下一词元的位置严格等于保存位置
    2. `colGe`：要求下一词元的位置大于等于保存位置
    3. `colGt`：要求下一词元的位置严格大于保存位置
    4. `lineEq`：要求当前词元的行位置与保存位置相同
5. Pretty Printer：不读入字符，仅提出对 Pretty Printer 输出的建议

    ```lean linenums="1"
    @[inline] def ppHardSpace               : Parser := skip
    @[inline] def ppSpace                   : Parser := skip
    @[inline] def ppLine                    : Parser := skip
    @[inline] def ppRealFill                : Parser → Parser := id
    @[inline] def ppRealGroup               : Parser → Parser := id
    @[inline] def ppIndent                  : Parser → Parser := id
    @[inline] def ppDedent                  : Parser → Parser := id
    @[inline] def ppDedentIfGrouped         : Parser → Parser := id
    @[inline] def ppGroup (p : Parser)      : Parser := ppRealFill (ppIndent p)
    @[inline] def ppAllowUngrouped          : Parser := skip
    @[inline] def ppHardLineUnlessUngrouped : Parser := skip
    ```

### 4.1.2 组合子
1. 基础组合子
    1. `andthen(p, q)`：先后依次解析 `p` 与 `q`，是类型类 `AndThen` 的实现，因此也可使用其异构记号 `p >> q`
    2. `orelse(p, q)`：当且仅当解析 `p` 失败时解析 `q`，是类型类 `OrElse` 的实现，因此也可使用其异构记号 `p <|> q`
    3. `recover(p, h)`：用 `h` 恢复 `p` 中产生的错误，直到得出正确状态，与 `<|>` 的区别较微妙
    4. `atomic(p)`：解析 `p`，且失败时不会读入额外字符．这一特性适用于 `p <|> q`，因其在 `p` 解析失败时不会回溯
2. 重复与成组
    1. `optional(p)`：解析 `p`，失败时返回空值；也可写作 `(p)?`
    2. `many(p)`：重复解析 `p` 直到失败，当元数大于一时自动将 `p` 替换为 `group(p)`；也可写作 `(p)*`
    3. `many1(p)`：类似于 `many(p)`，必须至少成功一次
    4. `group(p)`：解析 `p`，将结果封装在一个类别为 `groupKind` 的节点
3. 位置与缩进
    1. `withPosition(p)`：解析 `p`，记录并保存当前位置
    2. `withoutPosition(p)`：解析 `p`，并暂时忽略已保存位置
    3. `withForbidden(tk, p)`：解析 `p`，不允许出现词元 `tk`
    4. `withoutForbidden(p)`：解析 `p`，忽略不允许出现的词元（如有）
    5. `manyIndent(p)`：相当于 `withPosition((colGe p)*)`
    6. `many1Indent(p)`：类似于 `manyIndent(p)`，相当于 `withPosition((colGe p)+)`
4. 分隔符相关
    1. `sepBy(p, s : String)`：重复解析由 `s` 分隔的 `p`
    2. `sepBy1(p, s : String)`：类似于 `sepBy(p, s)`，必须至少成功一次
    3. `sepByIndent(p, s : String)`：重复解析由 `s` 分隔的 `p`．当后续 `p` 换行且缩进不小于第一个 `p`，则分隔符 `s` 可选
    4. `sepBy1Indent(p, s : String)`：类似于 `sepByIndent(p, s)`，必须至少成功一次
    5. `sepByIndentSemicolon(p)`：相当于 `sepByIndent(p, "; ")`
    6. `sepBy1IndentSemicolon(p)`：类似于 `sepByIndentSemicolon(p)`，相当于 `sepBy1Indent(p, "; ")`
5. 反引用相关
    1. `mkAntiquot(n : String, k : SyntaxNodeKind)`：解析形如 `$e` 或 `$e:n` 的反引用
        1. `mkAntiquot` 调用 `leadingNode` 创建类别为 ``k ++ `antiquot`` 的节点，该节点表示一个类别或范畴为 `n` 的句法元素
        2. 可用 `$$` 转义 `` `() `` 中的反引用，例如 `` #check `(def var $$x:declVal) ``
    2. `withAntiquot(q, p)`：`q` 通常为 `mkAntiquot ...`，因此相当于 `mkAntiquot ... <|> p`
6. 其他组合子
    1. `lookahead(p)`：解析 `p` 但不构建节点，且成功时回溯到原位；相当于在不读入下一词元的条件下对下文进行断言
    2. `notFollowedBy(p, info : String)`：当且仅当解析 `p` 失败时继续，否则返回消息 `info`

## 4.2 系统级单子
### 4.2.1 环境相关
1. `CoreM`： 操作 Lean 环境的单子

    ```lean linenums="1"
    structure Context where
      fileName : String
      fileMap : FileMap
      options : Options := {}
      currRecDepth : Nat := 0
      maxRecDepth : Nat := 1000
      ref : Syntax := Syntax.missing
      currNamespace : Name := Name.anonymous
      openDecls : List OpenDecl := []
      initHeartbeats : Nat := 0
      maxHeartbeats : Nat := getMaxHeartbeats options
      currMacroScope : MacroScope := firstFrontendMacroScope
      diag : Bool := false
      cancelTk? : Option IO.CancelToken := none
      suppressElabErrors : Bool := false
    deriving Nonempty

    structure State where
      env : Environment
      nextMacroScope : MacroScope := firstFrontendMacroScope + 1
      ngen : NameGenerator := {}
      traceState : TraceState := {}
      cache : Cache := {}
      messages : MessageLog := {}
      infoState : Elab.InfoState := {}
    deriving Nonempty

    abbrev CoreM := ReaderT Context <| StateRefT State (EIO Exception)
    ```

2. `MetaM`：构建和操作元变量表达式

    ```lean linenums="1"
    structure Context where
      config : Config := {}
      lctx : LocalContext := {}
      localInstances : LocalInstances := #[]
      defEqCtx? : Option DefEqContext := none
      synthPendingDepth : Nat := 0
      canUnfold? : Option (Config → ConstantInfo → CoreM Bool) := none
      univApprox : Bool := false
      inTypeClassResolution : Bool := false

    structure State where
      mctx : MetavarContext := {}
      cache : Cache := {}
      zetaDeltaFVarIds : FVarIdSet := {}
      postponed : PersistentArray PostponedEntry := {}
      diag : Diagnostics := {}
    deriving Inhabited

    abbrev MetaM := ReaderT Context $ StateRefT State CoreM
    ```

3. `MacroM`：处理卫生名称生成所需的信息

    ```lean linenums="1"
    structure Context where
      methods : MethodsRef
      mainModule : Name
      currMacroScope : MacroScope
      currRecDepth : Nat := 0
      maxRecDepth : Nat := defaultMaxRecDepth
      ref : Syntax

    inductive Exception where
      | error : Syntax → String → Exception
      | unsupportedSyntax : Exception

    structure State where
      macroScope : MacroScope
      traceMsgs : List (Prod Name String) := List.nil
      deriving Inhabited

    abbrev MacroM := ReaderT Macro.Context (EStateM Macro.Exception Macro.State)
    abbrev Macro := Syntax → MacroM Syntax
    ```

### 4.2.2 繁饰相关
1. `CommandElabM`：指令繁饰

    ```lean linenums="1"
    structure Context where
      fileName : String
      fileMap : FileMap
      currRecDepth : Nat := 0
      cmdPos : String.Pos := 0
      macroStack : MacroStack := []
      currMacroScope : MacroScope := firstFrontendMacroScope
      ref : Syntax := Syntax.missing
      tacticCache? : Option (IO.Ref Tactic.Cache)
      snap? : Option (Language.SnapshotBundle Language.DynamicSnapshot)
      cancelTk? : Option IO.CancelToken
      suppressElabErrors : Bool := false

    structure State where
      env : Environment
      messages : MessageLog := {}
      scopes : List Scope := [{ header := "" }]
      nextMacroScope : Nat := firstFrontendMacroScope + 1
      maxRecDepth : Nat
      ngen : NameGenerator := {}
      infoState : InfoState := {}
      traceState : TraceState := {}
    deriving Nonempty

    abbrev CommandElabCoreM (ε) := ReaderT Context $ StateRefT State $ EIO ε
    abbrev CommandElabM := CommandElabCoreM Exception
    abbrev CommandElab := Syntax → CommandElabM Unit
    ```

2. `TermElabM`：项繁饰

    ```lean linenums="1"
    structure Context where
      declName? : Option Name := none
      auxDeclToFullName : FVarIdMap Name := {}
      macroStack : MacroStack := []
      mayPostpone : Bool := true
      errToSorry : Bool := true
      autoBoundImplicit : Bool := false
      autoBoundImplicits : PArray Expr := {}
      autoBoundImplicitForbidden : Name → Bool := fun _ => false
      sectionVars : NameMap Name := {}
      sectionFVars : NameMap Expr := {}
      implicitLambda : Bool := true
      heedElabAsElim : Bool := true
      isNoncomputableSection : Bool := false
      ignoreTCFailures : Bool := false
      inPattern : Bool := false
      tacticCache? : Option (IO.Ref Tactic.Cache) := none
      tacSnap? : Option (Language.SnapshotBundle Tactic.TacticParsedSnapshot) := none
      saveRecAppSyntax : Bool := true
      holesAsSyntheticOpaque : Bool := false

    structure State where
      levelNames : List Name := []
      syntheticMVars : MVarIdMap SyntheticMVarDecl := {}
      pendingMVars : List MVarId := {}
      mvarErrorInfos : List MVarErrorInfo := []
      levelMVarErrorInfos : List LevelMVarErrorInfo := []
      mvarArgNames : MVarIdMap Name := {}
      letRecsToLift : List LetRecToLift := []
      deriving Inhabited

    abbrev TermElabM := ReaderT Context $ StateRefT State MetaM
    abbrev TermElab := Syntax → Option Expr → TermElabM Expr
    ```

3. `TacticM`：目标繁饰

    ```lean linenums="1"
    structure Context where
      elaborator : Name
      recover : Bool := true

    structure State where
      goals : List MVarId
      deriving Inhabited

    abbrev TacticM := ReaderT Context $ StateRefT State TermElabM
    abbrev Tactic := Syntax → TacticM Unit
    ```

4. `LevelElabM`：层级繁饰

    ```lean linenums="1"
    structure Context where
      options : Options
      ref : Syntax
      autoBoundImplicit : Bool

    structure State where
      ngen : NameGenerator
      mctx : MetavarContext
      levelNames : List Name

    abbrev LevelElabM := ReaderT Context (EStateM Exception State)
    ```
