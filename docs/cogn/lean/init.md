# 3 初始模块

## 3.1 预定义
### 3.1.1 表达式
1. `termIfThenElse`

    ```lean
    @[inherit_doc ite]
    syntax (name := termIfThenElse) ppRealGroup(
      ppRealFill(ppIndent("if " term " then") ppSpace term)
      ppDedent(ppSpace)
      ppRealFill("else " term)
    ) : term
    ```

2. `termIfLet`

    ```lean
    syntax (name := termIfLet) ppRealGroup(
      ppRealFill(ppIndent("if " "let " term " := " term " then") ppSpace term)
      ppDedent(ppSpace)
      ppRealFill("else " term)
    ) : term
    ```

### 3.1.2 记号

### 3.1.3 字符串插值

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

    2. `Float`：浮点数 <!-- TODO -->

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
    1. `Array`：数组

        ```lean
        structure Array (α : Type u) where
          mk ::
          data : List α
        ```

    2. <!-- TODO -->

### 3.2.2 归纳类型
1. 数据类型
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

    3. `Option`：可选类型，用于表示失败的可能性或可空性

        ```lean
        inductive Option (α : Type u) where
          | none : Option α
          | some (val : α) : Option α
        ```

    4. `Bool`：真值

        ```lean
        inductive Bool : Type where
          | false : Bool
          | true : Bool
        ```

    5. `Nat`：自然数，内核与编译器都对此类型进行了特殊处理

        ```lean
        inductive Nat where
          | zero : Nat
          | succ (n : Nat) : Nat
        ```

        1. 内核可将 `zero` 或 `succ n` 表达式简化为自然数字面值
        2. 运行时本身具有 `Nat` 的特殊表示（直接存储最多 `2^63` 的数字），更大的数字使用任意精度的 `bignum`

2. 数据结构
    1. `List`：（有序）列表，以链表形式实现

        ```lean
        inductive List (α : Type u) where
          | nil : List α
          | cons (head : α) (tail : List α) : List α
        ```

        1. `List α` 相较 `Array α` 更易于推理
        2. 当尾部的多个值共享时，`List α` 更易用于持久数据结构，否则 `Array α` 的性能更好，因其可以进行破坏性更新

    2. <!-- TODO -->

3. 编译相关
    1. `Name`：名称 <!-- TODO -->

        ```lean
        inductive Name where
          | anonymous : Name
          | str (pre : Name) (str : String)
          | num (pre : Name) (i : Nat)
        ```

    2. `Syntax`：句法结构，其中 `SyntaxNodeKind` 即节点种类，用于给 `Syntax` 元素分类 <!-- TODO -->

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

    3. `Expr`：表达式 <!-- TODO -->

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

        <!-- 1. `bvar`：约束变量，用 $\text{de Bruijn}$ 序列表示
        1. `fvar`：自由变量，即非约束出现的变量，用 `LocalContext` 内的 ID 表示
        2. `mvar`：元变量，相当于表达式中的占位符，用 `MetavarContext` 内的 ID 表示
        3. `sort`：`Type u` 或 `Prop` 等
        4. `const`：在 Lean 文档中预定义的常量
        5. `app`：函数应用
        6. `lam`：$\lambda$ 表达式 `lam n t b`，相当于 `fun ($n : $t) => $b`
        7. `forallE`：依值箭头表达式 `forallE n t b`，相当于 `($n : $t) → $b`  
            非依值箭头表达式 `α → β` 是依值箭头表达式 `(a : α) → β`（其中 `β` 不依赖于 `a`）的特殊情形
        8.  `letE`：`let` 表达式 `letE n t v b`，相当于 `let ($n : $t) := $v in $b`
        9.  `lit`：字面值
        10. `mdata`：元数据
        11. `proj`：投影 -->

### 3.2.3 类型类

## 3.3 数学基础
