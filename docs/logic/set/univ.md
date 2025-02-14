# 4 集宇宙

## 4.1 von Neumann 宇宙
### 4.1.1 良基集
1. 定义良基集合类 $\mathbf{WF} = {\displaystyle \bigcup_{\alpha \in \mathrm{On}} V_{\alpha}}$，其中 $V_{\alpha}$
    1. $V_{0}=\varnothing$
    2. $V_{\alpha+1}=\mathcal{P}\left(V_{\alpha}\right)$
    3. 对任意极限序数 $\lambda$，$V_{\lambda}={\displaystyle \bigcup_{\beta<\lambda} V_{\beta}}$

    则 $\mathbf{WF}$ 是一个真类

    1. 对任意序数 $\alpha \in \mathbf{On}$
        1. $V_{\alpha}$ 是传递的
        2. 如果 $\xi \leqslant \alpha$，则 $V_{\xi} \subseteq V_{\alpha}$
        3. 如果 $\kappa$ 是不可达基数，则 $\left|V_{\kappa}\right|=\kappa$
        4. $V_{\alpha} \cap \mathbf{O n}=\alpha$
    2. 对任意集合 $x \in \mathbf{WF}$，定义 $x$ 的秩 $\operatorname{rank}(x)$ 为使得 $x \in V_{\beta+1}$ 的最小 $\beta$，设 $\alpha \in \mathbf{On}$
        1. $V_{\alpha}=\{x \in \mathbf{WF} \mid \operatorname{rank}(x)<\alpha\}$
        2. 对任意 $x, y \in \mathbf{WF}$，如果 $x \in y$，则 $\operatorname{rank}(x)<\operatorname{rank}(y)$
        3. 对任意 $y \in \mathbf{WF}, \operatorname{rank}(y)=\sup \{\operatorname{rank}(x)+1 \mid x \in y\}$
        4. $\alpha \in \mathbf{WF}$ 且 $\operatorname{rank}(\alpha)=\alpha$
    3. $\mathbf{WF}$ 是传递的，即对任意 $y \in \mathbf{WF}$，若 $x \in y$，则 $x \in \mathbf{WF}$
        1. 对任意集合 $x$，$x \in \mathbf{WF}$ 当且仅当 $x \subseteq \mathbf{WF}$
        2. 设 $x \in \mathbf{WF}$，则 ${\displaystyle \bigcup x, \mathcal{P}(x)}$ 以及 $\{x\}$ 属于 $\mathbf{WF}$，且其秩都小于 $\operatorname{rank}(x)+\omega$
        3. 若 $x, y \in \mathbf{WF}$，则 $x \times y, x \cup y, x \cap y,\{x, y\},(x, y), x^{y}$ 都属于 $\mathbf{WF}$，且其秩都小于 $\operatorname{rank}(x)+\operatorname{rank}(y)+\omega$
        4. 整数集 $\mathbf{Z}$，有理数集 $\mathbf{Q}$ 和实数集 $\mathbf{R}$ 都属于 $V_{\omega+\omega}$
        5. 若 $A \in \mathbf{WF}$，则 $\in$ 是 $A$ 上的良基关系
        6. 假设选择公理成立
            1. 对任意群 $G$，存在 $\mathbf{WF}$ 中的群 $G^{\prime}$ 与 $G$ 同构
            2. 对任意拓扑空间 $T$，存在 $\mathbf{WF}$ 中的拓扑空间 $T^{\prime}$ 与 $T$ 同胚
    4. 任意集合 $x$，存在一个最小的传递集 ${\displaystyle \operatorname{trcl}(x)=\bigcup_{n<\omega} x_{n}}$ 使得 $x \subseteq \operatorname{trcl}(x)$，其中 ${\displaystyle x_{0} =x, x_{n+1} =\bigcup x_{n}}$
        1. 若 $A$ 是传递集，且 $\in$ 是 $A$ 上的良基关系，则 $A \in \mathbf{WF}$
        2. 若 $x$ 是传递的，则 $\operatorname{trcl}(x)=x$
        3. 若 $y \in x$，则 $\operatorname{trcl}(y) \subseteq \operatorname{trcl}(x)$
        4. ${\displaystyle \operatorname{trcl}(x)=x \cup \bigcup\{\operatorname{trcl}(y) \mid y \in x\}}$
        5. $X \in \mathbf{WF}$ 当且仅当 $\operatorname{trcl}(X) \in \mathbf{WF}$ 当且仅当 $\in$ 是 $\operatorname{trcl}(X)$ 上的良基关系

2. 在 $\mathbf{ZF}^{-}$ 中可证明以下命题等价
    1. 基础公理
    2. 对任意集合 $X$，$\in$ 是 $X$ 上的良基关系
    3. $\mathbf{V}=\mathbf{WF}$

### 4.1.2 绝对性

### 4.1.3 相对一致性

## 4.2 Gödel 可构成宇宙

## 4.3 Grothendieck 宇宙
1. $\text{Grothendieck}$ 宇宙是满足以下性质的集合 $U$
    1. $U$ 是传递集
    2. 若 $x, y \in U$，则 $\{x, y\}, \mathcal P(x), \mathcal P(y) \in U$
    3. 若 $\{x_{\alpha}\}_{\alpha \in I}$ 是 $U$ 的一族元素且 $I \in U$，则 ${\displaystyle \bigcup_{\alpha \in I} x_{\alpha} \in U}$

    易知空集 $\varnothing$ 与所有遗传有穷集的集合 $V_{\omega}$ 是 $\text{Grothendieck}$ 宇宙

2. 设 $\kappa$ 是强不可达基数，$S$ 是集合，若对任意 $s_n \in \cdots \in s_0 \in S$ 有 $|s_n| < \kappa$，则称 $S$ 是强类型 $\kappa$ 的，令 $u(\kappa)$ 是所有强类型 $\kappa$ 的集合
    1. 对于任意 $\text{Grothendieck}$ 宇宙 $U$，$|U|$ 为 $0$，$\aleph_0$ 或某个强不可达基数
    2. 若基数 $\kappa$ 为 $0$，$\aleph_0$ 或某个强不可达基数，则存在 $\text{Grothendieck}$ 宇宙 $U = u(\kappa)$，此时 $u(|U|) = U, |u(\kappa)| = \kappa$
    3. $\text{Grothendieck}$ 宇宙等价于强不可达基数：以下公理等价
        1. 对任意集合 $x$，存在 $\text{Grothendieck}$ 宇宙 $U$ 使得 $x \in U$
        2. 对任意基数 $\kappa$，存在强不可达基数 $\lambda$ 有 $\lambda > \kappa$
