# 2 句法范畴

## 2.1 指令范畴
### 2.1.1 定义与声明

### 2.1.2 辅助指令
1. `eval`：对项进行规约

    ```lean
    def eval := leading_parser "#eval "
      >> termParser
    ```

2. `check`：仅检查项的类型而不求值

    ```lean
    def check := leading_parser "#check "
      >> termParser
    ```

## 2.2 项范畴
### 2.2.1 表达式及其衍生项
Lean 中任意项都有对应表达式

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

### 2.2.2 非表达式
1. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

    ```lean
    def typeAscription := leading_parser "("
      >> (withoutPosition (withoutForbidden (termParser >> " :" >> optional (ppSpace >> termParser))))
      >> ")"
    ```

2. ...

## 2.3 属性范畴
### 2.3.1 内建属性

### 2.3.2 标签属性

### 2.3.3 参数属性

### 2.3.4 枚举属性

## 2.4 策略范畴

## 2.5 句法范畴
### 2.5.1 句法

### 2.5.2 宏

## 2.6 其他范畴
### 2.6.1 层级范畴

### 2.6.2 优先级范畴

### 2.6.3 do 元素范畴
