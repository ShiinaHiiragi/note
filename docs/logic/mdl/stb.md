# 3 稳定理论

## 3.1 可数模型
### 3.1.1 省略型定理
1. 设 $T$ 是有无穷模型的完备 $S-$理论，并且 $T$ 可数，则以下命题等价
    1. 对任意的 $n \in \mathbf{N}^{+}$，$S_{n}(T)$ 可数
    2. 对任意的 $A \vDash T$，若 $M \subseteq A$ 是有限集合，则 $S_{1}(M, A)$ 可数
    3. 对任意的 $n \in \mathbf{N}^{+}$ 与 $A \vDash T$，若 $M \subseteq A$ 是有限集合，则 $S_{n}(M, A)$ 可数
2. 设 $T$ 是一个 $S-$理论，$\Sigma\left(x_{0}, \cdots, x_{n-1}\right)$ 是 $T$ 的一个 $n-$型．如果存在一个 $S-$公式 $\alpha\left(x_{0}, \cdots, x_{n-1}\right)$，使得
    1. $T \cup \alpha\left(x_{0}, \cdots, x_{n-1}\right)$ 是一致的
    2. 对任意 $\beta\left(x_{0}, \cdots, x_{n-1}\right) \in \Sigma\left(x_{0}, \cdots, x_{n-1}\right)$，均有 $T \vDash \forall x_{0}, \cdots, x_{n-1}\left(\alpha\left(x_{0}, \cdots, x_{n-1}\right) \rightarrow \beta\left(x_{0}, \cdots, x_{n-1}\right)\right)$

    则称 $\Sigma$ 是 $T$ 的一个主 $n-$型，简称主型，并称 $\alpha$ 孤立了 $\Sigma$；否则称 $\Sigma$ 是 $T$ 的一个非主 $n-$型，简称非主型

    1. 省略型定理：若 $S-$理论 $T$ 是可数理论，$\Sigma(\overline{x})$ 是 $T$ 的非主 $n-$型，则存在 $T$ 的一个模型 $A$ 使得 $A$ 省略 $\Sigma(\overline{x})$
    2. 若 $S-$理论 $T$ 是可数理论，$X$ 是 $T$ 的可数多个非主型，则存在可数的 $A \vDash T$ 使得 $A$ 可以省略任意的 $p \in X$

### 3.1.2 素模型
1. 设 $A$ 是一个 $S-$结构
    1. 若对任意的 $n \in \mathbf{N}^{+}$ 与 $\overline{a} \in A^{n}$，都有 $\operatorname{tp}_{A}(\overline{a})$ 是主型，则称 $A$ 是原子结构
    2. 设 $M \subseteq A$，若对任意的 $n \in \mathbf{N}^{+}$ 与 $\overline{a} \in A^{n}$，$\operatorname{tp}_{A}(\overline{a} / M)$ 都是主型，则称 $A$ 是 $M$ 上的原子结构
    3. 设 $T$ 是一个完全 $S-$理论，若存在 $p \in S_{n}(T)$ 使得 $p=[\alpha]$，即 $\alpha$ 孤立了 $S_{n}(T)$ 中的一个型，则称公式 $\alpha\left(x_{0}, \cdots, x_{n-1}\right)$ 是 $T$ 的原子公式（或完全公式）

    设 $T$ 是有无穷模型的可数完备 $S-$理论，则下列命题等价

    1. $T$ 有一个原子模型
    2. $T$ 有一个可数的原子模型
    3. 对任意的 $n \in \mathbf{N}, S_{n}(T)$ 中的孤立/主型是稠密的

2. 设 $T$ 是一个完备的 $S-$理论，$A$ 是 $T$ 的一个模型，若对任意的 $B \vDash T$，均存在 $A$ 到 $B$ 的初等嵌入，则称 $A$ 是素模型
    1. 设 $T$ 是有无穷模型的可数完备 $S-$理论，$A$ 是一个 $T$ 的模型
        1. $A$ 是 $T$ 的素模型当且仅当 $A$ 是 $T$ 的可数原子模型
        2. $T$ 的原子模型都是 $\omega-$齐次的
        3. $T$ 的素模型之间相互同构
    2. 设 $T$ 是有无穷模型的可数完备 $S-$理论
        1. 设 $n \in \mathbf{N}$，若 $S_{n}(T)$ 是可数的，则 $S_{n}(T)$ 中的孤立型稠密
        2. 若 $S_{1}(T)$ 不可数，则 $S_{1}(T)$ 的基数是 $2^{\omega}$
        3. 若 $S_{1}(T)$ 不可数，则 $T$ 有 $2^{\omega}$ 个互不同构的可数模型

