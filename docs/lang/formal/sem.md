# 2 形式语义

1. 本节为形式语义分析虚构上下文无关语言 $\textbf{While}$，定义如下：
    1. 元变量与对应范畴：
        1. $n$ 表示数码 $\mathbf{Num}$
        2. $x$ 表示变量 $\mathbf{Var}$
        3. $a$ 表示算术表达式 $\mathbf{Aexp}$
        4. $b$ 表示 $\text{Boolean}$ 表达式 $\mathbf{Bexp}$
        5. $s$ 表示语句 $\mathbf{Stm}$

        元变量可以加上下标，例如 $x'$ 或 $x_0$ 仍然表示变量

    2. 数码 $n$ 是数字的字符串，变量 $x$ 是字母与数字的字符串，且以字母开头，其余原变量结构定义为

        $$
        \begin{aligned}
        a & := n \mid x \mid a_1 + a_2 \mid a_1 * a_2 \mid a_1 - a_2 \\
        b & := \text{true} \mid \text{false} \mid a_1 = a_2 \mid a_1 \leqslant a_2 \mid \neg b \mid b_1 \vee b_2 \\
        S & := \text{skip} \mid x:=a \mid S_1; S_2 \mid \text{if } b \text{ then } S_1 \text{ else } S_2 \mid \text{while } b \text{ do } S
        \end{aligned}
        $$

        对算术表达式而言，称 $n, x$ 为基本元素，$a_1 + a_2, a_1 * a_2, a_1 - a_2$ 为复合元素；$\text{Boolean}$ 表达式与语句同理

2. 表达式的语义

## 2.1 操作语义
### 2.1.1 自然语义

### 2.1.2 结构操作语义

## 2.2 指称语义

## 2.3 公理语义
