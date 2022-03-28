# 2 一阶逻辑

## 2.1 经典一阶逻辑 Hilbert 系统
1. 一阶语言 $\mathscr L(S)$ 即一阶逻辑的形式语言，由逻辑符号和非逻辑符号组成
    1. 逻辑符号
        1. 变元集 $\mathbf{Var} = \{x_i |i\in \lambda\}$，用 $x, y, z$ 表示任意变元
        2. 联结词 $\bot, \wedge, \vee, \to$ 与量词 $\forall, \exists$
        3. 括号 $)$ 与 $($
    2. 非逻辑符号：令 $S = \mathbf R \cup \mathbf F\cup \mathbf C$，则一个一阶语言由非逻辑符号集合 $S$ 决定
        1. 关系符号集 $\mathbf R = \{R_i|i\in \lambda\}$，用 $P, Q, R$ 表示任意关系符号
        2. 函数符号集 $\mathbf F = \{f_i|i\in \lambda\}$，用 $f, g, h$ 表示任意函数符号
        3. 常元符号集 $\mathbf C = \{c_i|i\in \lambda\}$，用 $a, b, c$ 表示任意常元符号

    !!! note "形式主义进路"
        1. 证明论下的命题逻辑与一阶逻辑是从朴素集合论中建立的理论，因此变元集 $\mathbf{Var}$ 与一阶语言 $\mathscr L(S)$ 的基数 $\lambda$ 在本节中均至多为 $\omega$
        2. 在模型论中一阶语言是通过证明论中一阶语言理论建立的公理集合论重新构造的形式语言系统，是一个被拓展为可以包含不可数个非逻辑符号的集合．因此 $\lambda$ 是一个无穷基数；变元序列写作 $\left<x_{m_1}, x_{m_2}, \cdots, x_{m_n}\right>, m_k\in \lambda, 1 \leqslant k \leqslant n$

2. 一阶逻辑项与公式的句法
    1. 一阶语言 $\mathscr L(S)$ 的类型是从 $\mathbf R \cup \mathbf F$ 的正整数集合的函数 $\Omega: S \to Z_+$
        1. 对每个 $R \in \mathbf R$，$\Omega(R)$ 称为 $R$ 的元数，$R$ 为 $\Omega(R)$ 元关系符号
        2. 对每个 $f \in \mathbf F$，$\Omega(f)$ 称为 $f$ 的元数，$f$ 为 $\Omega(f)$ 元关系符号
    2. 一阶语言 $\mathscr L(S)$ 的项集 $\mathcal T(S)$ 归纳定义如下

        $$
        \mathcal T(S) \ni t:= x | c | ft_1t_2\cdots t_{\Omega(f)}
        $$

        其中 $x\in \mathbf{Var}, c\in C$ 且 $f\in \mathbf F$

        一阶语言 $\mathscr L(S)$ 的（合式）公式集 $\mathcal F(S)$ 归纳定义如下

        $$
        \mathcal F(S) \ni \alpha := Rt_1t_2\cdots t_{\Omega(f)} | \bot | (\alpha_1 \wedge \alpha_2) | (\alpha_1 \vee \alpha_2) | (\alpha_1 \to \alpha_2) | \forall x\alpha | \exists x\alpha
        $$

        其中 $R\in \mathbf R$，$t_1, t_2, \cdots, t_{\Omega(R)}$ 是项，$x$ 是变元

    3. 公式的类型：一个公式至多含有有穷个变元符号，记作 $\alpha(x_1, x_2, \cdots, x_n)$，且有 $\mathrm{FV}(\alpha) \subseteq \{x_1, x_2, \cdots, x_n\}$，每个 $x_k(1 \leqslant k \leqslant n)$ 均在 $\alpha$ 中自由出现
        1. 原子公式：形如 $Rt_1 t_2 \cdots t_{\Omega(R)}$ 或 $\bot$ 的公式
        2. 语句：如果公式中的变元均为约束变元，则称该公式为 $S-$语句
        3. 无量词公式：含有的符号均为自由变元的公式
        4. 存在公式：递归定义存在公式为 ① 无量词公式 $\alpha$；② 形如 $\exists x\beta$ 的公式，其中 $\beta$ 是存在公式
        5. 全程公式：递归定义全程公式为 ① 无量词公式 $\alpha$；② 形如 $\exists x\beta$ 的公式，其中 $\beta$ 是全称公式
    4. 特殊记法
        1. 定义缩写 $\neg \alpha := \alpha \to \bot$，$\alpha \leftrightarrow \beta := (\alpha \to \beta) \wedge (\beta \to \alpha)$
        2. 对于 $\mathbf Q\in \{\forall, \exists\}$ 和有穷长的变元序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，公式 $\mathbf Qx_1 \mathbf Qx_2 \cdots \mathbf Qx_n \alpha$ 记作 $\mathbf Q \overline x \alpha$
        3. 设 $t$ 为项，$\overline x$ 为有穷长的变元序列 $\left<x_1, x_2, \cdots, x_n\right>$．记 $t = t(\overline x)$ 为含有变元 $x_1, x_2, \cdots, x_n$ 的项

3. 基于公式定义的归纳证明：令 $\mathcal R$ 是符号串的性质，设 ① 对任意原子公式 $\alpha$ 都有 $\mathcal R(\alpha)$；② 对任意 $\alpha, \beta \in \mathcal F(S)$ 和 $\circ \in \{\wedge, \vee, \to\}$，若 $\mathcal R(\alpha)$ 且 $\mathcal R(\beta)$，则 $\mathcal R(\alpha \circ \beta)$；③ 对任意 $\alpha \in \mathcal F(S)$ 和变元符号 $x$，若 $\mathcal R(\alpha)$，则 $\mathcal R(\exists x\alpha)$；那么 $\mathcal R(\alpha)$ 对所有 $\alpha \in \mathcal F(S)$ 都成立
    1. 项与公式的性质
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

                对任意公式集 $\Sigma$，令 $\mathrm{FV}(\Sigma) = \bigcup_{\alpha \in \Sigma} \mathrm{FV}(\alpha)$

            - 公式 $\alpha$ 中约束变元的集合 $\mathrm{BV}(\alpha)$ 定义为

                $$
                \begin{aligned}
                & \mathrm{BV}(\alpha) = \varnothing, & \alpha \textsf{ 为原子公式} \\
                & \mathrm{BV}(\alpha \circ \beta) = \mathrm{BV}(\alpha) \cup \mathrm{BV}(\beta), & \circ \in \{\wedge, \vee, \to\} \\
                & \mathrm{BV}(\mathbf Q x\alpha) = \mathrm{BV}(\alpha) \cup \{x\}, & \mathbf Q\in \{\forall, \exists\}
                \end{aligned}
                $$

                对任意公式集 $\Sigma$，令 $\mathrm{BV}(\Sigma) = \bigcup_{\alpha \in \Sigma} \mathrm{BV}(\alpha)$

            - 对形如 $\mathbf Q x\beta$ 的公式，称 $\beta$ 为量词 $\mathbf Qx$ 的辖域．如果变元 $x$ 在公式 $\alpha$ 中的一次出现不在任何量词 $\mathbf Qx$ 的辖域内，则称此次出现为自由出现；否则称之为约束出现，此时变元 $x$ 在 $\alpha$ 中被左侧最近的量词 $\mathbf Qx$ 约束

    2. 替换与变换：对于任意项序列 $\overline t = \left<t_1, t_2, \cdots, t_n\right>$ 和任意变元序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，用 $\overline t / \overline x$ 表示分别用 $t_i$ 替换 $x_i$，其中 $1 \leqslant i \leqslant n$
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

        4. 通常用 $\alpha(c_1, c_2, \cdots, c_n)$ 表示公式 $\alpha(c_1/x_1)(c_2/x_2)\cdots(c_n/x_n)$
            - $\alpha(c_1, c_2, \cdots, c_n)$ 是一个 $S-$语句
            - 设模型 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是一个 $S-$结构，则 $\mathfrak A \vDash \alpha(c_1, c_2, \cdots, c_n)$ 当且仅当 $\mathfrak M \vDash \alpha(c_1, c_2, \cdots, c_n)$

4. 模型论语义学
    1. 结构：一个 $S-$结构是 $\mathfrak A = (A, I)$，也记作 $(A, R^\mathfrak A, f^\mathfrak A, c^\mathfrak A)$ 或 $\left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}$，其中 $A$ 是非空集合，称为 $\mathfrak A$ 的论域，$I$ 是定义在 $S$ 上的映射；在不引发歧义的情况下，也可称 $A$ 为一个 $S-$结构．记 $A$ 的基数 $|A|$ 为 $\mathfrak A$ 的基数，用 $|\mathfrak A|$ 来表示
        1. 对每个关系符号 $R\in \mathbf R, I(R) \subseteq A^{\Omega(R)}$，常用 $R^\mathfrak A$ 或 $R^A$ 代替 $I(R)$
        2. 对每个函数符号 $f\in \mathbf F, I(f): A^{\Omega(f)} \to A$ 是 $A$ 上的 $\Omega(f)$ 元函数，常用 $f^\mathfrak A$ 或 $f^A$ 代替 $I(f)$
        3. 对每个常元符号 $c\in \mathbf C, I(c) \in A$，常用 $c^\mathfrak A$ 或 $c^A$ 代替 $I(c)$

        !!! note "相关概念"
            1. 子语言：设 $\mathscr L(S)$ 是一个语言，如果 $S_0 \subseteq S$，则称 $\mathscr L(S_0)$ 是 $\mathscr L(S)$ 的子语言．对任意的结构 $\mathfrak A$，忽略 $S - S_0$ 中的符号在 $\mathfrak A$ 的解释，即令 $\mathfrak A \upharpoonright S_0 = \left\{A, \{Z^\mathfrak A\}_{Z\in S_0}\right\}$，则 $\mathfrak A \upharpoonright S_0$ 是一个 $S_0-$结构．称 $\mathfrak A \upharpoonright S_0$ 是 $\mathfrak A$ 在 $S_0$ 上的约化，$S_0$ 是 $\mathfrak A \upharpoonright S_0$ 在 $S$ 上的扩张

            2. 设 $I$ 是一个集合，$\left\{ \mathfrak A_i = \left\{A_i, \{Z^{\mathfrak A_i}\}_{Z\in S}\right\}\right\}$ 是一族 $S-$结构，如果

                - $\bigcap_{i\in I}A_i \neq \varnothing$
                - 对每个 $n$ 元函数符号 $f\in \mathbf F$，如果 $(a_1, a_2, \cdots, a_n) \in \bigcap_{i\in I}A_i^n$，对任意的 $i, j\in I$ 有 $f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_j}(a_1, a_2, \cdots, a_n)$
                - 对每个常元符号 $c\in \mathbf C$，对任意 $i, j\in I$ 有 $C^{\mathfrak A_i} = c^{\mathfrak A_j}$

                则定义 $\{\mathfrak A_i|i\in I\}$ 的交为一个以 $\bigcap_{i\in I}A_i$ 为论域的 $S-$结构，记作 $\bigcap_{i\in I}\mathfrak A_i$

                - 对每个 $n$ 元关系符号 $R\in \mathbf R$，$R^{\bigcap_{i\in I}\mathfrak A_i} = \bigcap_{i\in I}R^{\mathfrak A_i}$
                - 对每个 $n$ 元函数符号 $f\in \mathbf F$，$f^{\bigcap_{i\in I}\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n)$
                - 对每个常元符号，$c\in \mathbf C$，$c^{\bigcap_{i\in I}\mathfrak A_i} = C^{\mathfrak A_i}$

    2. 模型：一个（证明论下的）模型是有序对 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是结构，$\sigma$ 是 $\mathfrak A$ 中的指派
        1. 指派：一个结构 $\mathfrak A = (A, I)$ 中的 $\mathfrak A-$指派是一个函数 $\sigma: \mathbf{Var} \to A$；也用 $\left<\sigma(x_i)\right>_{i\in \lambda}$ 表示 $\sigma$，其中 $\lambda$ 是 $\mathbf{Var}$ 的指标集
        2. 对模型 $\mathfrak M = (\mathfrak A, \sigma)$ 和任意变元 $x$，定义指派 $\sigma[a/x]: \mathbf{Var} \to A$ 为 $\sigma[a/x](y) = \left\{\begin{aligned} & a, & y = x \\ & \sigma(y), & y\neq x \end{aligned}\right.$，指派 $\sigma[\alpha /x]$ 与 $\sigma$ 至多在 $x$ 处的值不同
            - 设指派 $\overline b = \left<b_i\right>_{i\in \lambda}$，此时将替换记作 $\overline b[a/x]$
            - 令 $\overline a = \left<a_1, a_2, \cdots, a_n\right>, \overline x = \left<x_1, x_2, \cdots, x_n\right>$，记 $\sigma[\overline a / \overline x] = \sigma[a_1/x_1][a_2/x_2] \cdots [a_n/x_n]$
        3. 项解释：对任意结构 $\mathfrak A$ 和模型 $\mathfrak M = (\mathfrak A, \sigma)$，$\overline b = \left<b_i\right>_{i\in \lambda}$ 是一个 $\mathfrak A-$指派，项 $t$ 在 $\mathfrak M$ 中的解释 $t^\mathfrak M$ 归纳定义为

            $$
            \begin{aligned}
            x^\mathfrak M = x^\mathfrak A[\overline b] &= \sigma(x) \\
            c^\mathfrak M = t^\mathfrak A[\overline b] &= c^\mathfrak A \\
            f(\overline t)^\mathfrak M = f(\overline t)^\mathfrak A[\overline b] &= f^\mathfrak A(\overline t^\mathfrak A[\overline b]) = f^\mathfrak A(\overline t^\mathfrak M)
            \end{aligned}
            $$

            其中 $\overline t^\mathfrak M = \left<t_1^\mathfrak M, t_2^\mathfrak M, \cdots, t_{\Omega(f)}^\mathfrak M\right>, \overline t^\mathfrak A[\overline b] = \left<t_1^\mathfrak A[\overline b], t_2^\mathfrak A[\overline b], \cdots, t_{\Omega(f)}^\mathfrak A[\overline b]\right>$

            !!! note "项解释与函数"
                设 $\mathfrak A$ 是一个 $S-$结构，$t = t(\overline x)$ 是一个项，其中 $\overline x = \left<x_1, x_2, \cdots, x_m\right>$．在 $\mathfrak A$ 中将 $t$ 解释解释为一个函数 $t: A^m \to A$，对于任意一点 $\overline a = \left<a_1, a_2, \cdots, a_m\right> \in A^m$，将 $t^\mathfrak A$ 递归定义为

                1. 如果 $t$ 是常元符号 $c$，则 $t^\mathfrak A(\overline a) = c^\mathfrak A$ 是一个常函数
                2. 如果 $t$ 是变元符号 $x_i$，则 $t^\mathfrak A = a_i$ 是一个坐标函数
                3. 如果 $t$ 是 $ft_1 t_2 \cdots t_{\Omega(f)}$，其中 $t_1, t_2, \cdots, t_{\Omega(f)}$ 是项且 $f$ 是函数符号，则 $t^\mathfrak A = f^\mathfrak A(t^\mathfrak A_1(\overline a), t^\mathfrak A_2(\overline a), \cdots, t^\mathfrak A_{\Omega(f)}(\overline a))$

    3. 语义后承：模型 $\mathfrak M$ 与公式 $\alpha$ 的满足关系 $\mathfrak M \vDash \alpha$ 定义为

        $$
        \begin{aligned}
        & \mathfrak M \vDash R\overline t\textsf{ 当且仅当 } \overline t^\mathfrak M \in R^\mathfrak M \\
        & \mathfrak M \nvDash \bot \\
        & \mathfrak M \vDash \alpha \wedge \beta \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 且 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \alpha \vee \beta \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \alpha \to \beta \textsf{ 当且仅当 } \mathfrak M \nvDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        & \mathfrak M \vDash \exists x\alpha \textsf{ 当且仅当存在 } a \in A \textsf{ 使得 } (\mathfrak A, \sigma[a/x]) \vDash \alpha \\
        & \mathfrak M \vDash \forall x\alpha \textsf{ 当且仅当任意 } a \in A \textsf{ 都有 } (\mathfrak A, \sigma[a/x]) \vDash \alpha
        \end{aligned}
        $$

        设指派 $\overline a = \left<a_i\right>_{i\in \lambda}$，此时将满足关系记作 $\mathfrak A \vDash \alpha[\overline a]$，称 $\mathfrak A$ 满足 $\alpha[\overline a]$、$\alpha[\overline a]$ 在 $\mathfrak A$ 中为真或 $\overline a$ 在 $\mathfrak A$ 中实现了 $\alpha$．考虑到公式 $\alpha(x_1, x_2, \cdots, x_n)$ 在指派下的真值仅与该指派在其自由变元上的值有关，设 $\overline b = (b_1, b_2, \cdots, b_n) \in A^n$，则满足关系也可记作 $\mathfrak A \vDash \alpha(\overline b)$

        1. 如果公式（包括语句）$\alpha$ 有对于结构 $\mathfrak A$ 中的任意指派 $\sigma$ 都有 $(\mathfrak A, \sigma) \vDash \alpha$，则称 $\alpha$ 在 $\mathfrak A$ 上有效，记作 $\mathfrak A \vDash \alpha$
        2. 如果公式 $\alpha$ 有对于任意结构 $\mathfrak A$ 都有 $\mathfrak A \vDash \alpha$，则称公式 $\alpha$ 有效，记作 $\vDash_1 \alpha$，设一阶逻辑 $\mathbf{FOL} = \{\alpha \in \mathcal F(S) | \vDash_1 \alpha\}$

            !!! note "有效式"
                以下公式都是有效的

                1. $\forall x(\alpha \wedge \beta) \leftrightarrow \forall x\alpha \wedge \forall x\beta$
                2. $\exists x(\alpha \vee \beta) \leftrightarrow \exists x\alpha \vee \exists x\beta$
                3. $\forall x(\alpha \vee \beta) \leftrightarrow \alpha \vee \forall x\beta, x\notin \mathrm{FV}(\alpha)$
                4. $\exists x(\alpha \wedge \beta) \leftrightarrow \alpha \wedge \exists x\beta, x\notin \mathrm{FV}(\alpha)$
                5. $\forall x(\alpha \to \beta) \to (\alpha \to \forall x\beta), x\notin \mathrm{FV}(\alpha)$
                6. $\forall x\alpha \to \alpha(t/x)$

    4. 对任意公式集 $\Sigma$，若对所有 $\alpha \in \Sigma$ 都有 $\mathfrak M \vDash \alpha$，则记作 $\mathfrak M \vDash \Sigma$
        1. 设 $\alpha$ 是一个公式，$\Sigma$ 是一个公式集，如果对任意模型 $\mathfrak M$ 都有 $\mathfrak M \vDash \Sigma$ 蕴涵 $\mathfrak M \vDash \alpha$，则称 $\alpha$ 是 $\Sigma$ 的语义后承，记作 $\Sigma \vDash \alpha$
        2. 对于公式集 $\alpha$，如果存在模型 $\mathfrak M$ 使得 $\mathfrak M \vDash \Sigma$，则称 $\Sigma$ 可满足；对于公式 $\alpha$，如果 $\{\alpha\}$ 可满足，则称 $\alpha$ 可满足
        3. 对任意公式集 $\Sigma \cup \{\alpha\}$，$\Sigma \vDash \alpha$ 当且仅当 $\Sigma \cup \{\neg \alpha\}$ 不可满足
        4. 令 $\mathfrak M_1 = (\mathfrak A_1, \sigma)$ 与 $\mathfrak M_2 = (\mathfrak A_2, \sigma)$ 分别是 $S_1-$结构和 $S_2-$结构上的模型，其中 $\mathfrak A_1$ 与 $\mathfrak A_2$ 有相同的论域 $A$，令 $S = S_1 \cap S_2$
            - 对任意项 $s\in \mathcal T(S)$，$s^{\mathfrak M_1} = s^{\mathfrak M_2}$
            - 对任意公式 $\alpha \in \mathcal F(S)$，$\mathfrak M_1 \vDash \alpha$ 当且仅当 $\mathfrak M_2 \vDash \alpha$
        5. 对任意模型 $\mathfrak M = (\mathfrak A, \sigma)$，设 $\mathfrak M' = (\mathfrak A, \sigma[\overline t^{\mathfrak M}]/\overline x)$
            - 对任意项 $s$ 都有 $s(\overline t/\overline x)^{\mathfrak M} = s^{\mathfrak M'}$
            - 对任意公式 $\alpha$，$\mathfrak M \vDash \alpha(\overline t/\overline x)$ 当且仅当 $\mathfrak M' \vDash \alpha$

5. 公理系统 $\mathbf H_1$
    1. 公理模式与推理规则
        1. 公理模式
            - $\text{A}_1:$ 任意经典命题逻辑重言式一阶代入特例
            - $\text{A}_2: \forall x\alpha \leftrightarrow \neg \exists x \neg \alpha$
            - $\text{A}_3: \forall x(\alpha \to \beta) \to (\forall x\alpha \to \forall x \beta)$
            - $\text{A}_4: \alpha \to \forall x\alpha, x\notin \mathrm{FV}(\alpha)$
            - $\text{A}_5: \forall x\alpha \to \alpha(t/x)$
        2. 推理规则

            $$
            \begin{prooftree}
            \AxiomC{$\alpha$}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{(mp)}
            \BinaryInfC{$\beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha$}
            \RightLabel{(gen)}
            \UnaryInfC{$\forall x\alpha$}
            \end{prooftree}
            $$

    2. 在 $\mathbf{H}_1$ 中的一个推导是由公式组成的有穷树结构 $\mathcal D$，其中每个节点 $\gamma$ 要么是公理，要么是从子节点公式运用推理规则 $\text{mp}$ 或 $\text{gen}$ 得到的
        1. 用 $\mathcal D, \mathcal E$ 表示推导，记号 $\begin{prooftree} \AxiomC{\(\mathcal D\)} \noLine \UnaryInfC{\(\varphi\)} \end{prooftree}$ 表示 $\mathcal D$ 是以 $\varphi$ 为根节点的推导
        2. 如果存在以公式 $\alpha$ 为根节点的推导，则称 $\alpha$ 在 $\mathbf H_1$ 可证，或称 $\alpha$ 是 $\mathbf H_1$ 的定理，记作 $\vdash_{\mathbf H_1} \alpha$，用 $\mathrm{Thm}(\mathbf H_1)$ 表示 $\mathbf H_1$ 所有定理的集合，在不引发歧义的情况下可以删除下标 $\mathbf H_1$
        3. 如果对于公式 $\alpha_0, \alpha_1, \cdots, \alpha_n$ 有 $\vdash_{\mathbf H_1} \alpha_i\ (1 \leqslant i \leqslant n)$ 蕴含 $\vdash_{\mathbf H_1}$，则称以 $\alpha_1, \alpha_2, \cdots, \alpha_n$ 为前提且以 $\alpha_0$ 为结论的推理规则 $\text{R}$ 在 $\mathbf H_1$ 中可允许
        4. 如果存在公式集 $\Sigma$ 的有穷子集 $\Sigma_0$ 使得对公式 $\alpha$ 有 $\vdash_{\mathbf H_1} \bigwedge \Sigma_0 \to \alpha$，则称 $\alpha$ 是 $\Sigma$ 的句法后承，记作 $\Sigma \vdash_{\mathbf H_1} \alpha$
    3. 元定理
        1. 演绎定理：$\alpha, \Sigma \vdash_{\mathbf H_1} \beta$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} \alpha \to \beta$
        2. 对任意公式 $\mathbf Qx\alpha$，如果 $y\notin \mathrm{FV}(\mathbf Qx\alpha)$，那么 $\vdash_{\mathbf H_1} \mathbf Qx\alpha \leftrightarrow \mathbf Qy\alpha(y/x)$
        3. 以下单调性规则在 $\mathbf H_1$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{$(\forall M)$}
            \UnaryInfC{$\forall x\alpha \to \forall x\beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{$(\forall M)$}
            \UnaryInfC{$\exists x\alpha \to \exists x\beta$}
            \end{prooftree}
            $$

        4. 以下公式是 $\mathbf H_1$ 的定理
            - $\alpha(t/x) \to \exists x\alpha$
            - $\forall x(\alpha \to \beta) \to (\alpha \to \forall x\beta), x\notin \mathrm{FV}(\alpha)$
            - $\forall x\forall y\alpha \to \forall y\forall x\alpha$
            - $\forall x(\alpha \wedge \beta) \leftrightarrow \forall x\alpha \wedge \forall x\beta$
            - $\exists x(\alpha \vee \beta) \leftrightarrow \exists x\alpha \vee \exists x\beta$
            - $\forall x(\alpha \vee \beta) \leftrightarrow \alpha \vee \forall x\beta, x\notin \mathrm{FV}(\alpha)$
            - $\exists x(\alpha \wedge \beta) \leftrightarrow \alpha \wedge \exists x\beta, x\notin \mathrm{FV}(\alpha)$

        5. 在 $\mathbf H_1$ 中以下句法后承成立
            - $\alpha, \Sigma \vdash_{\mathbf H_1} \alpha$
            - $\bot, \Sigma \vdash_{\mathbf H_1} \alpha$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \subseteq \Psi$，则 $\Psi \vdash_{\mathbf H_1} \alpha$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\alpha, \Psi \vdash_{\mathbf H_1} \beta$，则 $\Sigma, \Psi \vdash_{\mathbf H_1} \beta$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \vdash_{\mathbf H_1} \beta$，则 $\Sigma \vdash_{\mathbf H_1} \alpha \wedge \beta$
            - 如果 $\alpha, \beta, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\alpha, \wedge \beta, \Sigma \vdash_{\mathbf H_1} \gamma$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 或 $\Sigma \vdash_{\mathbf H_1} \beta$，则 $\Sigma \vdash_{\mathbf H_1} \alpha \vee \beta$
            - 如果 $\alpha, \Sigma \vdash_{\mathbf H_1} \gamma$ 且 $\beta, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\alpha \vee \beta, \Sigma \vdash_{\mathbf H_1} \gamma$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\beta, \Psi \vdash_{\mathbf H_1} \gamma$，则 $\alpha \to \beta, \Sigma, \Psi \vdash_{\mathbf H_1} \gamma$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \vdash_{\mathbf H_1} \alpha \to \beta$，则 $\Sigma \vdash_{\mathbf H_1} \beta$
            - 如果 $\alpha, \Psi \vdash_{\mathbf H_1} \gamma$ 且 $\neg \alpha, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\Sigma \vdash \gamma$
            - 如果 $\alpha(t/x), \Sigma \vdash_{\mathbf H_1} \beta$，则 $\forall x\alpha, \Sigma \vdash_{\mathbf H_1} \beta$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha(y/x)$ 且 $y\notin \mathrm{FV}(\Sigma, \forall x\alpha)$，则 $\Sigma \vdash_{\mathbf H_1} \forall x\alpha$
            - 如果 $\alpha(y/x), \Sigma \vdash_{\mathbf H_1} \beta$ 且 $y\notin \mathrm{FV}(\exists x\alpha, \Sigma, \beta)$，则 $\exists x\alpha, \Sigma \vdash_{\mathbf H_1} \beta$
            - 如果 $\Sigma \vdash_{\mathbf H_1} \alpha(t/x)$，则 $\Sigma \vdash_{\mathbf H_1} \exists x\alpha$

    4. 一阶逻辑的后承演算 $\mathfrak C_{\mathbf H_1}$ 是在经典命题逻辑的后承演算 $\mathfrak C_{\mathbf{HK}}$ 增加量词规则得到的

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha(t/x), \Sigma \vdash \beta$}
            \RightLabel{$\forall \vdash$}
            \UnaryInfC{$(\forall x\alpha, \Sigma \vdash \beta)$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Sigma \vdash \alpha(y/x)$}
            \RightLabel{$(\vdash \forall)$}
            \UnaryInfC{$\Sigma \vdash \forall x\alpha$}
            \end{prooftree}
            (y \notin \mathrm{FV}(\Sigma, \forall x\alpha)) \\
            \begin{prooftree}
            \AxiomC{$\alpha(y/x), \Sigma \vdash \beta$}
            \RightLabel{$(\exists \vdash)$}
            \UnaryInfC{$\exists x\alpha$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Sigma \vdash \alpha(t/x)$}
            \RightLabel{$(\vdash \exists)$}
            \UnaryInfC{$\Sigma \vdash \exists x\alpha$}
            \end{prooftree}
            (y \notin \mathrm{FV}(\Sigma, \exists x\alpha, \beta))
        }
        $$

