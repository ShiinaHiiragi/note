# 5 势与基数

## 5.1 势
### 5.1.1 势的关系
1. 等势: 若集合 $a$ 与 $b$ 存在双射, 则称集合 $a$ 与 $b$ 等势, 记作 $a\approx b$
    1. $\approx$ 是集合上的等价关系
    2. $\mathcal{P}(a) \approx ^a2$. 其中 $2=\{0,1\}$, 由此构造出来的双射称作 $b$ 的特征函数

        $$
        f_b(x)=
        \begin{cases}
        0,x\in b\\
        1,x\notin b
        \end{cases}
        $$

2. 若 $a$ 到 $b$ 存在单射, 则记作 $a\preccurlyeq b$, 直观上表示 $a$ 的元素不会比 $b$ 的多
    1. $\preccurlyeq$ 是集合上的偏序关系
    2. $a\subset b\to a\preccurlyeq b$
    3. $a\preccurlyeq b \wedge a\approx c\to c\preccurlyeq b,a\preccurlyeq b \wedge b\approx c\to a\preccurlyeq c$
    4. $a\preccurlyeq b\to (\exists c\subset b(a\approx c))$
    5. $\mathrm{Cantor-Bernstein}$ 定理: $a\preccurlyeq b\wedge b\preccurlyeq a\to a\approx b$, 这说明了 $\preccurlyeq$ 的反对称性
        - 证明用到的引理: $a\subset b\subset c\wedge a\approx c\to a\approx b\approx c$

3. 若 $a\preccurlyeq b \wedge a\not\approx b$, 则记作 $a\prec b$, 直观上表示 $a$ 的元素比 $b$ 的少
    - $\mathrm{Cantor}$ 定理: $a\prec \mathcal{P}(a)$, 这说明超穷世界有许多大小不同的实无限

        !!! note "$\mathrm{Cantor}$ 定理的推论"
            1. $Q\approx Z\approx N^{n}\approx N$, $n$ 为任意有限整数
            2. $C\approx R^{n}\approx R\approx ^NN\approx \mathcal{P}(N)$, $n$ 为任意有限整数
    
4. 连续统: 由于实数和直线上的点一一对应, 通常将 $R^n$ 称作 $n$ 维连续统. 
    1. $\mathrm{Luroth}$ 定理: 一维连续统 $R$ 和二维连续统 $R^2$ 之间不存在连续双射
    2. $\mathrm{CH}$ 连续统假设: $2^{\omega_0}=\omega_1$, 即不存在集合 $A$ 使得 $N\prec A\prec R$. 在 $\mathrm{ZFC}$ 公理系统下, 连续统假设是不可判定的
    3. $\mathrm{GCH}$ 广义连续统假设: $\forall \alpha(2^{\omega_\alpha}=\omega_{\alpha+1})$. 在不承认选择公理的前提下, 这个假说写作 $\forall \kappa(^\kappa 2\approx \kappa^+)$

    !!! note "非主算术超滤的存在性"
        $\mathrm{CH}$ 可用于证明非主算术超滤存在. $\mathrm{Godel}$ 证明了连续统假设相对于 $\mathrm{ZFC}$ 是无矛盾的, 因此非主算术超滤相对于 $\mathrm{ZFC}$ 也是无矛盾的

        1. 设 $\mathcal{A}=\{A_i|i\in I\}$, 其中每个 $A_i$ 都是具有有限交性质的 $\omega$ 的子集族, 且 $\mathcal{A}$ 是全序族, 则 $\cup \mathcal{A}=\bigcup_{i\in I}A_i$ 也具有有限交性质
        2. 设 $\mathcal{B}=\{B_i|i\in I\}$, 其中每个 $B_i$ 都是 $\omega$ 上的滤基, 且 $\mathcal{B}$ 是 $\subset -$ 全序族, 则 $\cup \mathcal{B}=\bigcup_{i\in I}B_i$ 也是 $\omega$ 上的滤基
        3. 设包含 $\mathrm{Frechet}$ 滤子的可数滤基 $B(\supset F_\sigma)$ 与 $f,g\in^\omega \omega$ 有 $\{n|f(n)\neq g(n)\}\in \left<B\right>$, 且对于任意有限集 $c\subset \omega$ 皆有 $f^{-1}[g[c]]\cup g^{-1}[f[c]]\notin \left<B\right>$

