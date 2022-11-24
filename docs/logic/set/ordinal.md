# 2 序数与基数

## 2.1 序数理论
### 2.1.1 良序集
1. 前段：令 $(L, <)$ 为全序，$S$ 是 $L$ 的子集．如果对每一 $a \in S$，所有 $L$ 中小于 $a$ 的元素也都属于 $S$，则称 $S$ 是 $L$ 的前段，不等于 $L$ 的前段称为真前段
    1. 如果 $(W, <)$ 是良序且 $S$ 是 $W$ 的真前段，则存在 $a \in W$ 满足 $S=\{x \in W \mid x<a\}$．此时称 $W[a]=\{x \in W \mid x<a\}$ 为由 $a$ 给定的 $W$ 的真前段．特别地，如果 $a$ 是 $W$ 的最小元，则 $W[a]=\varnothing$
    2. 如果 $(W, <)$ 是良序，$f: W \rightarrow W$ 是递增映射，则对所有的 $x \in W$ 都有 $f(x) \geqslant x$
2. 良序集：集合 $W$ 上的全序 $\leqslant$ 若有良基性，即 $W$ 的每一非空子集都有最小元，则称 $\leqslant$ 为 $W$ 上的良序，记作 $(W, \leqslant)$
    1. 良序集的同构性
        1. 没有良序集同构于自已的真前段
        2. 任意良序集都只有一个自同构，即等同映射
        3. 如果 $W_{1}$ 和 $W_{2}$ 是同构的良序集，则其间的同构唯一
    2. 良序集的和与积
        1. 令 $\left(W_{1},<_{1}\right)$ 与 $\left(W_{2},<_{2}\right)$ 为良序集且 $W_{1} \cap W_{2}=\varnothing$，则如下定义的 $W=W_{1} \cup W_{2}$ 上的关系 $<$ 是良序

            $$
            \begin{array}{ll}
            u<v \quad \textsf { 当且仅当 } & u, v \in W_{1} \wedge u<_{1} v \\
            & \textsf {或 } u, v \in W_{2} \wedge u<_{2} v \\
            & \textsf {或 } u \in W_{1}, v \in W_{2} \text { 。 }
            \end{array}
            $$

            称良序集 $(W,<)$ 是 $\left(W_{1},<_{1}\right)$ 与 $\left(W_{2},<_{2}\right)$ 的和，记做 $\left(W_{1},<_{1}\right)+\left(W_{2},<_{2}\right)$ 或 $\left(W_{1} \cup W_{2},<_{1}+<_{2}\right)$

        2. 令 $\left(W_{1},<_{1}\right)$ 和 $\left(W_{2},<_{2}\right)$ 为良序集, 则如下定义的 $W=W_{1} \times W_{2}$ 上的关系 $<$ 是良序

            $$
            \left(u_{1}, u_{2}\right)<\left(v_{1}, v_{2}\right)
            \leftrightarrow
            u_{2}<_{2} v_{2}
            \vee (u_{2}=v_{2} \wedge u_{1}<_{1} v_{1})
            $$

            称良序集 $(W,<)$ 是 $\left(W_{1},<_{1}\right)$ 与 $\left(W_{2},<_{2}\right)$ 的积，记做 $\left(W_{1},<_{1}\right) \times\left(W_{2},<_{2}\right)$ 或 $\left(W_{1} \times W_{2},<_{1} \times<_{2}\right)$

3. 良序集基本定理：如果 $\left(W_{1},<_{1}\right)$ 和 $\left(W_{2},<_{2}\right)$ 为良序集，则以下条件恰有一个成立
    1. $W_{1}$ 与 $W_{2}$ 同构
    2. $W_{1}$ 与 $W_{2}$ 的前段同构
    3. $W_{2}$ 与 $W_{1}$ 的前段同构

