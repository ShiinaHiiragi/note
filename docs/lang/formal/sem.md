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
        b & := \text{true} \mid \text{false} \mid a_1 = a_2 \mid a_1 \leqslant a_2 \mid \neg b \mid b_1 \wedge b_2 \\
        S & := \text{skip} \mid x:=a \mid S_1; S_2 \mid \text{if } b \text{ then } S_1 \text{ else } S_2 \mid \text{while } b \text{ do } S
        \end{aligned}
        $$

        对算术表达式而言，称 $n, x$ 为基本元素，$a_1 + a_2, a_1 * a_2, a_1 - a_2$ 为复合元素；$\text{Boolean}$ 表达式与语句同理

2. 表达式的语义函数
    1. 定义状态函数 $\mathbf{State}: \mathbf{Var} \to \mathbf{Z}$，通常将状态写作列表形式，例如 $[x \to 2, y \to 1, z \to 0]$
    2. 对于算术表达式，递归定义语义函数 $\mathcal A: \mathbf{Aexp} \to (\mathbf{State} \to \mathbf{Z})$：

        $$
        \begin{aligned}
        \mathcal A [\![n]\!] s& = \mathcal N[\![n]\!]\\
        \mathcal A [\![x]\!] s& = s(x)\\
        \mathcal A [\![a_1 + a_2]\!] s& = \mathcal A [\![a_1]\!] s + \mathcal A [\![a_2]\!] s\\
        \mathcal A [\![a_1 * a_2]\!] s& = \mathcal A [\![a_1]\!] s \times \mathcal A [\![a_2]\!] s\\
        \mathcal A [\![a_1 - a_2]\!] s& = \mathcal A [\![a_1]\!] s - \mathcal A [\![a_2]\!] s
        \end{aligned}
        $$

        其中 $\mathcal N: \mathbf{Num} \to \mathbf{Z}$ 将数码映射到对应整数

        1. 递归定义自由变量 $\operatorname{FV}(a)$

            $$
            \begin{aligned}
            \operatorname{FV}(n) & = \varnothing \\
            \operatorname{FV}(x) & = \{x\} \\
            \operatorname{FV}(a_1 + a_2) & = \operatorname{FV}(a_1) \cup \operatorname{FV}(a_2) \\
            \operatorname{FV}(a_1 * a_2) & = \operatorname{FV}(a_1) \cup \operatorname{FV}(a_2) \\
            \operatorname{FV}(a_1 - a_2) & = \operatorname{FV}(a_1) \cup \operatorname{FV}(a_2)
            \end{aligned}
            $$

        2. 设 $s, s' \in \mathbf{State}$ 对任意 $x \in \operatorname{FV}(a)$ 都有 $s(x) = s'(x)$，则 $\mathcal A[\![a]\!]s = \mathcal A[\![a]\!]s'$ 恒成立

    3. 对于 $\text{Boolean}$ 表达式，递归定义语义函数 $\mathcal B: \mathbf{Bexp} \to (\mathbf{State} \to \mathbf{T})$：

        $$
        \begin{aligned}
        \mathcal B [\![\text{true}]\!] s& = \top \\
        \mathcal B [\![\text{false}]\!] s& = \bot \\
        \mathcal B [\![a_1 = a_2]\!] s& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal A [\![a_1]\!] s = \mathcal A [\![a_2]\!] s \\
            & \bot, & \textsf{若 } \mathcal A [\![a_1]\!] s \neq \mathcal A [\![a_2]\!] s
            \end{aligned}\right. \\
        \mathcal B [\![\neg b]\!] s& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal B [\![b]\!] s = \bot \\
            & \bot, & \textsf{若 } \mathcal B [\![b]\!] s = \top
            \end{aligned}\right. \\
        \mathcal B [\![b_1 \wedge b_2]\!] s& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal B [\![b_1]\!] s = \top \textsf{ 且 } \mathcal B [\![B_2]\!] s = \top \\
            & \bot, & \textsf{若 } \mathcal B [\![b_1]\!] s = \bot \textsf{ 或 } \mathcal B [\![B_2]\!] s = \bot
            \end{aligned}\right. \\
        \end{aligned}
        $$

        其中 $\mathbf T = \{\top, \bot\}$

        1. 递归定义自由变量 $\operatorname{FV}(b)$

            $$
            \begin{aligned}
            \operatorname{FV}(\text{true}) & = \varnothing \\
            \operatorname{FV}(\text{false}) & = \varnothing \\
            \operatorname{FV}(a_1 = a_2) & = \operatorname{FV}(a_1) \cup \operatorname{FV}(a_2) \\
            \operatorname{FV}(a_1 \leqslant a_2) & = \operatorname{FV}(a_1) \cup \operatorname{FV}(a_2) \\
            \operatorname{FV}(\neg b) & = \operatorname{FV}(b) \\
            \operatorname{FV}(b_1 \wedge b_2) & = \operatorname{FV}(b_1) \cup \operatorname{FV}(b_2)
            \end{aligned}
            $$

        2. 设 $s, s' \in \mathbf{State}$ 对任意 $x \in \operatorname{FV}(a)$ 都有 $s(x) = s'(x)$，则 $\mathcal B[\![b]\!]s = \mathcal B[\![b]\!]s'$ 恒成立

