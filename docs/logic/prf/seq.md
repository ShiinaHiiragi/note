# 3 矢列演算

1. 公式结构：由公式组成的有穷序列，也称作结构，用 $\Gamma, \Delta, \Sigma$ 等表示
    1. 一个结构 $\Gamma$ 的长度是指该序列的长度，记为 $|\Gamma|$
    2. 空公式序列记为 $\varnothing$，其序列长度为 $0$
    3. 由公式 $\alpha_{1}, \cdots, \alpha_{n} \in \mathscr{L}$ 组成的结构记为 $\alpha_{1}, \cdots, \alpha_{n}$，称逗号为结构算子．特别地，$n$ 个 $\alpha$ 组成的结构记为 $\alpha^{n}$
2. 一个矢列是形如 $\Gamma \Rightarrow \Delta$ 的表达式，其中 $\Gamma$ 和 $\Delta$ 是结构
    1. 当前件和后件都是空序时，可省略 $\varnothing$．特别地，$\Rightarrow$ 是一个矢列
    2. 对任意矢列 $\Gamma \Rightarrow \Delta$，称 $\Gamma$ 为前件，$\Delta$ 为后件
    3. 一个矢列规则 $(\text{R})$ 是以矢列为前提与结论的推理规则
3. 令 $\Gamma=\alpha_{1}, \cdots, \alpha_{n}$ 并且 $\Delta=\beta_{1}, \cdots, \beta_{m}$．定义 $\bigwedge \Gamma=\alpha_{1} \wedge \cdots \wedge \alpha_{n}$ 并且 $\bigvee \Delta= \beta_{1} \vee \cdots \vee \beta_{m}$
    1. 令 $\bigwedge \varnothing=\top$ 且 $\bigvee \varnothing=\perp$
    2. $\Gamma \Rightarrow \Delta$ 表明若 $\Gamma$ 中所有公式都是真的，那么 $\Delta$ 中至少有一个公式是真的
        1. 矢列的前件中逗号的意义是 $\wedge$，后件中逗号的意义是 $\vee$
        2. 若 $\bigwedge \Gamma \rightarrow \bigvee \Delta$ 是重言式，则称 $\Gamma \Rightarrow \Delta$ 是有效的，记作 $\vDash \Gamma \Rightarrow \Delta$

