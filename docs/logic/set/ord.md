# 3 序数与基数

## 3.1 序数理论
### 3.1.1 良序集
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
            & \textsf {或 } u \in W_{1}, v \in W_{2}
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

### 3.1.2 序数
1. 序数：满足以下条件的集合 $\alpha$ 称为序数
    1. $\alpha$ 是传递的，即 $\alpha$ 的元素都是其子集
    2. $\in$ 是 $\alpha$ 上的良序

    定义 $\alpha < \beta$ 当且仅当 $\alpha \in \beta$

    1. 如果 $\alpha$ 是序数，则 $\alpha$ 的后继 $\alpha^{+} = \alpha \cup \{\alpha\}$ 也是序数
        1. 如果不为 $0$ 的序数 $\alpha$ 有 $\exists \beta \ (\alpha = \beta^{+})$，则称 $\alpha$ 为后继序数，否则称 $\alpha$ 为极限序数
            1. $\mathbf N$ 是首个极限序数，因此作为序数的 $\mathbf N$ 通常记作 $\omega$
            2. 所有的序数都是 $0$、后继序数与极限序数中的一种
        2. 自然数恰好就是有穷序数，大于等于 $\omega$ 的序数称为无穷序数
    2. 序数的性质
        1. 如果 $\alpha$ 是序数，则 $\alpha$ 的所有元素是序数，所以 $\alpha=\{\beta \mid \beta<$ $\alpha \wedge \beta$ 是序数$\}$
        2. 如果 $\alpha$ 是序数且 $B \subseteq \alpha$ 是传递集，则 $B$ 是序数且 $B \in \alpha$．特别地，对任意序数 $\alpha, \beta$，如果 $\beta \subseteq \alpha$，则 $\beta \in \alpha$
        3. 对任意序数的集合 $X$，$\bigcup X$ 是序数且 $\bigcup X=\sup (X)$；若 $X \neq \varnothing$，则 $\bigcap X$ 是序数且 $\bigcap X=\inf (X)$
        4. 序数间的 $<$ 关系具有良序性质，因此任意非空的序数集合都在 $<$ 下是良序集
    3. 序型：假设 $(X, R)$ 是良序集，定义其序型为与其同构的唯一序数，记作 $\operatorname{type}(X, R)$ 或 $\operatorname{type}(X)$
    4. 序数类：全体序数构成一个真类，记作 $\mathbf{On}$，「$\alpha$ 是序数」可简写作 $\alpha \in \mathbf{On}$

2. 序数的算术
    1. 序数的加法：对所有序数 $\beta$
        1. 定义 $\beta+0=\beta, \beta+1=\beta^{+}$
        2. 对任意序数 $\alpha$，都有 $\beta+(\alpha+1)=(\beta+\alpha)+1$
        3. 对任意极限序数 $\alpha$，都有 $\beta+\alpha=\sup \{\beta+\gamma \mid \gamma<\alpha\}$

        对任意序数 $\alpha, \beta$，都有 $\alpha+\beta=\alpha \cup\{\alpha+\delta \mid \delta<\beta\}$

        4. 令 $\left(W_{1},<_{1}\right),\left(W_{2},<_{2}\right)$ 为良序集，分别与 $\alpha_{1}, \alpha_{2}$ 同构．令 $(W,<)=\left(W_{1} \cup W_{2},<_{1}+<_{2}\right)$ 是 $W_1$ 与 $W_2$ 的和，则 $(W,<)$ 与 $\alpha_{1}+\alpha_{2}$ 同构
            1. 如果 $\alpha_{1}, \alpha_{2}$ 和 $\beta$ 是序数，则 $\beta+\alpha_{1}<\beta+\alpha_{2}$ 当且仅当 $\alpha_{1}<\alpha_{2}$
            2. 对所有的序数 $\alpha_{1}, \alpha_{2}$ 和 $\beta$，都有 $\beta+\alpha_{1}=\beta+\alpha_{2}$ 当且仅当 $\alpha_{1}=\alpha_{2}$
            3. 对所有的序数 $\alpha, \beta, \gamma$，都有 $(\alpha+\beta)+\gamma=\alpha+(\beta+\gamma)$
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

