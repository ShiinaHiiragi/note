# 3 初始模块

## 3.1 预定义句法
1. Lean 启动时自动导入库中 `Init` 模块的内容
2. 定义范畴如下

    ```lean
    structure Parser.Category

    namespace Parser.Category
    def term    : Category := {}
    def command : Category := {}
    def attr    : Category := {}
    def tactic  : Category := {}
    def stx     : Category := {}
    def level   : Category := {}
    def prio    : Category := {}
    def prec    : Category := {}
    def doElem  : Category := {}
    end Parser.Category
    ```

### 3.1.1 项范畴
1. 条件表达式

    ```lean
    @[macro_inline]
    def ite {α : Sort u} (c : Prop) [h : Decidable c] (t e : α) : α :=
      h.casesOn (fun _ => e) (fun _ => t)

    @[macro_inline]
    def dite {α : Sort u} (c : Prop) [h : Decidable c] (t : c → α) (e : Not c → α) : α :=
      h.casesOn e t
    ```

    1. `termIfThenElse`：通用 `if` 表达式
        ```lean
        @[inherit_doc ite]
        syntax (name := termIfThenElse) ppRealGroup(
          ppRealFill(ppIndent("if " term " then") ppSpace term)
          ppDedent(ppSpace)
          ppRealFill("else " term)
        ) : term
        ```

    2. `termIfLet`：可使用模式匹配，在某些场景下能代替 `match`

        ```lean
        syntax (name := termIfLet) ppRealGroup(
          ppRealFill(ppIndent("if " "let " term " := " term " then") ppSpace term)
          ppDedent(ppSpace)
          ppRealFill("else " term)
        ) : term
        ```

    3. `termDepIfThenElse`：绑定一个证据变量，在 `then` 分支提供命题的证明，在 `else` 分支提供命题的证伪

        ```lean
        @[inherit_doc dite] syntax (name := termDepIfThenElse) ppRealGroup(
          ppRealFill(
            ppIndent("if " Lean.binderIdent " : " term " then")
            ppSpace
            term
          )
          ppDedent(ppSpace)
          ppRealFill("else " term)
        ) : term
        ```

2. 计算式：定义 `Trans` 类型类实例后可以配置为任意形式的关系式

    ```lean
    syntax (name := calc) "calc" calcSteps : term

    @[inherit_doc «calc»]
    syntax (name := calcTactic) "calc" calcSteps : tactic

    syntax calcFirstStep := ppIndent(colGe term (" := " term)?)
    syntax calcStep := ppIndent(colGe term " := " term)
    syntax calcSteps := ppLine withPosition(calcFirstStep) withPosition((ppLine linebreak calcStep)*)
    ```

3. 管道符：用 `f <| x` 或 `x |> f` 表示 `f x`，用 `f <| g <| x` 表示 `f (g x)`

    ```lean
    syntax:min term " <| " term:min : term
    syntax:min term " |> " term:min1 : term
    ```

4. 字符串插值：组合子 `interpolatedStr` 解析含有 `{term}` 的字符串，将其解释为项（而非字符串）

    ```lean
    syntax:max "s!" interpolatedStr(term) : term
    ```

### 3.1.2 句法范畴
1. 层级相关宏

    ```lean
    macro "max" : prec => `(prec| 1024)
    macro "arg" : prec => `(prec| 1023)
    macro "lead" : prec => `(prec| 1022)
    macro "(" p:prec ")" : prec => return p
    macro "min" : prec => `(prec| 10)
    macro "min1" : prec => `(prec| 11)
    macro "max_prec" : term => `(1024)
    ```

2. 优先级相关宏

    ```lean
    macro "default" : prio => `(prio| 1000)
    macro "low" : prio => `(prio| 100)
    macro "mid" : prio => `(prio| 500)
    macro "high" : prio => `(prio| 10000)
    macro "(" p:prio ")" : prio => return p
    ```

3. 组合子运算符

    ```lean
    syntax:arg stx:max "+" : stx
    syntax:arg stx:max "*" : stx
    syntax:arg stx:max "?" : stx
    syntax:2 stx:2 " <|> " stx:1 : stx

    macro:arg x:stx:max ",+" : stx => `(stx| sepBy1($x, ",", ", "))
    macro:arg x:stx:max ",*,?" : stx => `(stx| sepBy($x, ",", ", ", allowTrailingSep))
    macro:arg x:stx:max ",+,?" : stx => `(stx| sepBy1($x, ",", ", ", allowTrailingSep))
    macro:arg "!" x:stx:max : stx => `(stx| notFollowedBy($x))
    ```

