# 1 Hilbert 系统

- 一个推理规则 $R$ 的形式是

    $$
    \begin{prooftree}
    \AxiomC{$\alpha_1$}
    \AxiomC{$\alpha_2$}
    \AxiomC{$\cdots$}
    \AxiomC{$\alpha_n$}
    \QuaternaryInfC{$\alpha_0$}
    \end{prooftree}
    $$

    其中称 $\alpha_1, \alpha_2, \cdots, \alpha_n$ 为 $R$ 的前提，$\alpha_0$ 为 $R$ 的结论

## 1.1 命题逻辑
### 1.1.1 经典命题逻辑
1. 经典命题逻辑形式语言的初始符号
    1. 可数命题变元集：$\mathbf{Prop} = \{p_i\mid i<\omega\}$，用 $p, q, r$ 等表示 $\mathbf{Prop}$ 中的任意命题变元
    2. 联结词：零元联结词 $\bot$（恒假）；二元联结词 $\wedge$（合取）、$\vee$（析取）与 $\to$（蕴含）
    3. 括号：$)$ 与 $($
2. $\text{Backus-Naur}$ 形式句法：用 $\alpha, \beta, \gamma$ 表示公式模式（可带下标），则公式集

    $$
    \mathscr L\ni \alpha := p\mid \bot\mid (\alpha_1 \wedge \alpha_2)\mid (\alpha_1 \vee \alpha_2)\mid (\alpha_1 \to \alpha_2)
    $$

    !!! note "缩写与简写"
        1. 定义缩写 $\neg \alpha = \alpha \to \bot$（否定）；$\top = \bot \to \bot$（恒真）；$\alpha \leftrightarrow \beta = (\alpha \to \beta) \wedge (\beta \to \alpha)$（等值）
        2. 引入省略括号的规则：① 公式最外层括号可省略；② 联结词 $\wedge$ 与 $\vee$ 优先于 $\to$

    1. 原子公式：命题变元或 $\bot$，所有原子公式的集合记为 $\mathbf{At} = \mathbf{Prop} \cup \{\bot\}$
    2. 基于公式定义的归纳证明：令 $\mathcal R$ 是符号串的性质，设 ① 对 $\alpha \in \mathbf{At}$ 都有 $\mathcal R(\alpha)$；② 对任意 $\alpha, \beta \in \mathscr L$ 和 $\circ \in \{\wedge, \vee, \to\}$，若 $\mathcal R(\alpha)$ 且 $\mathcal R(\beta)$，则 $\mathcal R(\alpha \circ \beta)$；那么 $\mathcal R(\alpha)$ 对所有 $\alpha \in \mathscr L$ 都成立
    3. 公式的性质
        1. $\mathrm{var}(\alpha)$ 表示公式 $\alpha$ 中出现的所有命题变元的集合；$\alpha(p_1, p_2, \cdots, p_n)$ 表示公式 $\alpha$ 使得 $\mathrm{var}(\alpha) \subseteq \{p_1, \cdots, p_n\}$．若 $\mathrm{var}(\alpha) = \varnothing$，则称 $\alpha$ 为无变元公式
        2. $d(\alpha)$ 表示公式 $\alpha$ 的复杂度，定义为

            $$
            \begin{aligned}
            d(p) & = 0 = d(\bot), &p\in \mathbf{Prop} \\
            d(\alpha \circ \beta) & = \max\{d(\alpha), d(\beta)\} + 1, & \circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

        3. $\mathrm{SF}(\alpha)$ 表示公式 $\alpha$ 的子公式集合，定义为

            $$
            \begin{aligned}
            \mathrm{SF}(\alpha) & = \{\alpha\}, &\alpha \in \mathbf{At} \\
            \mathrm{SF}(\alpha \circ \beta) & = \mathrm{SF}(\alpha) \cup \mathrm{SF}(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

        4. 一个代入是一个函数 $\sigma: \mathbf{Prop} \to \mathscr L$，对任意代入 $\sigma$，函数 $\widehat \sigma: \mathscr L \to \mathscr L$ 定义为

            $$
            \begin{aligned}
            \widehat \sigma(\bot) &= \bot \\
            \widehat \sigma(p) &= \sigma(p), & p\in \mathbf{Prop} \\
            \widehat \sigma(\alpha \circ \beta) &= \widehat \sigma(\alpha) \circ \widehat \sigma(\beta), & \circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

            对公式 $\alpha(p_1, p_2, \cdots, p_n)$，用 $\alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$ 表示用 $\beta_1, \beta_2, \cdots, \beta_n$ 代入变元 $p_1, p_2, \cdots, p_n$ 的结果

3. 真值函数语义学：用 $1$ 表示「真」；用 $0$ 表示「假」，集合 $2 = \{0, 1\}$ 称为真值集
    1. 赋值：一个赋值是一个函数 $\theta: \mathbf{Prop} \to 2$，对任意赋值 $\theta$，归纳定义函数 $\widehat \theta: \mathscr L \to 2$ 有

        $$
        \begin{aligned}
            \widehat \theta(\bot) &= 0 \\
            \widehat \theta(p) = 1 \leftrightarrow \theta(p) &= 1 \\
            \widehat \theta(\alpha \wedge \beta) &= 1 \textsf{ 当且仅当 } \widehat \theta(\alpha) = 1 \textsf{ 且 } \widehat \theta(\beta) = 1 \\
            \widehat \theta(\alpha \vee \beta) &= 1 \textsf{ 当且仅当 } \widehat \theta(\alpha) = 1 \textsf{ 或 } \widehat \theta(\beta) = 1 \\
            \widehat \theta(\alpha \to \beta) &= 1 \textsf{ 当且仅当 } \widehat \theta(\alpha) = 0 \textsf{ 或 } \widehat \theta(\beta) = 1
        \end{aligned}
        $$

        1. 对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$，设赋值 $\theta, \theta'$ 有任意 $1\leqslant i \leqslant n: \theta(p_i) = \theta'(p_i)$，则 $\widehat \theta(\alpha) = \widehat {\theta'}(\alpha)$
        2. 对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$ 和公式 $\beta_1, \beta_2, \cdots, \beta_n$，令 $\alpha' = \alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$．对任意赋值 $\theta$，定义赋值 $\theta': \mathbf{Prop} \to 2$ 为

            $$
            \theta'(q) = \left\{\begin{aligned}
            & \widehat \theta(\beta_i), &\textsf{存在 }\ 1\leqslant i\leqslant n: q = p_i \\
            & \theta(q), &\textsf{否则} \end{aligned}\right.
            $$

            则 $\theta' \vDash \alpha \leftrightarrow \theta \vDash \alpha'$

    2. 对任意公式 $\alpha$ 与赋值 $\theta$，若 $\theta(\alpha) = 1$，则称 $\theta$ 满足公式 $\alpha$，记作 $\theta \vDash \alpha$
        1. 对于公式 $\alpha$，若存在赋值 $\theta$ 使得 $\theta \vDash \alpha$，则称公式 $\alpha$ 可满足，否则称 $\alpha$ 为矛盾式
        2. 对于公式 $\alpha$，若对任何赋值 $\theta$ 均有 $\theta \vDash \alpha$，则称 $\alpha$ 是重言式，记作 $\vDash \alpha$ 或 $\varnothing \vDash \alpha$
        3. 公式 $\alpha$ 是重言式当且仅当 $\neg \alpha$ 是矛盾式；公式 $\alpha$ 是矛盾式当且仅当 $\neg \alpha$ 是重言式
    3. 对任意公式集 $\Gamma$ 与赋值 $\theta$，若对任意公式 $\alpha \in \Gamma$ 都有 $\theta \vDash \alpha$，则称 $\theta$ 满足 $\Gamma$，记作 $\theta \vDash \Gamma$
        1. 对于公式集 $\Gamma$，若存在赋值 $\theta$ 使得 $\theta \vDash \Gamma$，则称 $\Gamma$ 可满足
        2. 对任意公式集 $\Gamma \cup \{\alpha\}$，若对于任意赋值 $\theta$ 使 $\theta \vDash \Gamma$ 蕴含 $\theta \vDash \alpha$，则称 $\alpha$ 是 $\gamma$ 的语义后承或 $\Gamma$ 重言蕴含 $\alpha$，记作 $\Gamma \vDash \alpha$
        3. 设 $\sigma$ 是一个公式，则通常将 $\{\sigma\} \vDash \alpha$ 简写作 $\sigma \vDash \alpha$．若 $\sigma \vDash \alpha$ 与 $\alpha \vDash \sigma$ 同时成立，则称 $\sigma$ 与 $\alpha$ 重言等价
    4. 将经典命题逻辑 $\mathbf{CL}$ 定义为所有重言式的集合，即 $\mathbf{CL} = \{\alpha \in \mathscr L \mid \vDash \alpha\}$
        1. 对任意公式 $\alpha$ 和代入 $\sigma$，若 $\alpha \in \mathbf{CL}$，则 $\sigma(\alpha) \in \mathbf{CL}$
        2. 对任意公式 $\alpha, \beta$，若 $\alpha, \alpha \to \beta \in \mathbf{CL}$，则 $\beta \in \mathbf{CL}$
    5. 真值函数：令 $\alpha$ 是公式且 $\mathrm{var}(\alpha) = \{p_1, p_2, \cdots, p_n\}$，若对于 $n$ 元函数 $f: 2^n \to 2$ 与 $\varepsilon = (\alpha_1, \alpha_2, \cdots, \alpha_n) \in 2^n$ 都有

        $$
        f(\theta(p_1), \theta(p_2), \cdots, \theta(p_n)) = \widehat \theta(\alpha)
        $$

        其中 $\theta$ 是任意赋值使得对每个 $1\leqslant i\leqslant n$ 都有 $\theta(p_i) = a_i$，则 $\alpha$ 定义 $n$ 元真值函数 $f$，也记作 $B_{\alpha}^n$

        1. 任意 $n$ 元真值函数 $f: 2^n \to 2$ 在 $\mathscr L$ 中可定义，即存在 $\alpha \in \mathscr L$ 使得 $f = B_\alpha^n$
        2. 完全组：设 $G \subseteq \{\bot, \top, \neg, \wedge, \vee, \to, \leftrightarrow\}$，若任何一个真值函数都可以用只含 $G$ 中联结词的公式表达，则称集合 $G$ 是命题联结词的完全组

    !!! note "合取范式与析取范式"
        - 合取范式：形如 $\alpha=\gamma_1 \wedge \gamma_2 \wedge \cdots \wedge \gamma_k$ 的公式，其中每个 $\gamma_i$ 都形如 $\gamma_i=\beta_{i 1} \vee \beta_{i 2} \vee \cdots \vee \beta_{i n}$，且 $\beta_{i j}$ 是一个命题符号或命题符号的否定
        - 析取范式：$\alpha$ 形如 $\alpha=\gamma_1 \vee \gamma_2 \vee \cdots \vee \gamma_k$ 的公式，其中每个 $\gamma_i$ 都形如 $\gamma_i=\beta_{i 1} \wedge \beta_{i 2} \wedge \cdots \wedge \beta_{i n}$，且 $\beta_{i j}$ 是一个命题符号或命题符号的否定

4. 经典命题逻辑的 $\text{Hilbert}$ 公理系统 $\mathbf{HK}$
    1. 公理：若将 $p_0, p_1, p_2$ 替换为模式字母 $\alpha, \beta, \gamma$，可去掉代入规则 $\text{sub}$，得到的系统与 $\mathbf{HK}$ 等价
        1. $\text{A}_1: p_0 \to (p_1 \to p_0)$
        2. $\text{A}_2: (p_0 \to (p_1 \to p_2)) \to ((p_0 \to p_1) \to (p_0 \to p_2))$
        3. $\text{A}_3: (p_0 \wedge p_1) \to p_0$
        4. $\text{A}_4: (p_0 \wedge p_1) \to p_1$
        5. $\text{A}_5: p_0 \to (p_1 \to p_0 \wedge p_1)$
        6. $\text{A}_6: p_0 \to (p_0 \vee p_1)$
        7. $\text{A}_7: p_1 \to (p_0 \vee p_1)$
        8. $\text{A}_8: (p_0 \to p_2) \to ((p_1 \to p_2) \to ((p_0 \vee p_1) \to p_2))$
        9. $\text{A}_9: \bot \to p_0$
        10. $\text{A}_{10}: p_0 \vee \neg p_0$

        推理规则

        1. 肯定前件规则：$\begin{prooftree} \AxiomC{\(\alpha \to \beta\)} \AxiomC{\(\alpha\)} \RightLabel{ (mp)} \BinaryInfC{\(\beta\)} \end{prooftree}$
        2. 代入规则：$\begin{prooftree} \AxiomC{\(\alpha\)} \RightLabel{ (sub)} \UnaryInfC{\(\sigma(\alpha)\)} \end{prooftree}$，其中 $\sigma$ 是任意代入

    2. 令 $X \neq \varnothing$ 且 $S\subseteq X\times X$，对任意 $x\in X$，令 $S(x) = \{y\in X\mid xSy\}$．对任意 $Y\subseteq X$，令 $S[Y] = {\displaystyle \bigcup \{S(y) \mid y\in Y\}}$，对任意自然数 $n\leqslant 0$ 与 $x\in X$，定义 $S^0[x]=\{x\}, S^{n+1}[x] = S[S^n[x]]$
        1. 若 $X$ 是有穷集且满足以下条件，则称 $(X, S)$ 为有穷树结构，$X$ 中的元组称为节点．若 $xSy$，则称 $y$ 是 $x$ 的子节点
            1. 存在 $r\in X$ 满足条件：对任意 $x\in X$ 都存在自然数 $n\geqslant 0$ 使得 $rS^nx$，称 $r$ 为 $(X, S)$ 的根节点
            2. 对任意 $x, y, z\in X$，若 $xSz$ 且 $ySz$，那么 $x=y$
            3. 不存在 $x_0, x_1, \cdots, x_k \in X$ 和自然数 $m, n$ 使得 $x_0S^mx_k$ 且 $x_kS^nx_0$
        2. 在有穷树结构 $(X, S)$ 中，一条链 $c$ 是一个序列 $\left<x_0, x_1, \cdots, x_k\right>$ 使得对所有 $i\neq j < k$ 都有 $x_i\neq x_j$ 且 $x_iSx_{i+1}$
            1. 若一条链 $c = \left<x_0, x_1, \cdots, x_k\right>$ 不存在 $y=X-c$ 使得 $x_kSy$，则称 $c$ 为极大链．极大链的第一个元素称为根节点；最后一个元素称为叶节点
            2. 链的长度定义为 $|c|=k$，单个节点链的长度为 $0$
            3. 有穷树结构 $(X, S)$ 的高度定义为 $\max\{\left|c\right|: c$ 是 $(X, R)$ 的极大链$\}$
    3. 在 $\mathbf{HK}$ 中，从公式集 $\Gamma$ 到公式 $\alpha$ 的一个推导是由公式组成的以 $\alpha$ 为根节点的有穷树结构 $\mathcal D$，其中每个节点满足
        1. $\gamma$ 是公理或 $\gamma \in \Gamma$
        2. $\gamma$ 是从子节点 $\beta$ 和 $\beta \to \gamma$ 运用规则 $\text{mp}$ 得到的
        3. $\gamma$ 是从子节点 $\beta$ 利用规则 $\text{sub}$ 得到的，其中 $\beta$ 是公理

        三个条件之一，并用 $\mathcal {D, E}$ 等表示推导，用 $\begin{prooftree} \AxiomC{\(\mathcal D\)} \noLine \UnaryInfC{\(\alpha\)} \end{prooftree}$ 表示 $\mathcal D$ 是以 $\alpha$ 为根节点的推导

        1. 在 $\mathbf{HK}$ 中，若存在公式集 $\Gamma$ 到公式 $\alpha$ 的推导，则称 $\alpha$ 是 $\Gamma$ 的句法后承，记作 $\Gamma \vdash_\mathbf{HK} \alpha$，无歧义时下标 $\mathbf{HK}$ 可删除
        2. 若 $\varnothing \vdash_\mathbf{HK} \alpha$，称公式在 $\mathbf{HK}$ 中可证，或 $\alpha$ 是 $\mathbf{HK}$ 的定理，记作 $\vdash_\mathbf{HK} \alpha$．用 $\mathrm{Thm}(\mathbf{HK})$ 表示 $\mathbf{HK}$ 中所有定理的集合

    4. 经典命题逻辑的 $\text{Hilbert}$ 公理系统元定理
        1. $\alpha, \Gamma \vdash_\mathbf{HK} \alpha$，$\bot, \Gamma \vdash_\mathbf{HK} \alpha$
        2. 对任意公式集 $\Gamma$ 和公式 $\alpha$，$\Gamma \vdash_\mathbf{HK} \alpha$ 当且仅当存在有穷子集 $\Delta \subseteq \Gamma$ 使得 $\Delta \vdash_\mathbf{HK} \alpha$
        3. 若 $\Gamma \vdash_\mathbf{HK} \alpha$ 且 $\Gamma \vdash_\mathbf{HK} \beta$，那么 $\Gamma \vdash_\mathbf{HK} \alpha \wedge \beta$
        4. 若 $\alpha, \beta, \Gamma \vdash_\mathbf{HK} \gamma$，那么 $\alpha \wedge \beta, \Gamma \vdash_\mathbf{HK} \gamma$
        5. 若 $\Gamma \vdash_\mathbf{HK} \alpha$ 或 $\Gamma \vdash_\mathbf{HK} \beta$，那么 $\Gamma \vdash_\mathbf{HK} \alpha \vee \beta$
        6. 若 $\alpha, \Gamma \vdash_\mathbf{HK} \gamma$ 且 $\beta, \Gamma \vdash_\mathbf{HK} \gamma$，那么 $\alpha \vee \beta, \Gamma \vdash_\mathbf{HK} \gamma$
        7. 若 $\Gamma \vdash_\mathbf{HK} \alpha$ 且 $\beta, \Delta \vdash_\mathbf{HK} \gamma$，那么 $\alpha \to \beta, \Gamma, \Delta \vdash_\mathbf{HK} \gamma$
        8. 若 $\Gamma \vdash_\mathbf{HK} \alpha$ 且 $\Gamma \vdash_\mathbf{HK} \alpha \to \beta$，那么 $\Gamma \vdash_\mathbf{HK} \beta$
        9. 弱化规则：若 $\Gamma \vdash_\mathbf{HK} \alpha$ 且 $\Gamma \subseteq \Delta$，那么 $\Delta \vdash_\mathbf{HK} \alpha$
        10. 切割规则：若 $\Gamma \vdash_\mathbf{HK} \alpha$ 且 $\alpha, \Gamma \subseteq \beta$，那么 $\Gamma, \Delta \vdash_\mathbf{HK} \beta$
        11. 演绎定理：对任意公式集 $\Gamma \cup \{\alpha, \beta\}$，$\alpha, \Gamma \vdash_\mathbf{HK} \beta$ 当且仅当 $\Gamma \vdash_\mathbf{HK} \alpha \to \beta$
        12. 对任意公式集 $\Gamma \cup \{\alpha, \beta\}$，若 $\alpha, \Gamma \vdash_\mathbf{HK} \beta$ 并且 $\neg \alpha, \Gamma \vdash_\mathbf{HK} \beta$，那么 $\Gamma \vdash_\mathbf{HK} \beta$

5. 经典命题逻辑的后承演算 $\mathfrak{C}_\mathbf{HK}$ 由后承公理模式和后承规则组成
    1. 后承公理模式：
        1. $\alpha, \Gamma \vdash \alpha \ (\mathrm{Id})$
        2. $\bot, \Gamma \vdash \alpha \ (\bot)$
    2. 后承规则：

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \alpha$}
            \AxiomC{$\Gamma \vdash \beta$}
            \RightLabel{ $(\vdash \wedge)$}
            \BinaryInfC{$\Gamma \vdash \alpha \wedge \beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha$}
            \AxiomC{$\beta$}
            \AxiomC{$\Gamma \vdash \gamma$}
            \RightLabel{ $(\wedge \vdash)$}
            \TrinaryInfC{$\alpha \wedge \beta, \Gamma \vdash \gamma$}
            \end{prooftree} \\
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \alpha$}
            \RightLabel{ $(\vdash \vee)$}
            \UnaryInfC{$\Gamma \vdash \alpha \vee \beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \beta$}
            \RightLabel{ $(\vdash \vee)$}
            \UnaryInfC{$\Gamma \vdash \alpha \vee \beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha \Gamma \vdash \gamma$}
            \AxiomC{$\beta, \Gamma \vdash \gamma$}
            \RightLabel{ $(\vee \vdash)$}
            \BinaryInfC{$\alpha \vee \beta, \Gamma \vdash \gamma$}
            \end{prooftree} \\
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \vdash \beta$}
            \RightLabel{ (DT)}
            \UnaryInfC{$\Gamma \vdash \alpha \to \beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \alpha \to \beta$}
            \RightLabel{ (DT)}
            \UnaryInfC{$\alpha, \Gamma \vdash \beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \alpha$}
            \AxiomC{$\beta, \Delta \vdash \gamma$}
            \RightLabel{ $(\to \vdash)$}
            \BinaryInfC{$\alpha \to \beta, \Gamma, \Delta \vdash \gamma$}
            \end{prooftree} \\
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \vdash \gamma$}
            \AxiomC{$\neg \alpha, \Gamma \vdash \gamma$}
            \RightLabel{ (LEM)}
            \BinaryInfC{$\Gamma \vdash \gamma$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \gamma$}
            \RightLabel{ (Wk)}
            \UnaryInfC{$\alpha, \Gamma \vdash \gamma$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\Gamma \vdash \alpha$}
            \AxiomC{$\alpha, \Delta \vdash \gamma$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Delta \vdash \gamma$}
            \end{prooftree}
        }
        $$

        其中 $\text{LEM}$ 称为排中律规则；$\text{Wk}$ 称为弱化规则；$\text{Cut}$ 称为切割规则

    3. 在 $\mathfrak C_\mathbf{HK}$ 中，一个推导是由后承组成的有穷树结构
        1. 每个节点要么是后承公理，要么是使用后承规则从子节点得到的
        2. 若存在以后承 $\Gamma \vdash \beta$ 为根节点的推导，则称该后承在 $\mathfrak C_\mathbf{HK}$ 中可证，记作 $\Gamma \vdash_\mathbf{HK} \beta$
    4. 以下命题在 $\mathfrak C_\mathbf{HK}$ 中成立
        1. $\neg \alpha, \Gamma \vdash_\mathbf{HK} \beta$ 当且仅当 $\Gamma \vdash_\mathbf{HK} \alpha \vee \beta$
        2. $\alpha, \Gamma \vdash_\mathbf{HK} \beta$ 当且仅当 $\Gamma \vdash_\mathbf{HK} \neg \alpha \vee \beta$

