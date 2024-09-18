# 3 初始模块

## 3.1 预定义记号
### 3.1.1 表达式
1. `termIfThenElse`：条件表达式

    ```lean
    @[inherit_doc ite] syntax (name := termIfThenElse)
      ppRealGroup(
        ppRealFill(ppIndent("if " term " then") ppSpace term)
        ppDedent(ppSpace)
        ppRealFill("else " term)
      ) : term
    ```

2. ...

### 3.1.2 操作符

### 3.1.3 字符串插值

## 3.2 内建类型
### 3.2.1 结构类型

### 3.2.2 归纳类型
1. 数据类型
2. 数据结构
3. 编译相关
    1. `Syntax`：句法结构

        ```lean
        inductive Syntax where
          | missing
          | node (info : SourceInfo) (kind : SyntaxNodeKind) (args : Array Syntax)
          | atom (info : SourceInfo) (val : String)
          | ident (info : SourceInfo) (rawVal : Substring) (val : Name) (preresolved : List Syntax.Preresolved)
        ```

    2. `Expr`：表达式，Lean 中任意项都有对应表达式

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
        4. `sort`：`Type u` 或 `Prop` 等
        5. `const`：在 Lean 文档中预定义的常量
        6. `app`：函数应用
        7. `lam`：$\lambda$ 表达式 `lam n t b`，相当于 `fun ($n : $t) => $b`
        8. `forallE`：依值箭头表达式 `forallE n t b`，相当于 `($n : $t) → $b`  
            非依值箭头表达式 `α → β` 是依值箭头表达式 `(a : α) → β`（其中 `β` 不依赖于 `a`）的特殊情形
        9.  `letE`：`let` 表达式 `letE n t v b`，相当于 `let ($n : $t) := $v in $b`
        10. `lit`：字面值
        11. `mdata`：元数据
        12. `proj`：投影

### 3.2.3 类型类

## 3.3 数学基础
