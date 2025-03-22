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
### 3.2.1 G<sub>0</sub> 型演算
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

    2. 一个推导 $\mathcal{D}$ 是由矢列组成的有穷树结构，其中每个节点要么是公理，要么是从子节点矢列使用某个规则得到的
    3. 称以 $\Gamma_{i} \Rightarrow \Delta_{i}$ 为前提且以 $\Gamma \Rightarrow \Delta$ 为结论的规则 $\text{R}$ 在 $\mathbf{G0ip}$ 中可允许当且仅当 $\mathbf{G 0 c p} \vdash \Gamma_{i} \Rightarrow \Delta_{i}$ 蕴涵 $\mathbf{G0ip}$ $\vdash \Gamma \Rightarrow \Delta$
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

    4. $\mathbf{G0ip} \vdash \Gamma \Rightarrow \alpha$ 当且仅当 $\bigwedge \Gamma \vdash_{\mathbf{HJ}} \alpha$
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

### 3.2.2 G<sub>1</sub> 型演算

### 3.2.3 G<sub>2</sub> 型演算

### 3.2.4 G<sub>3</sub> 型演算

### 3.2.5 G<sub>4</sub> 型演算

## 3.2 一阶逻辑矢列演算
