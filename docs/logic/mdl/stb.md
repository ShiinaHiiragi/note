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

### 3.2.3 稳定理论

### 3.2.4 分叉性