## 3.1 命题逻辑矢列演算
### 3.2.1 **G<sub>0</sub>** 型演算
1. 经典命题逻辑的矢列演算 $\mathbf{G0cp}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$．对联结词 $\circ \in\{\wedge, \vee, \rightarrow\}$，称 $(\circ l)$ 为左规则，$(\circ r)$ 为右规则；结论中含联结词的公式称为主公式

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{w}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\Rightarrow\!\text{w})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \alpha$}
                \RightLabel{ $(\Rightarrow\!\text{c})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma, \alpha, \beta, \Sigma \Rightarrow \Delta$}
                \RightLabel{ $(\text{e}\!\Rightarrow)$}
                \UnaryInfC{$\Gamma, \beta, \alpha, \Sigma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Sigma, \alpha, \beta, \Delta$}
                \RightLabel{ $(\Rightarrow\!\text{e})$}
                \UnaryInfC{$\Gamma \Rightarrow \Sigma, \beta, \alpha, \Delta$}
                \end{prooftree}
            }
            $$

            分别称上述三行为弱化规则、收缩规则、交换规则

        3. 切割规则

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
            \AxiomC{$\alpha,  \Sigma \Rightarrow \Theta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Sigma \Rightarrow \Delta, \Theta$}
            \end{prooftree}
            $$

    2. 一个推导 $\mathcal{D}$ 是由矢列组成的有穷树结构，其中每个节点要么是公理，要么是从子节点矢列使用某个规则得到的
        1. 一个推导 $\mathcal{D}$ 的高度是其中极大分枝的最大长度，记作 $|\mathcal{D}|$，由单个节点组成的推导的高度为 $0$
        2. 如果存在 $\mathbf{G0cp}$ 中推导 $\mathcal{D}$ 使得 $\mathcal{D}$ 的根节点为 $\Gamma \Rightarrow \Delta$，则称矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{GOcp}$ 中可推导，记作 $\mathbf{G0cp} \vdash \Gamma \Rightarrow \Delta$
            1. 在不引起歧义的情况下可删除前缀 $\mathbf{G0cp}$
            2. 对任意自然数 $n \geqslant 0$，$\mathbf{G0cp} \vdash_{n} \Gamma \Rightarrow \Delta$ 表示 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G0cp}$ 中有推导 $\mathcal{D}$ 使得 $|\mathcal{D}| \leqslant n$
        3. 在推导中，连续 $n$ 次应用矢列规则 $\text{R}$ 记为 $\text{R}^{n}$
    3. 称以 $\Gamma_{i} \Rightarrow \Delta_{i}$ 为前提且以 $\Gamma \Rightarrow \Delta$ 为结论的规则 $\text{R}$ 在 $\mathbf{G0cp}$ 中可允许当且仅当 $\mathbf{G 0 c p} \vdash \Gamma_{i} \Rightarrow \Delta_{i}$ 蕴涵 $\mathbf{G0cp}$ $\vdash \Gamma \Rightarrow \Delta$
        1. 以下广义联结词规则在 $\mathbf{G0cp}$ 中可允许

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \alpha_{i}, \Gamma_{2} \Rightarrow \Delta$}
                \RightLabel{ $(\wedge_{g}\Rightarrow)$}
                \UnaryInfC{$\Gamma_{1}, \alpha_{1} \wedge \alpha_{2}, \Gamma_{2} \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \Sigma$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta, \Sigma$}
                \RightLabel{ $(\Rightarrow\!\wedge_{g})$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta, \Sigma$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \alpha, \Gamma_{2} \Rightarrow \Delta$}
                \AxiomC{$\Gamma_{1}, \beta, \Gamma_{2} \Rightarrow \Delta$}
                \RightLabel{ $(\vee_{g} \Rightarrow)$}
                \BinaryInfC{$\Gamma_{1}, \alpha \vee \beta, \Gamma_{2} \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_{i}, \Sigma$}
                \RightLabel{ $(\Rightarrow\!\vee_{g})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_{1} \vee \alpha_{2}, \Sigma$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Theta_{1}, \alpha, \Theta_{2}$}
                \AxiomC{$\Sigma, \beta, \Delta \Rightarrow \Pi$}
                \RightLabel{ $(\rightarrow_{g} \Rightarrow)$}
                \BinaryInfC{$\Sigma, \Gamma, \alpha \rightarrow \beta, \Delta \Rightarrow \Theta_{1}, \Pi, \Theta_{2}$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \alpha, \Gamma_{2} \Rightarrow \Delta, \beta, \Sigma$}
                \RightLabel{ $(\Rightarrow \rightarrow_{g})$}
                \UnaryInfC{$\Gamma_{1}, \Gamma_{2} \Rightarrow \Delta, \alpha \rightarrow \beta, \Sigma$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 以下广义结构规则在 $\mathbf{G0cp}$ 中可允许

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \Gamma_{2} \Rightarrow \Delta$}
                \RightLabel{ $(\text{w}_{g} \Rightarrow)$}
                \UnaryInfC{$\Gamma_{1}, \Sigma, \Gamma_{2} \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta_{1}, \Delta_{2}$}
                \RightLabel{ $(\Rightarrow \text{w}_{g})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta_{1}, \Sigma, \Delta_{2}$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \Sigma, \Sigma, \Gamma_{2} \Rightarrow \Delta$}
                \RightLabel{ $(\text{c}_{g} \Rightarrow)$}
                \UnaryInfC{$\Gamma_{1}, \Sigma, \Gamma_{2} \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta_{1}, \Sigma, \Sigma, \Delta_{2}$}
                \RightLabel{ $(\Rightarrow \text{c}_{g})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta_{1}, \Sigma, \Delta_{2}$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma_{1}, \Sigma_{1}, \Sigma_{2}, \Gamma_{2} \Rightarrow \Delta$}
                \RightLabel{ $(\text{e}_{g} \Rightarrow)$}
                \UnaryInfC{$\Gamma_{1}, \Sigma_{2}, \Sigma_{1}, \Gamma_{2} \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta_{1}, \Sigma_{1}, \Sigma_{2}, \Delta_{2}$}
                \RightLabel{ $(\Rightarrow \text{e}_{g})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta_{1}, \Sigma_{2}, \Sigma_{1}, \Delta_{2}$}
                \end{prooftree}
            }
            $$

        3. 以下广义切割规则在 $\mathbf{G0cp}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \AxiomC{$\Sigma \Rightarrow \Theta$}
            \RightLabel{ $(\text{Cut}_{g})$}
            \BinaryInfC{$\Gamma, \Sigma_{\alpha} \Rightarrow \Delta_{\alpha}, \Theta$}
            \end{prooftree}
            $$

        其中 $\alpha$ 在 $\Delta$ 和 $\Sigma$ 的分量中各自至少出现 $1$ 次，且 $\Delta_{\alpha}$ 和 $\Sigma_{\alpha}$ 分别是从 $\Delta$ 和 $\Sigma$ 删除分量 $\alpha$ 所有出现得到的结构．特别地，若 $\alpha$ 不在结构 $\Pi$ 中出现，则 $\Pi_{\alpha}=\Pi$

    4. $\mathbf{G0cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\bigwedge \Gamma \vdash_{\mathbf{HK}} \bigvee \Delta$
        1. 如果 $\vdash_{\textbf{HK}} \alpha$，那么 $\mathbf{G0cp} \vdash \Rightarrow \alpha$
        2. $\mathbf{G0cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\vDash \Gamma \Rightarrow \Delta$

2. 直觉主义命题逻辑的矢列演算 $\mathbf{G0ip}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \chi$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \beta$}
                \RightLabel{ $(\text{w}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma, \alpha, \beta, \Sigma \Rightarrow \chi$}
                \RightLabel{ $(\text{e}\!\Rightarrow)$}
                \UnaryInfC{$\Gamma, \beta, \alpha, \Sigma \Rightarrow \chi$}
                \end{prooftree}
            }
            $$

        3. 切割规则

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\alpha, \Delta \Rightarrow \beta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Delta \Rightarrow \beta$}
            \end{prooftree}
            $$

        $\mathbf{G0ip} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G0ip}$ 中可推导

    2. 称以 $\Gamma_{i} \Rightarrow \Delta_{i}$ 为前提且以 $\Gamma \Rightarrow \Delta$ 为结论的规则 $\text{R}$ 在 $\mathbf{G0ip}$ 中可允许当且仅当 $\mathbf{G 0 c p} \vdash \Gamma_{i} \Rightarrow \Delta_{i}$ 蕴涵 $\mathbf{G0ip}$ $\vdash \Gamma \Rightarrow \Delta$
        1. 以下广义联结词规则在 $\mathbf{G0ip}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma_{1}, \alpha_{i}, \Gamma_{2} \Rightarrow \beta$}
            \RightLabel{ $(\wedge_{g} \Rightarrow)$}
            \UnaryInfC{$\Gamma_{1}, \alpha_{1} \wedge \alpha_{2}, \Gamma_{2} \Rightarrow \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma_{1}, \alpha, \Gamma_{2} \Rightarrow \chi$}
            \AxiomC{$\Gamma_{1}, \beta, \Gamma_{2} \Rightarrow \chi$}
            \RightLabel{ $(\vee_{g} \Rightarrow)$}
            \BinaryInfC{$\Gamma_{1}, \alpha \vee \beta, \Gamma_{2} \Rightarrow \chi$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\Sigma, \beta, \Delta \Rightarrow \chi$}
            \RightLabel{ $(\rightarrow_{g} \Rightarrow)$}
            \BinaryInfC{$\Sigma, \Gamma, \alpha \rightarrow \beta, \Delta \Rightarrow \chi$}
            \end{prooftree} \quad
            $$

            其中 $i = 1, 2$

        2. 以下广义结构规则在 $\mathbf{G0ip}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma_{1}, \Gamma_{2} \Rightarrow \beta$}
            \RightLabel{ $(\text{w}_{g} \Rightarrow)$}
            \UnaryInfC{$\Gamma_{1}, \Sigma, \Gamma_{2} \Rightarrow \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma_{1}, \Sigma, \Sigma, \Gamma_{2} \Rightarrow \beta$}
            \RightLabel{ $(\text{c}_{g} \Rightarrow)$}
            \UnaryInfC{$\Gamma_{1}, \Sigma, \Gamma_{2} \Rightarrow \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma_{1}, \Sigma_{1}, \Sigma_{2}, \Gamma_{2} \Rightarrow \beta$}
            \RightLabel{ $(\text{e}_{g} \Rightarrow)$}
            \UnaryInfC{$\Gamma_{1}, \Sigma_{2}, \Sigma_{1}, \Gamma_{2} \Rightarrow \beta$}
            \end{prooftree} \quad
            $$

    3. $\mathbf{G0ip} \vdash \Gamma \Rightarrow \alpha$ 当且仅当 $\bigwedge \Gamma \vdash_{\mathbf{HJ}} \alpha$
        1. 如果 $\vdash_{\textbf{HJ}} \alpha$，那么 $\mathbf{G0ip} \vdash \Rightarrow \alpha$
        2. $\mathbf{G0ip} \vdash \Gamma \Rightarrow \alpha$ 当且仅当 $\vDash \Gamma \Rightarrow \alpha$