6. 可靠性：若 $\Gamma \vdash_\mathbf{HK} \alpha$，则 $\Gamma \vDash \alpha$
    1. $\mathrm{Thm}(\mathbf{HK}) \subseteq \mathbf{CL}$
    2. 可靠性的等价形式：若 $\Gamma$ 是可满足的，则 $\Gamma$ 是 $\mathbf{HK}-$一致的
7. 一致性：$\mathbf{HK}$ 是一致的
    1. 若公式集 $\Gamma$ 有 $\Gamma \nvdash_\mathbf{HK} \bot$，则称 $\Gamma$ 是 $\mathbf{HK}-$一致的，否则 $\Gamma$ 是 $\mathbf{HK}-$不一致的
    2. 若公式集 $\Gamma$ 是 $\mathbf{HK}-$一致的，且对任何 $\mathbf{HK}-$一致的公式集 $\Delta$，若 $\Gamma \subseteq \Delta$ 有 $\Gamma = \Delta$，则称 $\Gamma$ 是极大 $\mathbf{HK}-$一致的，此时有
        1. 若 $\Gamma \vdash_\mathbf{HK} \alpha$，则 $\alpha \in \Gamma$
        2. $\mathrm{Thm}(\mathbf{HK}) \subseteq \Gamma$ 且 $\bot \notin \Gamma$
        3. $\neg \alpha \in \Gamma$ 当且仅当 $\alpha \notin \Gamma$
        4. $\alpha \wedge \beta \in \Gamma$ 当且仅当 $\alpha \in \Gamma$ 且 $\beta \in \Gamma$
        5. $\alpha \vee \beta \in \Gamma$ 当且仅当 $\alpha \in \Gamma$ 或 $\beta \in \Gamma$
        6. $\alpha \to \beta \in \Gamma$ 当且仅当 $\alpha \notin \Gamma$ 或 $\beta \in \Gamma$
    3. $\text{Lindenbaum}$ 定理：若 $\Gamma$ 是$\mathbf{HK}-$一致的公式集，那么存在极大 $\mathbf{HK}-$一致的公式集 $\Delta$ 使得 $\Gamma \subseteq \Delta$