3. 设 $T$ 是一个 $S-$理论，$\lambda$ 是一个基数，定义 $I(T, \lambda)$ 为 $T$ 的基数为 $\lambda$ 的互不同构模型个数的基数
    1. $\text{Vaught}$ 猜想：设 $T$ 是可数且完备的理论，则 $T$ 或者有至多可数个模型，或者有 $2^{\omega}$ 个模型，即不可能有

        $$
        \aleph_{0}<I\left(T, \aleph_{0}\right)<2^{\aleph_{0}}
        $$

        在 $\mathbf{CH}$ 下，$\text{Vaught}$ 猜想平凡

    2. 设 $T$ 是有无穷模型的可数完备 $S-$理论，则以下命题等价
        1. 对任意的 $n \in \mathbf{N}^{+}$，$S_{n}(T)$ 可数
        2. $T$ 有一个可数的 $\omega-$饱和模型
    3. 设 $T$ 是有无穷模型的可数完备 $S-$理论，且对任意的 $n \in \mathbf{N}$，都有 $S_{n}(T)$ 可数，则 $T$ 有素模型 $A_{0}$ 和可数的饱和模型 $A_{1}$，即对任意可数的 $A \vDash T$，均有 $A_{0} \prec A \prec A_{1}$

4. 设 $T$ 是有无穷模型的可数完备 $S-$理论，则 $T$ 是 $\omega-$范畴的当且仅当以下任一命题成立
    1. （定义）对任意 $n \in \mathbf{N}$，$S_{n}(T)$ 是离散拓扑空间
    2. 对任意的 $n \in \mathbf{N}^{+}$，$S_{n}(T)$ 都是有穷集
    3. 对任意的 $n \in \mathbf{N}^{+}$，存在 $m \in \mathbf{N}$ 与 $\alpha_{0}\left(x_{0}, \cdots, x_{n-1}\right), \cdots, \alpha_{m-1}\left(x_{0}, \cdots, x_{n-1}\right)$，使得对任意的 $S-$公式 $\beta\left(x_{0}, \cdots, x_{n-1}\right)$，都存在 $i<m$ 使得 $T \vDash \forall x_{0} \cdots x_{n-1}\left(\beta\left(x_{0}, \cdots, x_{n-1}\right) \leftrightarrow \alpha_{i}\left(x_{0}, \cdots, x_{n-1}\right)\right)$

## 3.2 稳定理论
### 3.2.1 ω-稳定性
1. 设 $T$ 是一个 $S-$理论，$\lambda$ 是一个基数．若存在一个无穷基数 $\lambda$ 使得 $T$ 是 $\lambda-$稳定的，则称 $T$ 是稳定的
    1. 称一个理论 $T$ 是 $\omega-$稳定的当且仅当对任意的 $A \vDash T$，若 $M \subseteq A$ 是可数的，则 $S_{1}(M, A)$ 是可数的
    2. 称一个理论 $T$ 是 $\lambda-$稳定的当且仅当对任意的 $A \vDash T$，若 $M \subseteq A$ 的基数小于等于 $\lambda$，则 $S_{1}(M, A)$ 的基数小于等于 $\lambda$
2. 设 $T$ 是一个 $S-$理论，$\alpha(\overline{x}, \overline{y})$ 是一个 $S-$公式．若存在 $A \vDash T$ 及 $A$ 中的两个序列 $\left(\overline{a}_{i}\right)_{i \in \omega}$ 和 $(\overline{b}_{i})_{i \in \omega}$，使得 $A \vDash \alpha(\overline{a}_{i}, \overline{b}_{j})$ 当且仅当 $i<j$，则称公式 $\alpha(\overline{x}, \overline{y})$ 关于 $T$ 具有序性质．若存在一个 $S-$公式具有序性质，则称 $T$ 有序性质，否则称 $T$ 没有序性质
    1. 如果理论 $T$ 有序性质，则对任意的线序 $\left(I,<_{I}\right)$，存在一个 $S-$公式 $\alpha(\overline{x}, \overline{y}), B \vDash T$ 及 $B$ 中的不可辨元序列 $(\overline{c}_{i}, \overline{d}_{i})_{i \in I}$，使得 $B \vDash \alpha(\overline{c}_{i}, \overline{d}_{j})$ 当且仅当 $i<_{I} j$
    2. 如果理论 $T$ 是 $\omega-$稳定的，则 $T$ 没有序性质
    3. 对任意的无穷基数 $\lambda$，都存在一个稠密线序 $(I,<)$ 及 $I$ 的稠密子集 $M$，使得 $|M| \leqslant \lambda<|I|$
    4. 如果 $\lambda$ 是一个无穷基数，则 $\lambda-$稳定的理论都没有序性质
