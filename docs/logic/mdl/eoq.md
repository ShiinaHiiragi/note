# 2 量词消去

## 2.1 饱和性与齐次性
### 2.1.1 可数模型
1. 设 $\Sigma\left(x_{i}\right)_{i \in I}$ 是一个公式集，其中 $I$ 是一个指标集，$A$ 是一个结构．如果存在 $\left(a_{i}\right)_{i \in I}\in A^{I}$ 使得 $A \vDash \Sigma\left(a_{i}\right)_{i \in I}$，则称 $\Sigma$ 被 $A$ 实现（或被 $A$ 满足），并且称 $\left(a_{i}\right)_{i \in I}$（在 $A$ 中）实现了（或满足了）$\Sigma$，否则称 $\Sigma$ 被 $A$ 省略
    1. 设 $A, B$ 是两个 $S-$结构，$A \prec B$ 且 $\Sigma(\overline{x})$ 是一个 $S_{B}-$公式集．如果对任意有限的 $\Sigma_{0} \subseteq \Sigma$，都可被 $A$ 实现（或满足），则称 $\Sigma$ 在 $A$ 中有限可满足
    2. 设 $A$ 是一个 $S-$结构，$\Sigma(\overline{x})$ 是一个 $S_{A}-$公式集，则 $\Sigma$ 有限可满足当且仅当存在 $A$ 的初等膨胀 $B$ 使得 $\Sigma$ 被 $B$ 满足
2. 设 $A$ 是一个结构，$I$ 是一个指标集，$\left\{x_{i} \mid i \in I\right\}$ 是一族变元，$\left(a_{i} \mid i \in\right. I) \in A^{I}$ 且 $M \subseteq A$，则 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 表示公式集 $\left\{\alpha\left(x_{i_{1}}, \cdots, x_{i_{n}}\right) \mid \alpha\right.$ 是 $S_{M^{-}}$公式，$\left.A \vDash \alpha\left(a_{i_{1}}, \cdots, a_{i_{n}}\right), i_{1}, \cdots, i_{n} \in I\right\}$，称 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 为 $\left(a_{i}\right)_{i \in I}$ 在 $M$ 上的 $I-$型．当 $I=\{0, 1, \cdots, n-1\}$ 时，称 $M$ 上的 $I-$型为 $M$ 上的 $n-$型；当 $M=\varnothing$ 时，将 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 简记作 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I}\right)$
    1. 对任意指标集 $I$，任意一致的理论 $T$，$T$ 的任意 $I-$型都被 $T$ 的某个模型 $A$ 实现
    2. 公式集 $\Sigma(\overline{x})$ 是理论 $T$ 的完全 $I-$型当且仅当存在 $T$ 的模型 $A$ 及 $\overline{a} \in m^{I}$ 使得 $\Sigma=\operatorname{tp}_{A}(\overline{a})$
    3. 设 $A$ 是一个结构，$M \subseteq A$，$\left(I,<_{I}\right)$ 是一个线序集，则 $\left(a_{i}\right)_{i \in I} \subseteq A$ 是 $M$ 上的不可辨元序列当且仅当对任意的 $n \in \mathbf{N}$ 及任意的 $i_{0}<_{I} \cdots<_{I} i_{n-1} \in I$ 和 $j_{0}<_{I} \cdots<_{I} j_{n-1} \in I$，总有 $\operatorname{tp}_{A}\left(a_{i_{0}}, \cdots, a_{i_{n-1}}\right)= \operatorname{tp}_{A}\left(a_{j_{0}}, \cdots, a_{j_{n-1}}\right)$
3. 设 $A$ 是一个 $S-$结构，$M \subseteq A$
    1. 设 $I$ 是一个指标集，则 $S_{I}(M, A)$ 表示 $S_{M}-$理论 $\operatorname{Th}(A, a)_{a \in M}$ 的全体完全 $I-$型的集合
    2. 当 $I=\{0,1, \cdots, n-1\}$ 时，将 $S_{I}(M, A)$ 记作 $S_{n}(M, A)$，于是 $S_{0}(M, A) =\operatorname{Th}(A, a)_{a \in M}$

    若存在 $\overline{b} \in \operatorname{acl}_{A}(M)^{I}$ 使得 $A \vDash p(\overline{b})$，则称 $p(\overline{x}) \in S_{I}(M, A)$ 是 $M$ 上的代数型，否则称 $p$ 是 $M$ 上的非代数型

    1. 若 $B \succ A, M \subseteq A$，则 $S_{n}(M, A)=S_{n}(M, B)$，即 $S_{n}(M, A)$ 关于 $A$ 的任意初等膨胀不变，因此可简记为 $S_{n}(M)$
    2. 设 $M \subseteq A$，若 $S_{M}-$公式集 $\Sigma(\overline{x})$ 是 $\operatorname{Th}(A, a)_{a \in M}$ 的 $n-$型，则称 $\Sigma(\overline{x})$ 是 $(A, M)$ 上的 $n-$型或 $M$ 上的 $n-$型
    3. 设 $M \subseteq A \prec B$，则 $\Sigma(\overline{x})$ 是 $(A, M)$ 上的 $n-$型当且仅当 $\Sigma(\overline{x})$ 是 $(B, M)$ 上的 $n-$型，即以上定义关于初等膨胀是不变的，只与参数集合 $M$ 有关．因此当不引起歧义时，也可称 $\Sigma$ 为 $M$ 上的 $n-$型