8. 完全性：若 $\Gamma \vDash \alpha$，那么 $\Gamma \vdash_\mathbf{HK} \alpha$
    1. $\mathbf{CL} \subseteq \mathrm{Thm}(\mathbf{HK})$
    2. 完全性的等价形式：若 $\Gamma$ 是 $\mathbf{HK}-$一致的，则 $\Gamma$ 是可满足的
    3. 紧致性：一个公式集 $\Gamma$ 可满足当且仅当 $\Gamma$ 的每个有穷子集可满足
9.  其他性质
    1. $\text{Post}$ 完全性：$\mathbf{HK}$ 是 $\text{Post}$ 完全的，即若 $\nvdash_\mathbf{HK} \alpha$，那么在系统 $\mathbf{HK}$ 上增加 $\alpha$ 作为公理所得到的系统是不一致的
    2. 析取性质：$\mathbf{HK}$ 不具有析取性质，即存在公式 $\alpha \vee \beta$，有 $\vdash_\mathbf{HK} \alpha \vee \beta$ 且 $\nvdash_\mathbf{HK} \alpha$ 且 $\nvdash_\mathbf{HK} \beta$
    3. 插值性质：$\mathbf{HK}$ 具有插值性质，即对任何公式 $\alpha \to \beta$，若 $\vdash_\mathbf{HK} \alpha \to \beta$，那么存在公式 $\chi$ 使得
        1. $\vdash_\mathbf{HK} \alpha \to \chi$
        2. $\vdash_\mathbf{HK} \chi \to \beta$
        3. 变元条件：$\mathrm{var}(\chi) \subseteq \mathrm{var}(\alpha) \subseteq \mathrm{var}(\beta)$

        公式 $\chi$ 称为 $\alpha$ 与 $\beta$ 的插值