### 2.1.2 序数
1. 序数：满足以下条件的集合 $\alpha$ 称为序数
    1. $\alpha$ 是传递的，即 $\alpha$ 的元素都是其子集
    2. $\in$ 是 $\alpha$ 上的良序

    定义 $\alpha < \beta$ 当且仅当 $\alpha \in \beta$

    1. 如果 $\alpha$ 是序数，则 $\alpha$ 的后继 $\alpha^{+} = \alpha \cup \{\alpha\}$ 也是序数
        1. 如果不为 $0$ 的序数 $\alpha$ 有 $\exists \beta \ (\alpha = \beta^{+})$，则称 $\alpha$ 为后继序数，否则称 $\alpha$ 为极限序数．$\mathbf N$ 是首个极限序数，因此作为序数的 $\mathbf N$ 通常记作 $\omega$
        2. 自然数恰好就是有穷序数，大于等于 $\omega$ 的序数称为无穷序数
    2. 序数的性质
        1. 如果 $\alpha$ 是序数，则 $\alpha$ 的所有元素是序数，所以 $\alpha=\{\beta \mid \beta<$ $\alpha \wedge \beta$ 是序数$\}$
        2. 如果 $\alpha$ 是序数且 $B \subseteq \alpha$ 是传递集，则 $B$ 是序数且 $B \in \alpha$．特别地，对任意序数 $\alpha, \beta$，如果 $\beta \subseteq \alpha$，则 $\beta \in \alpha$
        3. 对任意序数的集合 $X$，$\bigcup X$ 是序数且 $\bigcup X=\sup (X)$；若 $X \neq \varnothing$，则 $\bigcap X$ 是序数且 $\bigcap X=\inf (X)$
        4. 序数间的 $<$ 关系具有良序性质，因此任意非空的序数集合都在 $<$ 下是良序集
    3. 序型：假设 $(X, R)$ 是良序集，定义其序型为与其同构的唯一序数，记作 $\operatorname{type}(X, R)$ 或 $\operatorname{type}(X)$

        !!! note "序数类"
            全体序数构成一个真类，记作 $\mathbf{On}$，「$\alpha$ 是序数」可简写作 $\alpha \in \mathbf{On}$

2. 序数的算术
    1. 序数的加法：对所有序数 $\beta$
        1. 定义 $\beta+0=\beta, \beta+1=\beta^{+}$
        2. 对任意序数 $\alpha$，都有 $\beta+(\alpha+1)=(\beta+\alpha)+1$
        3. 对任意极限序数 $\alpha$，都有 $\beta+\alpha=\sup \{\beta+\gamma \mid \gamma<\alpha\}$

        对任意序数 $\alpha, \beta$，都有 $\alpha+\beta=\alpha \cup\{\alpha+\delta \mid \delta<\beta\}$

        4. 令 $\left(W_{1},<_{1}\right),\left(W_{2},<_{2}\right)$ 为良序集，分别与 $\alpha_{1}, \alpha_{2}$ 同构．令 $(W,<)=\left(W_{1} \cup W_{2},<_{1}+<_{2}\right)$ 是 $W_1$ 与 $W_2$ 的和，则 $(W,<)$ 与 $\alpha_{1}+\alpha_{2}$ 同构
            - 如果 $\alpha_{1}, \alpha_{2}$ 和 $\beta$ 是序数，则 $\beta+\alpha_{1}<\beta+\alpha_{2}$ 当且仅当 $\alpha_{1}<\alpha_{2}$
            - 对所有的序数 $\alpha_{1}, \alpha_{2}$ 和 $\beta$，都有 $\beta+\alpha_{1}=\beta+\alpha_{2}$ 当且仅当 $\alpha_{1}=\alpha_{2}$
            - 对所有的序数 $\alpha, \beta, \gamma$，都有 $(\alpha+\beta)+\gamma=\alpha+(\beta+\gamma)$
        5. 对任意序数 $\alpha, \beta$，如果 $\alpha<\beta$，则存在唯一的序数 $\gamma$ 使得 $\alpha+\gamma=\beta$

    2. 序数的乘法：对所有序数 $\beta$
        1. 定义 $\beta \cdot 0=0$
        2. 对任意序数 $\alpha$，都有 $\beta \cdot(\alpha+1)=\beta \cdot \alpha+\beta$
        3. 对任意极限序数 $\alpha$，都有 $\beta \cdot \alpha=\sup \{\beta \cdot \gamma \mid \gamma<\alpha\}$

        对任意序数 $\alpha, \beta$，都有 $\alpha \cdot \beta=\{\alpha \cdot \xi+\eta \mid \xi<\beta \wedge \eta<\alpha\}$

        4. 对任意序数 $\alpha, \beta$，序数 $\alpha \cdot \beta$ 与集合 $\alpha \times \beta$ 同构
        5. 对任意序数 $\alpha, \beta, 1 \leqslant \alpha<\beta$，存在唯一的序数的有序对 $(\xi, \eta)$ 使得 $\eta<\alpha$ 且 $\beta=\alpha \cdot \xi+\eta$

    3. 序数的幂：对所有序数 $\beta$
        1. 定义 $\beta^{0}=1$
        2. 对任意序数 $\alpha$，都有 $\beta^{\alpha+1}=\beta^{\alpha} \cdot \beta$
        3. 对任意极限序数 $\alpha$，都有 $\beta^{\alpha}=\sup \left\{\beta^{\gamma} \mid \gamma<\alpha\right\}$

    4. $\text{Cantor}$ 正则形式：令 $\alpha, \beta$ 为序数且 $1<\alpha, 1 \leqslant \beta$．则 $\beta$ 可以唯一地表示为以下形式

        $$
        \beta=\alpha^{\gamma_{0}} \cdot \delta_{0}+\cdots+\alpha^{\gamma_{k-1}} \cdot \delta_{k-1}
        $$

        其中 $k \in \omega$，$\delta_{i}$ 和 $\gamma_{i}$ 都是序数且 $\gamma_{0}>\cdots>\gamma_{k-1}$