4. 设 $A$ 是一个结构，若对任意的 $n<\omega$，变元组 $\overline{x}=\left(x_{0}, \cdots, x_{n}\right)$ 与有限集 $M \subseteq A$，当 $S_{M}-$公式集 $\Sigma(\overline{x})$ 在 $A$ 中有限可满足时，$\Sigma(\overline{x})$ 被 $A$ 实现（满足），则称 $A$ 是 $\omega-$饱和结构
    1. 设 $A$ 是一个结构，则 $A$ 是 $\omega-$饱和结构与以下命题等价
        1. 对任意有限的 $M \subseteq A$，$M$ 上的任意一个 $n-$型都被 $A$ 实现
        2. 对任意有限的 $M \subseteq A$，任意的 $p \in S_{n}(M)$ 都被 $A$ 实现
    2. 任意的 $S-$结构 $A$ 都有一个 $\omega-$饱和的初等膨胀 $B$．当 $S$ 和 $A$ 都可数时，$B$ 的基数可不超过 $2^{\omega}$
5. 设 $A$ 是一个结构，若对任意的有限集 $M \subseteq A$ 与 $n \in \mathbf{N}$，如果 $\overline{a}, \overline{b} \in A^{n}$ 使得 $\operatorname{tp}_{A}(\overline{a} / M)=\operatorname{tp}_{A}(\overline{b} / M)$，则对任意的 $c \in A$ 都存在 $d \in A$ 使得 $\operatorname{tp}_{A}(\overline{a}, c / M)=\operatorname{tp}_{A}(\overline{b}, d / M)$，则称 $A$ 是 $\omega-$齐次结构
    1. 设 $A$ 是一个结构，$\overline{a}, \overline{b} \in A^{k}$ 是 $A$ 中两个 $k-$元组且 $\operatorname{tp}_{A}(\overline{a})= \operatorname{tp}_{A}(\overline{b})$．$\Sigma(\overline{x}, \overline{y})$ 是一个 $S-$公式集，其中 $\overline{y}=y_{1}, \cdots, y_{k}$
        1. 如果 $\mathcal{L}_{\overline{a}}-$公式集 $\Sigma(\overline x, \overline a)$ 是 $\overline{a}$ 上的一个 $n-$型，则 $\mathcal{L}_{\overline{b}}-$公式集 $\Sigma(\overline x, \overline b)$ 是 $\overline b$ 上的一个 $n-$型
        2. 如果 $\Sigma(\overline{x}, \overline{a})$ 是 $\overline{a}$ 上的一个完全 $n-$型，则 $\Sigma(\overline{x}, \overline{b})$ 是 $\overline{b}$ 上的一个完全 $n$ 型
    2. 每个 $\omega-$饱和的结构一定是 $\omega-$齐次的
    3. 任意的 $S-$结构 $A$ 都有一个 $\omega-$齐次的初等膨胀 $B$
    4. 如果 $S$ 可数，且 $A$ 是可数的 $S-$结构，则 $A$ 有一个可数的初等膨胀 $B$ 是 $\omega-$齐次的