### 1.1.2 直觉主义逻辑

## 1.2 一阶逻辑
1. 一阶语言 $\mathscr L(S)$ 即一阶逻辑的形式语言，由逻辑符号和非逻辑符号组成
    1. 逻辑符号
        1. 变元集 $\mathbf{Var} = \{x_i \mid i\in \lambda\}$，用 $x, y, z$ 表示任意变元
        2. 联结词 $\bot, \wedge, \vee, \to$ 与量词 $\forall, \exists$
        3. 括号 $)$ 与 $($
    2. 非逻辑符号：令 $S = \mathbf R \cup \mathbf F\cup \mathbf C$
        1. 关系符号集 $\mathbf R = \{R_i\mid i\in \lambda\}$，用 $P, Q, R$ 表示任意关系符号
        2. 函数符号集 $\mathbf F = \{f_i\mid i\in \lambda\}$，用 $f, g, h$ 表示任意函数符号
        3. 常元符号集 $\mathbf C = \{c_i\mid i\in \lambda\}$，用 $a, b, c$ 表示任意常元符号

        一个一阶语言由非逻辑符号集合 $S$ 决定，并定义语言的基数 $|\mathscr L(S)| = \max\{|S|, \aleph_0\}$

    !!! note "形式主义进路"
        1. 证明论下的命题逻辑与一阶逻辑是从朴素集合论中建立的理论，因此变元集 $\mathbf{Var}$ 与一阶语言 $\mathscr L(S)$ 的基数 $\lambda$ 在本节中均至多为 $\omega$
        2. 在模型论中一阶语言是通过证明论中一阶语言理论建立的公理集合论重新构造的形式语言系统，是一个被拓展为可以包含不可数个非逻辑符号的集合
            1. $\lambda$ 是一个无穷基数，变元序列写作 $\left<x_{i}\right>_{i \in \lambda}$，并用 $\left<x_{m_1}, x_{m_2}, \cdots, x_{m_n}\right>, m_k\in \lambda$（$m_i < m_j$ 当且仅当 $i < j$）表示有穷自由变元序列
            2. 设 $\Sigma$ 是一个 $S-$公式集，$I$ 是一个指标集．若 $\Sigma$ 中的公式的自由变元来自变元符号集 $\left\{x_{i} \mid i \in I\right\}$，则有时将 $\Sigma$ 记作 $\Sigma(x_i)_{i \in I}$

2. 一阶逻辑项与公式的句法
    1. 一阶语言 $\mathscr L(S)$ 的类型是从 $\mathbf R \cup \mathbf F$ 的正整数集合的函数 $\Omega: S \to \mathbf Z_+$
        1. 对每个 $R \in \mathbf R$，$\Omega(R)$ 称为 $R$ 的元数，$R$ 为 $\Omega(R)$ 元关系符号
        2. 对每个 $f \in \mathbf F$，$\Omega(f)$ 称为 $f$ 的元数，$f$ 为 $\Omega(f)$ 元关系符号
    2. 一阶语言 $\mathscr L(S)$ 的项集 $\mathcal T(S)$ 归纳定义如下

        $$
        \mathcal T(S) \ni t:= x \mid c \mid ft_1t_2\cdots t_{\Omega(f)}
        $$

        其中 $x\in \mathbf{Var}, c\in C$ 且 $f\in \mathbf F$．不含变项的项称作闭项

        一阶语言 $\mathscr L(S)$ 的（合式）公式集 $\mathcal F(S)$ 归纳定义如下

        $$
        \mathcal F(S) \ni \alpha := Rt_1t_2\cdots t_{\Omega(R)} \mid \bot \mid (\alpha_1 \wedge \alpha_2) \mid (\alpha_1 \vee \alpha_2) \mid (\alpha_1 \to \alpha_2) \mid \forall x\alpha \mid \exists x\alpha
        $$

        其中 $R\in \mathbf R$，$t_1, t_2, \cdots, t_{\Omega(R)}$ 是项，$x$ 是变元

    3. 公式的类型：一个公式至多含有有穷个变元符号，记作 $\alpha(x_1, x_2, \cdots, x_n)$，且有 $\mathrm{FV}(\alpha) \subseteq \{x_1, x_2, \cdots, x_n\}$，每个 $x_k(1 \leqslant k \leqslant n)$ 均在 $\alpha$ 中自由出现
        1. 原子公式：形如 $Rt_1 t_2 \cdots t_{\Omega(R)}$ 或 $\bot$ 的公式
        2. 正公式：逻辑连接词只有 $\wedge$ 与 $\vee$ 的公式
        3. 语句：如果公式中的变元均为约束变元，则称该公式为 $S-$语句
        4. 无量词公式：含有的符号均为自由变元的公式
        5. 存在公式：递归定义存在公式为 ① 无量词公式 $\alpha$；② 形如 $\exists x\beta$ 的公式，其中 $\beta$ 是存在公式
        6. 全称公式：递归定义全称公式为 ① 无量词公式 $\alpha$；② 形如 $\exists x\beta$ 的公式，其中 $\beta$ 是全称公式
    4. 特殊记法
        1. 定义缩写 $\neg \alpha = \alpha \to \bot$，$\alpha \leftrightarrow \beta = (\alpha \to \beta) \wedge (\beta \to \alpha)$
        2. 对于 $\mathbf Q\in \{\forall, \exists\}$ 和有穷长的变元序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，公式 $\mathbf Qx_1 \mathbf Qx_2 \cdots \mathbf Qx_n \alpha$ 记作 $\mathbf Q \overline x \alpha$
        3. 设 $t$ 为项，$\overline x$ 为有穷长的变元序列 $\left<x_1, x_2, \cdots, x_n\right>$．记 $t = t(\overline x)$ 为含有变元 $x_1, x_2, \cdots, x_n$ 的项

3. 基于公式定义的归纳证明：令 $\mathcal R$ 是符号串性质，设 ① 对任意原子公式 $\alpha$ 都有 $\mathcal R(\alpha)$；② 对任意 $\alpha, \beta \in \mathcal F(S)$ 和 $\circ \in \{\wedge, \vee, \to\}$，若 $\mathcal R(\alpha)$ 且 $\mathcal R(\beta)$，则 $\mathcal R(\alpha \circ \beta)$；③ 对任意 $\alpha \in \mathcal F(S)$ 和变元符号 $x$，若 $\mathcal R(\alpha)$，则 $\mathcal R(\exists x\alpha)$；那么 $\mathcal R(\alpha)$ 对所有 $\alpha \in \mathcal F(S)$ 都成立
    1. 项与公式的性质
        1. 项 $t$ 的复杂度定义为

            $$
            \begin{aligned}
            d(x) &= 0 = d(c) \\
            d(ft_1 t_2 \cdots t_{\Omega(f)}) &= \max\{d(t_1), d(t_2), \cdots d(t_n)\} + 1
            \end{aligned}
            $$

            公式 $\alpha$ 的复杂度定义为

            $$
            \begin{aligned}
            d(Rt_1 t_2 \cdots t_n) &= 0 = d(\bot) \\
            d(\alpha \circ \beta) &= \max\{d(\alpha, \beta)\} + 1 \\
            d(\mathbf Q x\alpha) &= d(\alpha) + 1 \end{aligned}
            $$

            其中 $\circ \in \{\wedge, \vee, \to\}$ 且 $\mathbf Q\in \{\forall, \exists\}$

        2. 项 $t$ 中出现的变元集合 $\mathrm{var}(t)$ 定义为

            $$
            \begin{aligned}
            \mathrm{var}(x) &= \{x\} \\
            \mathrm{var}(c) &= \varnothing \\
            \mathrm{var}(ft_1 t_2 \cdots t_{\Omega(f)}) &= \mathrm{var}(t_1) \cup \mathrm{var}(t_2) \cup \cdots \cup \mathrm{var}(t_{\Omega(R)})
            \end{aligned}
            $$

        3. 公式 $\alpha$ 所有子公式的集合 $\mathrm{SF}(\alpha)$ 定义为

            $$
            \begin{aligned}
            \mathrm{SF}(\alpha) &= \{\alpha\}, & \alpha \textsf{ 为原子公式} \\
            \mathrm{SF}(\alpha \circ \beta) &= \mathrm{SF}(\alpha) \cup \mathrm{SF}(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\} \\
            \mathrm{SF}(\mathbf Q x\alpha) &= \mathrm{SF}(\alpha) \cup \{\mathbf Qx\alpha\}, &\mathbf Q\in \{\forall, \exists\}
            \end{aligned}
            $$

        4. 自由变元和约束变元
            1. 公式 $\alpha$ 中自由变元的集合 $\mathrm{FV}(\alpha)$ 定义为 

                $$
                \begin{aligned}
                \mathrm{FV}(Rt_1 t_2 \cdots t_{\Omega(R)}) &= \mathrm{var}(t_1) \cup \mathrm{var}(t_2) \cup \cdots \cup \mathrm{var}(t_{\Omega(R)}) \\
                \mathrm{FV}(\alpha \circ \beta) &= \mathrm{FV}(\alpha) \cup \mathrm{FV}(\beta), & \circ \in \{\wedge, \vee, \to\} \\
                \mathrm{FV}(\mathbf Q x\alpha) &= \mathrm{FV}(\alpha) - \{x\}, & \mathbf Q\in \{\forall, \exists\}
                \end{aligned}
                $$

                对任意公式集 $\Sigma$，令 $\mathrm{FV}(\Sigma) = {\displaystyle \bigcup_{\alpha \in \Sigma} \mathrm{FV}(\alpha)}$

            2. 公式 $\alpha$ 中约束变元的集合 $\mathrm{BV}(\alpha)$ 定义为

                $$
                \begin{aligned}
                \mathrm{BV}(\alpha) &= \varnothing, & \alpha \textsf{ 为原子公式} \\
                \mathrm{BV}(\alpha \circ \beta) &= \mathrm{BV}(\alpha) \cup \mathrm{BV}(\beta), & \circ \in \{\wedge, \vee, \to\} \\
                \mathrm{BV}(\mathbf Q x\alpha) &= \mathrm{BV}(\alpha) \cup \{x\}, & \mathbf Q\in \{\forall, \exists\}
                \end{aligned}
                $$

                对任意公式集 $\Sigma$，令 $\mathrm{BV}(\Sigma) = {\displaystyle \bigcup_{\alpha \in \Sigma} \mathrm{BV}(\alpha)}$

            3. 对形如 $\mathbf Q x\beta$ 的公式，称 $\beta$ 为量词 $\mathbf Qx$ 的辖域．如果变元 $x$ 在公式 $\alpha$ 中的一次出现不在任何量词 $\mathbf Qx$ 的辖域内，则称此次出现为自由出现；否则称之为约束出现，此时变元 $x$ 在 $\alpha$ 中被左侧最近的量词 $\mathbf Qx$ 约束

    2. 替换与变换：对于任意项序列 $\overline t = \left<t_1, t_2, \cdots, t_n\right>$ 和任意变元序列 $\overline x = \left<x_1, x_2, \cdots, x_n\right>$，用 $\overline t / \overline x$ 表示分别用 $t_i$ 替换 $x_i$
        1. 对于公式 $\alpha$，如果公式 $\alpha^\flat$ 是使用不在 $\alpha$ 中出现的新变元 $y_1, y_2, \cdots, y_n$ 分别同时替换 $\alpha$ 中约束变元 $x_1, x_2, \cdots, x_n$ 的所有约束出现得到的公式，则称 $\alpha^\flat$ 是 $\alpha$ 的字母变换
        2. 对任意项 $s\in \mathcal T(S)$，归纳定义 $s(\overline t/\overline y)$ 为

            $$
            \begin{aligned}
            x(\overline t/\overline y) &= \left\{\begin{aligned} & x, & x\notin \overline y \\ & t_i, & \exists i\leqslant n: x = y_i \end{aligned}\right. \\
            c(\overline t/\overline y) &= c \\
            (fs_1 s_2 \cdots s_{\Omega(f)})(\overline t/\overline y) &= fs_1(\overline t/\overline y) s_2(\overline t/\overline y) \cdots s_n(\overline t/\overline y)
            \end{aligned}
            $$

        3. 对任意公式 $\alpha$，归纳定义 $\alpha(\overline t/\overline x)$ 为

            $$
            \begin{aligned}
            (Rs_1 s_2 \cdots s_{\Omega(R)})(\overline t/\overline x) &= fs_1(\overline t/\overline x) s_2(\overline t/\overline x) \cdots s_{\Omega(R)}(\overline t/\overline x) \\
            \bot(\overline t/\overline x) &= \bot \\
            (\alpha \circ \beta)(\overline t/\overline x) &= \alpha(\overline t/\overline x) \circ \beta(\overline t/\overline x), & \circ \in \{\wedge, \vee, \to\} \\
            (\exists x\alpha)(\overline t/\overline x) &= \exists x\alpha(\overline{t_i}/\overline{x_i}, u/x) \\
            (\forall x\alpha)(\overline t/\overline x) &= \forall x\alpha(\overline{t_i}/\overline{x_i}, u/x)
            \end{aligned}
            $$

            其中 $\overline{x_i}$ 是 $\overline x$ 中满足条件 $x_i\in \mathrm{FV}(\mathbf Q x\alpha)$ 且 $x_i \neq t_i$ 的所有变元的序列．如果 $x \notin \mathrm{var}(t_{i_1}) \cup \mathrm{var}(t_{i_2}) \cup \cdots \cup \mathrm{var}(t_{i_n})$，则 $u = x$，否则 $u$ 为第一个不在 $\alpha, t_{i_1}, t_{i_2}, \cdots, t_{i_n}$ 中出现的变元，变元 $u$ 的引入保证 $\overline{t_i}$ 中出现的变元不被任何量词约束

        4. 通常用 $\alpha(c_1, c_2, \cdots, c_n)$ 表示公式 $\alpha(c_1/x_1)(c_2/x_2)\cdots(c_n/x_n)$
            1. $\alpha(c_1, c_2, \cdots, c_n)$ 是一个 $S-$语句
            2. 设模型 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是一个 $S-$结构，则 $\mathfrak A \vDash \alpha(c_1, c_2, \cdots, c_n)$ 当且仅当 $\mathfrak M \vDash \alpha(c_1, c_2, \cdots, c_n)$

4. 模型论语义学
    1. 结构：一个 $S-$结构是 $\mathfrak A = (A, I)$，也记作 $(A, R^\mathfrak A, f^\mathfrak A, c^\mathfrak A)$ 或 $\left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}$，其中 $A$ 是非空集合，称为 $\mathfrak A$ 的论域，$I$ 是定义在 $S$ 上的映射；在不引发歧义的情况下，也可称 $A$ 为一个 $S-$结构．记 $A$ 的基数 $|A|$ 为 $\mathfrak A$ 的基数，用 $|\mathfrak A|$ 来表示
        1. 对每个关系符号 $R\in \mathbf R, I(R) \subseteq A^{\Omega(R)}$，常用 $R^\mathfrak A$ 或 $R^A$ 代替 $I(R)$
        2. 对每个函数符号 $f\in \mathbf F, I(f): A^{\Omega(f)} \to A$ 是 $A$ 上的 $\Omega(f)$ 元函数，常用 $f^\mathfrak A$ 或 $f^A$ 代替 $I(f)$
        3. 对每个常元符号 $c\in \mathbf C, I(c) \in A$，常用 $c^\mathfrak A$ 或 $c^A$ 代替 $I(c)$

        !!! note "相关概念"
            1. 子语言：设 $\mathscr L(S)$ 是一个语言，如果 $S_0 \subseteq S$，则称 $\mathscr L(S_0)$ 是 $\mathscr L(S)$ 的子语言．对任意的结构 $\mathfrak A$，忽略 $S - S_0$ 中的符号在 $\mathfrak A$ 的解释，即令 $\mathfrak A \upharpoonright S_0 = \left\{A, \{Z^\mathfrak A\}_{Z\in S_0}\right\}$，则 $\mathfrak A \upharpoonright S_0$ 是一个 $S_0-$结构．称 $\mathfrak A \upharpoonright S_0$ 是 $\mathfrak A$ 在 $S_0$ 上的约化，$\mathfrak A$ 是 $\mathfrak A \upharpoonright S_0$ 在 $S$ 上的扩张

            2. 设 $I$ 是一个集合，$\left\{ \mathfrak A_i = \left\{A_i, \{Z^{\mathfrak A_i}\}_{Z\in S}\right\}\right\}$ 是一族 $S-$结构，如果

                1. ${\displaystyle \bigcap_{i\in I}A_i} \neq \varnothing$
                2. 对每个 $n$ 元函数符号 $f\in \mathbf F$，如果 $(a_1, a_2, \cdots, a_n) \in {\displaystyle \bigcap_{i\in I}A_i^n}$，对任意的 $i, j\in I$ 有 $f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_j}(a_1, a_2, \cdots, a_n)$
                3. 对每个常元符号 $c\in \mathbf C$，对任意 $i, j\in I$ 有 $c^{\mathfrak A_i} = c^{\mathfrak A_j}$

                则定义 $\{\mathfrak A_i\mid i\in I\}$ 的交为一个以 ${\displaystyle \bigcap_{i\in I}A_i}$ 为论域的 $S-$结构，记作 ${\displaystyle \bigcap_{i\in I}\mathfrak A_i}$

                4. 对每个 $n$ 元关系符号 $R\in \mathbf R$，$R^{\bigcap_{i\in I}\mathfrak A_i} = {\displaystyle \bigcap_{i\in I}R^{\mathfrak A_i}}$
                5. 对每个 $n$ 元函数符号 $f\in \mathbf F$，$f^{\bigcap_{i\in I}\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n)$
                6. 对每个常元符号，$c\in \mathbf C$，$c^{\bigcap_{i\in I}\mathfrak A_i} = C^{\mathfrak A_i}$

    2. 模型：一个模型是有序对 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是结构，$\sigma$ 是 $\mathfrak A$ 中的指派
        1. 指派：结构 $\mathfrak A = (A, I)$ 中的 $\mathfrak A-$指派是一个函数 $\sigma: \mathbf{Var} \to A$；也用 $\left<\sigma(x_i)\right>_{i\in \lambda}$ 表示 $\sigma$，其中 $\lambda$ 是 $\mathbf{Var}$ 的指标集
        2. 对模型 $\mathfrak M = (\mathfrak A, \sigma)$ 和任意变元 $x$，定义指派 $\sigma[a/x]: \mathbf{Var} \to A$ 为 $\sigma[a/x](y) = \left\{\begin{aligned} & a, & y = x \\ & \sigma(y), & y\neq x \end{aligned}\right.$
            1. 指派 $\sigma[\alpha /x]$ 与 $\sigma$ 至多在 $x$ 处的值不同
            2. 设指派 $\overline b = \left<b_i\right>_{i\in \lambda}$，此时将替换记作 $\overline b[a/x]$
            3. 令 $\overline a = \left<a_1, a_2, \cdots, a_n\right>, \overline x = \left<x_1, x_2, \cdots, x_n\right>$，记 $\sigma[\overline a / \overline x] = \sigma[a_1/x_1][a_2/x_2] \cdots [a_n/x_n]$
        3. 项解释：对任意结构 $\mathfrak A$ 和模型 $\mathfrak M = (\mathfrak A, \sigma)$，$\overline b = \left<b_i\right>_{i\in \lambda}$ 是一个 $\mathfrak A-$指派，项 $t$ 在 $\mathfrak M$ 中的解释 $t^\mathfrak M = t^\mathfrak A[\overline b]$ 归纳定义为

            $$
            \begin{aligned}
            x^\mathfrak M &= \sigma(x) \\
            c^\mathfrak M &= c^\mathfrak A \\
            f(\overline t)^\mathfrak M &= f^\mathfrak A(\overline t^\mathfrak M) = f^\mathfrak A(\overline t^\mathfrak A[\overline b])
            \end{aligned}
            $$

            其中 $\overline t^\mathfrak M = \left<t_1^\mathfrak M, t_2^\mathfrak M, \cdots, t_{\Omega(f)}^\mathfrak M\right>, \overline t^\mathfrak A[\overline b] = \left<t_1^\mathfrak A[\overline b], t_2^\mathfrak A[\overline b], \cdots, t_{\Omega(f)}^\mathfrak A[\overline b]\right>$

            !!! note "项解释与函数"
                设 $\mathfrak A$ 是一个 $S-$结构，$t = t(\overline x)$ 是一个项，其中 $\overline x = \left<x_1, x_2, \cdots, x_m\right>$．在 $\mathfrak A$ 中将 $t$ 解释为一个函数 $t: A^m \to A$，从而对于 $A^m$ 内的任意一点 $\overline a = \left<a_1, a_2, \cdots, a_m\right>$，将 $t^\mathfrak A$ 递归定义为

                1. 如果 $t$ 是常元符号 $c$，则 $t^\mathfrak A(\overline a) = c^\mathfrak A$ 是一个常函数
                2. 如果 $t$ 是变元符号 $x_i$，则 $t^\mathfrak A = a_i$ 是一个坐标函数
                3. 如果 $t$ 是 $ft_1 t_2 \cdots t_{\Omega(f)}$，其中 $t_1, t_2, \cdots, t_{\Omega(f)}$ 是项且 $f$ 是函数符号，则 $t^\mathfrak A = f^\mathfrak A(t^\mathfrak A_1(\overline a), t^\mathfrak A_2(\overline a), \cdots, t^\mathfrak A_{\Omega(f)}(\overline a))$

                此时 $t^{\mathfrak A}[\overline a] = t^{\mathfrak A}(\overline a) = t^{\mathfrak A}(a_1, a_2, \cdots, a_m)$，其中前者是项 $t$ 在 $\mathfrak A-$指派下的值，后者是函数 $t^{\mathfrak A}$ 在点 $\overline a$ 下的值

    3. 语义后承：模型 $\mathfrak M$ 与公式 $\alpha$ 的满足关系 $\mathfrak M \vDash \alpha$ 即 $(\mathfrak A, \sigma) \vDash \alpha$ 定义为

        $$
        \begin{aligned}
        \mathfrak M \vDash R\overline t & \textsf{ 当且仅当 } \overline t^\mathfrak M \in R^\mathfrak M \\
        \mathfrak M \nvDash \bot \\
        \mathfrak M \vDash \alpha \wedge \beta  & \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 且 } \mathfrak M \vDash \beta \\
        \mathfrak M \vDash \alpha \vee \beta  & \textsf{ 当且仅当 } \mathfrak M \vDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        \mathfrak M \vDash \alpha \to \beta  & \textsf{ 当且仅当 } \mathfrak M \nvDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
        \mathfrak M \vDash \exists x\alpha  & \textsf{ 当且仅当存在 } a \in A \textsf{ 使得 } (\mathfrak A, \sigma[a/x]) \vDash \alpha \\
        \mathfrak M \vDash \forall x\alpha  & \textsf{ 当且仅当任意 } a \in A \textsf{ 都有 } (\mathfrak A, \sigma[a/x]) \vDash \alpha
        \end{aligned}
        $$

        设指派 $\overline a = \left<a_i\right>_{i\in \lambda}$，此时也可将满足关系记作 $\mathfrak A \vDash \alpha[\overline a]$ 或 $\mathfrak A \vDash \alpha(\overline b)$，称 $\mathfrak A$ 满足 $\alpha[\overline a]$、$\alpha[\overline a]$ 在 $\mathfrak A$ 中为真或 $\overline a$ 在 $\mathfrak A$ 中实现了 $\alpha$

        1. 对任意公式集 $\Sigma$，若对所有 $\alpha \in \Sigma$ 都有 $\mathfrak M \vDash \alpha$，则记作 $\mathfrak M \vDash \Sigma$
        2. 如果公式（包括语句）$\alpha$ 有对于结构 $\mathfrak A$ 中的任意指派 $\sigma$ 都有 $(\mathfrak A, \sigma) \vDash \alpha$，则称 $\alpha$ 在 $\mathfrak A$ 上有效，记作 $\mathfrak A \vDash \alpha$
        3. 若 $\Sigma$ 是一个语句集，且对任意 $\alpha \in \Sigma$ 都有 $\mathfrak A \vDash \alpha$，则记作 $\mathfrak A \vDash \Sigma$
        4. 如果公式 $\alpha$ 有对于任意结构 $\mathfrak A$ 都有 $\mathfrak A \vDash \alpha$，则称公式 $\alpha$ 有效，记作 $\vDash_1 \alpha$，设一阶逻辑 $\mathbf{FOL} = \{\alpha \in \mathcal F(S) \mid \vDash_1 \alpha\}$

            !!! note "有效式"
                以下公式都是有效的

                1. $\forall x \ (\alpha \wedge \beta) \leftrightarrow \forall x\alpha \wedge \forall x\beta$
                2. $\exists x \ (\alpha \vee \beta) \leftrightarrow \exists x\alpha \vee \exists x\beta$
                3. $\forall x \ (\alpha \vee \beta) \leftrightarrow \alpha \vee \forall x\beta, x\notin \mathrm{FV}(\alpha)$
                4. $\exists x \ (\alpha \wedge \beta) \leftrightarrow \alpha \wedge \exists x\beta, x\notin \mathrm{FV}(\alpha)$
                5. $\forall x \ (\alpha \to \beta) \to (\alpha \to \forall x\beta), x\notin \mathrm{FV}(\alpha)$
                6. $\forall x\alpha \to \alpha(t/x)$

    4. 设 $\alpha$ 是一个公式，$\Sigma$ 是一个公式集，如果对任意模型 $\mathfrak M$ 都有 $\mathfrak M \vDash \Sigma$ 蕴涵 $\mathfrak M \vDash \alpha$，则称 $\alpha$ 是 $\Sigma$ 的语义后承，或称 $\Sigma$ 语义蕴含 $\alpha$，记作 $\Sigma \vDash \alpha$
        1. 对于公式集 $\Sigma$，如果存在模型 $\mathfrak M$ 使得 $\mathfrak M \vDash \Sigma$，则称 $\Sigma$ 可满足
            1. 对于公式 $\alpha$，如果 $\{\alpha\}$ 可满足，则称 $\alpha$ 可满足
            2. 对任意公式集 $\Sigma \cup \{\alpha\}$，$\Sigma \vDash \alpha$ 当且仅当 $\Sigma \cup \{\neg \alpha\}$ 不可满足
        2. 令 $\mathfrak M_1 = (\mathfrak A_1, \sigma), \mathfrak M_2 = (\mathfrak A_2, \sigma)$ 分别是 $S_1-$结构和 $S_2-$结构上的模型，其中 $\mathfrak A_1$ 与 $\mathfrak A_2$ 有相同论域 $A$，令 $S = S_1 \cap S_2$
            1. 对任意项 $s\in \mathcal T(S)$，$s^{\mathfrak M_1} = s^{\mathfrak M_2}$
            2. 对任意公式 $\alpha \in \mathcal F(S)$，$\mathfrak M_1 \vDash \alpha$ 当且仅当 $\mathfrak M_2 \vDash \alpha$
        3. 对任意模型 $\mathfrak M = (\mathfrak A, \sigma)$，设 $\mathfrak M' = (\mathfrak A, \sigma[\overline t^{\mathfrak M}/\overline x])$
            1. 对任意项 $s$ 都有 $s(\overline t/\overline x)^{\mathfrak M} = s^{\mathfrak M'}$
            2. 对任意公式 $\alpha$，$\mathfrak M \vDash \alpha(\overline t/\overline x)$ 当且仅当 $\mathfrak M' \vDash \alpha$

5. 公理系统 $\mathbf H_1$
    1. 公理模式与推理规则
        1. 公理模式
            1. $\text{A}_1:$ 任意经典命题逻辑重言式一阶代入特例
            2. $\text{A}_2: \forall x\alpha \leftrightarrow \neg \exists x \neg \alpha$
            3. $\text{A}_3: \forall x \ (\alpha \to \beta) \to (\forall x\alpha \to \forall x \beta)$
            4. $\text{A}_4: \alpha \to \forall x\alpha, x\notin \mathrm{FV}(\alpha)$
            5. $\text{A}_5: \forall x\alpha \to \alpha(t/x)$
        2. 推理规则

            $$
            \begin{prooftree}
            \AxiomC{$\alpha$}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{ (mp)}
            \BinaryInfC{$\beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha$}
            \RightLabel{ (gen)}
            \UnaryInfC{$\forall x\alpha$}
            \end{prooftree}
            $$

    2. 在 $\mathbf{H}_1$ 中的推导是由公式组成的有穷树结构 $\mathcal D$，每个节点 $\gamma$ 要么是公理，要么是从子节点运用规则 $\text{mp}$ 或 $\text{gen}$ 得到的．对于 $\mathrm{gen}$ 规则，需要保证以公式 $\alpha$ 为根节点的推导使用到的假设 $\Sigma_0$ 中不自由出现 $x$
        1. 用 $\mathcal D, \mathcal E$ 表示推导，记号 $\begin{prooftree} \AxiomC{\(\mathcal D\)} \noLine \UnaryInfC{\(\varphi\)} \end{prooftree}$ 表示 $\mathcal D$ 是以 $\varphi$ 为根节点的推导
        2. 如果存在以公式 $\alpha$ 为根节点的推导，则称 $\alpha$ 在 $\mathbf H_1$ 可证，或称 $\alpha$ 是 $\mathbf H_1$ 的定理，记作 $\vdash_{\mathbf H_1} \alpha$，用 $\mathrm{Thm}(\mathbf H_1)$ 表示 $\mathbf H_1$ 所有定理的集合，在不引发歧义的情况下可以删除下标 $\mathbf H_1$
        3. 如果对于公式 $\alpha_0, \alpha_1, \cdots, \alpha_n$ 有 $\vdash_{\mathbf H_1} \alpha_i\ (1 \leqslant i \leqslant n)$ 蕴含 $\vdash_{\mathbf H_1} \alpha_0$，则称以 $\alpha_1, \alpha_2, \cdots, \alpha_n$ 为前提且以 $\alpha_0$ 为结论的推理规则 $\begin{prooftree} \AxiomC{\(\alpha_1\)} \AxiomC{\(\alpha_2\)} \AxiomC{\(\cdots\)} \AxiomC{\(\alpha_n\)} \QuaternaryInfC{\(\alpha_0\)} \end{prooftree}$ 在 $\mathbf H_1$ 中可允许
        4. 如果存在公式集 $\Sigma$ 的有穷子集 $\Sigma_0$ 使得对公式 $\alpha$ 有 $\vdash_{\mathbf H_1} \bigwedge \Sigma_0 \to \alpha$，则称 $\alpha$ 是 $\Sigma$ 的句法后承，记作 $\Sigma \vdash_{\mathbf H_1} \alpha$
    3. 元定理
        1. 演绎定理：$\alpha, \Sigma \vdash_{\mathbf H_1} \beta$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} \alpha \to \beta$
        2. 对任意公式 $\mathbf Qx\alpha$，如果 $y\notin \mathrm{FV}(\mathbf Qx\alpha)$，那么 $\vdash_{\mathbf H_1} \mathbf Qx\alpha \leftrightarrow \mathbf Qy\alpha(y/x)$
        3. 以下单调性规则在 $\mathbf H_1$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{ $(\forall M)$}
            \UnaryInfC{$\forall x\alpha \to \forall x\beta$}
            \end{prooftree},
            \begin{prooftree}
            \AxiomC{$\alpha \to \beta$}
            \RightLabel{ $(\forall M)$}
            \UnaryInfC{$\exists x\alpha \to \exists x\beta$}
            \end{prooftree}
            $$

        4. 以下公式是 $\mathbf H_1$ 的定理
            1. $\alpha(t/x) \to \exists x\alpha$
            2. $\forall x \ (\alpha \to \beta) \to (\alpha \to \forall x\beta), x\notin \mathrm{FV}(\alpha)$
            3. $\forall x\forall y\alpha \to \forall y\forall x\alpha$
            4. $\forall x \ (\alpha \wedge \beta) \leftrightarrow \forall x\alpha \wedge \forall x\beta$
            5. $\exists x \ (\alpha \vee \beta) \leftrightarrow \exists x\alpha \vee \exists x\beta$
            6. $\forall x \ (\alpha \vee \beta) \leftrightarrow \alpha \vee \forall x\beta, x\notin \mathrm{FV}(\alpha)$
            7. $\exists x \ (\alpha \wedge \beta) \leftrightarrow \alpha \wedge \exists x\beta, x\notin \mathrm{FV}(\alpha)$

        5. 在 $\mathbf H_1$ 中以下句法后承成立
            1. $\alpha, \Sigma \vdash_{\mathbf H_1} \alpha$
            2. $\bot, \Sigma \vdash_{\mathbf H_1} \alpha$
            3. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \subseteq \Psi$，则 $\Psi \vdash_{\mathbf H_1} \alpha$
            4. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\alpha, \Psi \vdash_{\mathbf H_1} \beta$，则 $\Sigma, \Psi \vdash_{\mathbf H_1} \beta$
            5. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \vdash_{\mathbf H_1} \beta$，则 $\Sigma \vdash_{\mathbf H_1} \alpha \wedge \beta$
            6. 如果 $\alpha, \beta, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\alpha, \wedge \beta, \Sigma \vdash_{\mathbf H_1} \gamma$
            7. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 或 $\Sigma \vdash_{\mathbf H_1} \beta$，则 $\Sigma \vdash_{\mathbf H_1} \alpha \vee \beta$
            8. 如果 $\alpha, \Sigma \vdash_{\mathbf H_1} \gamma$ 且 $\beta, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\alpha \vee \beta, \Sigma \vdash_{\mathbf H_1} \gamma$
            9. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\beta, \Psi \vdash_{\mathbf H_1} \gamma$，则 $\alpha \to \beta, \Sigma, \Psi \vdash_{\mathbf H_1} \gamma$
            10. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha$ 且 $\Sigma \vdash_{\mathbf H_1} \alpha \to \beta$，则 $\Sigma \vdash_{\mathbf H_1} \beta$
            11. 如果 $\alpha, \Psi \vdash_{\mathbf H_1} \gamma$ 且 $\neg \alpha, \Sigma \vdash_{\mathbf H_1} \gamma$，则 $\Sigma \vdash \gamma$
            12. 如果 $\alpha(t/x), \Sigma \vdash_{\mathbf H_1} \beta$，则 $\forall x\alpha, \Sigma \vdash_{\mathbf H_1} \beta$
            13. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha(y/x)$ 且 $y\notin \mathrm{FV}(\Sigma, \forall x\alpha)$，则 $\Sigma \vdash_{\mathbf H_1} \forall x\alpha$
            14. 如果 $\alpha(y/x), \Sigma \vdash_{\mathbf H_1} \beta$ 且 $y\notin \mathrm{FV}(\exists x\alpha, \Sigma, \beta)$，则 $\exists x\alpha, \Sigma \vdash_{\mathbf H_1} \beta$
            15. 如果 $\Sigma \vdash_{\mathbf H_1} \alpha(t/x)$，则 $\Sigma \vdash_{\mathbf H_1} \exists x\alpha$

    4. 前束范式定理：对于任何公式，都可以找到与之句法等价的前束公式，即具有 $\mathbf Q_1 x_1 \mathbf Q_2 x_2 \cdots \mathbf Q_n x_n \alpha$ 形式的公式，其中 $n$ 是自然数，$\mathbf Q_i$ 是量词且 $\alpha$ 不含量词

