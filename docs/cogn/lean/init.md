# 3 初始模块

## 3.1 预定义
### 3.1.1 表达式
1. 条件表达式

    ```lean
    @[inherit_doc ite]
    syntax (name := termIfThenElse) ppRealGroup(
      ppRealFill(ppIndent("if " term " then") ppSpace term)
      ppDedent(ppSpace)
      ppRealFill("else " term)
    ) : term

    syntax (name := termIfLet) ppRealGroup(
      ppRealFill(ppIndent("if " "let " term " := " term " then") ppSpace term)
      ppDedent(ppSpace)
      ppRealFill("else " term)
    ) : term
    ```

    1. `termIfThenElse`：通用 `if` 表达式
    2. `termIfLet`：可使用模式匹配，在某些场景下能代替 `match`

2. 字符串插值：组合子 `interpolatedStr` 解析含有 `{term}` 的字符串，将其解释为项（而非字符串）

    ```lean
    syntax:max "s!" interpolatedStr(term) : term
    ```

### 3.1.2 句法记号
1. 句法范畴

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

2. 层级相关宏

    ```lean
    macro "max" : prec => `(prec| 1024)
    macro "arg" : prec => `(prec| 1023)
    macro "lead" : prec => `(prec| 1022)
    macro "(" p:prec ")" : prec => return p
    macro "min" : prec => `(prec| 10)
    macro "min1" : prec => `(prec| 11)
    macro "max_prec" : term => `(1024)
    ```

3. 优先级相关宏

    ```lean
    macro "default" : prio => `(prio| 1000)
    macro "low" : prio => `(prio| 100)
    macro "mid" : prio => `(prio| 500)
    macro "high" : prio => `(prio| 10000)
    macro "(" p:prio ")" : prio => return p
    ```

4. 组合子运算符

    ```lean
    syntax:arg stx:max "+" : stx
    syntax:arg stx:max "*" : stx
    syntax:arg stx:max "?" : stx
    syntax:2 stx:2 " <|> " stx:1 : stx

    macro:arg x:stx:max ",+"   : stx => `(stx| sepBy1($x, ",", ", "))
    macro:arg x:stx:max ",*,?" : stx => `(stx| sepBy($x, ",", ", ", allowTrailingSep))
    macro:arg x:stx:max ",+,?" : stx => `(stx| sepBy1($x, ",", ", ", allowTrailingSep))
    macro:arg "!" x:stx:max : stx => `(stx| notFollowedBy($x))
    ```

## 3.2 内建类型
### 3.2.1 结构体类型
1. 数据类型
    1. `Prod`：直积类型

        ```lean
        structure Prod (α : Type u) (β : Type v) where
          mk ::
          fst : α
          snd : β
        @[inherit_doc] infixr:35 " × " => Prod
        ```

    2. `Char`：字符

        ```lean
        structure Char where
          val : UInt32
          valid : val.isValidChar
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

    2. `String`：字符串，编译器会将此类型的数据表示覆盖为字节序列

        ```lean
        structure String where
          mk ::
          data : List Char
        ```

### 3.2.2 归纳类型
1. 枚举类型
    1. `Sum`：和类型

        ```lean
        inductive Sum (α : Type u) (β : Type v) where
          | inl (val : α) : Sum α β
          | inr (val : β) : Sum α β
        @[inherit_doc] infixr:30 " ⊕ " => Sum
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
        ```

        1. 内核可将 `zero` 或 `succ n` 表达式简化为自然数字面值
        2. 运行时本身具有 `Nat` 的特殊表示（直接存储最多 63 位数字），更大的数字使用任意精度的 `bignum`

    2. `Int`：整数，此类型在运行时有特殊处理

        ```lean
        inductive Int : Type where
          | ofNat   : Nat → Int
          | negSucc : Nat → Int
        ```

        1. 当数字较小时，直接存储有符号整数
        2. 较大的数字（超过 63 位时）使用任意精度 `bignum` 库

    3. `List`：（有序）列表，以链表形式实现

        ```lean
        inductive List (α : Type u) where
          | nil : List α
          | cons (head : α) (tail : List α) : List α

        @[inherit_doc] infixr:67 " :: " => List.cons
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

        ```lean
        structure TSyntax (ks : SyntaxNodeKinds) where
          raw : Syntax
        ```

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
            - `Prop` 表示为 `.sort .zero`,
            - `Sort u` 表示为 ``.sort (.param `u)``
            - `Type u` 表示为 ``.sort (.succ (.param `u))``
        5. `const`：在模块中或由另一个导入的模块先前定义的（多态）常量
        6. `app`：函数应用．使用部分应用来表示多个参数
        7. `lam`：$\lambda$ 表达式 `lam n t b`，相当于 `fun ($n : $t) => $b`
        8. `forallE`：依值箭头表达式 `forallE n t b`，相当于 `($n : $t) → $b`  
            非依值箭头表达式 `α → β` 是依值箭头表达式 `(a : α) → β`（其中 `β` 不依赖于 `a`）的特殊情形
        9.  `letE`：`let` 表达式 `letE n t v b`，相当于 `let ($n : $t) := $v in $b`
        10. `lit`：字面值．并非真实需要，仅为自然数或字符串在内存中提供更紧凑的表示
        11. `mdata`：元数据，提供位置信息、`Syntax` 节点引用、对 Pretty Printer 的提示以及繁饰过程信息
        12. `proj`：投影，即扩展字段记号．并非真实需要，仅为项提供更紧凑的表示以加速归约