3. 超穷归纳与递归
    1. 第一形式超穷归纳原理：令 $\varphi(x)$ 为一个谓词．假设对所有的序数 $\alpha$，都有

        $$
        (\forall \beta < \alpha \ (\varphi(\beta))) \to \varphi(\alpha)
        $$

        则 $\varphi(\alpha)$ 对所有的序数 $\alpha$ 都成立

    2. 第二形式超穷归纳原理：令 $\varphi(x)$ 为一个谓词，假设
        1. $\varphi(0)$ 成立
        2. 对所有后继序数 $\alpha$，$\varphi(\alpha) \to \varphi(\alpha^{+})$
        3. 对所有极限序数 $\alpha \neq 0$, 如果对所有 $\beta<\alpha$，$\varphi(\beta)$ 都成立，则 $\varphi(\alpha)$ 成立

        则对所有的 $\alpha$，都有 $\varphi(\alpha)$

    3. 超穷递归定理：假设 $\mathbf{G}: \mathbf{V} \rightarrow \mathbf{V}$ 为映射，则存在唯一的映射 $\mathbf{F}: \mathbf{O n} \rightarrow \mathbf{V}$ 满足对任意序数 $\alpha$，都有 $\mathbf{F}(\alpha)=\mathbf{G}(\mathbf{F}\upharpoonright \alpha)$
        1. 令 $\mathbf{G}: \mathbf{V} \rightarrow \mathbf{V}$ 为映射, 则存在运算 $\mathbf F: \mathbf V \times \mathbf{On} \rightarrow \mathbf V$ 满足对所有的集合 $z$ 和序数 $\alpha$，都有 $\mathbf{F}(z, \alpha)=\mathbf{G}\left(\mathbf{F}_{z} \upharpoonright \alpha\right)$
        2. 令 $\mathbf G_{1}, \mathbf G_{2}, \mathbf G_{3}$ 为 $\mathbf V$ 上的映射，则存在 $\mathbf{On}$ 上的映射 $\mathbf F$ 满足

            $$
            \begin{aligned}
            \mathbf{F}(0) &=\mathbf{G}_{1}(\varnothing) \\
            \mathbf{F}(\alpha+1) &=\mathbf{G}_{2}(\mathbf{F}(\alpha)) \\
            \mathbf{F}(\alpha) &=\mathbf{G}_{3}(\mathbf{F} \upharpoonright \alpha)
            \textsf { 对所有的极限 } \alpha
            \end{aligned}
            $$

    !!! note "$\text{Hartogs}$ 数"
        对任意集合 $X$，存在一个序数 $H(X)$，其不与 $X$ 的任何子集等势，并且是具有如此性质的最小序数．称 $H(X)$ 为 $X$ 的 $\text{Hartogs}$ 数

## 2.2 势与基数
### 2.2.1 势
1. 如果存在一个以集合 $X$ 为定义域，以集合 $Y$ 为值域的双射，则称集合 $X$ 与 $Y$ 等势，记作 $|X| = |Y|$ 或 $X \approx Y$；如果存在集合 $X$ 到 $Y$ 的单射，则称 $X$ 的势小于等于 $Y$ 的势，记作 $|X| \leqslant |Y|$ 或 $X \preccurlyeq Y$
    1. 定义 $|X| < |Y| = |X| \leqslant |Y| \wedge |X| \neq |Y|$
    2. 关系 $\approx$ 是一个等价关系；关系 $\preccurlyeq$ 是一个偏序关系
    3. 势的比较
        1. 如果 $X \subseteq Y$，则 $|X| \leqslant |Y|$ 且 $\exists Z \subseteq Y \ (|X| = |Z|)$
        2. $\text{Zermelo}$ 定理：$|X| < |Y| \vee |X| = |Y| \vee |Y| < |X|$
        3. $\text{Cantor} - \text{Bernstein}$ 定理：如果 $|X| \leqslant |Y| \wedge |Y| \leqslant |X|$，则 $|X| = |Y|$