6. 一阶逻辑的后承演算 $\mathfrak C_{\mathbf H_1}$ 是在经典命题逻辑的后承演算 $\mathfrak C_{\mathbf{HK}}$ 增加量词规则得到的

    $$
    \displaylines{
        \begin{prooftree}
        \AxiomC{$\alpha(t/x), \Sigma \vdash \beta$}
        \RightLabel{ $(\forall \vdash)$}
        \UnaryInfC{$(\forall x\alpha, \Sigma \vdash \beta)$}
        \end{prooftree},
        \begin{prooftree}
        \AxiomC{$\Sigma \vdash \alpha(y/x)$}
        \RightLabel{ $(\vdash \forall)$}
        \UnaryInfC{$\Sigma \vdash \forall x\alpha$}
        \end{prooftree}
        (y \notin \mathrm{FV}(\Sigma, \forall x\alpha)) \\
        \begin{prooftree}
        \AxiomC{$\alpha(y/x), \Sigma \vdash \beta$}
        \RightLabel{ $(\exists \vdash)$}
        \UnaryInfC{$\exists x\alpha$}
        \end{prooftree},
        \begin{prooftree}
        \AxiomC{$\Sigma \vdash \alpha(t/x)$}
        \RightLabel{ $(\vdash \exists)$}
        \UnaryInfC{$\Sigma \vdash \exists x\alpha$}
        \end{prooftree}
        (y \notin \mathrm{FV}(\Sigma, \exists x\alpha, \beta))
    }
    $$