3. 超限归纳与递归
    1. 第一形式超限归纳原理：令 $\varphi(x)$ 为一个谓词．假设对所有的序数 $\alpha$，都有

        $$
        (\forall \beta < \alpha \ (\varphi(\beta))) \to \varphi(\alpha)
        $$

        则 $\varphi(\alpha)$ 对所有的序数 $\alpha$ 都成立

    2. 第二形式超限归纳原理：令 $\varphi(x)$ 为一个谓词，假设
        1. $\varphi(0)$ 成立
        2. 对所有后继序数 $\alpha$，$\varphi(\alpha) \to \varphi(\alpha^{+})$
        3. 对所有极限序数 $\alpha \neq 0$, 如果对所有 $\beta<\alpha$，$\varphi(\beta)$ 都成立，则 $\varphi(\alpha)$ 成立

        则对所有的 $\alpha$，都有 $\varphi(\alpha)$

    3. 超限递归定理：假设 $\mathbf{G}: \mathbf{V} \rightarrow \mathbf{V}$ 为映射，则存在唯一的映射 $\mathbf{F}: \mathbf{O n} \rightarrow \mathbf{V}$ 满足对任意序数 $\alpha$，都有 $\mathbf{F}(\alpha)=\mathbf{G}(\mathbf{F}\upharpoonright \alpha)$
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

4. $\text{Goodstein}$ 定理：对任意 $m$，存在 $n \geqslant 1$ 使得 $g_{n}(m)=0$
    1. 对任意自然数 $n \geqslant 2$，定义 $S_{n}$ 如下

        $$
        S_{n}(m) = \left\{\begin{aligned}
        & m, & m < n \\
        & k \cdot(n+1)^{S_{n}(t)}+S_{n}(b), & m \geqslant n \wedge m=k \cdot n^{t}+b, k<n, b<n^{t}, t \geqslant 1
        \end{aligned}\right.
        $$

    2. 对任意自然数 $n \geqslant 2$，定义 $f_{n}$ 如下

        $$
        \begin{aligned}
        & f_{n}(k)=k, & k<n \\
        & f_{n}(m)=\omega^{f_{n}(t)} \cdot k+f_{n}(b), & m \geqslant n \wedge m=k \cdot n^{t}+b,k<n, b<n^{t}, t \geqslant 1
        \end{aligned}
        $$

    3. 对任意自然数 $n \geqslant 1$ 定义 $g_{n}$ 如下

        $$
        \begin{aligned}
        g_{1}(m) &=m \\
        g_{n+1}(m) &= \left\{\begin{aligned}
        & S_{n+1}\left(g_{n}(m)\right)-1, & g_{n}(m)>0 \\
        & 0, & \textsf{否则}
        \end{aligned}\right.
        \end{aligned}
        $$

## 3.2 基数理论
### 3.2.1 势
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
        4. 如果 $A$ 是可数的，则 $A^{< \mathbf N}$  与 $A$ 的所有有穷子集组成的集合都是可数的
        5. 如果 $A$ 是可数的，则 $A$ 上等价关系的等价类是至多可数的
    2. 可数集与不可数集合例举
        1. $\text{Cantor}$ 定理：$2^{\mathbf N}$ 是不可数的
        2. 自然数集合 $\mathbf N$ 、整数集合 $\mathbf Z$ 与有理数集合 $\mathbf Q$ 是可数的，实数集合 $\mathbf R$ 是不可数的
        3. 有限小数是可数的，无限小数是不可数的

### 3.2.2 基数
1. 基数：集合 $A$ 的基数 $|A|$ 定义为与其等势的最小序数
    1. 对任意序数 $\alpha$, 以下条件等价
        1. $\alpha$ 是基数
        2. $|\alpha|=\alpha$
        3. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $\beta<|\alpha|$
        4. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $|\beta|<|\alpha|$
        5. 对任意序数 $\beta$，如果 $\beta<\alpha$，则 $|\beta| \neq|\alpha|$

        一个序数是某个集合的基数当且仅当不存在比它小的序数与其等势，称这样的序数为前段序数

    2. $\text{Cantor}$ 定理：对任意集合 $X$ 都有 $|X|<|\mathcal{P}(X)|$
        1. 对任何基数 $\lambda$，都存在一个大于它的最小基数，记作 $\lambda^{+}$，称其为 $\lambda$ 的 $\text{Hartogs}$ 数
        2. 如果 $K$ 是基数的集合，则 $\alpha=\bigcup K$ 是基数
    3. 基数的分类
        1. 如果 $\lambda=\kappa^{+}$，则称 $\lambda$ 为后继基数．如果 $\lambda \geqslant \omega$ 且不是后继基数，则称 $\lambda$ 为极限基数
        2. 自然数恰好就是有穷基数，大于等于 $\omega$ 的基数称为无穷基数

            !!! note "无穷基数的表示"
                通常用字符 $\aleph$ 或 $\omega$ 表示无穷基数，从第一个无穷基数开始分别记作 $\aleph_{0}, \aleph_{1}, \aleph_{2}, \cdots$ 或 $\omega_{0}, \omega_{1}, \omega_{2}, \cdots$．对任意序数 $\alpha$，递归定义 $\omega_{\alpha}$ 与 $\aleph_{\alpha}$ 如下：

                1. $\omega_{0}=\aleph_{0}=\omega$ 为极限基数
                2. $\omega_{\alpha+1}=\aleph_{\alpha+1}=\aleph_{\alpha}^{+}$ 为后继基数
                3. 对极限序数 $\gamma$，有 $\omega_{\gamma}=\aleph_{\gamma}=\sup \left\{\aleph_{\alpha} \mid \alpha<\gamma\right\}$ 为极限基数

                无穷基数一定是极限序数，$\aleph_{\alpha}$ 恰好表示「第 $\alpha$ 个无穷基数」，由以下定理保证：

                1. 对任意 $\alpha$，$\aleph_{\alpha}$ 是无穷基数
                2. 对任意无穷基数 $\kappa$，存在 $\alpha$ 使得 $\kappa=\aleph_{\alpha}$

    4. 强极限基数：对任意 $\lambda<\kappa$，$\kappa$ 都是 $\lambda-$强（即对任意 $\mu < \kappa$ 都有 $\mu^{\lambda}<\kappa$）的

2. 基数的和与积
    1. 基数的加法：定义 $\kappa \oplus \lambda=|A \cup B|$，其中 $\kappa=|A|, \lambda=|B|$ 且 $A \cap B=\varnothing$
        1. 对加法的定义不依赖于 $A, B$ 的选择：如果 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，而且 $A \cap B=A^{\prime} \cap B^{\prime}=\varnothing$，则 $|A \cup B|=\left|A^{\prime} \cup B^{\prime}\right|$
        2. 基数加法的性质
            1. 交换律：$\kappa \oplus \lambda=\lambda \oplus \kappa$
            2. 结合律：$\kappa \oplus(\lambda \oplus \mu)=(\kappa \oplus \lambda) \oplus \mu$
            3. $\kappa \leqslant \kappa \oplus \lambda$
            4. 若 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1} \oplus \lambda_{1} \leqslant \kappa_{2} \oplus \lambda_{2}$
    2. 基数的乘法：定义 $\kappa \otimes \lambda=|A \times B|$，其中 $|A|=\kappa, |B|=\lambda$
        1. 对乘法的定义不依赖于 $A, B$ 的选择：如果 $A, B, A^{\prime}, B^{\prime}$ 满足 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，则 $|A \times B|=$ $\left|A^{\prime} \times B^{\prime}\right|$
        2. 基数乘法的性质
            1. 交换律：$\kappa \otimes \lambda=\lambda \otimes \kappa$
            2. 结合律：$\kappa \otimes(\lambda \otimes \mu)=(\kappa \otimes \lambda) \otimes \mu$
            3. 分配律：$\kappa \otimes(\lambda \oplus \mu)=\kappa \otimes \lambda \oplus \kappa \otimes \mu$
            4. 如果 $\lambda>0$，则 $\kappa \leqslant \kappa \otimes \lambda$
            5. 如果 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1} \otimes \lambda_{1} \leqslant \kappa_{2} \otimes \lambda_{2}$
            6. $\kappa \oplus \kappa=2 \otimes \kappa$．如果 $\kappa \geqslant 2$，则 $\kappa \oplus \kappa \leqslant \kappa \otimes \kappa$
        3. 对任意无穷基数 $\kappa, \lambda$ 均有

            $$
            \begin{aligned}
            & \kappa \otimes \kappa=\kappa \\
            & \kappa \oplus \lambda=\kappa \otimes \lambda=\max (\kappa, \lambda)
            \end{aligned}
            $$