3. 切割消除：称矢列演算 $\mathbf{G}$ 具有切割消除性质当且仅当在 $\mathbf{G}$ 中可推导的任意矢列都存在无切割推导（即不出现切割规则的应用）
    1. 矢列演算 $\mathbf{G0cp}^{\sharp}$ 是从 $\mathbf{G0cp}$ 删除 $\text{Cut}$ 规则得到的系统，$\mathbf{G0ip}^{\sharp}$ 是从 $\mathbf{G0ip}$ 删除 $\text{Cut}$ 规则得到的系统
        1. 设 $\perp$ 在 $\Delta$ 中至少出现 $1$ 次，若 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta$，那么 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta_{\perp}$
        2. 若 $\mathbf{G0ip}^{\sharp} \vdash \Gamma \Rightarrow \perp$，则 $\mathbf{G0ip}^{\sharp} \vdash \Gamma \Rightarrow \beta$
    2. 矢列演算 $\mathbf{G0cp}^{*}$ 是在 $\mathbf{G0cp}^{\sharp}$ 基础上增加广义切割规则的系统

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \Delta$}
        \AxiomC{$\Sigma \Rightarrow \Theta$}
        \RightLabel{ $(\text{Cut}_{g})$}
        \BinaryInfC{$\Gamma, \Sigma_{\alpha} \Rightarrow \Delta_{\alpha}, \Theta$}
        \end{prooftree}
        $$

        1. 对任意矢列 $\Gamma \Rightarrow \Delta$，$\mathbf{G0cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\mathbf{G0cp}^{*} \vdash \Gamma \Rightarrow \Delta$
        2. 如果 $\mathbf{G0cp}^{*} \vdash \Pi_{1} \Rightarrow \Pi_{2}$，则 $\Pi_{1} \Rightarrow \Pi_{2}$ 在 $\mathbf{G0cp}^{*}$ 中不使用 $\text{Cut}_{g}$ 可推导

    3. 矢列演算 $\mathbf{G0ip}^{*}$ 是在 $\mathbf{G0ip}^{\sharp}$ 基础上增加广义切割规则的系统

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \alpha$}
        \AxiomC{$\Sigma \Rightarrow \beta$}
        \RightLabel{ $(\text{Cut}_{g})$}
        \BinaryInfC{$\Gamma, \Sigma_{\alpha} \Rightarrow \beta$}
        \end{prooftree}
        $$

        1. 对任意矢列 $\Gamma \Rightarrow \beta$，$\mathbf{G0ip}^{*} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G0ip}^{*} \vdash \Gamma \Rightarrow \beta$
        2. 如果 $\mathbf{G0ip}^{*} \vdash \Pi \Rightarrow \delta$，那么 $\Pi \Rightarrow \delta$ 在 $\mathbf{G0ip}^{*}$ 中不使用 $\text{Cut}_{g}$ 可推导

    4. $\mathbf{G0cp}$ 与 $\mathbf{G0ip}$ 具有切割消除性质
    5. $\mathbf{G0cp}$ 与 $\mathbf{G0ip}$ 具有子公式性质，即可推导的矢列都有推导 $\mathcal{D}$ 使得其中出现的每个公式都是其根节点矢列某个公式的子公式
        1. 若 $\mathbf{G0ip} \vdash \Rightarrow \alpha \vee \beta$，则 $\mathbf{G0ip} \vdash \Rightarrow \alpha$ 或 $\mathbf{G0ip} \vdash \Rightarrow \beta$
        2. 若 $\vdash_{\mathbf{HJ}} \alpha \vee \beta$，则 $\vdash_{\mathbf{HJ}} \alpha$ 或者 $\vdash_{\mathbf{HJ}} \beta$