7. 一致性（相容性）：如果公式集 $\Sigma$ 有 $\Sigma \nvdash_{\mathbf H_1} \bot$，则称公式集 $\Sigma$ 是 $\mathbf H_1-$一致的，否则称 $\Sigma$ 是 $\mathbf H_1-$不一致的
    1. $\Sigma \nvdash_{\mathbf H_1} \neg \alpha$ 当且仅当 $\Sigma \cup \{\alpha\}$ 是 $\mathbf H_1-$一致的；$\Sigma \nvdash_{\mathbf H_1} \alpha$ 当且仅当 $\Sigma \cup \{\neg \alpha\}$ 是 $\mathbf H_1-$一致的
    2. 若公式集 $\Sigma$ 是 $\mathbf{H_1}-$一致的，且对任何 $\mathbf{H_1}-$一致的公式集 $\Delta$，若 $\Sigma \subseteq \Delta$，那么 $\Sigma = \Delta$，则称 $\Sigma$ 是极大 $\mathbf{H_1}-$一致的
    3. 一个公式集 $\Sigma$ 是 $\mathbf H_1$ 一致的当且仅当 $\Sigma$ 的每个有穷子集是 $\mathbf H_1$ 一致的
8. 可靠性：如果 $\Sigma \vdash_{\mathbf H_1} \alpha$，那么 $\Sigma \vDash \alpha$
    1. 对任意公式 $\alpha, \beta$
        1. 如果 $\vDash_1 \alpha$ 且 $\vDash_1 \alpha \to \beta$，则 $\vDash \beta$
        2. 如果 $\vDash_1 \alpha$，则 $\vDash_1 \forall x\alpha$
    2. 如果 $\Sigma$ 是可满足的，那么 $\Sigma$ 是 $\mathbf H_1-$一致的
    3. $\mathrm{Thm}(\mathbf H_1) \subseteq \mathbf{FOL}$