### 2.1.2 不可数模型
1. 任意无穷基数的饱和性与齐次性：设 $A$ 是一个 $S-$结构，$\kappa$ 是一个无穷基数
    1. 若对任意的 $M \subseteq A$ 与 $0<n \in \mathbf{N}$，如果 $|M|<\kappa$，有 $S_{n}(M)$ 中的所有的型都被 $A$ 实现，则称 $A$ 为 $\kappa-$饱和结构．如果 $A$ 是 $|A|-$饱和的，则称 $A$ 是饱和结构
    2. 若对任意满足 $|I|<\kappa$ 的指标集 $I$，如果 $\overline{a}=\left(a_{i}\right)_{i \in I} \in A^{I}$ 和 $\overline{b}=\left(b_{i}\right)_{i \in I} \in A^{I}$ 满足 $\operatorname{tp}_{A}(\overline{a})=\operatorname{tp}_{A}(\overline{b})$，则对任意的 $c \in A$，都存在 $d \in A$ 使得 $\operatorname{tp}_{A}(\overline{a}, c)=\operatorname{tp}_{A}(\overline{b}, d)$，则称 $A$ 为 $\kappa-$齐次结构．如果 $A$ 是 $|A|-$齐次的，则称 $A$ 是齐次结构
    3. 若对任意满足 $|I|<\kappa$ 的指标集 $I$，如果 $\overline{a}=\left(a_{i}\right)_{i \in I} \in A^{I}$ 和 $\overline{b}=\left(b_{i}\right)_{i \in I} \in A^{I}$ 满足 $\operatorname{tp}_{A}(\overline{a})=\operatorname{tp}_{A}(\overline{b})$，则存在自同构 $f: A \to A$ 使得 $f\left(a_{i}\right)=b_{i}$，则称 $A$ 为强 $\kappa-$齐次结构．如果 $A$ 是强 $|A|-$齐次的，则称 $A$ 是强齐次结构

    设 $A$ 与 $B$ 是 $S-$结构， $\kappa$ 是一个无穷基数

    1. $A$ 是 $\kappa-$饱和的当且仅当对任意的 $M \subseteq A$，如果 $|M|<\kappa$，则 $S_{1}(M)$ 中的所有型都被 $A$ 实现．
    2. $A$ 是 $\kappa-$饱和的当且仅当对任意的 $M \subseteq A$ 与指标集 $I$，如果 $|M|<\kappa$ 且 $|I|<\kappa$，则 $S_{I}(M)$ 中的所有型都被 $A$ 实现
    3. 如果 $A$ 是 $\kappa-$饱和的，则 $A$ 是 $\kappa-$齐次的
    4. 如果 $A$ 是齐次的，则 $A$ 是强齐次的
    5. 如果 $A$ 是饱和的，则 $A$ 是强齐次的
    6. 若 $A \equiv B,|A| =|B|=\kappa$，且 $A$ 与 $B$ 均是饱和结构，则 $A \cong B$

2. 设 $A$ 和 $B$ 是初等等价的 $S-$结构，$\kappa$ 是一个无穷基数，$|A| \leqslant \kappa$ 且 $B$ 是 $\kappa-$饱和的，则存在 $A$ 到 $B$ 的初等嵌入
3. 设 $A$ 是 $S-$结构，如果基数 $\kappa$ 满足 $\kappa \geqslant \max \{|S|, \omega\}$ 且 $2^{\kappa} \geqslant |A|$，则存在 $A$ 的 $\kappa^{+}-$饱和的初等膨胀 $B$，且 $B$ 的基数不超过 $2^{\kappa}$
    1. 如果 $\mathbf{GCH}$ 成立，则 $B$ 是饱和模型
    2. 假设 $\mathbf{GCH}$ 成立，如果 $T$ 是有无穷模型的 $S-$理论且 $\kappa>\max \{|S|$, $\alpha\}$ 是一个正则基数，则存在 $T$ 的基数为 $\kappa$ 的饱和模型
4. 设 $\kappa$ 是一无穷基数，则任何无穷的 $S-$结构 $A$ 都有一个初等膨胀 $B$，使得 $B$ 既是 $\kappa-$饱和的，又是强 $\kappa-$齐次的
    1. 设 $A$ 与 $B$ 均是 $S-$结构，$\kappa$ 是一个无穷基数使得
        1. 对任意 $0<n \in \mathbf{N}$ 与 $\overline{a} \in A^{n}$，都有 $\operatorname{tp}_{A}(\overline{a})$ 被 $B$ 实现
        2. 对任意 $0<n \in \mathbf{N}$ 与 $\operatorname{tp}_{B}(\overline{b})$ 被 $A$ 实现
        3. $B$ 是 $\kappa-$齐次的

        则对任意的基数 $\lambda<\kappa$ 及 $\overline{b} \in A^{\lambda}$，有 $\operatorname{tp}_{A}(\overline{b})$ 被 $B$ 实现

    2. 设 $T$ 是完备的 $S-$理论，$\kappa$ 是一个无穷基数，$A$ 和 $B$ 均是 $T$ 的基数为 $\kappa$ 的齐次模型且对任意的 $p \in S_{n}(T)$，都有 $A \vDash p$ 蕴涵 $B \vDash p$，则 $A \cong B$