3. 设 $A$ 是一个 $S-$结构，$M \subseteq A,(I,<)$ 是一个线序，$\left(a_{i}\right)_{i \in I}$ 是 $A$ 中的一个 $M-$不可辩元序列．如果对任意的 $n \in \mathbf{N}^{+}$，$\left\{\beta_{1}, \cdots, \beta_{n}\right\} \subseteq I$ 及任意的一个双射 $\sigma:\{1, \cdots, n\} \longrightarrow\{1, \cdots, n\}$（即 $\{1, \cdots, n\}$ 上的置换），都有

    $$
    \operatorname{tp}_{A}\left(a_{\beta_{1}}, \cdots, a_{\beta_{n}} / M\right)=\operatorname{tp}_{A}\left(a_{\beta_{\sigma(1)}}, \cdots, a_{\beta_{\sigma(n)}} M\right)
    $$

    则称 $\left(a_{i}\right)_{i \in I}$ 是 $M$ 上的完全不可辨元序列．易知若 $\lambda$ 是一个无穷基数，理论 $T$ 是 $\lambda-$稳定的且 $A \vDash T$，则 $A$ 中的任意不可辩元序列都是完全不可辨元序列

### 3.2.2 Morley 秩
1. 设 $A$ 是一个 $S-$结构，$\overline{a} \in A^{|\overline{a}|}, \overline{x}=\left(x_{1}, \cdots, x_{n}\right), \alpha(\overline{x}, \overline{y})$ 是一个公式，$\alpha$ 是一个序数递归定义 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha$ 如下
    1. $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant 0$ 当且仅当 $A \vDash \exists \overline{x}(\alpha(\overline{x}, \overline{a}))$
    2. 若 $\alpha$ 是一个极限序数，则 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha$ 当且仅当对任意的 $\delta< \alpha$，都有 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \delta$
    3. $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha+1$ 当且仅当存在 $A$ 的一个初等膨胀 $B$ 及一族 $S_{B}-$公式 $\left\{\beta_{j}\left(\overline{x}, \overline{b}_{j}\right) \mid j \in \omega, \overline{b}_{j} \in B^{\left|\overline{b}_{j}\right|}\right\}$ 使得
        1. 对任意的 $j \in \omega$ 均有 $B \vDash \forall \overline{x}(\beta_{j}(\overline{x}, \overline{b}_{j}) \rightarrow \alpha(\overline{x}, \overline{a}))$
        2. 对任意的 $j \in \omega$ 均有 $\operatorname{RA}_{n}^{A}(\beta_{j}(\overline{x}, \overline{b}_{j})) \geqslant \alpha$
        3. 对任意的 $i<j \in \omega$ 均有 $B \vDash \neg \exists \overline{x}(\beta_{i}(\overline{x}, \overline{b}_{i}) \wedge \beta_{j}(\overline{x}, \overline{b}_{j}))$

    若存在序数 $\alpha$ 使得 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha$ 且 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha+1$，则称 $\alpha(\overline{x}, \overline{a})$ 的 $\text{Morley}$ 秩存在，并称 $\alpha$ 是 $\alpha(\overline{x}, \overline{a})$ 的 $\text{Morley}$ 秩，记作 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) =\alpha$

    1. 若对任意的序数 $\alpha$ 有 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a})) \geqslant \alpha$，则称 $\alpha(\overline{x}, \overline{a})$ 的 $\text{Morley}$ 秩不存在，记作 $\mathrm{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a}))=\infty$
    2. 如果 $A \vDash \neg \exists \overline{x} \alpha(\overline{x}, \overline{a})$，则令 $\operatorname{RA}_{n}^{A}(\alpha(\overline{x}, \overline{a}))=-1$，不引起歧义时可省去记号 $\mathrm{RA}_{n}^{A}$ 中的下标 $n$；对任意的 $B \succ A$ 及任意的 $S_{A}-$公式 $\alpha(\overline{x})$，在 $A$ 中定义的 $\mathrm{RA}^{A}(\alpha)$ 和 $B$ 中定义的 $\mathrm{RA}^{B}(\alpha)$ 相同．因此不引起歧义时可省略 $\mathrm{RA}^{A}$ 的上标 $A$

