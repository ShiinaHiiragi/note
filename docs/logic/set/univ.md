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
1. 相对化：令 $\mathbf{M}$ 为类，$\varphi$ 为公式，则 $\varphi$ 对 $\mathbf{M}$ 的相对化 $\varphi^{\mathbf{M}}$ 递归定义为
    1. $(x=y)^{\mathbf{M}}$ 即 $x=y$
    2. $(x \in y)^{\mathbf{M}}$ 即 $x \in y$
    3. $(\varphi \rightarrow \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \rightarrow \psi^{\mathbf{M}}$
    4. $(\neg \varphi)^{\mathbf{M}}$ 即 $\neg \varphi^{\mathbf{M}}$
    5. $(\forall x \varphi)^{\mathbf{M}}$ 即 $\forall x \in \mathbf{M} \ \varphi^{\mathbf{M}}$

    $\varphi^{\mathbf{M}}$ 读作「$\varphi$ 在 $\mathbf{M}$ 中为真」，相当于 $\mathbf{M} \vDash \varphi$，且有 $\varphi^{\mathbf{V}} = \varphi$

    1. 其他逻辑符号的相对化可由定义得到
        1. $(\varphi \vee \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \vee \psi^{\mathbf{M}}$
        2. $(\varphi \wedge \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \wedge \psi^{\mathbf{M}}$
        3. $(\exists x \varphi)^{\mathbf{M}}$ 即 $(\exists x \in \mathbf{M}) \varphi^{\mathbf{M}}$
    2. 对于 $n$ 元函数符号 $f$，假设其定义由公式 $\varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 给出，则用 $f^{\mathbf{M}}=\left\{\left(x_{1}, \cdots, x_{n}, x_{n+1}\right) \in \mathbf{M} \mid \varphi^{\mathbf{M}}\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)\right\}$ 表示 $f$ 在 $\mathbf{M}$ 中的相对化，其中隐含了 $\mathbf{M} \vDash \forall x_{1} \cdots \forall x_{n} \exists^{1} \ x_{n+1} \varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 的要求

2. 对任意集合论公式 $\psi\left(x_{1}, \ldots, x_{n}\right)$ 与任意满足 $\mathbf{M} \subseteq \mathbf{N}$ 的类，若 $\forall x_{1} \cdots \forall x_{n} \in \mathbf{M} \ \left(\psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right) \leftrightarrow \psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right)\right)$，则称 $\psi$ 对于 $\mathbf{M}, \mathbf{N}$ 是绝对的；若 $\mathbf{N}=\mathbf{V}$，则称 $\psi$ 对于 $\mathbf{M}$ 是绝对的
    1. 设 $\mathbf{M} \subseteq \mathbf{N}, f\left(x_{1}, \cdots, x_{n}\right)$ 是函数，则 $f$ 相对于 $\mathbf{M}, \mathbf{N}$ 是绝对的当且仅当定义 $f$ 的公式 $\varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 也是绝对的．因此 $f$ 相对于 $\mathbf{M}$ 是绝对的当且仅当 $f^{\mathbf{M}}=f \upharpoonright \mathbf{M}$
    2. 假设 $\mathbf{M} \subseteq \mathbf{N}$，且 $\varphi, \psi$ 是公式
        1. 若 $\varphi, \psi$ 相对于 $\mathbf{M}, \mathbf{N}$ 是绝对的，则 $\neg \varphi, \varphi \rightarrow \psi$ 也是如此
        2. 若 $\varphi$ 不含量词，则 $\varphi$ 对任意 $\mathbf{M}$ 都是绝对的
        3. 若 $\mathbf{M}, \mathbf{N}$ 都是传递的，并且 $\varphi$ 相对于它们是绝对的，则 $\forall x \in y \ \varphi$ 也是如此
    3. 令 $\mathbf{M} \subseteq \mathbf{N}$ 都是传递的，$\psi\left(x_{0}, \ldots, x_{n}\right)$ 为集合论公式
        1. 若 $\psi$ 是 $\Delta_{0}$ 公式，则 $\psi$ 对于 $\mathbf{M}, \mathbf{N}$ 是绝对的
        2. 如果 $\psi$ 是 $\Sigma_{1}$ 公式，则 $\forall x_{1} \cdots \forall x_{n} \ \left(\psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right) \rightarrow \psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right)\right)$
        3. 如果 $\psi$ 是 $\Pi_{1}$ 公式，则 $\forall x_{1} \ldots \forall x_{n} \ \left(\psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right) \rightarrow \psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right)\right)$
    4. 绝对性的性质：设 $\mathbf{M} \subseteq \mathbf{N}$
        1. 设 $\mathbf{M}, \mathbf{N}$ 都是语句集 $\Sigma$ 的模型，$\Sigma \vdash \forall x_{1} \cdots \forall x_{n} \ \left(\varphi\left(x_{1} \cdots x_{n}\right) \leftrightarrow \psi\left(x_{1} \cdots x_{n}\right)\right)$，则 $\varphi$ 对 $\mathbf{M}, \mathbf{N}$ 是绝对的当且仅当 $\psi$ 也是
        2. 设 $\varphi\left(x_{1}, \cdots, x_{n}\right)$ 是一个公式，$f\left(x_{1}, \cdots, x_{n}\right)$，$g_{i}\left(y_{1}, \cdots, y_{m}\right), 1 \leqslant i \leqslant n$ 为一系列函数，且都相对于 $\mathbf{M}, \mathbf{N}$ 绝对，则公式 $\varphi\left(g_{1}\left(y_{1}, \cdots, y_{m}\right), \cdots, g_{n}\left(y_{1}, \cdots, y_{m}\right)\right)$ 与函数 $f\left(g_{1}\left(y_{1}, \cdots, y_{m}\right), \cdots, g_{n}\left(y_{1}, \cdots, y_{m}\right)\right)$ 也相对于 $\mathbf{M}, \mathbf{N}$ 绝对

        ??? note inline end "具有绝对性的集合论关系与函数"
            1. 以下定义对任意 $\mathbf{ZF}^{-}-\mathrm{Pow}-\mathrm{Inf}$ 的传递模型 $\mathbf{M}$ 都是绝对的
                - $x = y$
                - $x \in y$
                - $x \subseteq y$
                - $\varnothing$
                - $\{x\}$
                - $\{x, y\}$
                - $(x, y)$
                - $x \cup y$
                - $x \cap y$
                - ${\displaystyle \bigcup x}$
                - ${\displaystyle \bigcap x}$
                - $x - y$
                - $x^{+}$，即 $x \cup\{x\}$
                - $x$ 是传递集
                - $z$ 是有序对
                - $X \times Y$
                - $R$ 是关系
                - $\operatorname{dom}(R)$
                - $\operatorname{ran}(R)$
                - $f(x)$
                - $f$ 是函数
                - $f$ 是单射
            2. 以下定义对任意 $\mathbf{ZF}^{-}-\mathrm{Pow}$ 的传递模型 $\mathbf{M}$ 都是绝对的
                - $X^n$
                - $X^{<\omega}$
                - $R$ 是 $X$ 上的良序
                - $0,1,2, \cdots$
                - $\omega$
                - $\operatorname{type}(X, R)$
                - $x$ 是序数
                - $x$ 是有穷序数
                - $x$ 是后继序数
                - $x$ 是极限序数
                - $\alpha + 1$
                - $\alpha - 1$
                - $\alpha + \beta$
                - $\alpha \cdot \beta$
                - $\alpha^{\beta}$
                - $\operatorname{rank}(x)$，即 $\operatorname{rank}(x, \mathbf{V}, \in)$
                - $\operatorname{trcl}(x)$
                - $x$ 是有穷的

    5. 以下关系与函数在 $\mathbf{ZFC}$ 相关理论的模型中不是绝对的
        - $x$ 是可数集
        - $x$ 是基数
        - $x$ 是极限基数
        - $x$ 是正则基数
        - $x$ 是不可达基数