## 2.2 量词消去
1. 设 $A$ 是一个 $S-$结构，若对于任意的 $A-$可定义子集 $X \subseteq A$，$X$ 或者是有限集合，或者是余有限集合（即 $A - X$ 是有限集），则称 $A$ 为强极小结构．若 $S-$理论 $T$ 的所有模型都是强极小的，则称 $T$ 是强极小理论
2. 设 $T$ 是一个理论，若对每个公式 $\alpha(\overline{x})$，都存在一个无量词的公式 $\beta(\overline{x})$，使得 $T \vDash \forall \overline{x}(\alpha(\overline{x}) \leftrightarrow \beta(\overline{x}))$，则称 $T$ 具有量词消去
    1. 若 $S$ 有一个常元符号 $c$ 且 $T$ 具有量词消去，则对每个语句 $\tau$，都存在一个不含量词的语句 $\sigma$，使得 $T \vDash \tau \leftrightarrow \sigma$
    2. 若 $T$ 有量词消去，$A$ 是 $T$ 的模型，则 $A$ 的每个可定义子集都被一个无量词的 $S_{A}-$公式定义

### 2.2.1 无量词型
1. 设 $T$ 是一个 $S-$理论，$I$ 是一个指标集，$\Sigma_{i \in I}\left(x_{i}\right)$ 是 $T$ 的一个 $I$ 型
    1. 若 $\Sigma_{i \in I}\left(x_{i}\right)$ 中的公式均是无量词的，则称 $\Sigma_{i \in I}\left(x_{i}\right)$ 是一个无量词的 $I-$型
    2. 若 $\Sigma_{i \in I}\left(x_{i}\right)$ 是一个无量词型且对任意 $i_{0}, \cdots, i_{n-1} \in I$ 及无量词的公式 $\alpha\left(x_{i_{0}}, \cdots, x_{i_{n-1}}\right)$，均有 $\alpha$ 与 $\neg \alpha$ 其中之一属于 $\Sigma$，则称 $\Sigma$ 是完全的无量词 $I-$型
    3. 用 $S_{I}^{q f}(T)$ 来表示全体的完全无量词 $I-$型所构成的集合，称为 $T$ 的完全无量词 $I-$型空间
    4. 设 $A$ 是一个 $S-$结构，$M \subseteq A$，则用 $S_{I}^{q f}(M)$ 来表示 $\operatorname{Th}(A, M)$ 的完全无量词 $I-$型空间

    设 $T$ 是一个 $S-$理论，$I$ 是一个指标集，对任意的 $i_{0}, \cdots, i_{n-1} \in I$ 及无量词的 $S-$公式 $\alpha\left(x_{i_{0}}, \cdots, x_{i_{n-1}}\right)$，定义 $[\alpha]_{q f}=\left\{p \in S_{I}^{q f}(T) \mid \alpha \in p\right\}$，则 $S_{I}^{q f}(T)$ 的子集族 $\left\{\left[\alpha\left(x_{i_{0}}, \cdots, x_{i_{n-1}}\right)\right]_{q f} \mid \alpha \textsf{ 是 } S-\textsf{公式，且 } i_{0}, \cdots, i_{n-1} \in I\right\}$ 关于有限交和一般并的闭包 $\tau$ 使得 $\left(S_{I}^{q f}(T), \tau\right)$ 是一个拓扑空间，且 $S_{I}^{q f}(T)$ 的每个开闭集都形如 $[\alpha]_{q f}$

2. 设 $A$ 是一个 $S-$结构，$M \subseteq A$，$I$ 是一个指标集，$\overline{a} \in A^{I}$，则定义 $\operatorname{qftp}_{A}(\overline{a} / M)= \left\{\alpha\left(x_{i_{0}}, \cdots, x_{i_{n-1}}\right) \mid \alpha\right.$ 是一个无量词的 $S_{M}-$公式且 $\left.A \vDash \alpha\left(a_{i_{0}}, \cdots, a_{i_{n-1}}\right)\right\}$．显然对任意的理论 $T$ 与模型 $A \vDash T$ 以及任意的 $\overline{a} \in A^{I}$，均有 $\operatorname{qftp}_{A}(\overline{a} / M) \in S_{I}^{q f}(M)$ 且 $\operatorname{qft}_{A}(\overline{a} / M)=f_{q f}\left(\operatorname{tp}_{A}(\overline{a} / M)\right)$