2. 设 $A$ 是一个 $\omega-$饱和模型，$X \subseteq A^{n}$ 是一个可定义集合，$\alpha$ 是一个序数．递归定义 $\mathrm{RA}(X) \geqslant \alpha$ 如下
    1. $\operatorname{RA}(X) \geqslant 0$ 当且仅当 $X \neq \varnothing$
    2. 若 $\alpha$ 是一个极限序数，则 $\mathrm{RA}(X) \geqslant \alpha$ 当且仅当对任意的 $\delta<\alpha$，都有 $\mathrm{RA}(X) \geqslant \delta$
    3. $\operatorname{RA}(X) \geqslant \alpha+1$ 当且仅当存在一族 $A-$可定义集 $\left\{Y_{j} \subseteq A^{n} \mid j \in \omega\right\}$，使得
        1. 对任意的 $j \in \omega$ 均有 $Y_{j} \subseteq X$
        2. 对任意的 $j \in \omega$ 均有 $\operatorname{RA}\left(Y_{j}\right) \geqslant \alpha$
        3. 对任意的 $i<j \in \omega$ 均有 $Y_{i} \cap Y_{j}=\varnothing$

    若存在序数 $\alpha$ 使得 $\mathrm{RA}(X) \geqslant \alpha$ 且 $\mathrm{RA}(X) \not\geqslant \alpha+1$，则称 $X$ 的 $\text{Morley}$ 秩存在，且 $\alpha$ 是 $X$ 的 $\text{Morley}$ 秩，记作 $\mathrm{RA}(X)=\alpha$．如果对任意的序数 $\alpha$ 都有 $\mathrm{RA}(X) \geqslant \alpha$，则称 $X$ $\text{的Morley}$ 秩不存在，记作 $\mathrm{RA}(X)=\infty$．空集的 $\text{Morley}$ 秩是 $-1$

3. 设 $A$ 是一个 $S-$结构，$\alpha(\overline{x}), \beta(\overline{x})$ 是两个 $S_{A}-$公式
    1. $\operatorname{RA}(\alpha(\overline{x}) \vee \beta(\overline{x}))=\max \{\operatorname{RA}(\alpha(\overline{x})), \operatorname{RA}(\beta(\overline{x}))\}$
    2. 如果 $A \vDash \forall \overline{x}(\alpha(\overline{x}) \rightarrow \beta(\overline{x}))$，则 $\mathrm{RA}(\alpha(\overline{x})) \leqslant \mathrm{RA}(\beta(\overline{x}))$
    3. $\operatorname{RA}(\alpha(\overline{x}))=0$ 当且仅当存在自然数 $k>0$ 使得 $A \vDash \exists^{k \small\text{ 个}\normalsize}$ $\overline{x}(\alpha(\overline{x}))$

4. 设 $A$ 是 $\omega-$饱和的 $S-$结构，$\varphi(\overline x)$ 是 $S_{A}-$公式，$\alpha$ 是一个序数且 $\mathrm{RA}(\varphi(\overline{x}))=\alpha$，若存在 $d$ 个 $S_{A}-$公式 $\psi_{1}(\overline{x}), \cdots, \psi_{d}(\overline{x})$ 使得
    1. 对每个 $1 \leqslant i \leqslant d$，$\mathrm{RA}\left(\psi_{i}\right)=\alpha$
    2. 对每个 $1 \leqslant i \leqslant d$，$A \vDash \forall \overline{x}\left(\psi_{i}(\overline{x}) \rightarrow \varphi(\overline{x})\right)$
    3. 对每个 $1 \leqslant i<j \leqslant d$，$A \vDash \neg \exists \overline{x}\left(\psi_{i}(\overline{x}) \wedge \psi_{j}(\overline{x})\right)$

    则存在一个最大满足以上条件的正整数 $d$

    1. 称 $d$ 为 $\varphi$ 的 $\text{Morley}$ 度，记作 $\mathrm{d}A(\varphi)=d$
    2. 若 $X \subseteq A^{n}$ 是被一个 $S_{A}-$公式 $\alpha$ 定义的集合，则 $X$ 的 $\text{Morley}$ 度定义为 $\mathrm{d}A(\alpha)$，记作 $\mathrm{d}A(X)$

