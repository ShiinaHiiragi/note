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
        \mathcal A [\![n]\!](s)& = \mathcal N[\![n]\!]\\
        \mathcal A [\![x]\!](s)& = s(x)\\
        \mathcal A [\![a_1 + a_2]\!](s)& = \mathcal A [\![a_1]\!](s) + \mathcal A [\![a_2]\!](s)\\
        \mathcal A [\![a_1 * a_2]\!](s)& = \mathcal A [\![a_1]\!](s) \times \mathcal A [\![a_2]\!](s)\\
        \mathcal A [\![a_1 - a_2]\!](s)& = \mathcal A [\![a_1]\!](s) - \mathcal A [\![a_2]\!](s)
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

        2. 设 $s, s' \in \mathbf{State}$ 对任意 $x \in \operatorname{FV}(a)$ 都有 $s(x) = s'(x)$，则 $\mathcal A[\![a]\!](s) = \mathcal A[\![a]\!](s)'$ 恒成立

    3. 对于 $\text{Boolean}$ 表达式，递归定义语义函数 $\mathcal B: \mathbf{Bexp} \to (\mathbf{State} \to \mathbf{T})$：

        $$
        \begin{aligned}
        \mathcal B [\![\text{true}]\!](s)& = \top \\
        \mathcal B [\![\text{false}]\!](s)& = \bot \\
        \mathcal B [\![a_1 = a_2]\!](s)& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal A [\![a_1]\!](s) = \mathcal A [\![a_2]\!](s) \\
            & \bot, & \textsf{若 } \mathcal A [\![a_1]\!](s) \neq \mathcal A [\![a_2]\!](s)
            \end{aligned}\right. \\
        \mathcal B [\![\neg b]\!](s)& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal B [\![b]\!](s) = \bot \\
            & \bot, & \textsf{若 } \mathcal B [\![b]\!](s) = \top
            \end{aligned}\right. \\
        \mathcal B [\![b_1 \wedge b_2]\!](s)& = \left\{\begin{aligned}
            & \top, & \textsf{若 } \mathcal B [\![b_1]\!](s) = \top \textsf{ 且 } \mathcal B [\![B_2]\!](s) = \top \\
            & \bot, & \textsf{若 } \mathcal B [\![b_1]\!](s) = \bot \textsf{ 或 } \mathcal B [\![B_2]\!](s) = \bot
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

        2. 设 $s, s' \in \mathbf{State}$ 对任意 $x \in \operatorname{FV}(a)$ 都有 $s(x) = s'(x)$，则 $\mathcal B[\![b]\!](s) = \mathcal B[\![b]\!](s)'$ 恒成立

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
        \mathcal A[\![a[y \to a_0]]\!](s) & = \mathcal A[\![a]\!](s[y \to \mathcal A[\![a_0]\!](s)]) \\
        \mathcal B[\![b[y \to a_0]]\!](s) & = \mathcal B[\![b]\!](s[y \to \mathcal A[\![a_0]\!](s)])
        \end{aligned}
        $$

## 2.1 操作语义
- 操作语义学的传递系统由两种格局构成
    1. $\left<S, s\right>$，其中 $S$ 表示将要执行的语句，$s$ 表示语句执行的初始状态
    2. $s$：表示终止状态，即终止格局

### 2.1.1 自然语义
1. 自然语义（即大步操作语义）的传递关系写作 $\left<S, s\right> \to s'$，即从状态 $s$ 执行语句 $S$ 后，状态变为 $s'$．传递关系递归定义如下：
    1. $[\text{skip}_{\text{ns}}]: \ \left<\text{skip}, s\right> \to S$
    2. $[\text{ass}_{\text{ns}}]: \ \left<x:=a, s\right> \to s[x \to \mathcal A[\![a]\!](s)]$
    3. $[\text{comp}_{\text{ns}}]: \ \begin{prooftree} \AxiomC{\(\left<S_1, s\right> \to s'\)} \AxiomC{\(\left<S_2, s'\right> \to s''\)} \BinaryInfC{\(\left<S_1; S_2, s\right> \to s''\)} \end{prooftree}$
    4. $[\text{if}_{\text{ns}}^{\text{t}}]: \ \begin{prooftree} \AxiomC{\(\left<S_1, s\right> \to s'\)} \UnaryInfC{\(\left<\text{if } b \text{ then } S_1 \text{ else } S_2, s\right> \to s'\)} \end{prooftree}$，若 $\mathcal B[\![b]\!](s) = \top$
    5. $[\text{if}_{\text{ns}}^{\text{f}}]: \ \begin{prooftree} \AxiomC{\(\left<S_2, s\right> \to s'\)} \UnaryInfC{\(\left<\text{if } b \text{ then } S_1 \text{ else } S_2, s\right> \to s'\)} \end{prooftree}$，若 $\mathcal B[\![b]\!](s) = \bot$
    6. $[\text{while}_{\text{ns}}^{\text{t}}]: \ \begin{prooftree} \AxiomC{\(\left<S, s\right> \to s'\)} \AxiomC{\(\left<\text{while } b \text{ do } S, s'\right> \to s''\)} \BinaryInfC{\(\left<\text{while } b \text{ do } S, s\right> \to s''\)} \end{prooftree}$，若 $\mathcal B[\![b]\!](s) = \top$
    7. $[\text{while}_{\text{ns}}^{\text{f}}]: \ \left<\text{while } b \text{ do } S, s\right> \to s$，若 $\mathcal B[\![b]\!](s) = \bot$

    称上述没有前提的推导规则为公理

    1. 用上述规则生成传递关系 $\left<S, s\right> \to s'$ 可得到派生树
        1. 派生树的根节点是 $\left<S, s\right> \to s'$，叶节点是上述公理的实例
        2. 若派生树只有一个节点，且是公理的实例，则称该派生树是简单的，否则成其是复合的
    2. 自然语义是确定的，即对所有给定的语句 $S$ 与状态 $s, s', s''$，都有 $\left<S, s\right> \to s'$ 与 $\left<S, s\right> \to s''$ 蕴含 $s' = s''$

2. 定义语义函数：$\mathcal S_{\text{ns}}: \mathbf{Stm} \to (\mathbf{State} \rightharpoonup \mathbf{State})$
    1. 对于任意状态 $S$，$\mathcal S_{\text{ns}}[\![S]\!]$ 是一个部分函数
    2. 若 $\left<S, s\right> \to s'$，则 $\mathcal S_{\text{ns}}[\![S]\!](s) = s'$，否则该部分函数无定义
3. 语义等价：对于语句 $S_1, S_2$ 以及任意状态 $s$ 与 $s'$，若 $\left<S_1, s\right> \to S'$ 当且仅当 $\left<S_2, s\right> \to s'$，则称语句 $S_1, S_2$ 语义等价
    1. 在自然语义的定义下，$\text{while } b \text{ do } S$ 与 $\text{if } b \text{ then } (\text{S; while } b \text{ do } S) \text{ else skip}$ 语义等价
    2. 在自然语义的定义下，$S_1; (S_2; S_3)$ 与 $(S_1; S_2); S_3$ 语义等价

### 2.1.2 结构操作语义
1. 结构操作语义（即小步操作语义）的传递关系写作 $\left<S, s\right> \Rightarrow \gamma$
    1. 若 $\gamma$ 形如 $\left<S', s'\right>$，则语句 $S$ 从状态 $s$ 的执行是不完全的，且余下的计算可以由中间格局 $\left<S', s'\right>$ 表示
    2. 若 $\gamma$ 形如 $s'$，则语句 $S$ 从状态 $s$ 的执行完全，且终止状态为 $s'$

    传递关系递归定义如下：

    1. $[\text{skip}_{\text{sos}}]: \ \left<\text{skip}, s\right> \Rightarrow s$
    2. $[\text{ass}_{\text{sos}}]: \ \left<x:=a, s\right> \Rightarrow s[x \to \mathcal A[\![a]\!](s)]$
    3. $[\text{comp}_{\text{sos}}^{1}]: \ \begin{prooftree} \AxiomC{\(\left<S_1, s\right> \Rightarrow \left<S_1', s'\right>\)} \UnaryInfC{\(\left<S_1; S_2, s\right> \Rightarrow \left<S_1'; S_2, s'\right>\)} \end{prooftree}$
    4. $[\text{comp}_{\text{sos}}^{2}]: \ \begin{prooftree} \AxiomC{\(\left<S_1, s\right> \Rightarrow s'\)} \UnaryInfC{\(\left<S_1; S_2, s\right> \Rightarrow \left<S_2, s'\right>\)} \end{prooftree}$
    5. $[\text{if}_{\text{sos}}^{\text{t}}]: \ \left<\text{if } b \text{ then } S_1 \text{ else } S_2, s\right> \Rightarrow \left<S_1, s\right>$，若 $\mathcal B[\![b]\!]s = \top$
    6. $[\text{if}_{\text{sos}}^{\text{f}}]: \ \left<\text{if } b \text{ then } S_1 \text{ else } S_2, s\right> \Rightarrow \left<S_2, s\right>$，若 $\mathcal B[\![b]\!]s = \bot$
    7. $[\text{while}_{\text{sos}}]: \ \left<\text{while } b \text{ do } S, s\right> \Rightarrow \left<\text{if } b \text{ then } (\text{S; while } b \text{ do } S) \text{ else skip}, s\right>$

    若不存在 $\gamma$ 使得 $\left<S, s\right> \Rightarrow \gamma$，则称 $\left<S, s\right>$ 是阻塞的

    1. 从状态 $s$ 开始执行语句 $S$ 所产生序列，被称作派生序列，其有两种类型
        1. 有穷序列：$\gamma_0, \gamma_1, \cdots, \gamma_k$，也可写作 $\gamma_0 \Rightarrow \gamma_1 \Rightarrow \cdots \Rightarrow \gamma_k$，使得 $\gamma_0 = \left<S, s\right>$ 且 $\gamma_i \Rightarrow \gamma_{i+1}$ 对任意 $0 \leqslant i < k$ 均成立．此时 $\gamma_k$ 是终止格局或阻塞格局，称以状态 $s$ 在语句 $S$ 上的执行终止，并在 $\gamma_k$ 为终止格局时称该执行成功终止
        2. 无穷序列 $\gamma_0, \gamma_1, \gamma_2, \cdots$，也可写作 $\gamma_0 \Rightarrow \gamma_1 \Rightarrow \gamma_2 \Rightarrow \cdots$，使得 $\gamma_0 = \left<S, s\right>$ 且 $\gamma_i \Rightarrow \gamma_{i+1}$ 对任意 $i \geqslant 0$ 均成立，称以状态 $s$ 在语句 $S$ 上的执行陷入循环

        若语句 $S$ 在所有状态上的执行都终止，则称语句 $S$ 总是终止，若在所有状态上的执行都陷入循环，则称语句 $S$ 总是陷入循环

    2. 用 $\gamma_0 \Rightarrow^{i} \gamma_i$ 表示从格局 $\gamma_0$ 到 $\gamma_i$ 需要执行 $i$ 步，用 $\gamma_0 \Rightarrow^{*} \gamma_i$ 表示从格局 $\gamma_0$ 到 $\gamma_i$ 需要执行有限步．上述两者是派生序列当且仅当 $\gamma_i$ 是终止格局或阻塞格局
        1. 若 $\left<S_1; S_2, s\right> \Rightarrow^{k} s''$，则存在状态 $s'$ 与 $k_0 \in \mathbf N$，使得 $\left<S_1, s\right> \Rightarrow^{k_0} s'$ 以及 $\left<S_2, s'\right> \Rightarrow^{k-k_0} s''$
        2. 若 $\left<S_1, s\right> \Rightarrow^{k} s'$，则 $\left<S_1; S_2, s\right> \Rightarrow^{k} \left<S_2, s'\right>$
    3. 结构操作语义是确定的，即对所有给定的语句 $S$，状态 $s$ 与格局 $\gamma, \gamma'$，都有 $\left<S, s\right> \Rightarrow \gamma$ 与 $\left<S, s\right> \Rightarrow \gamma'$ 蕴含 $\gamma = \gamma'$
        1. 对于一个给定格局 $\left<S, s\right>$，仅存在唯一的派生序列
        2. 不存在 $\textbf{While}$ 中给定的语句 $S$ 与状态 $s$，其执行既能终止又能陷入循环

2. 定义语义函数：$\mathcal S_{\text{sos}}: \mathbf{Stm} \to (\mathbf{State} \rightharpoonup \mathbf{State})$
    1. 对于任意状态 $S$，$\mathcal S_{\text{sos}}[\![S]\!]$ 是一个部分函数
    2. 若 $\left<S, s\right> \Rightarrow^{*} s'$，则 $\mathcal S_{\text{sos}}[\![S]\!](s) = s'$，否则该部分函数无定义
3. 语义等价：对于 $\textbf{While}$ 中的任意语句 $S$，均有 $\mathcal S_{\text{ns}}[\![S]\!] = \mathcal S_{\text{sos}} [\![S]\!]$
    1. 对于 $\textbf{While}$ 中的任意语句 $S$ 与状态 $s, s'$，均有 $\left<S, s\right> \to s'$ 蕴含 $\left<S, s\right> \Rightarrow^{*} s'$
    2. 对于 $\textbf{While}$ 中的任意语句 $S$ 与状态 $s, s'$，均有 $\left<S, s\right> \Rightarrow^{k} s'$ 蕴含 $\left<S, s\right> \to s'$

## 2.2 指称语义
1. 递归定义指称语义函数 $\mathcal S_{\text{ds}}: \mathbf{Stm} \to (\mathbf{State} \rightharpoonup \mathbf{State})$ 如下
    1. $\mathcal S_{\text{ds}}[\![x:=a]\!]s = s[x \to \mathcal A[\![a]\!]s]$
    2. $\mathcal S_{\text{ds}}[\![\text{skip}]\!] = \mathrm{id}$
    3. $\mathcal S_{\text{ds}}[\![S_1; S_2]\!] = \mathcal S_{\text{ds}}[\![S_2]\!] \circ \mathcal S_{\text{ds}} [\![S_1]\!]$
    4. $\mathcal S_{\text{ds}}[\![\text{if } b \text{ then } S_1 \text{ else } S_2]\!] = \operatorname{cond}(\mathcal B[\![b]\!], \mathcal S_{\text{ds}}[\![S_1]\!], \mathcal S_{\text{ds}}[\![S_2]\!])$
    5. $\mathcal S_{\text{ds}}[\![\text{while } b \text{ do } S]\!] = \operatorname{FIX} F$

    可证明上述定义的语义函数是全函数，其中辅助函数定义如下：

    1. 定义 $\mathrm{cond}: (\mathbf{State} \to \mathbf{T}) \times (\mathbf{State} \rightharpoonup \mathbf{State}) \times (\mathbf{State} \rightharpoonup \mathbf{State}) \to (\mathbf{State} \rightharpoonup \mathbf{State})$ 为

        $$
        \operatorname{cond}(p, g_1, g_2)(s) = \left\{\begin{aligned}
        & g_1, & p(s) = \top \\
        & g_2, & p(s) = \bot
        \end{aligned}\right.
        $$

    2. 定义 $\mathrm{FIX}: ((\mathbf{State} \rightharpoonup \mathbf{State}) \to (\mathbf{State} \rightharpoonup \mathbf{State})) \to (\mathbf{State} \rightharpoonup \mathbf{State})$ 为函数 $F$ 的不动点，其中 $F$ 定义为 $F(g) = \operatorname{cond}(\mathcal B[\![b]\!], g \circ \mathcal S_{\text{ds}}, \mathrm{id})$．$\operatorname{FIX} F$ 定义为满足下列两个条件的函数 $g$
        1. $g$ 是 $F$ 的不动点，即 $F(g) = g$
        2. $g$ 是 $F$ 最小不动点，即若 $g'$ 是 $F$ 的不动点，则对于任意状态 $s$ 与 $s'$，若 $g(s) = s'$，则 $g'(s) = s'$

2. 完全偏序集：设 $\mathbf{S}$ 是全体部分函数 $\mathbf{State} \rightharpoonup \mathbf{State}$ 组成的集合
    1. 最小元：设 $\sqsubseteq$ 是集合 $D$ 上的偏序关系，$d \in D$．若对于任意 $d' \in D$，都有 $d \sqsubseteq d'$ 成立，则称 $d$ 是 $D$ 上的最小元，记作 $\bot_{D}$
        1. 若偏序集 $(D, \sqsubseteq)$ 上有最小元 $\bot_{D}$，则 $\bot_{D}$ 唯一
        2. 偏序集 $(\mathbf{S}, \sqsubseteq)$ 上最小元 $\bot$ 存在，定义为 $\bot = \varnothing$，即对任意状态 $s$ 都有 $\bot(s)$ 无定义
    2. 链：称偏序集 $D$ 的全序子集为 $D$ 的一条链，若 $D$ 的所有链 $Y$ 都有最小上界（记作 ${\displaystyle \bigsqcup X_0}$），则称 $D$ 为链完全偏序集
        1. 若 $(D, \sqsubseteq)$ 是一个链完全偏序集，则 $D$ 有最小元 $\bot = {\displaystyle \bigsqcup \varnothing}$
        2. $(\mathbf{S}, \sqsubseteq)$ 是一个链完全偏序集，且对于链 $Y$ 的最小上界 ${\displaystyle \bigsqcup Y = \bigcup Y}$
3. 保序函数：偏序集 $(D, \sqsubseteq)$ 与 $(D', \sqsubseteq')$ 满足链完全偏序条件，令 $f: D \to D', d_1, d_2 \in D$，若 $d_1 \sqsubseteq d_2$ 蕴含 $f(d_1) \sqsubseteq f(d_2)$，则称 $f$ 是保序函数
    1. 设偏序集 $(D, \sqsubseteq), (D', \sqsubseteq')$ 与 $(D'', \sqsubseteq'')$ 满足链完全偏序条件，令 $f: D \to D', f': D' \to D''$ 是保序函数，则 $f' \circ f$ 也是保序函数
    2. 设偏序集 $(D, \sqsubseteq)$ 与 $(D', \sqsubseteq')$ 满足链完全偏序条件，$f: D \to D'$ 是一个保序函数．若 $Y$ 是 $D$ 中的链，则 $f[Y]$ 是 $D'$ 中的链且 ${\displaystyle \bigsqcup f[Y] \sqsubseteq' f\left(\bigsqcup Y\right)}$，即保序函数无法保持链上的最小上界性质
4. 连续函数：设偏序集 $(D, \sqsubseteq)$ 与 $(D', \sqsubseteq')$ 满足链完全偏序条件，$f: D \to D'$ 是一个保序函数．若对于所有非空链 $Y$ 均有 ${\displaystyle \bigsqcup f[Y] = f\left(\bigsqcup Y\right)}$，则称 $f$ 是一个连续函数．若上述性质对空集也成立（即 $f(\bot) = \bot$），则称 $f$ 是严格连续函数
    1. 设偏序集 $(D, \sqsubseteq), (D', \sqsubseteq')$ 与 $(D'', \sqsubseteq'')$ 满足链完全偏序条件，令 $f: D \to D', f': D' \to D''$ 是连续函数，则 $f' \circ f$ 也是连续函数
    2. 最小不动点定理：令 $f: D \to D$ 是链完全偏序集 $(D, \sqsubseteq)$ 上的连续函数，最小元为 $\bot$，则 $\operatorname{FIX} f = {\displaystyle \bigsqcup \left\{[f^{n}](\bot) \mid n \geqslant 0\right\}}$ 即 $D$ 中函数 $f$ 的最小不动点，其中 $[f^{n}]$ 是函数 $f$ 的 $n$ 次复合
        1. 令 $f: D \to D$ 是链完全偏序集 $(D, \sqsubseteq)$ 上的连续函数，$d \in D$ 满足 $f(d) \sqsubseteq d$，则 $\operatorname{FIX} f \sqsubseteq d$
        2. 令 $(D, \sqsubseteq)$ 是一个链完全偏序集，定义 $(D \times D, \sqsubseteq')$ 为 $f_1 \sqsubseteq' f_2$ 当且仅当对所有 $d \in D$ 都有 $f_1(d) \sqsubseteq f_2(d)$
            - $(D \times D, \sqsubseteq')$ 也是一个链完全偏序集
            - 对所有 $D \times D$ 中连续函数的非空链 $\mathcal F$，都有 ${\displaystyle \operatorname{FIX}\left(\bigsqcup' \mathcal F\right) = \bigsqcup \left\{\operatorname{FIX} f \mid f \in \mathcal F\right\}}$
    3. 函数 $F(g) = \operatorname{cond}(\mathcal B[\![b]\!], g \circ \mathcal S_{\text{ds}}, \mathrm{id}) = F_1 \circ F_2(g)$ 是连续函数
        1. 令 $g_0: \mathbf{State} \rightharpoonup \mathbf{State}, p: \mathbf{State} \to \mathbf{T}$，则 $F_1(g) = \operatorname{cond}(p, g, g_0)$ 是连续函数
        2. 令 $g_0: \mathbf{State} \rightharpoonup \mathbf{State}$，则 $F_2(g) = g \circ g_0$ 与 $F_3(g) = g_0 \circ g$ 均是连续函数
5. 语义等价：对于 $\textbf{While}$ 中的任意语句 $S$，均有 $\mathcal S_{\text{sos}}[\![S]\!] = \mathcal S_{\text{ds}}[\![S]\!]$

## 2.3 公理语义
