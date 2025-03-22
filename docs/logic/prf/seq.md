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

        3. 联结词规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\alpha_i, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\wedge \Rightarrow)$}
                \UnaryInfC{$\alpha_1 \wedge \alpha_2, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \wedge)$}
                \BinaryInfC{$\Gamma \Rightarrow \Delta, \alpha \wedge \beta$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\vee \Rightarrow)$}
                \BinaryInfC{$\alpha \vee \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha_i$}
                \RightLabel{ $(\Rightarrow \vee)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha_1 \vee \alpha_2$}
                \end{prooftree} \\[0.5em]
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta, \alpha$}
                \AxiomC{$\beta, \Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\to \Rightarrow)$}
                \BinaryInfC{$\alpha \to \beta, \Gamma \Rightarrow \Delta$}
                \end{prooftree} \quad
                \begin{prooftree}
                \AxiomC{$\alpha, \Gamma \Rightarrow \Delta, \beta$}
                \RightLabel{ $(\Rightarrow \to)$}
                \UnaryInfC{$\Gamma \Rightarrow \Delta, \alpha \to \beta$}
                \end{prooftree}
            }
            $$

            其中 $i = 1, 2$．对联结词 $\circ \in\{\wedge, \vee, \rightarrow\}$，称 $(\circ l)$ 为左规则，$(\circ r)$ 为右规则；结论中含联结词的公式称为主公式

        4. 结构规则

            $$
            \displaylines{
                \begin{prooftree}
                \AxiomC{$\Gamma \Rightarrow \Delta$}
                \RightLabel{ $(\text{w}\Rightarrow)$}
                \UnaryInfC{$\alpha, \Gamma \Rightarrow \Delta$}
                \end{prooftree}
            }
            $$

            分别称上述三行为弱化规则、收缩规则、交换规则

        5. 切割规则

    2. 推导

### 3.2.2 G<sub>1</sub> 型演算

### 3.2.3 G<sub>2</sub> 型演算

### 3.2.4 G<sub>3</sub> 型演算

### 3.2.5 G<sub>4</sub> 型演算

## 3.2 一阶逻辑矢列演算
