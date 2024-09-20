# 3 初始模块

## 3.1 预定义记号
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

### 3.1.2 操作符

### 3.1.3 字符串插值

## 3.2 内建类型
### 3.2.1 结构体类型
1. 数据类型
    1. `Prod`：直积

        ```lean
        structure Prod (α : Type u) (β : Type v) where
          mk ::
          fst : α
          snd : β
        ```

    2. `Float`：浮点数

        ```lean
        structure FloatSpec where
          float : Type
          val   : float
          lt    : float → float → Prop
          le    : float → float → Prop
          decLt : DecidableRel lt
          decLe : DecidableRel le

        opaque floatSpec : FloatSpec := {
          float := Unit,
          val   := (),
          lt    := fun _ _ => True,
          le    := fun _ _ => True,
          decLt := fun _ _ => inferInstanceAs (Decidable True),
          decLe := fun _ _ => inferInstanceAs (Decidable True)
        }

        structure Float where
          val : floatSpec.float
        ```

2. 数据结构

### 3.2.2 归纳类型
1. 数据类型
    1. `Unit`

        ```lean
        inductive PUnit : Sort u where
          | unit : PUnit

        abbrev Unit : Type := PUnit
        @[match_pattern]
        abbrev Unit.unit : Unit := PUnit.unit
        ```

    2. `Nat`：自然数

        ```lean
        inductive Nat where
          | zero : Nat
          | succ (n : Nat) : Nat
        ```

2. 数据结构
3. 编译相关
    1. `Name`：名称

        ```lean
        inductive Name where
          | anonymous : Name
          | str (pre : Name) (str : String)
          | num (pre : Name) (i : Nat)
        ```

    2. `Syntax`：句法结构，其中 `SyntaxNodeKind` 即节点种类，用于给 `Syntax` 元素分类

        ```lean
        abbrev SyntaxNodeKind := Name
        inductive Syntax where
          | missing
          | node (info : SourceInfo) (kind : SyntaxNodeKind) (args : Array Syntax)
          | atom (info : SourceInfo) (val : String)
          | ident (info : SourceInfo) (rawVal : Substring) (val : Name) (preresolved : List Syntax.Preresolved)

        structure TSyntax (ks : SyntaxNodeKinds) where
          raw : Syntax
        ```

    3. `Expr`：表达式

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