6. 一致性：如果公式集 $\Sigma$ 有 $\Sigma \nvdash_{\mathbf H_1} \bot$，则称公式集 $\Sigma$ 是 $\mathbf H_1-$一致的，否则称 $\Sigma$ 是 $\mathbf H_1-$不一致的
    1. 对任意公式集 $\Sigma \cup \{\alpha\}$ 有
        1. $\Sigma \nvdash_{\mathbf H_1} \neg \alpha$ 当且仅当 $\Sigma \cup \{\alpha\}$ 是 $\mathbf H_1-$一致的
        2. $\Sigma \nvdash_{\mathbf H_1} \alpha$ 当且仅当 $\Sigma \cup \{\neg \alpha\}$ 是 $\mathbf H_1-$一致的
    2. 一个公式集 $\Sigma$ 是 $\mathbf H_1$ 一致的当且仅当 $\Sigma$ 的每个有穷子集是 $\mathbf H_1$ 一致的
7. 可靠性：如果 $\Sigma \vdash_{\mathbf H_1} \alpha$，那么 $\Sigma \vDash \alpha$
    1. 对任意公式 $\alpha, \beta$
        1. 如果 $\vDash_1 \alpha$ 且 $\vDash_1 \alpha \to \beta$，则 $\vDash \beta$
        2. 如果 $\vDash_1 \alpha$，则 $\vDash_1 \forall x\alpha$
    2. 如果 $\Sigma$ 是可满足的，那么 $\Sigma$ 是 $\mathbf H_1-$一致的
    3. $\mathrm{Thm}(\mathbf H_1) \subseteq \mathbf{FOL}$