### 4.1.3 相对一致性
1. 设 $T$ 是集合论理论，$\Sigma$ 是语句集，$\mathbf{M}$ 为类且在 $T$ 中可证 $\mathbf{M} \neq \varnothing$．则若在 $T$ 中可证 $\mathbf{M} \vDash \Sigma$，即对任意 $\sigma \in \Sigma$，都在 $T$ 中可证 $\sigma^{\mathrm{M}}$
    1. 对集合论语言的任何语句 $\varphi$，如果 $\Sigma \vdash \varphi$，则 $T \vdash \varphi^{\mathbf{M}}$
    2. 如果 $T$ 一致，则以 $\Sigma$ 为公理的理论也一致
2. $\mathbf{ZFC}$ 相关的相对一致性
    1. 在 $\mathbf{ZF}^{-}$ 中可证 $\mathbf{WF} \vDash \mathbf{ZF}$，因此 $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}(\mathbf{ZF})$
    2. 在 $\mathbf{ZF}^{-}$ 中可证 $V_{\omega} \vDash \mathbf{ZFC}-\operatorname{Inf}+\neg \operatorname{Inf}$ 的模型，因此 $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}(\mathbf{ZFC}-\operatorname{Inf}+\neg \operatorname{Inf})$
3. 若 $\mathbf{M}$ 是 $\mathbf{ZF}-\mathrm{Pow}$ 的传递模型，则 $\mathbf{M}$ 的所有有穷子集都属于 $\mathbf{M}$

### 4.1.4 Mostowski 折叠

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
    3. $\text{Grothendieck}$ 宇宙等价于强不可达基数：以下两条公理互相等价
        1. 对任意集合 $x$，存在 $\text{Grothendieck}$ 宇宙 $U$ 使得 $x \in U$
        2. 对任意基数 $\kappa$，存在强不可达基数 $\lambda$ 有 $\lambda > \kappa$

<style>
.md-typeset details.inline {
    width: 20rem;
    margin-top: 4.75px;
}
</style>