### 2.2.2 量词消去
1. 理论 $T$ 有量词消去当且仅当 $T$ 具有 $\mathrm{Q}$ 性质：对任意的 $A, B \vDash T$，$n \in \mathbf{N}^{+}$ 与 $\overline{a} \in A^{n}, \overline{b} \in B^{n}$，若 $\operatorname{qftp}_{A}(\overline{a})=\operatorname{qftp}_{B}(\overline{b})$，则 $\operatorname{tp}_{A}(\overline{a})=\operatorname{tp}_{B}(\overline{b})$
2. 设 $A$ 与 $B$ 均为 $S-$结构，$0<n \in \mathbf{N}, \overline{a} \in A^{n}, \overline{b} \in B^{n}$．若 $\operatorname{qftp}_{A}(\overline{a})=\mathrm{qftp}_{B}(\overline{b})$，则称 $(\overline{a}, \overline{b})$ 是 $A$ 到 $B$ 的一个部分同构
    1. $A$ 与 $B$ 之间存在的部分同构 $(\overline{a}, \overline{b})$ 可以唯一地扩张为由 $\overline{a}$ 生成的子结构 $M$ 和由 $\overline{b}$ 生成的子结构 $N$ 之间的同构映射
    2. 若 $(\overline{a}, \overline{b})$ 是 $A$ 到 $B$ 的部分同构，则 $\left\{a_{0}, \cdots, a_{n-1}\right\}$ 生成的 $A$ 的子结构 $\langle\overline{a}\rangle^{A}$ 与 $\left\{b_{0}, \cdots, b_{n-1}\right\}$ 生成的 $B$ 的子结构 $\langle\overline{b}\rangle^{B}$ 同构
3. 设 $A$ 与 $B$ 均为 $S-$结构，$I$ 是 $A$ 到 $B$ 的部分同构所构成的集合．若对任意的 $(\overline{a}, \overline{b}) \in I$ 及任意的 $c \in A$，都存在 $d \in B$ 使得 $(\overline{a} c, \overline{b} d) \in I$；反之对任意的 $d^{\prime} \in B$，也存在 $c^{\prime} \in A$ 使得 $\left(\overline{a} c^{\prime}, \overline{b} d^{\prime}\right) \in I$，则称 $I$ 具有进退性质
    1. 设 $T$ 是一个 $S-$理论，则 $T$ 有量词消去当且仅当若 $A, B$ 均是 $T$ 的 $\omega-$饱和模型，且 $I$ 是 $A$ 到 $B$ 的所有部分同构所构成的集合，则 $I$ 有进退性质
    2. 设 $T$ 是一个 $S-$理论，则 $T$ 有量词消去当且仅当若$A_{1}, A_{2}$ 均是 $T$ 的模型，$M$ 同时是 $A_{1}$ 和 $A_{2}$ 的子结构，则对任意的无量词 $S_{M}-$公式 $\alpha(x)$ 均有 $A_{1} \vDash \exists x \alpha(x) \leftrightarrow A_{2} \vDash \exists x \alpha(x)$

### 2.2.3 模型完全
1. 设 $T$ 是一个 $S-$理论，$\alpha(\overline{x}), \beta(\overline{x})$ 是两个 $S-$公式．若 $T \vDash \forall \overline{x}(\alpha(\overline{x}) \leftrightarrow \beta(\overline{x}))$，则称 $\alpha(\overline{x})$ 与 $\beta(\overline{x})$ 模 $T$ 等价
2. 设 $T$ 是一个 $S-$理论，若任意 $S-$公式都模 $T$ 等价于一个全称公式，则称 $T$ 是模型完全的
    1. 具有量词消去的理论都是模型完全的
    2. 理论 $T$ 是模型完全的当且仅当任意的 $S-$公式都模 $T$ 等价于一个存在公式
3. 设 $T$ 是一个 $S-$理论，则 $T$ 模型完全与以下命题等价
    1. 设 $A_{1}, A_{2} \vDash T$，且 $A_{1}$ 是 $A_{2}$ 的子结构，则 $A_{1} \prec A_{2}$
    2. 设 $A_{1}, A_{2} \vDash T$，且 $A_{1}$ 是 $A_{2}$ 的子结构，则对任意 $S_{A_1}-$公式 $\alpha(\overline x)$，若 $\alpha$ 是存在公式，则 $A_{2} \vDash \exists \overline{x} \alpha(\overline{x})$ 蕴含 $A_{1} \vDash \exists \overline{x} \alpha(\overline{x})$
    3. 任意存在公式都模 $T$ 等价于一个全称公式