### 5.1.2 有限集与无限集
1. 有限集: 与 $n\in \omega$ 等势的集合
    1. 鸽笼原理: 自然数 $n\in \omega$ 与它的任何真子集间不等势, 有限集与任意真子集都不等势
    2. 有限集的子集也是有限集, 有限个有限集的并集是有限集
2. 无限集: 与 $\forall n\in \omega$ 都不等势的集合, 又称作实无限

### 5.1.3 可数集
1. 定义: 与 $\omega$ 等势的集合, 可数集都是无限集
2. 可数集的性质:
    1. 若 $a$ 为任意集合且 $a\preccurlyeq \omega$, 则 $a$ 为有限集或可数集
    2. 若 $a$ 为任意无限集, 则 $\omega \preccurlyeq a$. 也就是说, 可数集是最小的无限集
    3. 若 $\forall a_i(i\in N)\preccurlyeq \omega$, 则对于任意有限数 $n$, $\bigcup\limits_{i=0}^n a_i \preccurlyeq \omega\wedge \bigcup\limits_{i=0}^\infty a_i \preccurlyeq \omega$; 且有 $a_1\times a_2\times \cdots \times a_n\preccurlyeq \omega$

## 5.2 基数
### 5.2.1 基数的概念
1. 若序数 $\kappa$ 有 $\forall \alpha<\kappa(\alpha \not \approx \kappa)$, 则称为基数. 
    1. 基数是互相等势的序数的最小者; 自然数和 $\omega$ 是基数
    2. 任意集合 $a$ 的 $\mathrm{Hartogos}$ 数 $a^+=\{\beta|\beta \preccurlyeq \alpha\}$ 是基数
    3. 集合 $a$ 的基数有 $a\approx \kappa \leftrightarrow |a|=\kappa$, $|a|=|b|\leftrightarrow a\approx b$
2. 用 $\kappa,\lambda,\mu,\nu$ 表示基数, 则有以下性质
    1. $\kappa \approx \lambda \leftrightarrow \kappa =\lambda$; $\kappa \preccurlyeq \lambda \leftrightarrow \kappa \leqslant \lambda$; $\kappa \prec \lambda \leftrightarrow \kappa < \lambda$
    2. 比 $\kappa$ 大的最小基数是 $\kappa^+$
    3. 设集合 $a$ 的元素都是基数, 则 $\cup a$ 也是基数, 且为 $a$ 的最小上界

        !!! note "对 $\omega$ 的构造"
            利用以上定理, 可以让每个序数联系一个超限基数 $\omega_\alpha$, 其中, $\gamma$ 是极限序数
            
            $$
            \displaylines{\aleph_0=\omega\\
            \aleph_{\alpha+1}=\aleph_\alpha^+\\
            \aleph_\gamma=\cup\{\aleph_\alpha|\alpha<\gamma\}}
            $$

    4. $\forall \kappa>\omega\exists \alpha \in \mathrm{On}(\kappa=\aleph_\alpha))$. 也就是说, $\aleph$ 系列包含了所有的超限基数

3. 基数宇宙
    1. $\omega_{\alpha+1}$ 称作 $\omega_\alpha$ 的后继序数; 当 $\alpha$ 为极限序数时, 称 $\aleph_\alpha$ 极限基数. 作为基数, $\aleph$ 系列的全体元素称为超限基数, 它们都是极限序数
    2. 基数从小到大的排序如下, 全体基数构成的集合记为 $\mathrm{Cn}$

        $$
        \displaylines{0,1,\cdots,n,\cdots,\aleph_0,\cdots,\aleph_n,\cdots,\aleph_{\omega},\cdots,\aleph_{\omega \cdot 2},\cdots,\\
        \aleph_{\omega \cdot n},\cdots,\aleph_{\omega^2},\cdots,\aleph_{\omega^n},\cdots,\aleph_{\omega^\omega},\cdots,\aleph_{\omega^{\omega^\omega}},\cdots}
        $$

        !!! note "$\mathrm{Cantor}$ 悖论"
            假如 $\mathrm{Cn}$ 为集合, 那么 $\cup \mathrm{Cn}$ 也是基数, 而且比所有基数都大, 但是最大的基数时不存在的. 因此, $\mathrm{Cn}$ 不是集合, 否则利用替换公理, $\mathrm{On}$ 也可以是集合