2. 有穷集与无穷集：对于任意集合 $X$，如果存在 $n \in \mathbf N$，使得 $|X| = |n|$，则称 $X$ 是有穷的，否则称 $X$ 是无穷的
    1. 集合 $X$ 是有穷的等价于以下三个命题
        1. 存在 $X$ 上的全序 $\leqslant$ 满足 $X$ 的每一非空子集在 $\leqslant$ 下有最大元和最小元
        2. $X$ 的每一非空子集族都有 $\subseteq$ 关系下的极大元
        3. $X$ 是 $\text{Dedekind}$ 有穷的，即不存在由 $X$ 到其真子集的双射
    2. 无穷集的性质
        1. 每一无穷集合都有一个可数子集，可数集的任何无穷子集都是可数集
        2. 无穷集是 $\text{Dedekind}$ 无穷的，即存在由 $X$ 到其真子集的双射
3. 如果 $|X| = |\mathbf N|$，则称 $X$ 是可数的或可数无穷的，不是可数集的无穷集合被称作不可数的，有穷集或可数集称作至多可数的
    1. 可数集的性质
        1. 可数集增加或减少有限个元素后，得到的集合仍是可数集
        2. 如果 $A_1, A_2, \cdots, A_n, \cdots$ 都是可数的，则 ${\displaystyle \bigcup_{k \leqslant n}} A_k$ 是可数的且 ${\displaystyle \bigcup_{n \in \mathbf N}} A_n$ 也是可数的
        3. 如果 $A_1, A_2, \cdots, A_n, \cdots$ 都是可数的，则 $A_1 \times A_2 \times \cdots \times A_n$ 是可数的，但 $A_1 \times A_2 \times \cdots \times A_n \times \cdots$ 是不可数的
        4. 如果 $A$ 是可数的，则 $A^{< \mathbf N}$  与$A$ 的所有有穷子集组成的集合都是可数的
        5. 如果 $A$ 是可数的，则 $A$ 上等价关系的等价类是至多可数的
    2. 可数集与不可数集合例举
        1. $\text{Cantor}$ 定理：$2^{\mathbf N}$ 是不可数的
        2. 自然数集合 $\mathbf N$ 、整数集合 $\mathbf Z$ 与有理数集合 $\mathbf Q$ 是可数的，实数集合 $\mathbf R$ 是不可数的
        3. 有限小数是可数的，无限小数是不可数的

### 2.2.2 基数
1. 基数：集合 $A$ 的基数 $|A|$ 定义为与其等势的最小的序数
    1. 对任意序数 $\alpha$, 以下条件等价
        1. $\alpha$ 是基数
        2. $|\alpha|=\alpha$
        3. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $\beta<|\alpha|$
        4. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $|\beta|<|\alpha|$
        5. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $|\beta| \neq|\alpha|$

        一个序数是某个集合的基数当且仅当不存在比它小的序数与其等势，称这样的序数为前段序数

    2. $\text{Cantor}$ 定理：对任意集合 $X$ 都有 $|X|<|\mathcal{P}(X)|$
        1. 对任何基数 $\lambda$，都存在一个大于它的最小基数，记作 $\lambda^{+}$
        2. 如果 $K$ 是基数的集合，则 $\alpha=\bigcup K$ 是基数
    3. 基数的分类
        1. 如果 $\lambda=\kappa^{+}$，则称 $\lambda$ 为后继基数．如果 $\lambda \geqslant \omega$ 且不是后继基数，则称 $\lambda$ 为极限基数
        2. 自然数恰好就是有穷基数，大于等于 $\omega$ 的基数称为无穷基数

            !!! note "无穷基数的表示"
                无穷基数一定是极限序数．通常用字符 $\aleph$ 或 $\omega$ 表示无穷基数，从第一个无穷基数开始分别记作 $\aleph_{0}, \aleph_{1}, \aleph_{2}, \cdots$ 或 $\omega_{0}, \omega_{1}, \omega_{2}, \cdots$．对任意序数 $\alpha$，递归定义 $\omega_{\alpha}$ 与 $\aleph_{\alpha}$ 如下：

                1. $\omega_{0}=\aleph_{0}=\omega$
                2. $\omega_{\alpha+1}=\aleph_{\alpha+1}=\aleph_{\alpha}^{+}$
                3. 对极限序数 $\gamma$，有 $\omega_{\gamma}=\aleph_{\gamma}=\sup \left\{\aleph_{\alpha} \mid \alpha<\gamma\right\}$

                $\aleph_{\alpha}$ 恰好表示「第 $\alpha$ 个无穷基数」，由以下定理保证：

                1. 对任意 $\alpha$，$\aleph_{\alpha}$ 是无穷基数
                2. 对任意无穷基数 $\kappa$，存在 $\alpha$ 使得 $\kappa=\aleph_{\alpha}$