4. $\mathbf{G0cp}$ 与 $\mathbf{G0ip}$ 是可判定的
    1. 称矢列 $\Gamma \Rightarrow \Delta$ 是 $n-$度矢列当且仅当 $\Gamma$ 中每个公式至多出现 $n$ 次并且 $\Delta$ 中每个公式至多出现 $n$ 次
        1. 称 $\Gamma^{*} \Rightarrow \Delta^{*}$ 是 $\Gamma \Rightarrow \Delta$ 的收缩矢列当且仅当 $\Gamma^{*} \Rightarrow \Delta^{*}$ 是从 $\Gamma \Rightarrow \Delta$ 有穷多次运用收缩和交换规则得到的
        2. 对 $\mathbf{G0cp}$ 中任意推导 $\mathcal{D}$，存在最小自然数 $n>0$ 使得 $\mathcal{D}$ 中每个矢列都是 $n-$度矢列，记该自然数为 $d(\mathcal{D})$
            1. 对任意矢列 $\Gamma \Rightarrow \Delta$，存在 $\Gamma \Rightarrow \Delta$ 的 $1-$度收缩矢列 $\Gamma^{*} \Rightarrow \Delta^{*}$ 使得 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\mathbf{G0cp}^{\sharp} \vdash \Gamma^{*} \Rightarrow \Delta^{*}$
            2. 设 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta$，若 $\Gamma^{*} \Rightarrow \Delta^{*}$ 是 $\Gamma \Rightarrow \Delta$ 的 $1-$度收缩矢列，则存在 $\Gamma^{*} \Rightarrow \Delta^{*}$ 的无重复推导 $\mathcal{D}$ 使得 $d(\mathcal{D}) \leqslant 3$
    2. 称矢列 $\Gamma \Rightarrow \alpha$ 是 $n-$度矢列当且仅当 $\Gamma$ 中每个公式至多出现 $n$ 次
        1. 称 $\Gamma^{*} \Rightarrow \beta^{*}$ 是 $\Gamma \Rightarrow \beta$ 的收缩矢列当且仅当 $\Gamma^{*} \Rightarrow \beta^{*}$ 是从 $\Gamma \Rightarrow \beta$ 有穷多次运用收缩和交换规则得到的
        2. 对 $\mathbf{G0ip}$ 中任意推导 $\mathcal{D}$，存在最小自然数 $n>0$ 使得 $\mathcal{D}$ 中每个矢列都是 $n-$度矢列，记该自然数为 $d(\mathcal{D})$
            1. 对任意矢列 $\Gamma \Rightarrow \beta$，存在 $\Gamma \Rightarrow \beta$ 的 $1-$度收缩矢列 $\Gamma^{*} \Rightarrow \beta^{*}$ 使得 $\mathbf{G0ip}^{\sharp} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G0ip}^{\sharp} \vdash \Gamma^{*} \Rightarrow \beta^{*}$
            2. 设 $\mathbf{G0ip}^{\sharp} \vdash \Gamma \Rightarrow \beta$，若 $\Gamma^{*} \Rightarrow \beta^{*}$ 是 $\Gamma \Rightarrow \beta$ 的 $1-$度收缩矢列，则存在 $\Gamma^{*} \Rightarrow \beta^{*}$ 的无重复推导 $\mathcal{D}$ 使得 $d(\mathcal{D}) \leqslant 3$
    3. $\mathbf{G0cp}$ 与 $\mathbf{G0ip}$ 是一致的，即存在一个矢列在其中不可推导
