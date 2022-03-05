# 2 一阶逻辑

## 2.1 经典一阶逻辑 Hilbert 系统
1. 一阶语言 $\mathscr L(S)$ 即一阶逻辑的形式语言，由逻辑符号和非逻辑符号组成
    1. 逻辑符号
        1. 变元集 $\mathbf{Var} = \{x_i |i\in N\}$，用 $x, y, z$ 表示任意变元
        2. 联结词 $\bot, \wedge, \vee, \to$ 与量词 $\forall, \exists$
        3. 括号 $)$ 与 $($
    2. 非逻辑符号：令 $S = \mathbf R \cup \mathbf F\cup \mathbf C$，则一个一阶语言由非逻辑符号集合 $S$ 决定
        1. 关系符号集 $\mathbf R = \{R_i|i\in N\}$，用 $P, Q, R$ 表示任意关系符号
        2. 函数符号集 $\mathbf F = \{f_i|i\in N\}$，用 $f, g, h$ 表示任意函数符号
        3. 常元符号集 $\mathbf C = \{c_i|i\in N\}$，用 $a, b, c$ 表示任意常元符号
2. 一阶逻辑项与公式的句法
    1. 一阶语言 $\mathscr L(S)$ 的类型是从 $\mathbf R \cup \mathbf F$ 的正整数集合的函数 $\Omega: S \to Z_+$
        1. 对每个 $R \in \mathbf R$，$\Omega(R)$ 称为 $R$ 的元数，$R$ 为 $\Omega(R)$ 元关系符号
        2. 对每个 $f \in \mathbf F$，$\Omega(f)$ 称为 $f$ 的元数，$f$ 为 $\Omega(f)$ 元关系符号
    2. 一阶语言 $\mathscr L(S)$ 的项集 $\mathcal T(S)$ 归纳定义如下

        $$
        \mathcal T(S) \ni t:= x | c | ft_1t_2\cdots t_{\Omega(f)}
        $$

        其中 $x\in \mathbf{Var}, c\in C$ 且 $f\in \mathbf F$

        一阶语言 $\mathscr L(S)$ 的公式集 $\mathcal F(S)$ 归纳定义如下

        $$
        \mathcal F(S) \ni \alpha := Rt_1t_2\cdots t_{\Omega(f)} | \bot | (\alpha_1 \wedge \alpha_2) | (\alpha_1 \vee \alpha_2) | (\alpha_1 \to \alpha_2) | \forall x\alpha | \exists x\alpha
        $$

        其中 $R\in \mathbf R$，$t_1, t_2, \cdots, t_{\Omega(R)}$ 是项，$x$ 是变元．称形如 $Rt_1 t_2 \cdots t_{\Omega(R)}$ 或 $\bot$ 的公式为原子公式，称形如 $\forall x\alpha$ 的公式为全称公式；称形如 $\exists x\alpha$ 的公式为存在公式

    3. 特殊记法
        1. 定义缩写 $\neg \alpha := \alpha \to \bot$，$\alpha \leftrightarrow \beta := (\alpha \to \beta) \wedge (\beta \to \alpha)$
        2. 对于 $\mathbf Q\in \{\forall, \exists\}$ 和有穷长的边缘序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，公式 $\mathbf Qx_1 \mathbf Qx_2 \cdots \mathbf Qx_n \alpha$ 记作 $\mathbf Q \overline x \alpha$
    4. 项与公式的性质
        1. 项 $t$ 的复杂度定义为

            $$
            \begin{aligned}
            & d(x) = 0 = d(c) \\
            & d(ft_1 t_2 \cdots t_{\Omega(f)}) = \max\{d(t_1), d(t_2), \cdots d(t_n)\} + 1
            \end{aligned}
            $$

            公式 $\alpha$ 的复杂度定义为

            $$
            \begin{aligned}
            & d(Rt_1 t_2 \cdots t_n) = 0 = d(\bot) \\
            & d(\alpha \circ \beta) = \max\{d(\alpha, \beta)\} + 1 \\
            & d(\mathbf Q x\alpha) = d(\alpha) + 1 \end{aligned}
            $$

            其中 $\circ \in \{\wedge, \vee, \to\}$ 且 $\mathbf Q\in \{\forall, \exists\}$

        2. 项 $t$ 中出现的变元集合 $\mathrm{var}(t)$ 定义为

            $$
            \begin{aligned}
            &\mathrm{var}(x) = \{x\} \\
            & \mathrm{var}(c) = \varnothing \\
            & \mathrm{var}(ft_1 t_2 \cdots t_{\Omega(f)}) = \mathrm{var}(t_1) \cup \mathrm{var}(t_2) \cup \cdots \cup \mathrm{var}(t_{\Omega(R)})
            \end{aligned}
            $$

        3. 公式 $\alpha$ 所有子公式的集合 $\mathrm{SF}(\alpha)$ 定义为

            $$
            \begin{aligned}
            & \mathrm{SF}(\alpha) = \{\alpha\}, & \alpha \textsf{ 为原子公式} \\
            & \mathrm{SF}(\alpha \circ \beta) = \mathrm{SF}(\alpha) \cup \mathrm{SF}(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\} \\
            & \mathrm{SF}(\mathbf Q x\alpha) = \mathrm{SF}(\alpha) \cup \{\mathbf Qx\alpha\}, &\mathbf Q\in \{\forall, \exists\}
            \end{aligned}
            $$

        4. 自由变元和约束变元
            - 公式 $\alpha$ 中自由变元的集合 $\mathrm{FV}(\alpha)$ 定义为 

                $$
                \begin{aligned}
                & \mathrm{FV}(Rt_1 t_2 \cdots t_{\Omega(R)}) = \mathrm{var}(t_1) \cup \mathrm{var}(t_2) \cup \cdots \cup \mathrm{var}(t_{\Omega(R)}) \\
                & \mathrm{FV}(\alpha \circ \beta) = \mathrm{FV}(\alpha) \cup \mathrm{FV}(\beta), & \circ \in \{\wedge, \vee, \to\} \\
                & \mathrm{FV}(\mathbf Q x\alpha) = \mathrm{FV}(\alpha) - \{x\}, & \mathbf Q\in \{\forall, \exists\}
                \end{aligned}
                $$

                对任意公式集 $\Phi$，令 $\mathrm{FV}(\Phi) = \bigcup_{\alpha \in \Phi} \mathrm{FV}(\alpha)$

            - 公式 $\alpha$ 中约束变元的集合 $\mathrm{BV}(\alpha)$ 定义为

                $$
                \begin{aligned}
                & \mathrm{BV}(\alpha) = \varnothing, & \alpha \textsf{ 为原子公式} \\
                & \mathrm{BV}(\alpha \circ \beta) = \mathrm{BV}(\alpha) \cup \mathrm{BV}(\beta), & \circ \in \{\wedge, \vee, \to\} \\
                & \mathrm{BV}(\mathbf Q x\alpha) = \mathrm{BV}(\alpha) \cup \{x\}, & \mathbf Q\in \{\forall, \exists\}
                \end{aligned}
                $$

                对任意公式集 $\Phi$，令 $\mathrm{BV}(\Phi) = \bigcup_{\alpha \in \Phi} \mathrm{BV}(\alpha)$

            - 对形如 $\mathbf Q x\beta$ 的公式，称 $\beta$ 为量词 $\mathbf Qx$ 的辖域．如果变元 $x$ 在公式 $\alpha$ 中的一次出现不在任何量词 $\mathbf Qx$ 的辖域内，则称此次出现为自由出现；否则称之为约束出现，此时变元 $x$ 在 $\alpha$ 中被左侧最近的量词 $\mathbf Qx$ 约束

    5. 替换与变换：对于任意项序列 $\overline t = \left<t_1, t_2, \cdots, t_n\right>$ 和任意变元序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，用 $\overline t / \overline x$ 表示分别用 $t_i$ 替换 $x_i$，其中 $1 \leqslant i \leqslant n$
        1. 对于公式 $\alpha$，如果公式 $\alpha^\flat$ 是使用不在 $\alpha$ 中出现的新变元 $y_1, y_2, \cdots, y_n$ 分别同时替换 $\alpha$ 中约束变元 $x_1, x_2, \cdots, x_n$ 的所有约束出现得到的公式，则称 $\alpha^\flat$ 是 $\alpha$ 的字母变换
        2. 对任意项 $s\in \mathcal T(S)$，归纳定义 $s(\overline t/\overline y)$ 为

            $$
            \begin{aligned}
            & x(\overline t/\overline y) = \left\{\begin{aligned} & x, & x\notin \overline y \\ & t_i, & \exists i\leqslant n: x = y_i \end{aligned}\right. \\
            & c(\overline t/\overline y) = c \\
            & (fs_1 s_2 \cdots s_{\Omega(f)})(\overline t/\overline y) = fs_1(\overline t/\overline y) s_2(\overline t/\overline y) \cdots s_n(\overline t/\overline y)
            \end{aligned}
            $$

        3. 对任意公式 $\alpha$，归纳定义 $\alpha(\overline t/\overline x)$ 为

            $$
            \begin{aligned}
            & (Rs_1 s_2 \cdots s_{\Omega(R)})(\overline t/\overline x) = fs_1(\overline t/\overline x) s_2(\overline t/\overline x) \cdots s_{\Omega(R)}(\overline t/\overline x) \\
            & \bot(\overline t/\overline x) = \bot \\
            & (\alpha \circ \beta)(\overline t/\overline x) = \alpha(\overline t/\overline x) \circ \beta(\overline t/\overline x), & \circ \in \{\wedge, \vee, \to\} \\
            & (\exists x\alpha)(\overline t/\overline x) = \exists x\alpha(\overline{t_i}/\overline{x_i}, u/x) \\
            & (\forall x\alpha)(\overline t/\overline x) = \forall x\alpha(\overline{t_i}/\overline{x_i}, u/x)
            \end{aligned}
            $$

            其中 $\overline{x_i}$ 是 $\overline x$ 中满足条件 $x_i\in \mathrm{FV}(\exists x\alpha)$ 且 $x_i \neq t_i$ 的所有变元的序列．如果 $x\in \mathrm{var}(t_{i_1}) \cup \mathrm{var}(t_{i_2}) \cup \cdots \cup \mathrm{var}(t_{i_n})$，则 $u = x$，否则 $u$ 为第一个不在 $\alpha, t_{i_1}, t_{i_2}, \cdots, t_{i_n}$ 中出现的变元，变元 $u$ 的引入保证 $\overline{t_i}$ 中出现的变元不被任何量词约束

3. 模型论语义学
    1. 结构：一个 $S-$结构是 $\mathfrak A = (A, I)$，其中 $A$ 是非空集合，称为 $\mathfrak A$ 的论域，$I$ 是定义在 $S$ 上的映射
        1. 对每个关系符号 $R\in \mathbf R, I(R) \subseteq A^{\Omega(R)}$，常用 $R^\mathfrak A$ 或 $R^A$ 代替 $I(R)$
        2. 对每个函数符号 $f\in \mathbf F, I(f): A^{\Omega(f)} \to A$ 是 $A$ 上的 $\Omega(f)$ 元函数，常用 $f^\mathfrak A$ 或 $f^A$ 代替 $I(f)$
        3. 对每个常元符号 $c\in \mathbf C, I(c) \in A$，常用 $c^\mathfrak A$ 或 $c^A$ 代替 $I(c)$
    2. 指派：一个结构 $\mathfrak A = (A, I)$ 中的指派是一个函数 $\sigma: \mathbf{Var} \to A$
    3. 模型：一个模型是有序对 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是结构，$\sigma$ 是 $\mathfrak A$ 中的指派
        1. 对模型 $\mathfrak M = (\mathfrak A, \sigma)$ 和任意变元 $x$，定义指派 $\sigma[\alpha /x]: \mathbf{Var} \to A$ 为 $\sigma[\alpha /x](y) = \left\{\begin{aligned} & a, & y = x \\ & \sigma(y), & y\neq x \end{aligned}\right.$，指派 $\sigma[\alpha /x]$ 与 $\sigma$ 至多在 $x$ 处的值不同．令 $\overline a = \left<a_1, a_2, \cdots, a_n\right>, \overline x = \left<x_1, x_2, \cdots, x_n\right>$，记 $\sigma[\overline a / \overline x] = \sigma[a_1/x_1][a_2/x_2] \cdots [a_n/x_n]$
        2. 项解释：对任意结构 $\mathfrak A$ 和模型 $\mathfrak M = (\mathfrak A, \sigma)$，项 $t$ 在 $\mathfrak M$ 中的解释 $t^\mathfrak M$ 归纳定义为

            $$
            \begin{aligned}
            & x^\mathfrak M = \sigma(x) \\
            & c^\mathfrak M = c^\mathfrak A \\
            & f(\overline t)^\mathfrak M = f^\mathfrak A(\overline t^\mathfrak M)
            \end{aligned}
            $$

            其中 $\overline t^\mathfrak M = t_1^\mathfrak M, t_2^\mathfrak M, \cdots, t_{\Omega(f)}^\mathfrak M$

    4. 模型 $\mathfrak M$ 与公式 $\alpha$ 的满足关系 $\mathfrak M \vDash \alpha$ 定义为

        $$
        \begin{aligned}
        & \mathfrak M \vDash R\overline t\textsf{ 当且仅当 } \overline t^\mathfrak M \in R^\mathfrak M \\
        & \mathfrak M \not \vDash \bot \\
        & \mathfrak M \vDash \alpha \wedge \beta \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 且 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \alpha \vee \beta \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \alpha \to \beta \textsf{ 当且仅当 } \mathfrak M \not \vDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \exists x\alpha \textsf{ 当且仅当存在 } a \in A \textsf{ 使得 } (\mathfrak A, \sigma[a/x]) \vDash \alpha \\
        & \mathfrak M \vDash \forall x\alpha \textsf{ 当且仅当任意 } a \in A \textsf{ 都有 } (\mathfrak A, \sigma[a/x]) \vDash \alpha
        \end{aligned}
        $$

        1. 如果公式 $\alpha$ 有对于结构 $\mathfrak A$ 中的任意指派 $\sigma$ 都有 $(\mathfrak A, \sigma) \vDash \alpha$，则称$\alpha$ 在 $\mathfrak A$ 上有效，记作 $\mathfrak A \vDash \alpha$
        2. 如果公式 $\alpha$ 有对于任意结构 $\mathfrak A$ 都有 $\mathfrak A \vDash \alpha$，则称公式 $\alpha$ 有效，记作 $\vDash_1 \alpha$

    5. 对任意公式集 $\Phi$，若对所有 $\alpha \in \Phi$ 都有 $\mathfrak M \vDash \alpha$，则记作 $\mathfrak M \vDash \Phi$
        1. 设 $\alpha$ 是一个公式，$\Phi$ 是一个公式集，如果对任意模型 $\mathfrak M$ 都有 $\mathfrak M \vDash \Phi$ 蕴涵 $\mathfrak M \alpha$，则称 $\alpha$ 是 $\Phi$ 的语义后承，记作 $\Phi \vDash \alpha$
        2. 对于公式集 $\alpha$，如果存在模型 $\mathfrak M$ 使得 $\mathfrak M \vDash \Phi$，则称 $\Phi$ 可满足；对于公式 $\alpha$，如果 $\{\alpha\}$ 可满足，则称 $\alpha$ 可满足
        3. 对任意公式集 $\Phi \cup \{\alpha\}$，$\Phi \vDash \alpha$ 当且仅当 $\Phi \cup \{\neg \alpha\}$ 不可满足
    6. 一阶逻辑 $\mathbf{FOL} = \{\alpha \in \mathcal F(S) | \vDash_1 \alpha\}$

## 2.2 经典一阶逻辑矢列演算

## 2.3 直觉主义一阶逻辑矢列演算
