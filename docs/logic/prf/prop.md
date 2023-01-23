# 1 命题逻辑

## 1.1 Hilbert 系统
### 1.1.1 经典命题逻辑 Hilbert 系统
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
            & d(p) = 0 = d(\bot), &p\in \mathbf{Prop} \\
            & d(\alpha \circ \beta) = \max\{d(\alpha), d(\beta)\} + 1, & \circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

        4. $\mathrm{SF}(\alpha)$ 表示公式 $\alpha$ 的子公式集合，定义为

            $$
            \begin{aligned}
            & \mathrm{SF}(\alpha) = \{\alpha\}, &\alpha \in \mathbf{At} \\
            & \mathrm{SF}(\alpha \circ \beta) = \mathrm{SF}(\alpha) \cup \mathrm{SF}(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

        6. 一个代入是一个函数 $\sigma: \mathbf{Prop} \to \mathscr L$，对任意代入 $\sigma$，函数 $\widehat \sigma: \mathscr L \to \mathscr L$ 定义为

            $$
            \begin{aligned}
            & \widehat \sigma(\bot) = \bot \\
            & \widehat \sigma(p) = \sigma(p), & p\in \mathbf{Prop} \\
            & \widehat \sigma(\alpha \circ \beta) = \widehat \sigma(\alpha) \circ \widehat \sigma(\beta), & \circ \in \{\wedge, \vee, \to\}
            \end{aligned}
            $$

            对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$，用 $\alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$ 分别表示用 $\beta_1, \beta_2, \cdots, \beta_n$ 代入变元 $p_1, p_2, \cdots, p_n$ 得到的结果

3. 真值函数语义学：用 $1$ 表示「真」；用 $0$ 表示「假」，集合 $2 = \{0, 1\}$ 称为真值集
    1. 赋值：一个赋值是一个函数 $\theta: \mathbf{Prop} \to 2$，对任意赋值 $\theta$，归纳定义函数 $\widehat \theta: \mathscr L \to 2$ 有

        $$
        \begin{aligned}
            &   \widehat \theta(\bot) = 0
            \\& \widehat \theta(p) = 1 \leftrightarrow \theta(p) = 1
            \\& \widehat \theta(\alpha \wedge \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 1 \wedge \widehat \theta(\beta) = 1
            \\& \widehat \theta(\alpha \vee \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 1 \vee \widehat \theta(\beta) = 1
            \\& \widehat \theta(\alpha \to \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 0 \vee \widehat \theta(\beta) = 1
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
        2. 对任意公式集 $\Gamma \cup \{\alpha\}$，若对于任意赋值 $\theta$ 使得 $\theta \vDash \Gamma$ 都有 $\theta \vDash \alpha$，则称 $\alpha$ 是 $\gamma$ 的语义后承，或称 $\Gamma$ 重言蕴含 $\alpha$，记作 $\Gamma \vDash \alpha$
        3. 设 $\sigma$ 是一个公式，则通常将 $\{\sigma\} \vDash \alpha$ 简写作 $\sigma \vDash \alpha$．若 $\sigma \vDash \alpha$ 与 $\alpha \vDash \sigma$ 同时成立，则称 $\sigma$ 与 $\alpha$ 重言等价
    4. 将经典命题逻辑 $\mathbf{CL}$ 定义为所有重言式的集合，即 $\mathbf{CL} = \{\alpha \in \mathscr L \mid \vDash \alpha\}$
        1. 对任意公式 $\alpha$ 和代入 $\sigma$，若 $\alpha \in \mathbf{CL}$，则 $\sigma(\alpha) \in \mathbf{CL}$
        2. 对任意公式 $\alpha, \beta$，若 $\alpha, \alpha \to \beta \in \mathbf{CL}$，则 $\beta \in \mathbf{CL}$
    5. 真值函数：令 $\alpha$ 是公式且 $\mathrm{var}(\alpha) = \{p_1, p_2, \cdots, p_n\}$，若对于 $n$ 元函数 $f: 2^n \to 2$ 与 $\varepsilon = (\alpha_1, \alpha_2, \cdots, \alpha_n) \in 2^n$ 都有 $f(\theta(p_1), \theta(p_2), \cdots, \theta(p_n)) = \widehat \theta(\alpha)$，其中 $\theta$ 是任意赋值使得对每个 $1\leqslant i\leqslant n$ 都有 $\theta(p_i) = a_i$，则称 $\alpha$ 定义 $n$ 元真值函数 $f$，也记作 $B_{\alpha}^n$
        1. 任意 $n$ 元真值函数 $f: 2^n \to 2$ 在 $\mathscr L$ 中可定义，即存在 $\alpha \in \mathscr L$ 使得 $f = B_\alpha^n$
        2. 完全组：设 $G \subseteq \{\bot, \top, \neg, \wedge, \vee, \to, \leftrightarrow\}$，若任何一个真值函数都可以用只含 $G$ 中联结词的公式表达，则称集合 $G$ 是命题联结词的完全组

            !!! note "合取范式与析取范式"
                - 合取范式：若公式 $\alpha$ 形如 $\alpha=\gamma_1 \wedge \gamma_2 \wedge \ldots \wedge \gamma_k$，其中每个 $\gamma_i$ 都形如 $\gamma_i=\beta_{i 1} \vee \beta_{i 2} \vee \ldots \vee \beta_{i n}$，且 $\beta_{i j}$ 是一个命题符号或命题符号的否定，则称 $\alpha$ 是合取范式
                - 析取范式：若公式 $\alpha$ 形如 $\alpha=\gamma_1 \vee \gamma_2 \vee \ldots \vee \gamma_k$，其中每个 $\gamma_i$ 都形如 $\gamma_i=\beta_{i 1} \wedge \beta_{i 2} \wedge \ldots \wedge \beta_{i n}$，且 $\beta_{i j}$ 是一个命题符号或命题符号的否定，则称 $\alpha$ 是析取范式

4. 经典命题逻辑的 $\text{Hilbert}$ 公理系统 $\mathbf{HK}$
    1. 公理与推理规则：一个推理规则的形式是 $\begin{prooftree} \AxiomC{\(\alpha_1\)} \AxiomC{\(\alpha_2\)} \AxiomC{\(\cdots\)} \AxiomC{\(\alpha_n\)} \QuaternaryInfC{\(\alpha_0\)} \end{prooftree}$，其中 $\alpha_1, \alpha_2, \cdots, \alpha_n$ 称为 $R$ 的前提，$\alpha_0$ 称为 $R$ 的结论
        1. 公理：若将 $p_0, p_1, p_2$ 替换为模式字母 $\alpha, \beta, \gamma$，可去掉代入规则 $\text{sub}$，得到的系统与 $\mathbf{HK}$ 等价
            - $\text{A}_1: p_0 \to (p_1 \to p_0)$
            - $\text{A}_2: (p_0 \to (p_1 \to p_2)) \to ((p_0 \to p_1) \to (p_0 \to p_2))$
            - $\text{A}_3: (p_0 \wedge p_1) \to p_0$
            - $\text{A}_4: (p_0 \wedge p_1) \to p_1$
            - $\text{A}_5: p_0 \to (p_1 \to p_0 \wedge p_1)$
            - $\text{A}_6: p_0 \to (p_0 \vee p_1)$
            - $\text{A}_7: p_1 \to (p_0 \vee p_1)$
            - $\text{A}_8: (p_0 \to p_2) \to ((p_1 \to p_2) \to ((p_0 \vee p_1) \to p_2))$
            - $\text{A}_9: \bot \to p_0$
            - $\text{A}_{10}: p_0 \vee \neg p_0$
        2. 推理规则
            - 肯定前件规则：$\begin{prooftree} \AxiomC{\(\alpha \to \beta\)} \AxiomC{\(\alpha\)} \RightLabel{ (mp)} \BinaryInfC{\(\beta\)} \end{prooftree}$
            - 代入规则：$\begin{prooftree} \AxiomC{\(\alpha\)} \RightLabel{ (sub)} \UnaryInfC{\(\sigma(\alpha)\)} \end{prooftree}$，其中 $\sigma$ 是任意代入
    2. 令 $X \neq \varnothing$ 且 $S\subseteq X\times X$，对任意 $x\in X$，令 $S(x) = \{y\in X\mid xSy\}$．对任意子集 $Y\subseteq X$，令 $S[Y] = {\displaystyle \bigcup \{S(y) \mid y\in Y\}}$，对任意自然数 $n\leqslant 0$ 与 $x\in X$，定义 $S^0[x]=\{x\}, S^{n+1}[x] = S[S^n[x]]$
        1. 若 $X$ 是有穷集且满足以下条件，则称 $(X, S)$ 为有穷树结构，$X$ 中的元组称为节点
            - 存在 $r\in X$ 满足条件：对任意 $x\in X$ 都存在自然数 $n\geqslant 0$ 使得 $rS^nx$，称 $r$ 为 $(X, S)$ 的根节点
            - 对任意 $x, y, z\in X$，若 $xSz$ 且 $ySz$，那么 $x=y$
            - 不存在 $x_0, x_1, \cdots, x_k \in X$ 和自然数 $m, n$ 使得 $x_0S^mx_k$ 且 $x_kS^nx_0$
        2. 在有穷树结构 $(X, S)$ 中，若 $xSy$，则称 $y$ 是 $x$ 的子节点
        3. 在有穷树结构 $(X, S)$ 中，一条链 $c$ 是一个序列 $\left<x_0, x_1, \cdots, x_k\right>$ 使得对所有 $i\neq j < k$ 都有 $x_i\neq x_j$ 且 $x_iSx_{i+1}$
            - 若一条链 $c = \left<x_0, x_1, \cdots, x_k\right>$ 不存在 $y=X-c$ 使得 $x_kSy$，则称 $c$ 为极大链．极大链的第一个元素称为根节点；最后一个元素称为叶节点
            - 链的长度定义为 $|c|=k$，单个节点链的长度为 $0$．从而有穷树结构 $(X, S)$ 的高度定义为 $\max\{\left|c\right|: c$ 是 $(X, R)$ 的极大链$\}$
    3. 在 $\mathbf{HK}$ 中，从公式集 $\Gamma$ 到公式 $\alpha$ 的一个推导是由公式组成的以 $\alpha$ 为根节点的有穷树结构 $\mathcal D$，其中每个节点满足三个条件之一：① $\gamma$ 是公理或 $\gamma \in \Gamma$；② $\gamma$ 是从子节点 $\beta$ 和 $\beta \to \gamma$ 运用规则 $\text{mp}$ 得到的；③ $\gamma$ 是从子节点 $\beta$ 利用规则 $\text{sub}$ 得到的，其中 $\beta$ 是公理
        1. 用 $\mathcal {D, E}$ 等表示推导，用 $\begin{prooftree} \AxiomC{\(\mathcal D\)} \noLine \UnaryInfC{\(\alpha\)} \end{prooftree}$ 表示 $\mathcal D$ 是以 $\alpha$ 为根节点的推导
        2. 在 $\mathbf{HK}$ 中，若存在公式集 $\Gamma$ 到公式 $\alpha$ 的推导，则称 $\alpha$ 是 $\Gamma$ 的句法后承，记作 $\Gamma \vdash_\mathbf{HK} \alpha$，不引起歧义时，下标 $\mathbf{HK}$ 可删除
        3. 若存在从 $\Gamma$ 到 $\alpha$ 的推导，则称公式 $\alpha$ 在 $\mathbf{HK}$ 中可证；若 $\varnothing \vdash_\mathbf{HK} \alpha$，称公式在 $\mathbf{HK}$ 中可证，或称 $\alpha$ 是 $\mathbf{HK}$ 的定理，记作 $\vdash_\mathbf{HK} \alpha$．用 $\mathrm{Thm}(\mathbf{HK})$ 表示 $\mathbf{HK}$ 中所有定理的集合
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
        - $\alpha, \Gamma \vDash \alpha \ (\mathrm{Id})$
        - $\bot, \Gamma \vdash \alpha \ (\bot)$
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
    2. 若公式集 $\Gamma$ 是 $\mathbf{HK}-$一致的，且对任何 $\mathbf{HK}-$一致的公式集 $\Delta$，若 $\Gamma \subseteq \Delta$，那么 $\Gamma = \Delta$，则称 $\Gamma$ 是极大 $\mathbf{HK}-$一致的
    3. 对任何极大 $\mathbf{HK}-$一致公式集 $\Gamma$
        1. 若 $\Gamma \vdash_\mathbf{HK} \alpha$，则 $\alpha \in \Gamma$
        2. $\mathrm{Thm}(\mathbf{HK}) \subseteq \Gamma$ 且 $\bot \notin \Gamma$
        3. $\neg \alpha \in \Gamma$ 当且仅当 $\alpha \notin \Gamma$
        4. $\alpha \wedge \beta \in \Gamma$ 当且仅当 $\alpha \in \Gamma$ 且 $\beta \in \Gamma$
        5. $\alpha \vee \beta \in \Gamma$ 当且仅当 $\alpha \in \Gamma$ 或 $\beta \in \Gamma$
        6. $\alpha \to \beta \in \Gamma$ 当且仅当 $\alpha \notin \Gamma$ 或 $\beta \in \Gamma$
    4. $\text{Lindenbaum}$ 定理：若 $\Gamma$ 是$\mathbf{HK}-$一致的公式集，那么存在极大 $\mathbf{HK}-$一致的公式集 $\Delta$ 使得 $\Gamma \subseteq \Delta$
8. 完全性：若 $\Gamma \vDash \alpha$，那么 $\Gamma \vdash_\mathbf{HK} \alpha$
    1. $\mathbf{CL} \subseteq \mathrm{Thm}(\mathbf{HK})$
    2. 完全性的等价形式：若 $\Gamma$ 是 $\mathbf{HK}-$一致的，则 $\Gamma$ 是可满足的
    3. 紧致性：一个公式集 $\Gamma$ 可满足当且仅当 $\Gamma$ 的每个有穷子集可满足
9.  其他性质
    1. $\text{Post}$ 完全性：$\mathbf{HK}$ 是 $\text{Post}$ 完全的，即若 $\nvdash_\mathbf{HK} \alpha$，那么在系统 $\mathbf{HK}$ 上增加 $\alpha$ 作为公理所得到的系统是不一致的
    2. 可判定性：$\mathbf{CL}$ 是可判定的，即存在一种能行的方法使得对任何公式 $\alpha$ 可在有穷步骤之内确定 $\alpha$ 是否属于 $\mathbf{CL}$，因此 $\mathrm{Thm}(\mathbf{HK})$ 是可判定的
    3. 析取性质：$\mathbf{HK}$ 不具有析取性质，即存在公式 $\alpha \vee \beta$，有 $\vdash_\mathbf{HK} \alpha \vee \beta$ 且 $\nvdash_\mathbf{HK} \alpha$ 且 $\nvdash_\mathbf{HK} \beta$
    4. 插值性质：$\mathbf{HK}$ 具有插值性质，即对任何公式 $\alpha \to \beta$，若 $\vdash_\mathbf{HK} \alpha \to \beta$，那么存在公式 $\gamma$ 使得 ① $\vdash_\mathbf{HK} \alpha \to \chi$；② $\vdash_\mathbf{HK} \chi \to \beta$；③ （变元条件）$\mathrm{var}(\chi) \subseteq \mathrm{var}(\alpha) \subseteq \mathrm{var}(\beta)$；公式$\chi$ 称为 $\alpha$ 与 $\beta$ 的插值

        !!! note "证明插值性质的引理"
            若 $\mathrm{var}(\alpha) \cap \mathrm{var}(\beta) = \varnothing$，那么 $\vDash \alpha \to \beta$ 当且仅当 $\vDash \neg \alpha$ 或 $\vDash \beta$

### 1.1.2 直觉主义命题逻辑 Hilbert 系统

## 1.2 自然演绎

## 1.3 矢列演算