### 3.2.3 类型类
1. 算术运算
    1. `Neg`：取负

        ```lean
        class Neg (α : Type u) where
          neg : α → α
        @[inherit_doc] prefix:75 "-" => Neg.neg
        ```

    2. `HAdd`：加法

        ```lean
        class HAdd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAdd : α → β → γ
        @[inherit_doc] infixl:65 " + " => HAdd.hAdd
        ```

    3. `HSub`：减法

        ```lean
        class HSub (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hSub : α → β → γ
        @[inherit_doc] infixl:65 " - " => HSub.hSub
        ```

    4. `HMul`：乘法

        ```lean
        class HMul (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hMul : α → β → γ
        @[inherit_doc] infixl:70 " * " => HMul.hMul
        ```

    5. `HDiv`：除法

        ```lean
        class HDiv (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hDiv : α → β → γ
        @[inherit_doc] infixl:70 " / " => HDiv.hDiv
        ```

    6. `HPow`：乘方

        ```lean
        class HPow (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hPow : α → β → γ
        @[inherit_doc] infixr:80 " ^ " => HPow.hPow
        ```

    7. `HAppend`：连接

        ```lean
        class HAppend (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAppend : α → β → γ
        @[inherit_doc] infixl:65 " ++ " => HAppend.hAppend
        ```

    8. `HMod`：取余

        ```lean
        class HMod (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hMod : α → β → γ
        @[inherit_doc] infixl:70 " % " => HMod.hMod
        ```

    9. `Dvd`：同余

        ```lean
        class Dvd (α : Type _) where
          dvd : α → α → Prop
        @[inherit_doc] infix:50  " ∣ " => Dvd.dvd
        ```

2. 逻辑运算
    1. `Complement`：按位取反

        ```lean
        class Complement (α : Type u) where
          complement : α → α
        @[inherit_doc] prefix:100 "~~~" => Complement.complement
        ```

    2. `HAnd`：按位与

        ```lean
        class HAnd (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAnd : α → β → γ
        @[inherit_doc] infixl:60 " &&& " => HAnd.hAnd
        ```

    3. `HXor`：按位或

        ```lean
        class HXor (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hXor : α → β → γ
        @[inherit_doc] infixl:58 " ^^^ " => HXor.hXor
        ```

    4. `HOr`：按位非

        ```lean
        class HOr (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hOr : α → β → γ
        @[inherit_doc] infixl:55 " ||| " => HOr.hOr
        ```

    5. `HShiftLeft`：左移

        ```lean
        class HShiftLeft (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hShiftLeft : α → β → γ
        @[inherit_doc] infixl:75 " <<< " => HShiftLeft.hShiftLeft
        ```

    6. `HShiftRight`：右移

        ```lean
        class HShiftRight (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hShiftRight : α → β → γ
        @[inherit_doc] infixl:75 " >>> " => HShiftRight.hShiftRight
        ```

    !!! note "真值运算"

        1. `and`：与运算

            ```lean
            @[macro_inline] def and (x y : Bool) : Bool := match x with
              | false => false
              | true => y
            @[inherit_doc] infixl:35 " && " => and
            ```

        2. `or`：或运算

            ```lean
            @[macro_inline] def or (x y : Bool) : Bool := match x with
              | true => true
              | false => y
            @[inherit_doc] infixl:30 " || " => or
            ```

        3. `not`：非运算

            ```lean

            @[inline] def not : Bool → Bool
              | true => false
              | false => true
            @[inherit_doc] notation:max "!" b:40 => not b
            ```

3. 比较运算
    1. `LE`：小于等于

        ```lean
        class LE (α : Type u) where
          le : α → α → Prop
        @[inherit_doc] infix:50 " <= " => LE.le
        @[inherit_doc] infix:50 " ≤ "  => LE.le
        ```

    2. `LT`：小于

        ```lean
        class LT (α : Type u) where
          lt : α → α → Prop
        @[inherit_doc] infix:50 " < "  => LT.lt
        ```

    3. `GE`：大于等于

        ```lean
        @[reducible]
        def GE.ge {α : Type u} [LE α] (a b : α) : Prop := LE.le b a
        @[inherit_doc] infix:50 " >= " => GE.ge
        @[inherit_doc] infix:50 " ≥ "  => GE.ge
        ```

    4. `GT`：大于

        ```lean
        @[reducible]
        def GT.gt {α : Type u} [LT α] (a b : α) : Prop := LT.lt b a
        @[inherit_doc] infix:50 " > "  => GT.gt
        ```

    5. `BEq`：真值相等

        ```lean
        class BEq (α : Type u) where
          beq : α → α → Bool
        @[inherit_doc] infix:50 " == " => BEq.beq

        @[inline] def bne {α : Type u} [BEq α] (a b : α) : Bool := !(a == b)
        @[inherit_doc] infix:50 " != " => bne
        ```

