# 2 控制结构

## 2.1 项
1. 类型 `α` 的元素 `x` 为项
2. 若函数 `f: α → β`，且有项 `t: α`，则 `f t` 为类型 `β` 的项
3. 若变量 `x: α` 且项 `t: β`，则函数 `fun x: α => t` 或 `λ x: α => t` 为类型 `α → β` 的项

    ```haskell
    #check Nat.zero            -- Nat
    #check HAdd.hAdd Nat.zero  -- Nat → Nat
    #check fun x: Nat => x     -- Nat → Nat
    ```

## 2.2 语句
### 2.2.1 组织特性

### 2.2.2 定义
1. 值定义：`def name: type := term`，若 `term` 的类型可被自动推断，则可省略类型指定

    ```haskell
    def name: String := "Alice"
    def succ := fun nat: Nat => nat + 1
    ```

2. 函数定义：`def name params: type := term`，若 `term` 的类型可被自动推断，则可省略类型指定
    1. 在值定义的基础上增加了参数列表
    2. 若多个相邻参数有相同类型，则可简写到同一个括号

    ```haskell
    def pos (nat: Int): Bool := nat > 0
    def add (x: Nat) (y: Nat) := x + y
    def mul (x y: Nat) := x * y
    ```

### 2.2.3 定理

### 2.2.4 单子

## 2.3 句法扩展