8. 完全性：如果 $\Sigma \vDash \alpha$，那么 $\Sigma \vdash_{\mathbf H_1} \alpha$
    1. $S$ 是可数的，因此 $\mathcal T(S)$ 与 $\mathcal F(S)$ 均可数，设 $\Sigma$ 是 $\mathbf H_1-$一致的公式集，构造句法模型 $\mathfrak M^\Sigma = (\mathfrak A^\Sigma, \sigma^\Sigma)$
        1. 模型 $\mathfrak M^\Sigma = (\mathfrak A^\Sigma, \sigma^\Sigma)$ 的论域是项集 $\mathcal T(S)$，对任意变元 $x\in \mathbf{Var}, \sigma^\Sigma(x) = x$
            - 对任意关系符号 $R\in \mathbf R, (t_1, t_2, \cdots, t_{\Omega(R)}) \in R^{\mathfrak A^\Sigma}$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} Rt_1 t_2 \cdots t_{\Omega(R)}$
            - 对任意函数符号 $f\in \mathbf F, f^{\mathfrak A^\Sigma}(t_1, t_2, \cdots, t_{\Omega(f)}) = ft_1 t_2 \cdots t_{\Omega(f)}$
            - 对任意常元符号 $c\in \mathbf C, c^{\mathfrak A^\Sigma} = c$
        2. 在 $\mathfrak M^\Sigma$ 中以下成立
            - 对任意项 $t\in \mathcal T(S), t^{\mathfrak M^\Sigma} = t$
            - 对任意原子公式 $\alpha$，$\mathfrak M^\Sigma \vDash \alpha$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} \alpha$
            - 对任意公式 $\alpha$，$\mathfrak M^\Sigma \vDash \exists \overline x\alpha$ 当且仅当存在项序列 $\overline t$ 使得 $\mathfrak M^\Sigma \vDash \alpha(\overline t/\overline x)$
            - 对任意公式 $\alpha$，$\mathfrak M^\Sigma \vDash \forall \overline x\alpha$ 当且仅当对所有项序列 $\overline t$ 都有 $\mathfrak M^\Sigma \vDash \alpha(\overline t/\overline x)$
    2. 如果公式集 $\Sigma$ 对任意公式 $\alpha$ 都有 $\Sigma \vdash_{\mathbf H_1} \alpha$ 或 $\Sigma \nvdash_{\mathbf H_1} \neg \alpha$，则称公式集 $\Sigma$ 是完备的；如果公式集 $\Sigma$ 对每个公式 $\exists x\alpha \in \mathcal F(S)$ 都有 $t\in \mathcal T(S)$ 使得 $\Sigma \vdash_{\mathbf H_1} \exists x\alpha \to \alpha(t/x)$，则称 $\Sigma$ 是证据集
        1. 设 $\Sigma$ 是 $\mathbf H_1-$一致的完备证据集，对任意公式集 $\Sigma \cup \{\alpha, \beta\}$，在 $\mathbf H_1$ 中成立
            - $\Sigma \vdash \neg$ 当且仅当 $\Sigma \nvdash \alpha$
            - $\Sigma \vdash \alpha \wedge \beta$ 当且仅当 $\Sigma \vdash \alpha$ 且 $\Sigma \vdash \beta$
            - $\Sigma \vdash \alpha \vee \beta$ 当且仅当 $\Sigma \vdash \alpha$ 或 $\Sigma \vdash \beta$
            - $\Sigma \vdash \alpha \to \beta$ 当且仅当 $\Sigma \nvdash \alpha$ 或 $\Sigma \vdash \beta$
            - $\Sigma \vdash \exists x\alpha$ 当且仅当存在 $t\in \mathcal T(S)$ 使得 $\Sigma \vdash \alpha(t/x)$
            - $\Sigma \vdash \forall x\alpha$ 当且仅当对所有 $t\in \mathcal T(S)$ 都有 $\Sigma \vdash \alpha(t/x)$
        2. 设 $\Sigma$ 是 $\mathbf H_1-$一致的完备证据集，对任意公式 $\alpha$，$\Sigma \vdash_{\mathbf H_1} \alpha$ 当且仅当 $\mathfrak M^\Sigma \vDash \alpha$
        3. 任何 $\mathbf H_1-$ 一致的完备证据集 $\Sigma$ 都是可满足的，即 $\mathfrak M^\Sigma \vDash \Sigma$
        4. 设 $\Sigma$ 是 $\mathbf H_1-$一致的公式集且 $\mathrm{FV}(\Sigma)$ 是有穷的，那么存在 $\mathbf H_1-$一致的证据集 $\Psi$ 使得 $\Sigma \subseteq \Psi$
        5. 设 $\Psi$ 是 $\mathbf H_1-$一致的公式集，那么存在 $\mathbf H_1-$一致的完备集 $\Theta$ 使得 $\Psi \subseteq \Theta$
        6. 如果 $\Sigma$ 是 $\mathbf H_1-$一致公式集并且 $\mathrm{FV}(\Sigma)$ 是有穷的，那么 $\Sigma$ 是可满足的
    3. 如果 $\Sigma$ 是 $\mathbf H_1-$一致的，那么 $\Sigma$ 是可满足的
    4. $\mathbf{FOL} \subseteq \mathrm{Thm}(\mathbf H_1)$

## 2.2 经典一阶逻辑矢列演算

## 2.3 直觉主义一阶逻辑矢列演算