4. $\mathrm{Cn}$ 上的超限归纳法: 若 $\forall \kappa(\forall \lambda <\kappa p(\lambda)\to p(\kappa))$, 则 $\forall \kappa p(\kappa)$

### 5.2.2 基数算术
1. 定义加法与乘法: $\kappa +\lambda =|k\times \{0\} \cup \lambda \times \{1\}|$, $\kappa \cdot \lambda=|\kappa \times \lambda|$
    1. 当定义中的加法与乘法限制于自然数时, 与自然数运算保持一致
    2. $\mathrm{Hassenberg}$ 定理: $\kappa \geqslant \omega \to \kappa \times \kappa \approx \kappa$
    3. 基数计算基本定理: 设 $\kappa \geqslant \omega \wedge \kappa \geqslant \lambda$, 则有 $\kappa+\lambda=\kappa$, $\kappa \cdot \lambda=\kappa(\lambda>0)$
    4. 设 $\kappa \geqslant \omega$, 且对于每个 $\alpha<\kappa$ 都有 $|a_\alpha|\leqslant \kappa$, 则有 $\left| \bigcup_{\alpha<\kappa} a_\alpha \right|\leqslant \kappa$

    !!! note "序数与基数的加乘运算"
        在集合 $k\times \{0\} \cup \lambda \times \{1\}$ 中定义序 $<$, 则这个集合构成良序集

        - 若 $x\in \alpha,y\in \beta$, 则 $(x,0)<(y,1)$
        - 若 $x\in y\in \alpha$, 则 $(x,0)<(y,0)$
        - 若 $x\in y\in \beta$, 则 $(x,1)<(y,1)$

        将其序型用 $\alpha \oplus \beta$ 表示, 则有以下各式成立, 其中 $\gamma$ 为极限序数. 于是有 $\alpha \oplus \beta=\alpha+\beta$

        $$
        \displaylines{\alpha \oplus 0=\alpha\\
        \alpha \oplus \beta'=(\alpha \oplus \beta)'\\
        \alpha \oplus \gamma=\cup \{\alpha \oplus \beta|\beta<\gamma\}}
        $$

        在集合 $\beta \times \alpha$ 定义序 $<$, 则这个集合构成良序集

        - 若 $x\in x_1\in \beta$, 则 $(x,y)<(x_1,y_1)$
        - 若 $y\in y_1\in \alpha$, 则 $(x,y)<(x,y_1)$

        将其序型用 $\alpha \otimes \beta$ 表示, 则有以下各式成立, 其中 $\gamma$ 为极限序数. 于是有 $\alpha \otimes \beta=\alpha \cdot \beta$

        $$
        \displaylines{\alpha \otimes 0=0\\
        \alpha \otimes \beta'=\alpha \otimes \beta+\alpha\\
        \alpha \otimes \gamma=\cup \{\alpha \otimes \beta|\beta<\gamma\}}
        $$

2. 基数的指数运算 $\kappa^\lambda=|^\lambda \kappa|=|\{f|f:\lambda \to \kappa\}|$
    1. 当定义中的指数运算限制于自然数时, 与自然数运算保持一致
    2. $\kappa^{\lambda+\mu}=\kappa^\lambda \cdot \kappa^\mu,(\kappa^\lambda)^\mu=\kappa^{\lambda \cdot \mu}$
    3. 设 $2\leqslant \kappa \leqslant \lambda$ 且 $\lambda \geqslant \omega$, 则有 $\kappa^\lambda=2^\lambda=\mathcal{P}(\lambda)$