2. 基数的有穷算术
    1. 基数的加法：定义 $\kappa \oplus \lambda=|A \cup B|$，其中 $\kappa=|A|, \lambda=|B|$ 且 $A \cap B=\varnothing$
        1. 对加法的定义不依赖于 $A, B$ 的选择：如果 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，而且 $A \cap B=A^{\prime} \cap B^{\prime}=\varnothing$，则 $|A \cup B|=\left|A^{\prime} \cup B^{\prime}\right|$
        2. 基数加法的性质
            - 交换律：$\kappa \oplus \lambda=\lambda \oplus \kappa$
            - 结合律：$\kappa \oplus(\lambda \oplus \mu)=(\kappa \oplus \lambda) \oplus \mu$
            - $\kappa \leqslant \kappa \oplus \lambda$
            - 若 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1} \oplus \lambda_{1} \leqslant \kappa_{2} \oplus \lambda_{2}$
    2. 基数的乘法：定义 $\kappa \otimes \lambda=|A \times B|$，其中 $|A|=\kappa, |B|=\lambda$
        1. 对乘法的定义不依赖于 $A, B$ 的选择：如果 $A, B, A^{\prime}, B^{\prime}$ 满足 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，则 $|A \times B|=$ $\left|A^{\prime} \times B^{\prime}\right|$
        2. 基数乘法的性质
            - 交换律：$\kappa \otimes \lambda=\lambda \otimes \kappa$
            - 结合律：$\kappa \otimes(\lambda \otimes \mu)=(\kappa \otimes \lambda) \otimes \mu$
            - 分配律：$\kappa \otimes(\lambda \oplus \mu)=\kappa \otimes \lambda \oplus \kappa \otimes \mu$
            - 如果 $\lambda>0$，则 $\kappa \leqslant \kappa \otimes \lambda$
            - 如果 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1} \otimes \lambda_{1} \leqslant \kappa_{2} \otimes \lambda_{2}$
            - $\kappa \oplus \kappa=2 \otimes \kappa$．如果 $\kappa \geqslant 2$，则 $\kappa \oplus \kappa \leqslant \kappa \otimes \kappa$
        3. 对任意无穷基数 $\kappa, \lambda$ 均有

            $$
            \begin{aligned}
            & \kappa \otimes \kappa=\kappa \\
            & \kappa \oplus \lambda=\kappa \otimes \lambda=\max (\kappa, \lambda)
            \end{aligned}
            $$

    3. 基数的幂：定义 $\kappa^{\lambda}=\left|A^{B}\right|$，其中 $|A|=\kappa$ 且 $|B|=\lambda$
        1. 对幂的定义不依赖于 $A, B$ 的选择：如果 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，则 $\left|A^{B}\right|=\left|A^{\prime B^{\prime}}\right|$
        2. 基数幂的性质
            - 如果 $\lambda>0$，则 $\kappa \leqslant \kappa^{\lambda}$
            - 如果 $\kappa>1$，则 $\lambda \leqslant \kappa^{\lambda}$
            - 如果 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1}^{\lambda_{1}} \leqslant \kappa_{2}^{\lambda_{2}}$
            - $\kappa \otimes \kappa=\kappa^{2}$
        3. 假设 $\kappa, \lambda$ 是无穷基数，则
            - $\kappa^{\lambda \oplus \mu}=\kappa^{\lambda} \otimes \kappa^{\mu}$
            - $\left(\kappa^{\lambda}\right)^{\mu}=\kappa^{\lambda \otimes \mu}$
            - $(\kappa \otimes \lambda)^{\mu}=\kappa^{\mu} \otimes \lambda^{\mu}$
            - $2^{\kappa}>\kappa$
            - 如果 $\kappa \leqslant \lambda$，则 $\kappa^{\lambda}=2^{\lambda}$
    4. 基数与序列：对任意无穷基数 $\kappa, \lambda$
        - $\kappa^{<\lambda}=\sup \left\{\kappa^{\eta} \mid \eta\right.$ 是基数且 $\left.\eta<\lambda\right\}$
        - 若 $\lambda \leqslant \kappa$, 则 $[\kappa]^{\lambda}=\kappa^{\lambda}$
        - 若 $\lambda \leqslant \kappa$, 则 $[\kappa]^{<\lambda}=\kappa^{<\lambda}$