### 3.1.3 策略范畴
1. 改变证明目标
    1. `apply`：整合结论与当前目标中的表达式，并为剩余的未证明部分创建新目标

        ```lean
        syntax (name := apply) "apply " term : tactic

        syntax (name := applyRfl) "apply_rfl" : tactic
        syntax (name := constructor) "constructor" : tactic
        ```

        1. `apply_rfl`：应用形如 `x ~ x` 的目标，其中 `~` 是不为等词的自反关系
        2. `constructor`：总是应用递归定义类型的第一个适用构造子

    2. `exact`：当目标类型与提供的表达式类型相同时，关闭主要目标

        ```lean
        syntax (name := exact) "exact " term : tactic

        syntax (name := refine) "refine " term : tactic
        macro "admit" : tactic => `(tactic| exact @sorryAx _ false)
        ```

        1. `refine e` 与 `exact e` 类似，但 `refine e` 在当 `e` 中空洞（`?x` 或 `?_`）未解决时转化为新目标
        2. `admit`：相当于 `exact sorry`

    3. `intro`：引入任何类型的变量

        ```lean
        syntax (name := intro) "intro" notFollowedBy("|") (ppSpace colGt term:max)* : tactic
        ```

        1. `intro e` 引入匿名假设，可使用单项模式匹配
        2. `intro | n + 1, 0 => tac | ...`：多项模式匹配

    4. `revert`：将假设（以及上下文中所有依赖它的后续元素）还原到目标，产生一个蕴含；相当于 `intro` 的逆操作

        ```lean
        syntax (name := revert) "revert" (ppSpace colGt term:max)+ : tactic
        ```

    5. `generalize`：将目标中的任意表达式替换为新的变量

        ```lean
        syntax generalizeArg := atomic(ident " : ")? term:51 " = " ident
        syntax (name := generalize) "generalize " generalizeArg,+ (location)? : tactic
        ```

        1. `generalize ([h :] e = x),+` 将所有出现的 `e` 替换为 `x`，若 `h` 被指定，则 `h : e = x` 也被引入
        2. `generalize e = x at h₁ ... hₙ`：在 `h₁`, ..., `hₙ` 内泛化 `e`
        3. `generalize e = x at *`：泛化所有 `e`

2. 证明结构化

    ```lean
    syntax casesTarget := atomic(ident " : ")? term
    syntax inductionAlts := " with" (ppSpace tactic)? withPosition((colGe inductionAlt)+)
    ```

    1. `case`：子目标分支

        ```lean
        syntax caseArg := binderIdent (ppSpace binderIdent)*
        syntax (name := case) "case " sepBy1(caseArg, " | ") " => " tacticSeq : tactic
        ```

        1. `case tag => tac`：基本形式
        2. `case tag x₁ ... xₙ => tac`：重命名若干个最新假设并使名称可见
        3. `case tag₁ | tag₂ => tac`：相当于 `(case tag₁ => tac); (case tag₂ => tac)`

    2. `cases`：分解归纳类型，当接续表达式（`cases e`）时 相当于 `generalize e = n; cases n`

        ```lean
        syntax (name := cases) "cases " casesTarget,+ (" using " term)? (inductionAlts)? : tactic
        ```

        1. `cases h with | cons₁ => tac₁ | cons₂ => tac₂`：类似于模式匹配
        2. `cases h`：非结构化组织，也可用 `case` 结构化

    3. `induction`：归纳证明

        ```lean
        syntax (name := induction) "induction " term,+ (" using " term)?
          (" generalizing" (ppSpace colGt term:max)+)? (inductionAlts)? : tactic
        ```

        1. 结构与 `cases` 类似，可使用 `with` 或 `case`
        2. `induction` 接受归纳前提作为参数，且只能接续标识符
        3. `using` 可接受自定义递归器作为归纳原则

    4. `split`：分割嵌套的 `if` 或 `match` 结构

        ```lean
        syntax (name := split) "split" (ppSpace colGt term)? (location)? : tactic
        ```

    5. `cdot`：匿名分支目标，可用于 `case` 或 `cases`

        ```lean
        syntax cdotTk := patternIgnore("· " <|> ". ")
        syntax (name := cdot) cdotTk tacticSeqIndentGt : tactic
        ```

3. 启发式自动化

    ```lean
    syntax config := atomic(" (" &"config") " := " withoutPosition(term) ")"

    syntax locationWildcard := " *"
    syntax locationHyp := (ppSpace colGt term:max)+ patternIgnore(ppSpace (atomic("|" noWs "-") <|> "⊢"))?
    syntax location := withPosition(" at" (locationWildcard <|> locationHyp))
    ```

    1. `rfl`：相当于 `exact rfl`

        ```lean
        syntax "rfl" : tactic
        syntax (name := eqRefl) "eq_refl" : tactic
        syntax (name := applyRfl) "apply_rfl" : tactic
        ```

    2. `rewrite` 或 `rw`：依次利用一系列类型断定为等式的项对目标进行重写，并在得到形如 `t = t` 的恒等式后自动关闭证明

        ```lean
        syntax rwRule := patternIgnore("← " <|> "<- ")? term
        syntax rwRuleSeq := " [" withoutPosition(rwRule,*,?) "]"

        syntax (name := rewriteSeq) "rewrite" (config)? rwRuleSeq (location)? : tactic
        macro (name := rwSeq) "rw " c:(config)? s:rwRuleSeq l:(location)? : tactic => ...
        ```

        1. 重写策略在遍历项时选择发现的第一个匹配，可通过附加参数指定适当的子项
        2. `←t` 指示策略在反方向上使用等式 `t`

    3. `simp`：反复重写目标项，以任意顺序在任何适用位置重复应用等式

        ```lean
        syntax discharger :=
          atomic(" (" patternIgnore(&"discharger" <|> &"disch")) " := " withoutPosition(tacticSeq) ")"

        syntax simpPre   := "↓"
        syntax simpPost  := "↑"

        syntax simpLemma := (simpPre <|> simpPost)? patternIgnore("← " <|> "<- ")? term
        syntax simpErase := "-" term:max
        syntax simpStar := "*"

        syntax (name := simp) "simp" (config)? (discharger)? (&" only")?
          (" [" withoutPosition((simpStar <|> simpErase <|> simpLemma),*,?) "]")? (location)? : tactic
        ```

        1. `simp` 策略使用局部列表与所有带有 `simp` 属性的定理重写
        2. `simp only` 排除使用默认值，仅使用列表内的定理简化
        3. 可在列表内使用通配符 `*` 以使用局部环境中存在的所有假设，或用 `-` 前缀阻止使用特定定理

    4. `assumption`：在当前目标的背景下查看假设，若有与结论相匹配的假设，则应用此假设

        ```lean
        syntax (name := assumption) "assumption" : tactic

        syntax "‹" withoutPosition(term) "›" : term
        macro_rules | `(‹$type›) => `((by assumption : $type))
        ```

    5. `contradiction`：搜索当前目标假设中的矛盾

        ```lean
        syntax (name := contradiction) "contradiction" : tactic
        ```

    6. `injection`：若 `c` 是归纳类型的构造子，则 `(c m₁ n₁) = (c m₂ n₂)` 蕴含 `m₁ = m₂` 与 `n₁ = n₂`

        ```lean
        syntax (name := injection) "injection " term
          (" with" (ppSpace colGt (ident <|> hole))+)? : tactic
        ```

4. 组合器：与其他策略组合使用
    1. `try`：尝试使用策略，不返回错误

        ```lean
        macro "try " t:tacticSeq : tactic => `(tactic| first | $t | skip)
        ```

    2. `repeat`：多次使用某个策略

        ```lean
        syntax "repeat " tacticSeq : tactic
        macro_rules
          | `(tactic| repeat $seq) => `(tactic| first | ($seq); repeat $seq | skip)

        syntax (name := repeat') "repeat' " tacticSeq : tactic
        syntax (name := repeat1') "repeat1' " tacticSeq : tactic
        ```

        1. `repeat tac`：多次使用策略 `tac` 直到失败，因此该策略必须最终失败
        2. `repeat' tac`：多次递归使用策略 `tac` 直到失败，即如果生成子目标，也会使用 `tac`
        3. `repeat1' tac`：多次使用策略 `tac` 直到失败，必须至少成功一次

    3. `tac <;> tac'`：在主要目标上运行 `tac`，并对产生的每个子目标使用 `tac'`

        ```lean
        macro:1 x:tactic tk:" <;> " y:tactic:2 : tactic => `(
          tactic|focus
            $x:tactic
            with_annotate_state $tk skip
            all_goals $y:tactic
        )
        ```

    4. `first | tac | ...`：运行每个策略直到其中一个成功，否则返回失败

        ```lean
        syntax (name := first) "first " withPosition((ppDedent(ppLine) colGe "| " tacticSeq)+) : tactic
        ```

    5. `all_goals` 与 `any_goals`：将策略应用于所有未完成的目标，直到所有（或至少一个）目标成功

        ```lean
        syntax (name := allGoals) "all_goals " tacticSeq : tactic
        syntax (name := anyGoals) "any_goals " tacticSeq : tactic
        ```

    6. `focus`：确保策略只影响当前的目标，暂时将其他目标从作用范围中隐藏

        ```lean
        syntax (name := focus) "focus " tacticSeq : tactic
        ```

    7. `unhygienic`：允许访问 Lean 自动生成的名称

        ```lean
        macro "unhygienic " t:tacticSeq : tactic => `(tactic| set_option tactic.hygienic false in $t)
        ```