3. 基数的无穷和与无穷积：假设 $\left\{\kappa_{i} \mid i \in I\right\}$ 为一集基数，$\left\{X_{i} \mid i \in I\right\}$ 为两两不交的集合族且对任意 $i \in I$ 都有 $\left|X_{i}\right|=\kappa_{i}$，则

    $$
    \begin{aligned}
    & \bigoplus_{i \in I} \kappa_{i}=\left|\bigcup_{i \in I} X_{i}\right| \\
    & \bigotimes_{i \in I} \kappa_{i}=\left|\prod_{i \in I} X_{i}\right|
    \end{aligned}
    $$

    由选择公理可以证明以上定义不依赖于 $X_{i}$ 的选择，$\otimes$ 的定义不要求 $X_{i}$ 是两两不交的

    1. 若 $\lambda$ 为无穷基数且 $\left\{\kappa_{\xi}\right\}_{\xi<\lambda}$ 是非零基数的序列，则 ${\displaystyle \bigoplus_{\xi<\lambda} \kappa_{\xi}= \lambda \otimes \sup _{\xi<\lambda} \kappa_{\xi}}$
        1. ${\displaystyle \bigoplus_{\xi<\lambda} \kappa_{\xi}=\max \{\lambda, \sup _{\xi<\lambda} \kappa_{\xi}\}}$
        2. 如果 $\left\langle\kappa_{\xi} \mid \xi<\operatorname{cf}(\kappa)\right\rangle$ 是一个序列且 $2 \leqslant \kappa_{\xi}<\kappa$，则 ${\displaystyle \bigoplus_{\xi<\operatorname{cf}(\kappa)} \kappa_{\xi}=\max \{\operatorname{cf}(\kappa), \sup _{\xi<\operatorname{cf}(\kappa)} \kappa_{\xi}\}=\kappa}$
        3. ${\displaystyle \sup_{\xi<\lambda} \kappa_{\xi} \leqslant \bigoplus_{\xi<\lambda} \kappa_{\xi}}$ 对任意基数成立
        4. 如果 ${\displaystyle \lambda \leqslant \sup _{\xi<\lambda} \kappa_{\xi}}$，则 ${\displaystyle \bigoplus_{\xi<\lambda} \kappa_{\xi}=\sup _{\xi<\lambda} \kappa_{\xi}}$
    2. 假设 $\left\langle\kappa_{i}\right\rangle_{i \in I}$ 为基数序列且 $\lambda$ 为基数，则
        1. 如果 $\left\{X_{j} \mid j \in J\right\}$ 是 $I$ 的划分，则
            1. 交换律和结合律：${\displaystyle \bigoplus_{i \in I} \kappa_{i}=\bigoplus_{j \in J} \bigoplus_{i \in X_{j}} \kappa_{i} \bigotimes_{i \in I} \kappa_{i}=\bigotimes_{j \in J} \bigotimes_{i \in X_{j}} \kappa_{i}}$
            2. 分配律：${\displaystyle \bigotimes_{j \in J} \bigoplus_{i \in X_{j}} \kappa_{i}=\bigoplus\left(\bigotimes_{j \in J} \kappa_{f(j)} \ \left|\ f \in \prod_{j \in J} X_{j} \right. \right)}$
        2. ${\displaystyle \lambda \cdot \bigoplus_{i \in I} \kappa_{i}=\bigoplus_{i \in I} \lambda \cdot \kappa_{i}}$
        3. ${\displaystyle \lambda^{\oplus_{i \in I} \kappa_{i}}=\bigotimes_{i \in I} \lambda^{\kappa_{i}}}$
        4. ${\displaystyle \left(\bigotimes_{i \in I} \kappa_{i}\right)^{\lambda}=\bigotimes_{i \in I} \kappa_{i}^{\lambda}}$
    3. 假设 $\lambda$ 为无穷基数，$\left\{\kappa_{\xi}\right\}_{\xi<\lambda}$ 是非零基数的序列且是非降的，则 ${\displaystyle \bigotimes_{\xi<\lambda} \kappa_{\xi}}=\left(\sup _{\xi<\lambda} \kappa_{\xi}\right)^{\lambda}$