### 5.2.3 正则基数与奇异基数
1. 共尾: 若存在映射 $f:\beta \to \alpha$ 无界, 即值域 $f[\beta]$ 在 $\alpha$ 中无界: $\forall \in \alpha \exists \delta \in \beta(\gamma \leqslant f(\delta))$, 则说 $\beta$ 与 $\alpha$ 共尾
    1. 共尾数: 与序数 $\alpha$ 共尾的最小序数称为共尾数, 记为 $\mathrm{cf}(\alpha)$
    2. 性质
        1. 设 $\beta$ 与极限序数 $\alpha$ 共尾, 且 $f:\beta \to \alpha$ 是无界映射, 则 $\alpha=\cup f[\beta]$
        2. 一定存在从 $\mathrm{cf}(\alpha)$ 到 $\alpha$ 的严格递增无界映射
        3. 若存在 $f:\alpha \to \beta$ 严格递增且无界, 则 $\mathrm{cf}(\alpha)=\mathrm{cf}(\beta)$
        4. 若 $\mathrm{cf}(\alpha)=\alpha$, 则 $\alpha$ 是基数
        5. 对极限序数 $\alpha$, $\mathrm{cf}(\omega_\alpha)=\mathrm{cf}(\alpha)$, 特例: $\mathrm{cf}(\omega_\omega)=\omega$
    3. 推论
        1. $\mathrm{cf}(\mathrm{cf}(\alpha))=\mathrm{cf}(\alpha)$
        2. $\mathrm{cf}(\alpha)$ 是基数
2. 若 $\kappa \geqslant \omega$, 则 $\mathrm{cf}(2^\kappa)>\kappa$
    - $\mathrm{Konig}$ 引理: 设 $\kappa \geqslant \omega$ 且 $\mathrm{cf}(\kappa)\leqslant \lambda$, 则 $\kappa^\lambda>\kappa$ 
    - 推论: $2^\omega \neq \omega_\omega$
3. $\mathrm{GCH}$: 设 $\kappa \geqslant 2,\lambda \geqslant 1$ 且 $\mathrm{max}\{\kappa,\lambda\}\geqslant \omega$, 则有下表成立

    |||||
    |:-:|:-:|:-:|:-:|
    | $\lambda$ | $\kappa \leqslant \lambda$ | $\mathrm{cf}(\kappa)\leqslant \lambda <\kappa$ | $\lambda <\mathrm{cf}(\kappa)$ |
    | $\kappa^\lambda$ | $\lambda^+$ | $\kappa^+$ | $\kappa$ |

4. 正则基数与奇异基数: 若 $\mathrm{cf}(\kappa)=\kappa$, 则 $\kappa$ 称作正则基数; 若 $\mathrm{cf}(\kappa) <\kappa$, $\kappa$ 称作奇异基数
    - 后继基数 $\kappa^+$ 一定是正则基数
5. 不可达基数: 正则极限基数称作弱不可达基数; 若正则基数 $\kappa$ 有 $\kappa >\omega$ 且 $\forall \lambda <\kappa(2^\lambda <\kappa)$, 则成为强不可达基数
    1. 设 $\omega_\alpha$ 是弱不可达基数, 则 $\omega_\alpha=\alpha$
    2. $\mathrm{GCH}$: 弱不可达基数即为强不可达基数

    !!! note "$\omega$ 上超滤集 $\beta \omega$ 的基数"
        $\mathrm{Hausdorff}$ 定理: $|\beta \omega|=2^{2^\omega}$

        1. $\mathrm{Sierpinski}$ 定理: 存在 $\omega$ 的无限子集族 $\{s_\alpha|\alpha <2^\omega\}$ 有当 $\alpha<\beta<2^\omega$ 时, $|s_\alpha \cap s_\beta|<\omega$
        2. 存在集对之族 $\{A_\alpha^0,A_\alpha^1|\alpha <2^\omega\}$, 其中 $A_\alpha^0,A_\alpha^1$ 都是 $\omega$ 的无限子集, $A_\alpha^0\cap A_\alpha^1=\varnothing$, 且满足 $\forall \alpha_1,\cdots,\alpha_n<2^\omega(|\omega-(s_{\alpha_1}\cup \cdots \cup s_{\alpha_n})|=\omega)$

<style>
    div[class$="typeset__scrollwrap"] {
        display: flex;
        flex-direction: row;
        justify-content: center;
    }
    th {
        display: none;
    }
</style>