4. 函子与单子
    1. 通用类型类

        ```lean
        class Pure (f : Type u → Type v) where
          pure {α : Type u} : α → f α

        class Bind (m : Type u → Type v) where
          bind : {α β : Type u} → m α → (α → m β) → m β
        @[inherit_doc] infixl:55  " >>= " => Bind.bind

        class Seq (f : Type u → Type v) : Type (max (u+1) v) where
          seq : {α β : Type u} → f (α → β) → (Unit → f α) → f β
        @[inherit_doc] notation:60 a:60 " <*> " b:61 => Seq.seq a fun _ : Unit => b

        class SeqLeft (f : Type u → Type v) : Type (max (u+1) v) where
          seqLeft : {α β : Type u} → f α → (Unit → f β) → f α
        @[inherit_doc] notation:60 a:60 " <* " b:61 => SeqLeft.seqLeft a fun _ : Unit => b

        class SeqRight (f : Type u → Type v) : Type (max (u+1) v) where
          seqRight : {α β : Type u} → f α → (Unit → f β) → f β
        @[inherit_doc] notation:60 a:60 " *> " b:61 => SeqRight.seqRight a fun _ : Unit => b

        class HOrElse (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hOrElse : α → (Unit → β) → γ
        @[inherit_doc HOrElse.hOrElse] syntax:20 term:21 " <|> " term:20 : term

        class HAndThen (α : Type u) (β : Type v) (γ : outParam (Type w)) where
          hAndThen : α → (Unit → β) → γ
        @[inherit_doc HAndThen.hAndThen] syntax:60 term:61 " >> " term:60 : term
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
        ```

    4. `Monad`：单子

        ```lean
        class Monad (m : Type u → Type v) extends Applicative m, Bind m : Type (max (u+1) v) where
          map f x := bind x (Function.comp pure f)
          seq f x := bind f fun y => Functor.map y (x ())
          seqLeft x y := bind x fun a => bind (y ()) (fun _ => pure a)
          seqRight x y := bind x fun _ => y ()
        ```

5. 强制类型转换

## 3.3 数学基础
### 3.3.1 逻辑学
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
        ```

    2. `And`：合取

        ```lean
        @[pp_using_anonymous_constructor]
        structure And (a b : Prop) : Prop where
          intro ::
          left : a
          right : b

        @[inherit_doc] infixr:35 " /\\ " => And
        @[inherit_doc] infixr:35 " ∧ " => And
        ```

    3. `Or`：析取

        ```lean
        inductive Or (a b : Prop) : Prop where
          | inl (h : a) : Or a b
          | inr (h : b) : Or a b

        @[inherit_doc] infixr:30 " \\/ " => Or
        @[inherit_doc] infixr:30 " ∨  " => Or

        theorem Or.intro_left (b : Prop) (h : a) : Or a b := Or.inl h
        theorem Or.intro_right (a : Prop) (h : b) : Or a b := Or.inr h
        theorem Or.elim {c : Prop} (h : Or a b) (left : a → c) (right : b → c) : c :=
        match h with
          | Or.inl h => left h
          | Or.inr h => right h
        ```

    4. `Iff`：逻辑等价

        ```lean
        structure Iff (a b : Prop) : Prop where
          intro ::
          mp : a → b
          mpr : b → a

        @[inherit_doc] infix:20 " <-> " => Iff
        @[inherit_doc] infix:20 " ↔ " => Iff
        ```

3. 量词
    1. 全称量词：通过依值类型实现

        ```lean
        syntax "∀ " binderIdent binderPred ", " term : term
        ```

    2. `Exists`：存在量词

        ```lean
        inductive Exists {α : Sort u} (p : α → Prop) : Prop where
          | intro (w : α) (h : p w) : Exists p

        syntax "∃ " binderIdent binderPred ", " term : term
        ```

4. 等价关系
    1. `HasEquiv`：等价

        ```lean
        class HasEquiv (α : Sort u) where
          Equiv : α → α → Sort v
        @[inherit_doc] infix:50 " ≈ "  => HasEquiv.Equiv
        ```

    2. `Eq`：相等

        ```lean
        inductive Eq : α → α → Prop where
          | refl (a : α) : Eq a a

        @[inherit_doc] infix:50 " = " => Eq
        theorem Eq.symm {α : Sort u} {a b : α} (h : Eq a b) : Eq b a := h ▸ rfl
        theorem Eq.trans {α : Sort u} {a b c : α} (h₁ : Eq a b) (h₂ : Eq b c) : Eq a c := h₂ ▸ h₁

        @[reducible] def Ne {α : Sort u} (a b : α) := ¬(a = b)
        @[inherit_doc] infix:50 " ≠ "  => Ne
        ```

### 3.3.2 集合论