5. 对任意结构 $\Gamma=\alpha_{1}, \cdots, \alpha_{n}$，令 $\operatorname{var}(\Gamma)= {\displaystyle \bigcup_{1 \leqslant i \leqslant n} \operatorname{var}\left(\alpha_{i}\right)}$ 为 $\Gamma$ 中所有命题变元的多重集，称作多重公式集．设 $\uplus$ 是多重集的并集
    1. 设 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta$，对 $\Gamma \Rightarrow \Delta$ 的任意划分 $\left(\Gamma_{1}: \Delta_{1}\right) ;\left(\Gamma_{2}: \Delta_{2}\right)$，即 $\Gamma_{1} \uplus \Gamma_{2}=\Gamma$ 且 $\Delta_{1} \uplus \Delta_{2}=\Delta$，若有
        1. $\mathbf{G0cp}^{\sharp} \vdash \Gamma_{1} \Rightarrow \Delta_{1}, \gamma$
        2. $\mathbf{G0cp}^{\sharp} \vdash \gamma, \Gamma_{2} \Rightarrow \Delta_{2}$
        3. 变元条件：$\operatorname{var}(\gamma) \subseteq \operatorname{var}\left(\Gamma_{1}, \Delta_{1}\right) \cap \operatorname{var}\left(\Gamma_{2}, \Delta_{2}\right)$

        则称公式 $\gamma$ 是 $\left(\Gamma_{1}: \Delta_{1}\right) ; \left(\Gamma_{2}: \Delta_{2}\right)$ 的插值

        4. 如果 $\mathbf{G0cp}^{\sharp} \vdash \Gamma \Rightarrow \Delta$ 且 $\left(\Gamma_{1}: \Delta_{1}\right) ;\left(\Gamma_{2}: \Delta_{2}\right)$ 是 $\Gamma \Rightarrow \Delta$ 的划分，则存在公式 $\gamma$ 使得 $\gamma$ 是 $\left(\Gamma_{1}: \Delta_{1}\right) ;\left(\Gamma_{2}: \Delta_{2}\right)$ 的插值
        5. 如果 $\vdash_{\mathbf{HK}} \alpha \rightarrow \beta$，那么存在公式 $\gamma$ 使得
            1. $\vdash_{\mathbf{HK}} \alpha \rightarrow \gamma$
            2. $\vdash_{\mathbf{H K}} \gamma \rightarrow \beta$
            3. $\operatorname{var}(\gamma) \subseteq \operatorname{var}(\alpha) \cap \operatorname{var}(\beta)$

    2. 设 $\mathbf{G0ip}^{\sharp} \vdash \Gamma \Rightarrow \beta$，对 $\Gamma$ 的任意划分 $\left(\Gamma_{1}: \Gamma_{2}\right)$，即 $\Gamma_{1} \uplus \Gamma_{2}=\Gamma$，若有
        1. $\mathbf{G0ip}^{\sharp} \vdash \Gamma_{1} \Rightarrow \gamma$
        2. $\mathbf{G0ip}^{\sharp} \vdash \gamma, \Gamma_{2} \Rightarrow \beta$
        3. 变元条件：$\operatorname{var}(\gamma) \subseteq \operatorname{var}\left(\Gamma_{1}\right) \cap \operatorname{var}\left(\Gamma_{2}, \beta\right)$

        称公式 $\gamma$ 是 $\left(\Gamma_{1}: \Gamma_{2}\right)$ 的插值

        4. 如果 $\mathbf{G0ip} \vdash \Gamma \Rightarrow \beta$ 并且 $\left(\Gamma_{1}: \Gamma_{2}\right)$ 是 $\Gamma \Rightarrow \beta$ 的划分，那么存在公式 $\gamma$ 使得 $\gamma$ 是 $\left(\Gamma_{1}: \Gamma_{2}\right)$ 的插值
        5. 如果 $\vdash_{\mathbf{HJ}} \alpha \rightarrow \beta$，那么存在公式 $\gamma$ 使得
            1. $\vdash_{\mathbf{HJ}} \alpha \rightarrow \gamma$
            2. $\vdash_{\mathbf{HJ}} \gamma \rightarrow \beta$
            3. $\operatorname{var}(\gamma) \subseteq \operatorname{var}(\alpha) \cap \operatorname{var}(\beta)$

### 3.2.2 **G<sub>1</sub>** 型演算
$\mathbf{G1}$ 允许使用多重公式集作为公式结构

1. 矢列演算 $\mathbf{G1cp}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{w}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\Rightarrow\!\text{w})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \alpha$}
                \RightLabel{ $(\Rightarrow\!\text{c})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
                \end{prooftree}
            }
            $$

        $\mathbf{G1cp} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G1cp}$ 中可推导

    2. 对任意公式结构 $\Gamma$ 和 $\Delta, \mathbf{G0cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\mathbf{G1cp} \vdash \Gamma \Rightarrow \Delta$
        1. 对任意矢列 $\Gamma \Rightarrow \Delta$ 和 $n \geqslant 0$，如果 $\mathbf{G1cp} \vdash \Gamma \Rightarrow \Delta, \perp^{n}$，那么 $\mathbf{G1cp} \vdash \Gamma \Rightarrow \Delta$
        2. 在 $\mathbf{G1cp}$ 中，对 $k_{1}, k_{2} \geqslant 0$，以下扩展式切割规则可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha^{k_{1}}$}
            \AxiomC{$\alpha^{k_{2}}, \Sigma \Rightarrow \Theta$}
            \RightLabel{ $(\text{ECut})$}
            \BinaryInfC{$\Gamma, \Sigma \Rightarrow \Delta, \Theta$}
            \end{prooftree}
            $$

2. 矢列演算 $\mathbf{G1ip}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \chi$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \beta$}
                \RightLabel{ $(\text{w}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
                \end{prooftree}
            }
            $$

        $\mathbf{G1ip} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G1ip}$ 中可推导

    2. 对任意公式结构 $\Gamma$，$\mathbf{G0ip} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G1ip} \vdash \Gamma^{s} \Rightarrow \beta$
        1. 如果 $\mathbf{G1ip} \vdash \Gamma \Rightarrow \perp$，那么 $\mathbf{G1ip} \vdash \Gamma \Rightarrow \beta$
        2. 在 $\mathbf{G1ip}$ 中，对 $k \geqslant 0$，以下扩展式切割规则可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\alpha^{k}, \Sigma \Rightarrow \beta$}
            \RightLabel{ $(\text{ECut})$}
            \BinaryInfC{$\Gamma, \Sigma \Rightarrow \beta$}
            \end{prooftree}
            $$

3. $\mathbf{G1cp}$ 与 $\mathbf{G1ip}$ 是可判定的且具有插值性质