9. 完全性：如果 $\Sigma \vDash \alpha$，那么 $\Sigma \vdash_{\mathbf H_1} \alpha$
    1. $S$ 是可数的，因此 $\mathcal T(S)$ 与 $\mathcal F(S)$ 均可数，设 $\Sigma$ 是 $\mathbf H_1-$一致的公式集，构造句法模型 $\mathfrak M^\Sigma = (\mathfrak A^\Sigma, \sigma^\Sigma)$
        1. 模型 $\mathfrak M^\Sigma = (\mathfrak A^\Sigma, \sigma^\Sigma)$ 的论域是项集 $\mathcal T(S)$，对任意变元 $x\in \mathbf{Var}, \sigma^\Sigma(x) = x$
            1. 对任意关系符号 $R\in \mathbf R, (t_1, t_2, \cdots, t_{\Omega(R)}) \in R^{\mathfrak A^\Sigma}$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} Rt_1 t_2 \cdots t_{\Omega(R)}$
            2. 对任意函数符号 $f\in \mathbf F, f^{\mathfrak A^\Sigma}(t_1, t_2, \cdots, t_{\Omega(f)}) = ft_1 t_2 \cdots t_{\Omega(f)}$
            3. 对任意常元符号 $c\in \mathbf C, c^{\mathfrak A^\Sigma} = c$
        2. 在 $\mathfrak M^\Sigma$ 中以下成立
            1. 对任意项 $t\in \mathcal T(S), t^{\mathfrak M^\Sigma} = t$
            2. 对任意原子公式 $\alpha$，$\mathfrak M^\Sigma \vDash \alpha$ 当且仅当 $\Sigma \vdash_{\mathbf H_1} \alpha$
            3. 对任意公式 $\alpha$，$\mathfrak M^\Sigma \vDash \exists \overline x\alpha$ 当且仅当存在项序列 $\overline t$ 使得 $\mathfrak M^\Sigma \vDash \alpha(\overline t/\overline x)$
            4. 对任意公式 $\alpha$，$\mathfrak M^\Sigma \vDash \forall \overline x\alpha$ 当且仅当对所有项序列 $\overline t$ 都有 $\mathfrak M^\Sigma \vDash \alpha(\overline t/\overline x)$
    2. 如果公式集 $\Sigma$ 对任意公式 $\alpha$ 都有 $\Sigma \vdash_{\mathbf H_1} \alpha$ 或 $\Sigma \vdash_{\mathbf H_1} \neg \alpha$，则称公式集 $\Sigma$ 是完备的；如果公式集 $\Sigma$ 对每个公式 $\exists x\alpha \in \mathcal F(S)$ 都有 $t\in \mathcal T(S)$ 使得 $\Sigma \vdash_{\mathbf H_1} \exists x\alpha \to \alpha(t/x)$，则称 $\Sigma$ 是证据集
        1. 设 $\Sigma$ 是 $\mathbf H_1-$一致的完备证据集，对任意公式集 $\Sigma \cup \{\alpha, \beta\}$，在 $\mathbf H_1$ 中成立
            1. $\Sigma \vdash \neg \alpha$ 当且仅当 $\Sigma \nvdash \alpha$
            2. $\Sigma \vdash \alpha \wedge \beta$ 当且仅当 $\Sigma \vdash \alpha$ 且 $\Sigma \vdash \beta$
            3. $\Sigma \vdash \alpha \vee \beta$ 当且仅当 $\Sigma \vdash \alpha$ 或 $\Sigma \vdash \beta$
            4. $\Sigma \vdash \alpha \to \beta$ 当且仅当 $\Sigma \nvdash \alpha$ 或 $\Sigma \vdash \beta$
            5. $\Sigma \vdash \exists x\alpha$ 当且仅当存在 $t\in \mathcal T(S)$ 使得 $\Sigma \vdash \alpha(t/x)$
            6. $\Sigma \vdash \forall x\alpha$ 当且仅当对所有 $t\in \mathcal T(S)$ 都有 $\Sigma \vdash \alpha(t/x)$
        2. 设 $\Sigma$ 是 $\mathbf H_1-$一致的完备证据集，对任意公式 $\alpha$，$\Sigma \vdash_{\mathbf H_1} \alpha$ 当且仅当 $\mathfrak M^\Sigma \vDash \alpha$
        3. 任何 $\mathbf H_1-$一致的完备证据集 $\Sigma$ 都是可满足的，即 $\mathfrak M^\Sigma \vDash \Sigma$
        4. 设 $\Sigma$ 是 $\mathbf H_1-$一致的公式集且 $\mathrm{FV}(\Sigma)$ 是有穷的，那么存在 $\mathbf H_1-$一致的证据集 $\Psi$ 使得 $\Sigma \subseteq \Psi$
        5. 设 $\Psi$ 是 $\mathbf H_1-$一致的公式集，那么存在 $\mathbf H_1-$一致的完备集 $\Theta$ 使得 $\Psi \subseteq \Theta$
        6. 如果 $\Sigma$ 是 $\mathbf H_1-$一致公式集并且 $\mathrm{FV}(\Sigma)$ 是有穷的，那么 $\Sigma$ 是可满足的
    3. 如果 $\Sigma$ 是 $\mathbf H_1-$一致的，那么 $\Sigma$ 是可满足的
    4. $\mathbf{FOL} \subseteq \mathrm{Thm}(\mathbf H_1)$