4. 基数的幂：定义 $\kappa^{\lambda}=\left|A^{B}\right|$，其中 $|A|=\kappa$ 且 $|B|=\lambda$
    1. 对幂的定义不依赖于 $A, B$ 的选择：如果 $|A|=\left|A^{\prime}\right|$ 且 $|B|=\left|B^{\prime}\right|$，则 $\left|A^{B}\right|=\left|A^{\prime B^{\prime}}\right|$
    2. 基数幂的性质：设 $\kappa, \lambda$ 是基数
        1. 如果 $\lambda>0$，则 $\kappa \leqslant \kappa^{\lambda}$
        2. 如果 $\kappa>1$，则 $\lambda \leqslant \kappa^{\lambda}$
        3. 如果 $\kappa_{1} \leqslant \kappa_{2}$ 且 $\lambda_{1} \leqslant \lambda_{2}$，则 $\kappa_{1}^{\lambda_{1}} \leqslant \kappa_{2}^{\lambda_{2}}$
        4. $\kappa \otimes \kappa=\kappa^{2}$
    3. 无穷基数幂的性质：设 $\kappa, \lambda$ 是无穷基数
        1. $\kappa^{\lambda \oplus \mu}=\kappa^{\lambda} \otimes \kappa^{\mu}$
        2. $\left(\kappa^{\lambda}\right)^{\mu}=\kappa^{\lambda \otimes \mu}$
        3. $(\kappa \otimes \lambda)^{\mu}=\kappa^{\mu} \otimes \lambda^{\mu}$
        4. $2^{\kappa}>\kappa$
    4. 设 $\alpha, \beta$ 是序数，$n \in \omega$，则以下命题成立
        1. $\text{Hausdorff}$ 公式：$\aleph_{\alpha+1}^{\aleph_{\beta}}=\aleph_{\alpha+1} \otimes \aleph_{\alpha}^{\aleph_{\beta}}$

            广义 $\text{Hausdorff}$ 公式：$\aleph_{\alpha+n}^{\aleph_{\beta}}=\aleph_{\alpha}^{\aleph_{\beta}} \otimes \aleph_{\alpha+n}$

        2. $\text{Tarski}$ 公式：如果 $|\gamma| \leqslant \aleph_{\beta}$，则 $\aleph_{\alpha+\gamma}^{\aleph_{\beta}}=\aleph_{\alpha+\gamma}^{|\gamma|} \otimes \aleph_{\alpha}^{\aleph_{\beta}}$
        3. $\text{Bernstein}$ 公式：$\aleph_{n}^{\aleph_{\beta}}=2^{\aleph_{\beta}} \otimes \aleph_{n}$
        4. 如果 $\alpha \leqslant \aleph_{\beta}$，则 $\aleph_{\alpha}^{\aleph_{\beta}}=2^{\aleph_{\beta}} \otimes \aleph_{\alpha}^{|\alpha|}$

    5. 幂函数在 $\kappa^{\lambda}$ 在 $\textbf{ZFC}$ 下的行为：令 $\lambda$ 为无穷基数，对任意无穷基数 $\kappa$，$\kappa^{\lambda}$ 可计算如下
        1. 如果 $\kappa$ 不是 $\lambda-$强的，则存在 $\mu<\kappa$ 使得 $\kappa^{\lambda}=\mu^{\lambda}$
        2. 如果 $\kappa \leqslant \lambda$，则 $\kappa^{\lambda}=2^{\lambda}$
        3. 如果 $\kappa>\lambda$ 且 $\kappa$ 是 $\lambda-$强的，则
            1. 如果 $\operatorname{cf}(\kappa)>\lambda$，则 $\kappa^{\lambda}=\kappa$
            2. 如果 $\operatorname{cf}(\kappa) \leqslant \lambda$，则 $\kappa^{\lambda}=\kappa^{\mathrm{cf}(\kappa)}$

    6. 基数与序列：设 $\kappa, \lambda$ 是无穷基数，则以下命题成立
        1. 若 $\lambda$ 是基数，则定义 $\kappa^{<\lambda}=\left|X^{<\lambda}\right|$，其中 $|X|=\kappa$．易知 $\kappa^{<\lambda}=\sup \left\{\kappa^{\eta} \mid \eta\right.$ 是基数且 $\left.\eta<\lambda\right\}$
        2. 以 $[\kappa]^{\lambda}$ 表示集合 $\{X \subseteq \kappa\mid |X|=\lambda\}$ 的基数．若 $\kappa<\lambda$，则$[\kappa]^{\lambda}=0$；若 $\lambda \leqslant \kappa$, 则 $[\kappa]^{\lambda}=\kappa^{\lambda}$
        3. 以 $[\kappa]^{<\lambda}$ 表示集合 $\{X \subseteq \kappa \mid |X|<\lambda\}$ 的基数．若 $\lambda \leqslant \kappa$, 则 $[\kappa]^{<\lambda}=\kappa^{<\lambda}$