### 3.2.3 **G<sub>2</sub>** 型演算
1. 矢列演算 $\mathbf{G2cp}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \alpha$}
                \RightLabel{ $(\Rightarrow\!\text{c})$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
                \end{prooftree}
            }
            $$

        $\mathbf{G2cp} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G2cp}$ 中可推导

    2. 对任意矢列 $\Gamma \Rightarrow \Delta$，$\mathbf{G1cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\mathbf{G2cp} \vdash \Gamma \Rightarrow \Delta$
        1. 以下弱化规则在 $\mathbf{G2cp}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{w}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\Rightarrow\!\text{w})$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
            \end{prooftree}
            $$

        2. 以下切割规则在 $\mathbf{G2cp}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
            \AxiomC{$\alpha,  \Sigma \Rightarrow \Theta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Sigma \Rightarrow \Delta, \Theta$}
            \end{prooftree}
            $$

2. 矢列演算 $\mathbf{G2ip}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \beta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \chi$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha_i$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \chi$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$

        2. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \beta$}
                \RightLabel{ $(\text{c}\!\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
                \end{prooftree}
            }
            $$

        $\mathbf{G2ip} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G2ip}$ 中可推导

    2. 对任意矢列 $\Gamma \Rightarrow \beta$，$\mathbf{G1ip} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G2ip} \vdash \Gamma \Rightarrow \beta$
        1. 以下弱化规则在 $\mathbf{G2ip}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \beta$}
            \RightLabel{ $(\text{w}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
            \end{prooftree}
            $$

        2. 以下切割规则在 $\mathbf{G2ip}$ 中可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\alpha, \Delta \Rightarrow \beta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Delta \Rightarrow \beta$}
            \end{prooftree}
            $$

### 3.2.4 **G<sub>3</sub>** 型演算
1. 矢列演算 $\mathbf{G3cp}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        联结词规则

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha_i, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\wedge\!\Rightarrow)$}
            \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
            \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
            \RightLabel{ $(\Rightarrow\!\wedge)$}
            \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
            \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\vee\!\Rightarrow)$}
            \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_i$}
            \RightLabel{ $(\Rightarrow\!\vee)$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
            \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\rightarrow \Rightarrow)$}
            \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
            \RightLabel{ $(\Rightarrow \rightarrow)$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
            \end{prooftree}
        }
        $$

        其中 $i = 1, 2$．$\mathbf{G3cp} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G3cp}$ 中可推导

    2. 若对任意自然数 $k \geqslant 0$，$\mathbf{G3cp} \vdash_{k} \Gamma_{i} \Rightarrow \alpha_{i} \ (1 \leqslant i \leqslant n)$ 蕴含 $\mathbf{G3cp} \vdash_{k} \Gamma_{0} \Rightarrow \alpha_{0}$，则称 $\text{R}$ 在 $\mathbf{G3cp}$ 中保持高度可允许
        1. 以下弱化规则在 $\mathbf{G3cp}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{w}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\Rightarrow\!\text{w})$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
            \end{prooftree}
            $$

        2. 以下收缩规则在 $\mathbf{G3cp}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{c}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \alpha$}
            \RightLabel{ $(\Rightarrow\!\text{c})$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
            \end{prooftree}
            $$

        3. 以下切割规则在 $\mathbf{G3cp}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
            \AxiomC{$\alpha,  \Sigma \Rightarrow \Theta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Sigma \Rightarrow \Delta, \Theta$}
            \end{prooftree}
            $$

    3. 对任意矢列 $\Gamma \Rightarrow \Delta$，$\mathbf{G2cp} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\mathbf{G3cp} \vdash \Gamma \Rightarrow \Delta$
        1. 对任意多重集 $\Gamma$ 和 $\Delta$ 及公式 $\alpha$，$\mathbf{G3cp} \vdash \alpha, \Gamma \Rightarrow \Delta, \alpha$
        2. 如果 $\mathbf{G3cp} \vdash \Gamma \Rightarrow \Sigma, \perp$，那么 $\mathbf{G3cp} \vdash \Gamma \Rightarrow \Sigma, \Theta$

2. 矢列演算 $\mathbf{G3ip}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $\alpha \Rightarrow \alpha \ \text{(Id)}$
        2. $\perp \Rightarrow \ (\bot)$

        联结词规则

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha_i, \Gamma \Rightarrow \beta$}
            \RightLabel{ $(\wedge\!\Rightarrow)$}
            \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\Gamma \Rightarrow \beta$}
            \RightLabel{ $(\Rightarrow\!\wedge)$}
            \BinaryInfC{$\Gamma \Rightarrow \alpha \wedge \beta$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \Rightarrow \chi$}
            \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
            \RightLabel{ $(\vee\!\Rightarrow)$}
            \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \chi$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha_i$}
            \RightLabel{ $(\Rightarrow\!\vee)$}
            \UnaryInfC{$\Gamma \Rightarrow \alpha_1 \vee \alpha_2$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\beta, \Gamma \Rightarrow \chi$}
            \RightLabel{ $(\rightarrow \Rightarrow)$}
            \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \chi$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
            \RightLabel{ $(\Rightarrow \rightarrow)$}
            \UnaryInfC{$\Gamma \Rightarrow \alpha \to \beta$}
            \end{prooftree}
        }
        $$

        其中 $i = 1, 2$．$\mathbf{G3ip} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G3ip}$ 中可推导

    2. 若对任意自然数 $k \geqslant 0$，$\mathbf{G3ip} \vdash_{k} \Gamma_{i} \Rightarrow \alpha_{i} \ (1 \leqslant i \leqslant n)$ 蕴含 $\mathbf{G3ip} \vdash_{k} \Gamma_{0} \Rightarrow \alpha_{0}$，则称 $\text{R}$ 在 $\mathbf{G3ip}$ 中保持高度可允许
        1. 以下弱化规则在 $\mathbf{G3ip}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \beta$}
            \RightLabel{ $(\text{w}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
            \end{prooftree}
            $$

        2. 以下收缩规则在 $\mathbf{G3ip}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{c}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree}
            $$

        3. 以下切割规则在 $\mathbf{G3ip}$ 中保持高度可允许

            $$
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \alpha$}
            \AxiomC{$\alpha, \Delta \Rightarrow \beta$}
            \RightLabel{ (Cut)}
            \BinaryInfC{$\Gamma, \Delta \Rightarrow \beta$}
            \end{prooftree}
            $$

    3. 对任意矢列 $\Gamma \Rightarrow \beta$，$\mathbf{G2ip} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G3ip} \vdash \Gamma \Rightarrow \beta$
        1. 对任意多重公式集 $\Gamma$ 和公式 $\alpha$，$\mathbf{G3ip} \vdash \alpha, \Gamma \Rightarrow \alpha$
        2. 如果 $\mathbf{G3ip} \vdash \Gamma \Rightarrow \perp$，那么 $\mathbf{G3ip} \vdash \Gamma \Rightarrow \beta$