5. 设 $T$ 是 $\omega-$稳定理论，$A \vDash T, M \subseteq A$．对任意的 $p \in S_{n}(M)$
    1. 定义 $p$ 的 $\text{Morley}$ 秩为 $\operatorname{RM} (p) = \min\{\operatorname{RM}(\alpha) \mid \alpha$ 是一个 $S_A-$公式且 $\alpha \in p\}$
    2. 定义 $p$ 的 $\text{Morley}$ 度为 $\mathrm{d}A(p)=\min \left\{\mathrm{d}A(\alpha) \mid \alpha \right.$ 是一个 $S_{A}-$公式且 $\alpha \in p$ 且 $\left.\mathrm{RA}(\alpha)=\operatorname{RA}(p)\right\}$

    对任意 $\overline{b} \in A^{n}$，定义 $\mathrm{RA}(\overline{b} / M)=\mathrm{RA}\left(\operatorname{tp}_{A}(\overline{b} / M)\right), \operatorname{d}A(\overline{b} / M)= \mathrm{d}A\left(\operatorname{tp}_{A}(\overline{b} / M)\right)$

6. 设 $T$ 是一个可数理论，若对任意的基数 $\lambda \geqslant 2^{\omega}$，都有 $T$ 是 $\lambda-$稳定的，称 $T$ 是超稳定的
    1. 整数集上加法群的理论 $\operatorname{Th}(\mathbf{Z}, +, 0)$ 是超稳定的，但不是 $\omega-$稳定的
    2. 设 $T$ 是 $\omega-$稳定理论，$A \vDash T, M \subseteq A, p(\overline{x}) \in S_{n}(M, A)$．如果 $\alpha(\overline{x}) \in p$ 使得 $(\operatorname{RA}(\alpha), \mathrm{d}A(\alpha))=(\operatorname{RA}(p), \mathrm{d}A(p))$，则 $p$ 被 $\alpha$ 确定：对任意的 $S_{M}-$公式 $\beta$，有 $\beta \in p$ 当且仅当 $(\operatorname{RA}(\alpha), \mathrm{d}A(\alpha))=(\operatorname{RA}(\alpha \wedge \beta), \mathrm{d}A(\alpha \wedge \beta))$
    3. 如果理论 $T$ 是 $\omega-$稳定的，$A \vDash T$，则 $A$ 中的不可辨元序列均是完全不可辨的

7. 设 $A \vDash T$，如果一个 $S_{A}-$公式集 $\Gamma=\left\{\alpha_{\eta}(\overline{x}) \mid \eta \in 2^{<\omega}\right\}$ 满足
    1. 对任意的 $\eta \in 2^{<\omega}, T \cup \alpha_{\eta}$ 一致
    2. 对任意的 $\eta \in 2^{<\omega}, A \vDash \forall \overline{x}\left(\alpha_{\eta \frown i} \rightarrow \alpha_{\eta}\right)$，其中 $i=0,1$
    3. 对任意的 $\eta \in 2^{<\omega}, A \vDash \neg \exists \overline{x}\left(\alpha_{\eta \frown 0} \wedge \alpha_{\eta \frown 1}\right)$

    则称 $\Gamma$ 是一个 $S_{A}-$公式关于 $T$ 的二叉树．如果对于 $T$ 的任意模型 $A$，都不存在 $S_{A}-$公式的二叉树，则称 $T$ 是完全超越的

    1. 一个可数理论 $T$ 是完全超越的当且仅当 $T$ 是 $\omega-$稳定的，即完全超越的理论就是对任意的无穷基数 $\lambda$ 都是 $\lambda-$稳定的理论
    2. 设 $T$ 是 $\omega-$稳定理论，则对任意无穷基数 $\kappa$ 以及任意正则基数 $\lambda \leqslant \kappa$，$T$ 都有一个基数为 $\kappa$ 的 $\lambda-$饱和模型

### 3.2.3 强极小理论
1. 设 $A$ 是一个 $S-$结构，称一个 $A-$可定义集合 $X \subseteq A$ 是强极小当且仅当对任意 $A-$可定义子集 $Y \subseteq X$，都有 $Y$ 有限或余有限
    1. 一个理论 $T$ 是强极小理论当且仅当对每个 $A \vDash T$，$A$ 作为（$x=x$ 定义的）可定义集是强极小的
    2. $T$ 是 $\omega-$稳定的理论当且仅当与以下命题等价
        1. 对任意的模型 $A \vDash T$ 以及任意的 $S_{A}-$公式 $\alpha(\overline{x})$，都有 $\mathrm{RA}(\alpha(\overline{x}))<\infty$（等价地，$\operatorname{RA}(\overline{x}=\overline{x})<\infty$）
        2. 对任意的 $\lambda \geqslant \omega$，$T$ 是 $\lambda-$稳定的
