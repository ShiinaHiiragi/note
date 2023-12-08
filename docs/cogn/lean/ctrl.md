# 2 控制结构

## 2.1 项
1. 类型 `α` 的元素 `x` 为项
2. 若函数 `f: α → β`，且有项 `t: α`，则 `f t` 为类型 `β` 的项
3. 若变量 `x: α` 且项 `t: β`，则 $\lambda$ 表达式 `fun (x: α) => t` 或 `λ (x: α) => t` 为类型 `α → β` 的项
    1. $\lambda$ 表达式与函数定义类似，可以同时定义多个参数、省略部分参数类型指定或省略括号
    2. $\lambda$ 表达式的返回值类型由解释器自行推断

    ```haskell
    #check Nat.zero            -- Nat
    #check HAdd.hAdd Nat.zero  -- Nat → Nat
    #check fun (x: Nat) => x   -- Nat → Nat
    ```

## 2.2 语句
### 2.2.1 组织特性

### 2.2.2 定义
1. 值定义：`def name[: type] := term`
    1. 若 `term` 的类型可被自动推断，则可省略类型指定
    2. $\lambda$ 表达式也可视作值

    ```haskell
    def Str: Type := String
    def pos := fun int: Int => int > 0
    ```

2. 函数定义：`def name params[: type] := term`，其中 `params` 为一个或多个参数声明
    1. 若多个相邻参数有相同类型，则可简写到同一个括号
    2. 若 `params` 或 `term` 的类型可被自动推断，则可省略类型指定
    3. 若 `params` 所有参数类型指定都被省略，则括号也可被省略

    ```haskell
    def succ n := n + 1
    def add (n: Nat) (m: Nat): Nat := n + m
    def mult (n m: Nat) := n * m
    ```

### 2.2.3 定理

### 2.2.4 单子

## 2.3 句法扩展