3. $\mathbf{G3cp}$ 与 $\mathbf{G3ip}$ 是可判定的
4. 矢列演算 $\mathbf{G3ipEa}$ 从 $\mathbf{G3ip}$ 上增加以下规则得来

    $$
    \begin{prooftree}
    \AxiomC{$p, \Gamma \Rightarrow \beta$}
    \AxiomC{$\neg p, \Gamma \Rightarrow \beta$}
    \RightLabel{ (Ea)}
    \BinaryInfC{$\Gamma \Rightarrow \beta$}
    \end{prooftree}
    $$

    $\mathbf{G3ipEa} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G3ipEa}$ 中可推导

    1. 以下弱化规则与收缩规则在 $\mathbf{G3ipEa}$ 中保持高度可允许

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \beta$}
        \RightLabel{ $(\text{w}\!\Rightarrow)$}
        \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
        \RightLabel{ $(\text{c}\!\Rightarrow)$}
        \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
        \end{prooftree}
        $$

    2. 以下切割规则与排中律规则在 $\mathbf{G3ip}$ 中可允许

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \alpha$}
        \AxiomC{$\alpha, \Delta \Rightarrow \beta$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\Gamma, \Delta \Rightarrow \beta$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
        \AxiomC{$\neg \alpha, \Gamma \Rightarrow \beta$}
        \RightLabel{ (Em)}
        \BinaryInfC{$\Gamma \Rightarrow \beta$}
        \end{prooftree}
        $$

    3. $\text{Glivenko}$ 嵌入定理：对任意公式 $\alpha$，$\mathbf{G3ipEa} \vdash \Rightarrow \alpha$ 当且仅当 $\mathbf{G3ip} \vdash \Rightarrow \neg \neg \alpha$，即 $\vdash_{\mathbf{HK}} \alpha$ 当且仅当 $\vdash_{\mathbf{HJ}} \neg \neg \alpha$
        1. $\mathbf{G3ipEa} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\Gamma \vDash \beta$
        2. 若 $\mathbf{G3ipEa} \vdash \Gamma \Rightarrow \beta$，那么在 $\mathbf{G3ipEa}$ 中存在 $\Gamma \Rightarrow \beta$ 的标准推导 $\mathcal{D}$ 使得 $\mathcal{D}$ 中应用 $\text{Ea}$ 得到的矢列后件都是 $\beta$
        3. 若 $\mathbf{G3ipEa} \vdash \Gamma \Rightarrow \neg \beta$，那么 $\mathbf{G3ip} \vdash \Gamma \Rightarrow \neg \beta$

### 3.2.5 **G<sub>4</sub>** 型演算
1. 矢列演算 $\mathbf{G4ip}$ 用以下规则替换 $\mathbf{G3ip}$ 的规则 $\rightarrow \Rightarrow$ 得来

    $$
    \displaylines{
        \begin{prooftree}
        \AxiomC{$p, \alpha, \Gamma \Rightarrow \beta$}
        \RightLabel{ $(0\!\rightarrow \Rightarrow)$}
        \UnaryInfC{$p, p \rightarrow \alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree} \\[0.5em]
        \begin{prooftree}
        \AxiomC{$\gamma_{1} \rightarrow\left(\gamma_{2} \rightarrow \alpha\right), \Gamma \Rightarrow \beta$}
        \RightLabel{ $(\wedge\!\rightarrow \Rightarrow)$}
        \UnaryInfC{$\left(\gamma_{1} \wedge \gamma_{2}\right) \rightarrow \alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree} \\[0.5em]
        \begin{prooftree}
        \AxiomC{$\gamma_{1} \rightarrow \alpha, \gamma_{2} \rightarrow \alpha, \Gamma \Rightarrow \beta$}
        \RightLabel{ $(\vee\!\rightarrow \Rightarrow)$}
        \UnaryInfC{$\left(\gamma_{1} \vee \gamma_{2}\right) \rightarrow \alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree} \\[0.5em]
        \begin{prooftree}
        \AxiomC{$\gamma_{1}, \gamma_{2} \rightarrow \alpha, \Gamma \Rightarrow \gamma_{2}$}
        \AxiomC{$\alpha, \Gamma \Rightarrow \beta$}
        \RightLabel{ $(\rightarrow \rightarrow \Rightarrow)$}
        \BinaryInfC{$\left(\gamma_{1} \rightarrow \gamma_{2}\right) \rightarrow \alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree}
    }
    $$

    $\mathbf{G4ip} \vdash \Gamma \Rightarrow \Delta$ 表示矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G4ip}$ 中可推导

    1. 规则 $0\!\rightarrow \Rightarrow, \wedge\!\rightarrow \Rightarrow, \vee\!\rightarrow \Rightarrow, \rightarrow \rightarrow \Rightarrow$ 在 $\mathbf{G3ip}$ 中可允许
    2. 以下弱化规则在 $\mathbf{G4ip}$ 中保持高度可允许

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \beta$}
        \RightLabel{ $(\text{w}\!\Rightarrow)$}
        \UnaryInfC{$\alpha, \Gamma \Rightarrow \beta$}
        \end{prooftree}
        $$

    3. 以下收缩规则与切割规则在 $\mathbf{G4ip}$ 中可允许

        $$
        \begin{prooftree}
        \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
        \RightLabel{ $(\text{c}\!\Rightarrow)$}
        \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \alpha$}
        \AxiomC{$\alpha, \Delta \Rightarrow \beta$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\Gamma, \Delta \Rightarrow \beta$}
        \end{prooftree}
        $$