5. 共尾：对任意序数 $\alpha$，若 $\operatorname{cf}(\alpha)$ 是满足性质「存在映射 $f: \beta \rightarrow \alpha$ 使得 $f[\beta]$ 在 $\alpha$ 中无界」的最小序数 $\beta$，则称映射 $f$ 为共尾映射，$\operatorname{cf}(\alpha)$ 为 $\alpha$ 的共尾．对任何序数 $\alpha$，若 $\operatorname{cf}(\alpha)=\alpha$，则称 $\alpha$ 是正则的，非正则的序数称为奇异的

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
        2. 对任意无穷基数，总存在比它大的奇异基数，例如对于任意无穷基数 $\aleph_{\alpha}$，存在 $\operatorname{cf}(\aleph_{\alpha + \omega}) = \omega$
        3. 一个极限基数是正则基数的必要条件是 $\alpha=\aleph_{\alpha}$

        $$
        \textsf{序数} \left\{\begin{aligned}
        & \textsf{有穷序数} \\
        & \textsf{无穷序数} \left\{\begin{aligned}
            & \textsf{非基数的序数} \to \textsf{奇异序数} \\
            & \textsf{基数} \left\{\begin{aligned}
                & \textsf{后继基数} \to \textsf{正则序数} \\
                & \textsf{极限基数} \to \left\{\begin{aligned}
                    & \textsf{奇异序数} \\
                    & \textsf{正则序数：弱不可达基数}
                    \end{aligned}\right.
                \end{aligned}\right.
            \end{aligned}\right.
        \end{aligned}\right.
        $$

    4. $\text{K}\ddot{\mathrm o}\text{nig}$ 定理：如果对任意 $i \in I$ 都有 $\kappa_{i}<\lambda_{i}$，则 ${\displaystyle \bigoplus_{i \in I} \kappa_{i}<\bigotimes_{i \in I} \lambda_{i}}$
        1. $\text{K}\ddot{\mathrm o}\text{nig}$ 引理：对任何无穷基数 $\kappa$，都有 $\kappa^{\mathrm{cf}(\kappa)}>\kappa$
        2. 对任意序数 $\alpha, \beta$ 都有 $\operatorname{cf}(2^{\aleph_{\alpha}})>\aleph_{\alpha}$ 且 $\operatorname{cf}(\aleph_{\alpha}^{\aleph_{\beta}})>\aleph_{\beta}$
    5. 设 $\kappa$ 是无穷基数，则以下命题等价
        1. $\kappa$ 是正则基数
        2. 若 $A \subseteq \kappa$ 且 $|A|<\kappa$，则 $A$ 在 $\kappa$ 中有界，即存在 $\alpha<\kappa$，$A \subseteq \alpha$
        3. 如果 $|I|<\kappa$，$\left\{\kappa_{i} \mid i \in I\right\}$ 为一集基数，且对任意 $i \in I$ 有 $\kappa_{i}<\kappa$，则 ${\displaystyle \bigoplus_{i \in I} \kappa_{i}<\kappa}$
        4. 令 $\lambda<\kappa$，如果长度为 $\lambda$ 的序列 $\left\langle X_{\xi}\right\rangle_{\xi<\lambda}$ 满足对任意 $\xi<\lambda$，都有 $\left|X_{\xi}\right|<\kappa$，则 ${\displaystyle \left|\bigcup_{\xi<\lambda} X_{\xi}\right|<\kappa_{0}}$
    6. 不可达基数：在 $\mathbf{ZFC}$ 下无法证明存在性
        1. 弱不可达基数：正则的极限基数，
        2. 强不可达基数：正则的强极限基数

6. 连续统函数：$2^{\aleph_{\alpha}}$，并称 $2^{\aleph_{0}}$ 为连续统的基数
    1. 定义无穷基数上 $\text{Gimel}$ 函数为 $\gimel(\kappa)=\kappa^{\mathrm{cf}(\kappa)}$，则对任意无穷基数 $\kappa, \lambda$ 有

        $$
        \kappa^{\lambda}= \left\{\begin{aligned} & 2^{\lambda}, & \textsf{或 } \\ & \kappa, & \textsf{或 } \\ & \gimel(\mu), & \operatorname{cf}(\mu) \leqslant \lambda<\mu \end{aligned}\right.
        $$

    2. 对任意基数 $\kappa$，如果存在 $\mu_{0}<\kappa$ 使得对任意 $\mu_{0} \leqslant \mu<\kappa$ 都有 $2^{\mu}=2^{\mu_{0}}$，则称 $2^{\mu_{0}}$ 为连续统函数在 $\kappa$ 下的不动点；如果这样的不动点存在，也称连续统函数在 $\kappa$ 下终究为常量．设 $\kappa$ 为无穷基数，则

        $$
        2^{\kappa}= \left\{\begin{aligned}& J(\kappa), & \textsf{ 若 } \kappa \textsf{ 是后继基数 } \\ & 2^{\mu_{0}} \otimes I(\kappa), & \textsf{ 若 } \kappa \textsf{ 是极限基数且 } 2^{\mu_{0}} \textsf{ 是连续统函数在 } \kappa \textsf{ 下的不动点 } \\ & I\left(2^{<\kappa}\right), & \textsf{ 若 } \kappa \textsf{ 是极限基数且连续统函数在 } \kappa \textsf{ 下不存在不动点 }\end{aligned}\right.
        $$

        1. 如果 $\kappa$ 是极限基数，则 $2^{\kappa}=\left(2^{<\kappa}\right)^{\mathrm{cf}(\kappa)}$
        2. 如果 $\kappa$ 是强极限基数，则 $2^{\kappa}=\kappa^{\operatorname{cf}(\kappa)}$

    3. 连续统假设下的基数幂
        1. 令 $\kappa, \lambda$ 为无穷基数，同时假设 $\textbf{GCH}$ 成立，则

            $$
            \kappa^{\lambda}=\left\{\begin{aligned}
            & \lambda^{+}, & \kappa \leqslant \lambda ; \\
            & \kappa^{+}, & \operatorname{cf}(\kappa) \leqslant \lambda<\kappa ; \\
            & \kappa, & \lambda<\operatorname{cf}(\kappa)
            \end{aligned}\right.
            $$

        2. 令 $\kappa, \lambda$ 为无穷基数，同时假设 $\textbf{SCH}$ 成立，则

            $$
            \kappa^{\lambda}= \left\{\begin{aligned}
            & 2^{\lambda}, & \kappa \leqslant 2^{\lambda} \\
            & \kappa^{+}, & \kappa>2^{\lambda} \wedge \operatorname{cf}(\kappa) \leqslant \lambda \\
            & \kappa, & \kappa>2^{\lambda} \wedge \operatorname{cf}(\kappa)>\lambda_{0}
            \end{aligned}\right.
            $$

        3. 令 $\kappa$ 为奇异基数，同时假设 $\mathbf{SCH}$ 成立，则

            $$
            2^{\kappa}= \left\{\begin{aligned}
            & 2^{\mu_{0}}, & \textsf{若 } 2^{\mu_{0}} \textsf{ 是连续统函数在 } \kappa \textsf{ 下的不动点 } \\
            & \left(2^{<\kappa}\right)^{+}, & \textsf{若连续统函数在 } \kappa \textsf{ 下没有不动点 }
            \end{aligned}\right.
            $$

### 3.2.3 无界闭集
1. 无界闭集：令 $\alpha$ 为极限序数，$\alpha$ 的子集 $C \subseteq \alpha$ 如果满足
    1. $C$ 在 $\alpha$ 中无界．即 $\sup C=\alpha$，或等价地，对任意 $\beta<\alpha$，存在 $\xi \in C$ 使得 $\beta<\xi$
    2. $C$ 在 $\alpha$ 中是闭的．即对任意极限序数 $\gamma<\alpha$，如果 $\sup (C \cap \gamma)=\gamma$，则 $\gamma \in C$

    则称 $C$ 是 $\alpha$ 的无界闭集

    1. 假设 $C$ 是极限序数 $\alpha$ 的子集，如果 $\gamma$ 是 $C$ 某一子集的上确界且 $\gamma<\alpha$，则称 $\gamma$ 是 $C$ 的极限点
    2. 无界闭集的性质：设 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，则
        1. $\alpha$ 是 $\alpha$ 上的无界闭集
        2. 任取 $\beta<\alpha$，则集合 $\{\delta<\alpha \mid \delta>\beta\}$ 是 $\alpha$ 上的无界闭集
        3. 集合 $X=\{\beta<\alpha \mid \beta$ 是极限序数$\}$ 是 $\alpha$ 上的无界闭集
        4. 如果 $X$ 在 $\alpha$ 中无界，则 $X^{\prime}=\{\gamma \in X \mid \gamma<\alpha \wedge \textsf{ 是 } X \textsf{ 的极限点}\}$ 是 $\alpha$ 上的无界闭集

    3. 假设 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，则对任意 $\gamma<\operatorname{cf}(\alpha)$，如果 $\left\langle C_{\xi}\right\rangle_{\xi<\gamma}$ 是无界闭集的序列，则 ${\displaystyle \bigcap_{\xi<\gamma} C_{\xi}}$ 也是 $\alpha$ 的无界闭集
        1. 如果 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，$f: \alpha \rightarrow \alpha$ 是严格递增且连续的
        2. 如果 $\kappa$ 是不可数正则基数，则 $\kappa$ 上的无界闭滤是 $\kappa-$完全的

2. 无界闭滤：对任意共尾数大于 $\omega$ 的极限序数 $\alpha$

    $$
    F_{C B}(\alpha)=\{X \subseteq \alpha \mid \exists C \ (C \textsf{ 是 } \alpha \textsf{ 的无界闭子集 } \wedge C \subseteq X)\}
    $$

    是一个滤，称为 $\alpha$ 上的无界闭滤

    1. 对角线交与对角线并：对任意序数 $\alpha$，$\left\langle X_{\xi} \mid \xi<\alpha\right\rangle$ 是 $\alpha$ 子集的序列
        1. $X_{\xi}$ 的对角线交定义为

            $$
            \triangle_{\xi<\alpha} X_{\xi}=\left\{\eta<\alpha \ \left|\ \eta \in \bigcap_{\xi<\eta} X_{\xi} \right.\right\}
            $$

            在不引起混淆的情况下，可简记为 $\triangle X_{\xi}$

        2. $X_{\xi}$ 的对角线并定义为

            $$
            \triangledown_{\xi<\alpha} X_{\xi}=\left\{\eta<\alpha \ \left|\ \eta \in \bigcup_{\xi<\eta} X_{\xi}\right.\right\}
            $$

            在不引起混淆的情况下，可简记为 $\triangledown X_{\xi}$

    2. $F_{CB}(\kappa)$ 关于对角线交封闭：对任意不可数正则基数 $\kappa$ 及 $\kappa$ 上的无界闭集的序列 $\left\langle X_{\gamma} \mid \gamma<\kappa\right\rangle$，$\triangle_{\gamma<\kappa} X_{\gamma}$ 是无界闭集

3. 平稳集：设 $\alpha$ 为任意极限序数且 $\operatorname{cf}(\alpha)>\omega$．若 $S \subseteq \alpha$ 满足对任意 $\alpha$ 的无界闭集 $C$ 都有 $S \cap C \neq \varnothing$，则称 $S$ 是 $\alpha$ 上的平稳集；称 $I_{N S}(\alpha)=\{X \subseteq \alpha \mid \exists C \ (C$ 是 $\alpha$ 的无界闭子集 $\wedge X \cap C=\varnothing\}$ 为 $\alpha$ 上的非平稳理想
    1. 假设 $\alpha$ 是极限序数，$\operatorname{cf}(\alpha)>\omega$
        1. $\alpha$ 上的无界闭集都是平稳集，若 $S$ 是平稳集且 $S \subseteq T \subseteq \alpha$，则 $T$ 是平稳集
        2. $\alpha$ 上的平稳集都是无界的
        3. 存在 $\alpha$ 上无界子集 $T$，但 $T$ 不是平稳集
    2. 假设 $\alpha$ 是极限序数，$\operatorname{cf}(\alpha)>\omega$，而 $\lambda<\operatorname{cf}(\alpha)$ 是正则的，定义 $E_{\lambda}^{\alpha}=\{\beta<\alpha \mid \operatorname{cf}(\beta)=\lambda\}$，则 $E_{\lambda}^{\alpha}$ 是 $\alpha$ 上的平稳集
    3. $I_{N S}(\kappa)$ 关于对角线并封闭：对任意不可数正则基数 $\kappa$，如果 $\left\langle X_{\xi} \mid \xi<\kappa\right\rangle$ 是非平稳集的序列，则 $\nabla_{\xi<\kappa} X_{\xi}$ 仍是非平稳集
    4. $\text{Solovay}$ 定理：对任意不可数的正则基数 $\kappa$，$\kappa$ 上的任一平稳集都是 $\kappa$ 个互不相交的平稳集的并
        1. 退缩函数：定义在序数的集合 $S$ 上的函数 $f$ 如果满足对任意非 $0$ 的 $\alpha \in S$，都有 $f(\alpha)<\alpha$，则称 $f$ 是退缩的
        2. $\text{Fodor}$ 定理：任取不可数正则基数 $\kappa$，平稳集 $S \subseteq \kappa$．如果 $f$ 是定义在 $S$ 上的退缩函数，则存在平稳集 $T \subseteq S$ 和序数 $\gamma<\kappa$ 使得对任意 $\alpha \in T$ 都有 $f(\alpha)=\gamma$
        3. 令 $S$ 是不可数正则基数 $\kappa$ 上的平稳集．定义 $T \subseteq S$ 为

            $$
            T=\{\alpha \in S \mid \operatorname{cf}(\alpha)=\omega \vee(\operatorname{cf}(\alpha)>\omega \wedge S \cap \alpha \textsf{ 不是 } \alpha \textsf{ 上的平稳集})\}
            $$

            则 $T$ 是 $\kappa$ 上的平稳集

        4. 令 $\kappa$ 是不可数正则基数，$K=\{\gamma<\kappa \mid \gamma$ 是极限序数$\}$，$S \subseteq K$ 是 $\kappa$ 上的平稳集．如果对任意 $\alpha \in S$，$f_{\alpha}$ 是 $\alpha$ 中递增的共尾序列且是连续的，则以下二者必有一真
            1. 存在 $\eta<\kappa$，对任意 $\xi<\kappa$，$S_{\xi}=\left\{\alpha \in S \mid \eta \in \operatorname{dom}\left(f_{\alpha}\right) \wedge f_{\alpha}(\eta) \geqslant \xi\right\}$ 是 $\kappa$ 上的平稳集
            2. 存在 $\kappa$ 上的无界闭集 $C$，对任意 $\gamma$ 都有 $\alpha \in C \cap S, \gamma<\alpha$ 蕴涵 $\gamma=f_{\alpha}(\gamma)$
