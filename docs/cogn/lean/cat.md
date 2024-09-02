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
### 2.2.1 表达式
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

### 2.2.2 非表达式
1. `«leading_parser»`：Lean 内部使用的句法解析器

    ```lean
    def «leading_parser» := leading_parser:leadPrec "leading_parser"
      >> optExprPrecedence
      >> optional withAnonymousAntiquot
      >> ppSpace
      >> termParser
    ```

2. `typeAscription`：类型归属记号，指示 Lean 将表达式解释为指定类型

    ```lean
    def typeAscription := leading_parser "("
      >> (withoutPosition (withoutForbidden (termParser >> " :" >> optional (ppSpace >> termParser))))
      >> ")"
    ```

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
