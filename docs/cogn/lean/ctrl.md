# 2 控制结构

## 2.1 项
1. 类型 `α` 的元素 `x` 为项
2. 若函数 `f: α → β`，且有项 `t: α`，则 `f t` 为类型 `β` 的项
3. 若变量 `x: α` 且项 `t: β`，则 $\lambda$ 表达式 `fun (x: α) => t` 或 `λ (x: α) => t` 为类型 `α → β` 的项
    1. $\lambda$ 表达式与函数定义类似，可以同时定义多个参数、省略部分参数类型以及省略括号
    2. $\lambda$ 表达式的返回值类型由解释器自行推断

    ```haskell
    #check Nat.zero            -- Nat
    #check HAdd.hAdd Nat.zero  -- Nat → Nat
    #check fun (x: Nat) => x   -- Nat → Nat
    ```

## 2.2 语句
### 2.2.1 组织特性

### 2.2.2 定义
1. 定义：`def const [params][: type] := term`，其中参数列表 `params` 形如 `(x_1: α_1) (x_2: α_2) ... (x_n: α_n)`
    1. 当 `params` 长度为零时，常量定义退化为不带参数的值定义
    2. 若多个相邻参数有相同类型，则可合并到同一个括号
    3. 若 `params` 或 `term` 的类型可被自动推断，则可省略类型指定，此时括号可以省略

    ```haskell
    def Str: Type := String
    def pos := fun int: Int => int > 0
    def succ n := n + 1
    def add (n m: Nat) := n + m
    def mult (n: Nat) (m: Nat): Nat := n * m
    ```

2. 缩写：用 `abbrev` 代替 `def` 可创建简单的符号表示，而不会为该表达式计算与创建新对象

    ```haskell
    abbrev zero := 1 - 1
    abbrev N: Type := Nat
    def one: N := 1
    ```

### 2.2.3 定理

### 2.2.4 单子

## 2.3 句法扩展