3. 替换：将算术表达式 $a$ 中出现的所有 $y$ 替换为算术表达式 $a_0$ 记作 $a[y \to a_0]$，递归定义为

    $$
    \begin{aligned}
    n [y \to a_0] & = n \\
    x [y \to a_0] & = \left\{\begin{aligned}
        & a_0, & x = y \\
        & x, & x \neq y
    \end{aligned}\right. \\
    (a_1 + a_2) [y \to a_0] & = (a_1[y \to a_0]) + (a_2[y \to a_0]) \\
    (a_1 * a_2) [y \to a_0] & = (a_1[y \to a_0]) * (a_2[y \to a_0]) \\
    (a_1 - a_2) [y \to a_0] & = (a_1[y \to a_0]) - (a_2[y \to a_0])
    \end{aligned}
    $$

    对于布尔表达式 $b$，同样递归定义 $b[y \to a_0]$ 为

    $$
    \begin{aligned}
    \text{true}[y \to a_0] & = \text{true} \\
    \text{false}[y \to a_0] & = \text{false} \\
    (a_1 = a_2)[y \to a_0] & = (a_1[y \to a_0]) = (a_2[y \to a_0]) \\
    (a_1 \leqslant a_2)[y \to a_0] & = (a_1[y \to a_0]) \leqslant (a_2[y \to a_0]) \\
    (\neg b)[y \to a_0] & = b[y \to a_0] \\
    (b_1 \wedge b_2)[y \to a_0] & = (b_1[y \to a_0]) \wedge (b_2[y \to a_0])
    \end{aligned}
    $$

    1. 将状态 $s$ 中的变量 $y$ 替换为值 $v$，记为 $s[y \to v]$，定义为

        $$
        (s[y \to v])(x) = \left\{\begin{aligned}
        & v, & x = y \\
        & s(x), & x \neq y
        \end{aligned}\right.
        $$

    2. 对于任意状态 $s$，都有

        $$
        \begin{aligned}
        \mathcal A[\![a[y \to a_0]]\!]s & = \mathcal A[\![a]\!](s[y \to \mathcal A[\![a_0]\!]s]) \\
        \mathcal B[\![b[y \to a_0]]\!]s & = \mathcal B[\![b]\!](s[y \to \mathcal A[\![a_0]\!]s])
        \end{aligned}
        $$

## 2.1 操作语义
### 2.1.1 自然语义

### 2.1.2 结构操作语义

## 2.2 指称语义

## 2.3 公理语义