2. 对任意矢列 $\Gamma \Rightarrow \beta$，$\mathbf{G3ip} \vdash \Gamma \Rightarrow \beta$ 当且仅当 $\mathbf{G4ip} \vdash \Gamma \Rightarrow \beta$

## 3.2 一阶逻辑矢列演算
1. 一阶逻辑矢列演算 $\mathbf{G3c}$ 由公理模式与矢列规则组成
    1. 公理模式
        1. $R t_{1} \cdots R t_{n}, \Gamma \Rightarrow \Delta, R t_{1} \cdots R t_{n} \ \text{(Id)}$
        2. $\perp, \Gamma \Rightarrow \Delta \ (\bot)$

        矢列规则

        1. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_1, \alpha_2, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\wedge\!\Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow\!\wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\vee\!\Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_1, \alpha_2$}
                \RightLabel{ $(\Rightarrow\!\vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\rightarrow \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \rightarrow)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
                \end{prooftree}
            }
            $$

        2. 量词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha(t / x), \forall x \alpha, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\forall\!\Rightarrow)$}
                \UnaryInfC{$\forall x \alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha(y / x)$}
                \RightLabel{ $(\Rightarrow\!\forall)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \forall x \alpha$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha(y / x), \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\exists\!\Rightarrow)$}
                \UnaryInfC{$\exists x \alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \exists x \alpha, \alpha(t / x)$}
                \RightLabel{ $(\Rightarrow\!\exists)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \exists x \alpha$}
                \end{prooftree}
            }
            $$

            在 $\Rightarrow\!\forall$ 中，$y \notin \operatorname{FV}(\Gamma, \Delta, \forall x \alpha)$；在 $\exists\!\Rightarrow$ 中，$y \notin \operatorname{FV}(\exists x \alpha, \Gamma, \Delta)$

        $\mathbf{G3c} \vdash \Gamma \Rightarrow \Delta$ 表示 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G3c}$ 中可推导

    2. 对任意自然数 $n \geqslant 0$，若 $\mathbf{G3c} \vdash_{n} \Gamma \Rightarrow \Delta$，则 $\mathbf{G3c} \vdash_{n} \Gamma(t / x) \Rightarrow \Delta(t / x)$
    3. 以下弱化规则与收缩规则在 $\mathbf{G3c}$ 中保持高度可允许

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{w}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\Rightarrow\!\text{w})$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha, \alpha, \Gamma \Rightarrow \Delta$}
            \RightLabel{ $(\text{c}\!\Rightarrow)$}
            \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\Gamma \Rightarrow \Delta, \alpha, \alpha$}
            \RightLabel{ $(\Rightarrow\!\text{c})$}
            \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha$}
            \end{prooftree}
        }
        $$

    4. 以下切割规则在 $\mathbf{G3c}$ 中可允许

        $$
        \begin{prooftree}
        \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
        \AxiomC{$\alpha,  \Sigma \Rightarrow \Theta$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\Gamma, \Sigma \Rightarrow \Delta, \Theta$}
        \end{prooftree}
        $$

2. 对多重公式集 $\Gamma=\alpha_{1}, \cdots, \alpha_{n}$，若对所有 $1 \leqslant i \leqslant n$ 都有 $\alpha_{i}^{\flat}$ 是从 $\alpha_{i}$ 使用不在 $\Gamma$ 中出现的变元进行字母变换得到的公式，则称 $\Gamma^{\flat}=\alpha_{1}^{\flat}, \cdots, \alpha_{n}^{\flat}$ 为 $\Gamma$ 的字母变换
    1. 在 $\mathbf{G3c}$ 中，一个推导 $\mathcal{D}^{\flat}$ 称为 $\mathcal{D}$ 的字母变换当且仅当 $\mathcal{D}^{\flat}$ 中每个多重集都是 $\mathcal{D}$ 中相应多重集的字母变换
    2. 矢列 $\Gamma \Rightarrow \Delta$ 在 $\mathbf{G3c}$ 中的推导 $\mathcal{D}$ 可变换为 $\Gamma^{\flat} \Rightarrow \Delta^{\flat}$ 的推导 $\mathcal{D}^{\flat}$，其中 $\Gamma^{\flat}, \Delta^{\flat}, \mathcal{D}^{\flat}$ 分别是 $\Gamma, \Delta, \mathcal{D}$ 的字母变换且 $|\mathcal{D}|= |\mathcal{D}^{\flat}|$
3. 对任意多重公式集 $\Gamma$ 和 $\Delta$，$\mathbf{G3c} \vdash \Gamma \Rightarrow \Delta$ 当且仅当 $\vdash_{\mathbf{H}_{1}} \bigwedge \Gamma \to \bigvee \Delta$
