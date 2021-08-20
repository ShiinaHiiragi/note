# 5 势与基数

## 5.1 势
### 5.1.1 势的关系
1. 等势: 若集合 $a$ 与 $b$ 存在双射, 则称集合 $a$ 与 $b$ 等势, 记作 $a\approx b$
    - $\approx$ 是集合上的等价关系
    - $\mathcal{P}(a) \approx ^a2$. 其中 $2=\{0,1\}$, 由此构造出来的双射称作 $b$ 的特征函数

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

### 5.1.2 有限集与无限集
1. 有限集: 与 $n\in \omega$ 等势的集合
    - 鸽笼原理: 自然数 $n\in \omega$ 与它的任何真子集间不等势, 有限集与任意真子集都不等势
    - 有限集的子集也是有限集, 有限个有限集的并集是有限集
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

### 5.2.1 基数算术
1. 定义加法与乘法: $\kappa +\lambda =|k\times \{0\} \cup \lambda \times \{1\}|$, $\kappa \cdot \lambda=|\kappa \times \lambda|$
    1. 当定义中的加法与乘法限制于自然数时, 与自然数运算保持一致
    2. $\mathrm{Hassenberg}$ 定理: $\kappa \geqslant \omega \to \kappa \times \kappa \approx \kappa$
    3. 基数计算基本定理: 设 $\kappa \geqslant \omega \wedge \kappa \geqslant \lambda$, 则有 $\kappa+\lambda=\kappa$, $\kappa \cdot \lambda=\kappa(\lambda>0)$
    4. 设 $\kappa \geqslant \omega$, 且对于每个 $\alpha<\kappa$ 都有 $|a_\alpha|\leqslant \kappa$, 则有 $\left| \bigcup_{\alpha<\kappa} a_\alpha \right|\leqslant \kappa$
2. 基数的指数运算 $\kappa^\lambda=|^\lambda \kappa|=|\{f|f:\lambda \to \kappa\}|$
    1. 当定义中的指数运算限制于自然数时, 与自然数运算保持一致
    2. $\kappa^{\lambda+\mu}=\kappa^\lambda \cdot \kappa^\mu,(\kappa^\lambda)^\mu=\kappa^{\lambda \cdot \mu}$
    3. 设 $2\leqslant \kappa \leqslant \lambda$ 且 $\lambda \geqslant \omega$, 则有 $\kappa^\lambda=2^\lambda=\mathcal{P}(\lambda)$