5. 表达式策略

    ```lean
    macro "let " d:letDecl : tactic => `(tactic| refine_lift let $d:letDecl; ?_)
    syntax (name := letrec) withPosition(atomic("let " &"rec ") letRecDecls) : tactic
    syntax "have " haveDecl : tactic

    macro "show " e:term : tactic => `(tactic| refine_lift show $e from ?_)
    macro "suffices " d:sufficesDecl : tactic => `(tactic| refine_lift suffices $d; ?_)
    ```

### 3.1.4 do 元素范畴
1. `repeat`：循环

    ```lean
    syntax "repeat " doSeq : doElem
    macro_rules
      | `(doElem| repeat $seq) => `(doElem| for _ in Loop.mk do $seq)

    syntax "repeat " doSeq ppDedent(ppLine) "until " term : doElem
    macro_rules
      | `(doElem| repeat $seq until $cond) => `(doElem| repeat do $seq:doSeq; if $cond then break)
    ```

2. `while`：等效于 `repeat` 与 带有 `if` 修饰的 `break`

    ```lean
    syntax "while " ident " : " termBeforeDo " do " doSeq : doElem
    macro_rules
      | `(doElem| while $h : $cond do $seq) => `(doElem| repeat if $h : $cond then $seq else break)

    syntax "while " termBeforeDo " do " doSeq : doElem
    macro_rules
      | `(doElem| while $cond do $seq) => `(doElem| repeat if $cond then $seq else break)
    ```

## 3.2 预定义函数
### 3.2.1 递归器
1. `rec`：消去递归器

    ```lean
    Nat.rec.{u}
    : {motive : Nat → Sort u}
      → motive Nat.zero
      → ((n : Nat) → motive n → motive n.succ)
      → (t : Nat)
      → motive t

    @[reducible]
    protected def Nat.recOn.{u}
      : {motive : Nat → Sort u}
        → (t : Nat)
        → motive Nat.zero
        → ((n : Nat) → motive n → motive n.succ)
        → motive t :=
      fun {motive} t zero succ => Nat.rec zero succ t

    @[reducible]
    protected def Nat.brecOn.{u}
      : {motive : Nat → Sort u}
        → (t : Nat)
        → ((t : Nat) → Nat.below t → motive t)
        → motive t :=
      fun {motive} t F_1 => Prod.fst <| Nat.rec
        ⟨F_1 Nat.zero PUnit.unit, PUnit.unit⟩
        (fun n n_ih => ⟨F_1 n.succ ⟨n_ih, PUnit.unit⟩, ⟨n_ih, PUnit.unit⟩⟩)
        t

    @[reducible]
    protected def Nat.binductionOn
      : ∀ {motive : Nat → Prop} (t : Nat), (∀ (t : Nat), Nat.ibelow t → motive t)
        → motive t :=
      fun {motive} t F_1 => Prod.fst <| Nat.rec
        ⟨F_1 Nat.zero True.intro, True.intro⟩
        (fun n n_ih => ⟨F_1 n.succ ⟨n_ih, True.intro⟩, ⟨n_ih, True.intro⟩⟩)
        t
    ```

    1. `motive` 是被定义函数的陪域，归纳分支是小前提，类型元素是大前提
    2. `recOn`：基于 `rec` 实现，大前提发生在小前提之前
    3. `brecOn`：基于 `rec` 与 `below` 实现
    4. `binductionOn`：基于 `rec` 与 `ibelow` 实现，第二归纳法

2. `casesOn`：基于 `rec` 实现，分支递归器
    1. 模式匹配基于 `casesOn` 实现
    2. `casesOn` 相当于小前提中没有 `motive` 作为条件的 `recOn`

    ```lean
    @[reducible]
    protected def Nat.casesOn.{u}
      : {motive : Nat → Sort u}
        → (t : Nat)
        → motive Nat.zero
        → ((n : Nat) → motive n.succ)
        → motive t :=
      fun {motive} t zero succ => Nat.rec zero (fun n n_ih => succ n) t
    ```

3. `below`：基于 `rec` 实现，仅用于递归类型（不用于枚举类型与结构类型）

    ```lean
    @[reducible]
    protected def Nat.below.{u}
      : {motive : Nat → Sort u}
        → Nat
        → Sort (max 1 u) :=
      fun {motive} t => Nat.rec PUnit (fun n n_ih => PProd (PProd (motive n) n_ih) PUnit) t

    @[reducible]
    protected def Nat.ibelow
      : {motive : Nat → Prop}
        → Nat
        → Prop :=
      fun {motive} t => Nat.rec True (fun n n_ih => (motive n ∧ n_ih) ∧ True) t
    ```

    1. 若 `e : T`，则 `@T.below motive e` 是含有所有结构上「小于」 `e` 的、存储 `motive e` 的数据
    2. `ibelow`：基于 `rec` 实现，`motive e` 类型仅为 `Prop`

4. `noConfusion`：基于 `casesOn` 实现，仅用于归纳类型，用以区分同一类型下使用不同构造子的元素

    ```lean
    @[reducible]
    protected def Nat.noConfusion.{u}
      : {P : Sort u}
        → {v1 v2 : Nat}
        → v1 = v2
        → Nat.noConfusionType P v1 v2 :=
      fun {P} {v1 v2} h12 => Eq.ndrec
        (motive := fun a => v1 = a → Nat.noConfusionType P v1 a)
        (fun h11 => Nat.casesOn v1 (fun a => a) fun n a => a ⋯)
        h12
        h12
    ```

### 3.2.2 函数
1. 函数相关
    1. `id`：恒等函数

        ```lean
        @[inline]
        def id {α : Sort u} (a : α) : α := a
        ```

        !!! note "恒等单子"

            `Id`：将纯代码与单子 API 一起使用

            ```lean
            def Id (type : Type u) : Type u := type

            @[always_inline]
            instance : Monad Id where
            pure x := x
            bind x f := f x
            map f x := f x
            ```

    2. `Function.comp`：复合函数

        ```lean
        @[inline]
        def Function.comp {α : Sort u} {β : Sort v} {δ : Sort w} (f : β → δ) (g : α → β) : α → δ :=
          fun x => f (g x)

        @[inherit_doc]
        infixr:90 " ∘ "  => Function.comp
        ```

    3. `Function.const`：常函数

        ```lean
        @[inline] def Function.const {α : Sort u} (β : Sort v) (a : α) : β → α :=
          fun _ => a
        ```

    4. `inferInstance`：提供一个类型实例，可以 `(inferInstance : T)` 的形式使用

        ```lean
        abbrev inferInstance {α : Sort u} [i : α] : α := i
        ```

2. 参数标记
    1. `optParam`：标记可选参数，`x : optParam α default` 相当于 `(x : α := default)`

        ```lean
        @[reducible]
        def optParam (α : Sort u) (default : α) : Sort u := α
        ```

    2. `outParam`：在类型类中标记输出参数，在无法进行实例搜索时运行类型类推断，并采用找到的第一个解决方案

        ```lean
        @[reducible]
        def outParam (α : Sort u) : Sort u := α
        ```

## 3.3 内建类型
### 3.3.1 结构体类型
1. 数据类型
    1. `Prod`：直积类型

        ```lean
        structure Prod (α : Type u) (β : Type v) where
          mk ::
          fst : α
          snd : β

        @[inherit_doc]
        infixr:35 " × " => Prod
        ```

    2. `Fin`：严格小于 `n` 的自然数，`UInt` 系列类型在运行时用固定精度的机器整数表示

        ```lean
        @[pp_using_anonymous_constructor]
        structure Fin (n : Nat) where
          mk ::
          val  : Nat
          isLt : LT.lt val n

        structure BitVec (w : Nat) where
          ofFin ::
          toFin : Fin (hPow 2 w)

        structure UInt8 where
          toBitVec : BitVec 8

        structure UInt16 where
          toBitVec : BitVec 16

        structure UInt32 where
          toBitVec : BitVec 32

        structure UInt64 where
          toBitVec: BitVec 64
        ```

    3. `Float`：浮点数

        ```lean
        structure FloatSpec where
          float : Type
          val : float
          lt : float → float → Prop
          le : float → float → Prop
          decLt : DecidableRel lt
          decLe : DecidableRel le

        opaque floatSpec : FloatSpec := {
          float := Unit,
          val := (),
          lt := fun _ _ => True,
          le := fun _ _ => True,
          decLt := fun _ _ => inferInstanceAs (Decidable True),
          decLe := fun _ _ => inferInstanceAs (Decidable True)
        }

        structure Float where
          val : floatSpec.float
        ```

    4. `Char`：字符，运行时以用一般字符表示

        ```lean
        structure Char where
          val : UInt32
          valid : val.isValidChar
        ```

2. 数据结构
    1. `Array`：数组，此类型在运行时有特殊处理

        ```lean
        structure Array (α : Type u) where
          mk ::
          data : List α
        syntax "#[" withoutPosition(sepBy(term, ", ")) "]" : term
        ```

        1. 数组在以线性方式使用，且所有更新都将对数组进行破坏性执行时性能最佳
        2. 从证明观点来看，`Array α` 仅是 `List α` 的包装类

    2. `String`：字符串，编译器会将此类型的数据表示覆盖为 UTF-8 编码的字节序列

        ```lean
        structure String where
          mk ::
          data : List Char
        ```

    3. `Subtype`：子类型，包括值 `val` 与证据 `property`

        ```lean
        @[pp_using_anonymous_constructor]
        structure Subtype {α : Sort u} (p : α → Prop) where
          val : α
          property : p val

        @[inherit_doc Subtype]
        syntax "{ " withoutPosition(ident (" : " term)? " // " term) " }" : term
        ```

### 3.3.2 归纳类型
1. 枚举类型
    1. `Sum`：和类型

        ```lean
        inductive Sum (α : Type u) (β : Type v) where
          | inl (val : α) : Sum α β
          | inr (val : β) : Sum α β

        @[inherit_doc]
        infixr:30 " ⊕ " => Sum
        ```

    2. `Empty` 空类型，没有构造子

        ```lean
        inductive Empty : Type
        ```

    3. `Unit`：单位类型，具有一个元素的规范类型

        ```lean
        inductive PUnit : Sort u where
          | unit : PUnit

        abbrev Unit : Type := PUnit
        @[match_pattern]
        abbrev Unit.unit : Unit := PUnit.unit
        ```

    4. `Option`：可选类型，用于表示失败的可能性或可空性

        ```lean
        inductive Option (α : Type u) where
          | none : Option α
          | some (val : α) : Option α
        ```

    5. `Bool`：真值类

        ```lean
        inductive Bool : Type where
          | false : Bool
          | true : Bool
        ```

    6. `Exception`：异常类

        ```lean
        inductive Except (ε : Type u) (α : Type v) where
          | error : ε → Except ε α
          | ok : α → Except ε α
        ```

2. 递归类型
    1. `Nat`：自然数，内核与编译器都对此类型进行了特殊处理

        ```lean
        inductive Nat where
          | zero : Nat
          | succ (n : Nat) : Nat

        syntax (name := rawNatLit) "nat_lit " num : term
        ```

        1. 内核可将 `zero` 或 `succ n` 表达式简化为自然数字面值
        2. 运行时本身具有 `Nat` 的特殊表示（直接存储最多 63 位数字），更大的数字使用任意精度的 `bignum`
        3. 宏 `nat_lit` 构建一个原始数字字面值，可以用于避免定义时的无穷倒退
            1. `nat_lit` 对应表达式的 `Expr.lit (.natVal n)`
            2. 解析器将数字字面值转化为 `(OfNat.ofNat (nat_lit n) : α)`，即使 `α` 为 `Nat`

    2. `Int`：整数，当数字较小时直接存储有符号整数，较大的数字（超过 63 位时）使用任意精度 `bignum` 库

        ```lean
        inductive Int : Type where
          | ofNat   : Nat → Int
          | negSucc : Nat → Int
        ```

    3. `List`：（有序）列表，以链表形式实现

        ```lean
        inductive List (α : Type u) where
          | nil : List α
          | cons (head : α) (tail : List α) : List α

        @[inherit_doc]
        infixr:67 " :: " => List.cons
        syntax "[" withoutPosition(term,*,?) "]"  : term
        syntax "%[" withoutPosition(term,*,? " | " term) "]" : term
        ```

        1. 当尾部的多个值共享时，`List α` 更易用于持久数据结构，否则 `Array α` 的性能更好，因其可以进行破坏性更新
        2. `[a, b, c]` 是 `a :: b :: c :: []` 的简记，`%[a, b, c | tail]` 是 `a :: b :: c :: tail` 的简记

3. 编译相关
    1. `Name`：名称，由点 `.` 分隔的一系列字符串或数字

        ```lean
        inductive Name where
          | anonymous : Name
          | str (pre : Name) (str : String)
          | num (pre : Name) (i : Nat)
        ```

        1. `anonymous`：顶级名称，例如 `Lean.Meta` 表示为 `.str (.str .anonymous "Lean") "Meta"`
        2. `str`：字符串名称
        3. `num`：数字名称，用于自由变量和元变量的层次名称

    2. `Syntax`：句法结构，其中 `SyntaxNodeKind` 即节点种类，用于给 `Syntax` 元素分类

        ```lean
        abbrev SyntaxNodeKind := Name
        inductive Syntax where
          | missing
          | node (info : SourceInfo) (kind : SyntaxNodeKind) (args : Array Syntax)
          | atom (info : SourceInfo) (val : String)
          | ident (info : SourceInfo) (rawVal : Substring) (val : Name) (preresolved : List Preresolved)

        structure TSyntax (ks : SyntaxNodeKinds) where
          raw : Syntax
        ```

        1. `missing`：对应于由于解析错误而缺失的句法树部分
        2. `node`：种类为 `kind`，子节点包含在 `args` 的节点
        3. `atom`：对应关键字或字面值
        4. `ident`：对应由 `ident` 或 `rawIdent` 解析的标识符

        通常使用 `TSyntax`，即给定句法种类的 `Syntax`

    3. `Expr`：表达式．Lean 中任意项都有对应表达式

        ```lean
        inductive Expr where
          | bvar (deBruijnIndex : Nat)
          | fvar (fvarId : FVarId)
          | mvar (mvarId : MVarId)
          | sort (u : Level)
          | const (declName : Name) (us : List Level)
          | app (fn : Expr) (arg : Expr)
          | lam (binderName : Name) (binderType : Expr) (body : Expr) (binderInfo : BinderInfo)
          | forallE (binderName : Name) (binderType : Expr) (body : Expr) (binderInfo : BinderInfo)
          | letE (declName : Name) (type : Expr) (value : Expr) (body : Expr) (nonDep : Bool)
          | lit : Literal → Expr
          | mdata (data : MData) (expr : Expr)
          | proj (typeName : Name) (idx : Nat) (struct : Expr)
        ```

        1. `bvar`：约束变量，用 $\text{de Bruijn}$ 序列表示
        2. `fvar`：自由变量，即非约束出现的变量，用 `LocalContext` 内的 ID 表示
        3. `mvar`：元变量，相当于表达式中的占位符，用 `MetavarContext` 内的 ID 表示
        4. `sort`：`Sort u`、`Type u` 或 `Prop`
            1. `Prop` 表示为 `.sort .zero`,
            2. `Sort u` 表示为 ``.sort (.param `u)``
            3. `Type u` 表示为 ``.sort (.succ (.param `u))``
        5. `const`：在模块中或由另一个导入的模块先前定义的（多态）常量
        6. `app`：函数应用．使用部分应用来表示多个参数
        7. `lam`：$\lambda$ 表达式 `lam n t b`，相当于 `fun ($n : $t) => $b`
        8. `forallE`：依值箭头表达式 `forallE n t b`，相当于 `($n : $t) → $b`  
            非依值箭头表达式 `α → β` 是依值箭头表达式 `(a : α) → β`（其中 `β` 不依赖于 `a`）的特殊情形
        9.  `letE`：`let` 表达式 `letE n t v b`，相当于 `let ($n : $t) := $v in $b`
        10. `lit`：字面值．并非真实需要，仅为自然数或字符串在内存中提供更紧凑的表示
        11. `mdata`：元数据，提供位置信息、`Syntax` 节点引用、对 Pretty Printer 的提示以及繁饰过程信息
        12. `proj`：投影，即扩展字段记号．并非真实需要，仅为项提供更紧凑的表示以加速归约

4. IO 活动：`EStateM` 同时跟踪状态和错误，是 `IO` 单子的基础

    ```lean
    def IO.RealWorld : Type := Unit
    inductive EStateM.Result (ε σ α : Type u) where
      | ok    : α → σ → Result ε σ α
      | error : ε → σ → Result ε σ α

    def EStateM (ε σ α : Type u) := σ → Result ε σ α
    def EIO (ε : Type) : Type → Type := EStateM ε IO.RealWorld
    abbrev IO : Type → Type := EIO IO.Error
    ```

    1. 状态即现实世界，由于机能限制而仅用 `Unit` 表示
    2. `EStateM ε σ` 单子不改变状态，仅传递结果或错误信息

        ```lean
        @[always_inline, inline]
        protected def pure (a : α) : EStateM ε σ α := fun s => Result.ok a s

        @[always_inline, inline]
        protected def bind (x : EStateM ε σ α) (f : α → EStateM ε σ β) : EStateM ε σ β :=
          fun s => match x s with
            | Result.ok a s => f a s
            | Result.error e s => Result.error e s

        @[always_inline]
        instance instMonad : Monad (EStateM ε σ) where
          bind := EStateM.bind
          pure := EStateM.pure
          map := EStateM.map
          seqRight := EStateM.seqRight
        ```

    !!! note "IO 活动的副作用"
        1. 内部视角：IO 活动没有副作用，它接受一个唯一的现实世界状态，返回改变后的世界
        2. 外部视角：`bind` 函数定义的内容是副作用，当执行主体为 `do` 的 `main` 函数时
            1. 为了获得最后 `main` 的返回值，需要执行前面所有 `bind`，从而产生副作用
            2. 返回得到 `IO Unit` 元素没有意义，起作用的只是中间的副作用过程
            3. 副作用实质上靠 Lean RTS（运行时系统）执行原语而得以可能，Lean 本身仅对 IO 活动原语进行描述

### 3.3.3 类型类
1. 算术运算
    1. `Neg`：取负

        ```lean
        class Neg (α : Type u) where
          neg : α → α

        @[inherit_doc]
        prefix:75 "-" => Neg.neg
        ```

    2. `HAdd`：异构加法

        ```lean
        class HAdd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAdd : α → β → γ

        @[inherit_doc]
        infixl:65 " + " => HAdd.hAdd
        ```

    3. `HSub`：异构减法

        ```lean
        class HSub (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hSub : α → β → γ

        @[inherit_doc]
        infixl:65 " - " => HSub.hSub
        ```

    4. `HMul`：异构乘法

        ```lean
        class HMul (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hMul : α → β → γ

        @[inherit_doc]
        infixl:70 " * " => HMul.hMul
        ```

    5. `HDiv`：异构除法

        ```lean
        class HDiv (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hDiv : α → β → γ

        @[inherit_doc]
        infixl:70 " / " => HDiv.hDiv
        ```

    6. `HPow`：异构乘方

        ```lean
        class HPow (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hPow : α → β → γ

        @[inherit_doc]
        infixr:80 " ^ " => HPow.hPow
        ```

    7. `HAppend`：异构连接

        ```lean
        class HAppend (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAppend : α → β → γ

        @[inherit_doc]
        infixl:65 " ++ " => HAppend.hAppend
        ```

    8. `HMod`：异构取余

        ```lean
        class HMod (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hMod : α → β → γ

        @[inherit_doc]
        infixl:70 " % " => HMod.hMod
        ```

    9. `Dvd`：同余

        ```lean
        class Dvd (α : Type _) where
          dvd : α → α → Prop

        @[inherit_doc]
        infix:50  " ∣ " => Dvd.dvd
        ```

2. 逻辑运算
    1. `Complement`：按位取反

        ```lean
        class Complement (α : Type u) where
          complement : α → α

        @[inherit_doc]
        prefix:100 "~~~" => Complement.complement
        ```

    2. `HAnd`：异构按位与

        ```lean
        class HAnd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAnd : α → β → γ

        @[inherit_doc]
        infixl:60 " &&& " => HAnd.hAnd
        ```

    3. `HXor`：异构按位或

        ```lean
        class HXor (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hXor : α → β → γ

        @[inherit_doc]
        infixl:58 " ^^^ " => HXor.hXor
        ```

    4. `HOr`：异构按位非

        ```lean
        class HOr (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hOr : α → β → γ

        @[inherit_doc]
        infixl:55 " ||| " => HOr.hOr
        ```

    5. `HShiftLeft`：异构左移

        ```lean
        class HShiftLeft (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hShiftLeft : α → β → γ

        @[inherit_doc]
        infixl:75 " <<< " => HShiftLeft.hShiftLeft
        ```

    6. `HShiftRight`：异构右移

        ```lean
        class HShiftRight (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hShiftRight : α → β → γ

        @[inherit_doc]
        infixl:75 " >>> " => HShiftRight.hShiftRight
        ```

    !!! note "真值运算"

        1. `cond`：条件运算

            ```lean
            @[macro_inline]
            def cond {α : Type u} (c : Bool) (x y : α) : α :=
              match c with
              | true  => x
              | false => y
            ```

        2. `and`：与运算

            ```lean
            @[macro_inline]
            def and (x y : Bool) : Bool :=
              match x with
              | false => false
              | true => y

            @[inherit_doc]
            infixl:35 " && " => and
            ```

        3. `or`：或运算

            ```lean
            @[macro_inline]
            def or (x y : Bool) : Bool :=
              match x with
              | true => true
              | false => y

            @[inherit_doc]
            infixl:30 " || " => or
            ```

        4. `not`：非运算

            ```lean

            @[inline]
            def not : Bool → Bool
              | true => false
              | false => true

            @[inherit_doc]
            notation:max "!" b:40 => not b
            ```

3. 比较运算
    1. `LE`：小于等于

        ```lean
        class LE (α : Type u) where
          le : α → α → Prop

        @[inherit_doc]
        infix:50 " <= " => LE.le
        @[inherit_doc]
        infix:50 " ≤ "  => LE.le
        ```

    2. `LT`：小于

        ```lean
        class LT (α : Type u) where
          lt : α → α → Prop

        @[inherit_doc]
        infix:50 " < "  => LT.lt
        ```

    3. `GE`：大于等于

        ```lean
        @[reducible]
        def GE.ge {α : Type u} [LE α] (a b : α) : Prop := LE.le b a

        @[inherit_doc]
        infix:50 " >= " => GE.ge
        @[inherit_doc]
        infix:50 " ≥ "  => GE.ge
        ```

    4. `GT`：大于

        ```lean
        @[reducible]
        def GT.gt {α : Type u} [LT α] (a b : α) : Prop := LT.lt b a

        @[inherit_doc]
        infix:50 " > "  => GT.gt
        ```

4. 关系与性质
    1. `Trans`：传递性，可用于计算式证明

        ```lean
        class Trans (r : α → β → Sort u) (s : β → γ → Sort v) (t : outParam (α → γ → Sort w)) where
          trans : r a b → s b c → t a c
        ```

    2. `Deciable`：可判定性，等同于 `Bool` 及其证明，用于推断命题的计算策略，从而可在 `if` 中编写命题并执行

        ```lean
        class inductive Decidable (p : Prop) where
          | isFalse (h : Not p) : Decidable p
          | isTrue (h : p) : Decidable p

        @[inline_if_reduce, nospecialize]
        def Decidable.decide (p : Prop) [h : Decidable p] : Bool :=
          h.casesOn (fun _ => false) (fun _ => true)

        abbrev DecidablePred {α : Sort u} (r : α → Prop) :=
        (a : α) → Decidable (r a)

        abbrev DecidableRel {α : Sort u} (r : α → α → Prop) :=
        (a b : α) → Decidable (r a b)

        abbrev DecidableEq (α : Sort u) :=
        (a b : α) → Decidable (Eq a b)
        ```

        `Init` 模块定义了等式和比较符的基本运算以及命题连词等命题的可判定性，例如

        ```lean
        @[macro_inline]
        instance {p q} [dp : Decidable p] [dq : Decidable q] : Decidable (And p q) :=
          match dp with
          | isTrue  hp =>
            match dq with
            | isTrue hq  => isTrue ⟨hp, hq⟩
            | isFalse hq => isFalse (fun h => hq (And.right h))
          | isFalse hp =>
            isFalse (fun h => hp (And.left h))

        @[macro_inline]
        instance [dp : Decidable p] [dq : Decidable q] : Decidable (Or p q) :=
          match dp with
          | isTrue  hp => isTrue (Or.inl hp)
          | isFalse hp =>
            match dq with
            | isTrue hq  => isTrue (Or.inr hq)
            | isFalse hq =>
              isFalse fun h => match h with
                | Or.inl h => hp h
                | Or.inr h => hq h

        instance [dp : Decidable p] : Decidable (Not p) :=
          match dp with
          | isTrue hp  => isFalse (absurd hp)
          | isFalse hp => isTrue hp
        ```

5. 函子与单子
    1. 通用类型类

        ```lean
        class Pure (f : Type u → Type v) where
          pure {α : Type u} : α → f α

        class Bind (m : Type u → Type v) where
          bind : {α β : Type u} → m α → (α → m β) → m β
        @[inherit_doc]
        infixl:55  " >>= " => Bind.bind

        class Seq (f : Type u → Type v) : Type (max (u+1) v) where
          seq : {α β : Type u} → f (α → β) → (Unit → f α) → f β
        @[inherit_doc]
        notation:60 a:60 " <*> " b:61 => Seq.seq a fun _ : Unit => b

        class SeqLeft (f : Type u → Type v) : Type (max (u+1) v) where
          seqLeft : {α β : Type u} → f α → (Unit → f β) → f α
        @[inherit_doc]
        notation:60 a:60 " <* " b:61 => SeqLeft.seqLeft a fun _ : Unit => b

        class SeqRight (f : Type u → Type v) : Type (max (u+1) v) where
          seqRight : {α β : Type u} → f α → (Unit → f β) → f β
        @[inherit_doc]
        notation:60 a:60 " *> " b:61 => SeqRight.seqRight a fun _ : Unit => b

        class HOrElse (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hOrElse : α → (Unit → β) → γ
        @[inherit_doc HOrElse.hOrElse]
        syntax:20 term:21 " <|> " term:20 : term

        class HAndThen (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAndThen : α → (Unit → β) → γ
        @[inherit_doc HAndThen.hAndThen]
        syntax:60 term:61 " >> " term:60 : term
        ```

    2. `Functor`：函子

        ```lean
        class Functor (f : Type u → Type v) : Type (max (u+1) v) where
          map : {α β : Type u} → (α → β) → f α → f β
          mapConst : {α β : Type u} → α → f β → f α := Function.comp map (Function.const _)
        ```

    3. `Applicative`：应用函子

        ```lean
        class Applicative (f : Type u → Type v) extends Functor f, Pure f, Seq f, SeqLeft f, SeqRight f where
          map := fun x y => Seq.seq (pure x) fun _ => y
          seqLeft := fun a b => Seq.seq (Functor.map (Function.const _) a) b
          seqRight := fun a b => Seq.seq (Functor.map (Function.const _ id) a) b

        class Alternative (f : Type u → Type v) extends Applicative f : Type (max (u+1) v) where
          failure : {α : Type u} → f α
          orElse  : {α : Type u} → f α → (Unit → f α) → f α
        instance (f : Type u → Type v) (α : Type u) [Alternative f] : OrElse (f α) := ⟨Alternative.orElse⟩
        ```

    4. `Monad`：单子

        ```lean
        class Monad (m : Type u → Type v) extends Applicative m, Bind m : Type (max (u+1) v) where
          map f x := bind x (Function.comp pure f)
          seq f x := bind f fun y => Functor.map y (x ())
          seqLeft x y := bind x fun a => bind (y ()) (fun _ => pure a)
          seqRight x y := bind x fun _ => y ()
        ```

    !!! note "函子与单子的规约"
        1. 函子的规约
            1. `id <$> x` 等价于 `x`
            2. `map (fun y => f (g y)) x` 等价于 `map f (map g x)`
        2. 应用函子的规约
            1. 同一律：`pure id <*> v` 等价于 `v`
            2. 函数复合律：`pure (· ∘ ·) <*> u <*> v <*> w` 等价于 `u <*> (v <*> w)`
            3. `pure f <*> pure x` 等价于 `pure (f x)`
            4. `u <*> pure x` 等价于 `pure (fun f => f x) <*> u`
        3. 单子的规约
            1. `pure` 为 `bind` 的左单位元：`bind (pure v) f` 等价于 `f v`
            2. `pure` 为 `bind` 的右单位元：`bind v pure` 等价于 `v`
            3. 结合律：`bind (bind v f) g` 等价于 `bind v (fun x => bind (f x) g)`

        易证任意单子都是应用函子，任意应用函子都是函子

6. 类型转换与强制类型转换
    1. `OfNat`：将自然数字面值转换到其他类型

        ```lean
        class OfNat (α : Type u) (_ : Nat) where
          ofNat : α
        ```

        例如 `37 : α` 相当于 `(OfNat.ofNat (nat_lit 37) : α)`

    2. `ToString`：将其他类型转换到字符串，用于字符串插值或 `IO` 等

        ```lean
        class ToString (α : Type u) where
          toString : α → String
        ```

    3. `Coe`：强制类型转换

        ```lean
        class Coe (α : semiOutParam (Sort u)) (β : Sort v) where
          coe : α → β

        syntax:1024 (name := coeNotation) "↑" term:1024 : term
        ```

        1. 链式强制转换：通过一系列较小的强制转换组成完整的强制转换；存在循环强制转换时，Lean 不会陷入无限循环
        2. 当且仅当推断类型与程序需要类型不匹配时，Lean 才会自动使用强制转换
        3. 当强制转换结果依赖于具体值时，使用依值强制类型转换 `CoeDep`

            ```lean
            class CoeDep (α : Sort u) (_ : α) (β : Sort v) where
              coe : β
            ```

        4. 当强制转换结果为分类或函数时，使用 `CoeSort` 或 `CoeFun`

            ```lean
            class CoeSort (α : Sort u) (β : outParam (Sort v)) where
              coe : α → β

            class CoeFun (α : Sort u) (γ : outParam (α → Sort v)) where
              coe : (f : α) → γ f

            syntax:1024 (name := coeFunNotation) "⇑" term:1024 : term
            syntax:1024 (name := coeSortNotation) "↥" term:1024 : term
            ```

7. 派生标准类：编译器可自动构造部分类型类的良好实例
    1. `Repr`：表示类，将某种类型的值转换为 `Format` 类型

        ```lean
        inductive Format where
          | nil : Format
          | line : Format
          | align (force : Bool) : Format
          | text : String → Format

        class Repr (α : Type u) where
          reprPrec : α → Nat → Format
        ```

    2. `BEq`：真值相等

        ```lean
        class BEq (α : Type u) where
          beq : α → α → Bool

        instance [DecidableEq α] : BEq α where
          beq a b := decide (Eq a b)

        @[inherit_doc]
        infix:50 " == " => BEq.beq

        @[inline]
        def bne {α : Type u} [BEq α] (a b : α) : Bool := !(a == b)

        @[inherit_doc]
        infix:50 " != " => bne
        ```

    3. `Ord`：排序

        ```lean
        inductive Ordering where
          | lt
          | eq
          | gt
        deriving Inhabited, BEq

        class Ord (α : Type u) where
          compare : α → α → Ordering
        ```

    4. `Hashable`：散列值

        ```lean
        class Hashable (α : Sort u) where
          hash : α → UInt64
        ```

    5. `Inhabited`：默认值，通常在超出值域时调用

        ```lean
        class Inhabited (α : Sort u) where
          default : α
        ```

        !!! note "非空归纳类型类"
            非空类区别于 `Inhabited` 在于 `Nonempty α` 是一个命题，这表明其不携带存在的元素，而只证明存在这种元素

            ```lean
            class inductive Nonempty (α : Sort u) : Prop where
              | intro (val : α) : Nonempty α
            ```

            1. 命题 `Nonempty α` 等价于命题 `∃ x : α, True`

                ```lean
                example (α : Type u) : Nonempty α ↔ ∃ x : α, True :=
                  Iff.intro (fun ⟨a⟩ => ⟨a, trivial⟩) (fun ⟨a, _⟩ => ⟨a⟩)
                ```

            2. 命题 `∃ x : α, p x` 不等价于类型 `{x : α // p x}`
                1. 前者是命题，其元素通常不可约，Lean 对其仅进行类型检查
                2. 后者是类型，其元素需要被存储或计算

                因此前者通过 `match` 得到的存在性见证不可直接用于后者，需要选择公理的介入

                ```lean
                -- tactic 'cases' failed, nested error:
                -- tactic 'induction' failed, recursor 'Exists.casesOn' can only eliminate into Prop
                example {α : Type} (p q : α → Prop) : (h : ∃ x, p x) → {x : α // px}
                  | ⟨w, hw⟩ => ⟨w, hw⟩
                ```

## 3.4 数学基础
### 3.4.1 逻辑学
1. 命题：区分于 `Bool` 或 `Empty`
    1. `True`：真命题

        ```lean
        inductive True : Prop where
          | intro : True

        @[inherit_doc True.intro]
        def trivial : True := ⟨⟩
        ```

    2. `False`：假命题

        ```lean
        inductive False : Prop

        @[macro_inline]
        def False.elim {C : Sort u} (h : False) : C := h.rec
        ```

2. 逻辑联结词
    1. `Not`：否定

        ```lean
        def Not (a : Prop) : Prop := a → False

        @[inherit_doc]
        notation:max "¬" p:40 => Not p

        @[macro_inline]
        def False.elim {C : Sort u} (h : False) : C := h.rec

        @[macro_inline]
        def absurd {a : Prop} {b : Sort v} (h₁ : a) (h₂ : Not a) : b := (h₂ h₁).rec
        ```

    2. `And`：合取

        ```lean
        @[pp_using_anonymous_constructor]
        structure And (a b : Prop) : Prop where
          intro ::
          left : a
          right : b

        @[inherit_doc]
        infixr:35 " /\\ " => And
        @[inherit_doc]
        infixr:35 " ∧ " => And
        ```

        1. `And.intro`：合取引入规则
        2. `And.left`：左合取消去规则
        3. `And.right`：右合取消去规则

    3. `Or`：析取

        ```lean
        inductive Or (a b : Prop) : Prop where
          | inl (h : a) : Or a b
          | inr (h : b) : Or a b

        @[inherit_doc]
        infixr:30 " \\/ " => Or
        @[inherit_doc]
        infixr:30 " ∨  " => Or

        theorem Or.intro_left (b : Prop) (h : a) : Or a b := Or.inl h
        theorem Or.intro_right (a : Prop) (h : b) : Or a b := Or.inr h
        theorem Or.elim {c : Prop} (h : Or a b) (left : a → c) (right : b → c) : c :=
          match h with
          | Or.inl h => left h
          | Or.inr h => right h
        ```

        1. `Or.inl` 或 `Or.intro_left`：左析取引入规则
        2. `Or.inr` 或 `Or.intro_right`：右析取引入规则
        3. `Or.elim`：析取消去规则

    4. `Iff`：逻辑等价

        ```lean
        structure Iff (a b : Prop) : Prop where
          intro ::
          mp : a → b
          mpr : b → a

        @[inherit_doc]
        infix:20 " <-> " => Iff
        @[inherit_doc]
        infix:20 " ↔ " => Iff
        ```

3. 量词
    1. 全称量词：通过依值类型实现

        ```lean
        syntax "∀ " binderIdent binderPred ", " term : term
        ```

    2. `Exists`：存在量词，可以如 `Exists.elim` 内部所示直接以 `match` 或 `let` 消去量词

        ```lean
        inductive Exists {α : Sort u} (p : α → Prop) : Prop where
          | intro (w : α) (h : p w) : Exists p

        syntax "∃ " binderIdent binderPred ", " term : term

        theorem Exists.elim {α : Sort u} {p : α → Prop} {b : Prop}
           (h₁ : Exists (fun x => p x)) (h₂ : ∀ (a : α), p a → b) : b :=
          match h₁ with
          | intro a h => h₂ a h
        ```

4. 等词与等价
    1. `Eq`：等词

        ```lean
        inductive Eq : α → α → Prop where
          | refl (a : α) : Eq a a

        @[simp]
        abbrev Eq.ndrec.{u1, u2}
          {α : Sort u2}
          {a : α}
          {motive : α → Sort u1}
          (m : motive a)
          {b : α}
          (h : Eq a b)
          : motive b :=
          h.rec m

        @[match_pattern]
        def rfl {α : Sort u} {a : α} : Eq a a := Eq.refl a

        @[inherit_doc]
        infix:50 " = " => Eq

        theorem Eq.symm {α : Sort u} {a b : α} (h : Eq a b) : Eq b a := h ▸ rfl
        theorem Eq.trans {α : Sort u} {a b c : α} (h₁ : Eq a b) (h₂ : Eq b c) : Eq a c := h₂ ▸ h₁

        @[reducible]
        def Ne {α : Sort u} (a b : α) := ¬(a = b)
        @[inherit_doc]
        infix:50 " ≠ "  => Ne
        ```

        1. `Eq.refl` 可用于证明恒等式：可 $\beta-$归约为相同形式的项会被视为相同
        2. `Eq.subst`：若 `a = b` 且 `e : p a`，则 `h ▸ e : p b`

            ```lean
            variable {α : Sort u} {β : Sort v}

            theorem Eq.subst {motive : α → Prop} {a b : α} (h₁ : Eq a b) (h₂ : motive a) : motive b :=
              Eq.ndrec h₂ h₁

            theorem congrArg {a₁ a₂ : α} (f : α → β) (h : Eq a₁ a₂) : Eq (f a₁) (f a₂) :=
              h ▸ rfl
            theorem congr {f₁ f₂ : α → β} {a₁ a₂ : α} (h₁ : Eq f₁ f₂) (h₂ : Eq a₁ a₂) : Eq (f₁ a₁) (f₂ a₂) :=
              h₁ ▸ h₂ ▸ rfl
            theorem congrFun {β : α → Sort v} {f g : (x : α) → β x} (h : Eq f g) (a : α) : Eq (f a) (g a) :=
              h ▸ rfl

            @[builtin_term_parser]
            def subst := trailing_parser:75 " ▸ "
              >> sepBy1 (termParser 75) " ▸ "
            ```

    2. `Equivalence`：等价与广集

        ```lean
        structure Equivalence {α : Sort u} (r : α → α → Prop) : Prop where
          refl  : ∀ x, r x x
          symm  : ∀ {x y}, r x y → r y x
          trans : ∀ {x y z}, r x y → r y z → r x z

        class Setoid (α : Sort u) where
          r : α → α → Prop
          iseqv : Equivalence r

        class HasEquiv (α : Sort u) where
          Equiv : α → α → Sort v

        @[inherit_doc]
        infix:50 " ≈ "  => HasEquiv.Equiv

        instance {α : Sort u} [Setoid α] : HasEquiv α := ⟨Setoid.r⟩
        ```

5. 良基性与良基归纳
    1. `Acc`：在序关系 `r ≺ ` 下，当不存在无穷下降序列 `... ≺ y₂ ≺ y₁ ≺ y₀ ≺ x` 时，称 `x` 可被访问

        ```lean
        inductive Acc {α : Sort u} (r : α → α → Prop) : α → Prop where
          | intro (x : α) (h : (y : α) → r y x → Acc r y) : Acc r x
        ```

    2. `WellFounded`：良基性，即类型内任意元素均可被访问

        ```lean
        inductive WellFounded {α : Sort u} (r : α → α → Prop) : Prop where
          | intro (h : ∀ a, Acc r a) : WellFounded r

        class WellFoundedRelation (α : Sort u) where
          rel : α → α → Prop
          wf  : WellFounded rel

        noncomputable def fix (hwf : WellFounded r) (F : ∀ x, (∀ y, r y x → C y) → C x) (x : α) : C x :=
          fixF F x (apply hwf x)
        ```

        `Nat` 的默认良基关系实例是 `<`

### 3.4.2 扩展公理
1. `propext`：命题外延性，即互相蕴含的两个命题实质相等

    ```lean
    axiom propext {a b : Prop} : (a ↔ b) → a = b
    ```

2. `Quot.sound`：任意 `α` 中元素 `a, b` 有 `r a b` 蕴含 `Quot.mk r a = Quot.mk r b`

    ```lean
    axiom sound : ∀ {α : Sort u} {r : α → α → Prop} {a b : α}, r a b → Quot.mk r a = Quot.mk r b
    ```

    1. 设 `r'` 有 `r a b` 当且仅当 `Quot.mk r a = Quot.mk r b`
        1. `r'` 为等价关系，且 `r a b` 蕴含 `r' a b`
        2. 若 `r''` 是包含 `r` 的任意等价关系，则 `r' a b` 蕴含 `r'' a b`
    2. 对于类型 `α` 上的等价关系 `r`，`@Quot α r` 是商集，且 `Quot.mk r a = Quot.mk r b` 蕴含 `a ≈ b`

        ```lean
        def Quotient {α : Sort u} (s : Setoid α) := @Quot α Setoid.r
        theorem exact {s : Setoid α} {a b : α} : Quotient.mk s a = Quotient.mk s b → a ≈ b :=
          fun h => rel_of_eq h
        ```

    3. `funext`：函数外延性，通过 `Quot.sound` 公理证明

        ```lean
        theorem funext {α : Sort u} {β : α → Sort v} {f g : (x : α) → β x} (h : ∀ x, f x = g x) : f = g := ...
        ```

3. `Classical.choice`：选择公理

    ```lean
    axiom Classical.choice {α : Sort u} : Nonempty α → α
    ```

    1. `indefiniteDescriptio`：选择公理等价于非限定摹状词

        ```lean
        noncomputable def indefiniteDescription
          {α : Sort u}
          (p : α → Prop)
          (h : ∃ x, p x)
          : {x // p x} :=
          choice <| let ⟨x, px⟩ := h; ⟨⟨x, px⟩⟩

        noncomputable def choose {α : Sort u} {p : α → Prop} (h : ∃ x, p x) : α :=
          (indefiniteDescription p h).val

        theorem choose_spec {α : Sort u} {p : α → Prop} (h : ∃ x, p x) : p (choose h) :=
          (indefiniteDescription p h).property

        noncomputable def strongIndefiniteDescription
          {α : Sort u}
          (p : α → Prop)
          (h : Nonempty α)
          : {x : α // (∃ y : α, p y) → p x} := ...

        noncomputable def epsilon {α : Sort u} [h : Nonempty α] (p : α → Prop) : α :=
          (strongIndefiniteDescription p h).val

        theorem epsilon_spec_aux
          {α : Sort u}
          (h : Nonempty α)
          (p : α → Prop)
          : (∃ y, p y) → p (@epsilon α h p) :=
          (strongIndefiniteDescription p h).property
        ```

    1. `Classical.em`：排中律．根据 $\text{Diaconescu}$ 定理，`em` 可由 `propext`、`funext` 与 `Classical.choice` 导出

        ```lean
        theorem em (p : Prop) : p ∨ ¬p := ...
        ```

    2. `propDecidable`：经典逻辑下所有命题都可判定

        ```lean
        noncomputable scoped instance (priority := low) propDecidable (a : Prop) : Decidable a :=
          choice <| match em a with
            | Or.inl h => ⟨isTrue h⟩
            | Or.inr h => ⟨isFalse h⟩
        ```