3. 共尾：对任意序数 $\alpha$，若 $\operatorname{cf}(\alpha)$ 是满足性质「存在映射 $f: \beta \rightarrow \alpha$ 使得 $f[\beta]$ 在 $\alpha$ 中无界」的最小序数 $\beta$，则称映射 $f$ 为共尾映射，$\operatorname{cf}(\alpha)$ 为 $\alpha$ 的共尾．对任何序数 $\alpha$，若 $\operatorname{cf}(\alpha)=\alpha$，则称 $\alpha$ 是正则的，非正则的序数称为奇异的

    !!! note "序数的无界性"
        设 $A$ 是序数 $\alpha$ 的子集，如果 $A$ 满足 $\forall \gamma<\alpha \ \exists \xi \in A \ (\gamma \leqslant \xi)$，则称 $A$ 在 $\alpha$ 中是无界的

    1. 共尾的性质
        1. $A \subset \alpha$ 是无界的当且仅当 $\alpha=\bigcup\{\xi+1 \mid \xi \in A\}$，因此对任意序数，如果 $f: \operatorname{cf}(\alpha) \rightarrow \alpha$ 是共尾映射，则 $\bigcup_{\xi<\mathrm{cf}(\alpha)}[f(\xi)+1]=\alpha$
        2. 对任意序数 $\alpha$ 都有 $\operatorname{cf}(\alpha) \leqslant \alpha$
        3. 任意后继序数 $\alpha=\beta+1$ 的共尾是 $1$
        4. 任意极限序数 $\alpha>0$ 都有 $\operatorname{cf}(\alpha) \geqslant \omega$
    2. 对任意极限序数 $\alpha$ 都有 $\operatorname{cf}(\operatorname{cf}(\alpha))=\operatorname{cf}(\alpha)$
        1. 任意序数的共尾都是正则的，又因为所有正则的序数都是基数，所以任意一个序数的共尾都是基数
        2. 对任何极限序数 $\alpha$ 都存在一个严格递增的共尾映射 $f: \operatorname{cf}(\alpha) \rightarrow$ $\alpha_{\circ}$
        3. 假设 $\gamma$ 是极限序数，$\left\langle\alpha_{\xi} \mid \xi<\gamma\right\rangle$ 是序数的严格递增序列且 $\alpha$ 是其极限，则 $\operatorname{cf}(\alpha)=\operatorname{cf}(\gamma)$
    3. 对任意无穷基数 $\kappa$，$\kappa^{+}$ 是正则的
        1. 任何奇异的基数都是极限基数
        2. 对任意无穷基数，总存在比它大的奇异基数
        3. 一个极限基数是正则基数的必要条件是 $\alpha=\aleph_{\alpha}$
    4. $\text{Konig}$ 引理：对任何无穷基数 $\kappa$，都有 $\kappa^{\mathrm{cf}(\kappa)}>\kappa$
        1. 对任意序数 $\alpha$ 都有 $\operatorname{cf}(2^{\aleph_{\alpha}})>\aleph_{\alpha}$
        2. 对任意序数 $\alpha, \beta$ 都有 $\operatorname{cf}(\aleph_{\alpha}^{\aleph_{\beta}})>\aleph_{\beta}$

4. 基数的无穷算术
5. 不可达基数
    1. 弱不可达基数：正则的极限基数，在 $\mathbf{ZFC}$ 下不能证明存在这样的基数
    2. 强不可达基数：强极限的正则基数，在 $\mathbf{ZFC}$ 下不能证明存在这样的基数
        - 令 $\kappa, \lambda$ 为基数且 $\lambda<\kappa$．若对任意 $\mu<\kappa$ 都有 $\mu^{\lambda}<\kappa$，则称 $\kappa$ 是 $\lambda-$强的；若对任意 $\lambda<\kappa$，$\kappa$ 都是 $\lambda-$强的，则称 $\kappa$ 是是强极限的
