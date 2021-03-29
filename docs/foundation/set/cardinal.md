# 5 势与基数

## 5.1 势
### 5.1.1 势的关系
1. 等势: 若集合 $a$ 与 $b$ 存在双射, 则称集合 $a$ 与 $b$ 等势, 记作 $a\approx b$.
    - $\prec$ 是集合上的等价关系.
    - $\mathcal{P}(a) \approx ^a2$. 其中 $2=\{0,1\}$, 由此构造出来的双射称作 $b$ 的特征函数.

        $$
        f_b(x)=
        \begin{cases}
        0,x\in b\\
        1,x\notin b
        \end{cases}
        $$

2. 若 $a$ 到 $b$ 存在单射, 则记作 $a\preccurlyeq b$, 直观上表示 $a$ 的元素不会比 $b$ 的多
    - $\preccurlyeq$ 是集合上的偏序关系.
    - $a\subset b\to a\preccurlyeq b$.
    - $a\preccurlyeq b \wedge a\approx c\to c\preccurlyeq b,a\preccurlyeq b \wedge b\approx c\to a\preccurlyeq c$
    - $a\preccurlyeq b\to (\exists c\subset b(a\approx c))$
    - Cantor-Bernstein 定理: $a\preccurlyeq b\wedge b\preccurlyeq a\to a\approx b$, 这说明了 $\preccurlyeq$ 的反对称性.

        !!! note "证明 Cantor-Bernstein 定理的引理"
            $a\subset b\subset c\wedge a\approx c\to a\approx b\approx c$

3. 若 $a\preccurlyeq b \wedge a\not\approx b$, 则记作 $a\prec b$, 直观上表示 $a$ 的元素比 $b$ 的少
    - Cantor 定理: $a\prec \mathcal{P}(a)$, 这说明超穷世界有许多大小不同的实无限.

        !!! note "Cantor 定理的推论"
            1. $Q\approx Z\approx N^{n}\approx N$, $n$ 为任意有限整数.
            2. $C\approx R^{n}\approx R\approx ^NN\approx \mathcal{P}(N)$, $n$ 为任意有限整数.
    
4. 连续统: 由于实数和直线上的点一一对应, 通常将 $R^n$ 称作 $n$ 维连续统. 
    - Lüroth 定理: 一维连续统 $R$ 和二维连续统 $R^2$ 之间不存在连续双射.
    - 连续统假设: 不存在集合 $A$ 使得 $N\prec A\prec R$, 在 ZFC 公理系统下, 连续统假设是不可判定的.

### 5.1.2 有限集与无限集
1. 有限集: 与 $n\in \omega$ 等势的集合
    - 鸽笼原理: 自然数 $n\in \omega$ 与它的任何真子集间不等势, 有限集与任意真子集都不等势.
    - 有限集的子集也是有限集, 有限个有限集的并集是有限集.
2. 无限集: 与 $\forall n\in \omega$ 都不等势的集合, 又称作实无限

### 5.1.3 可数集
1. 定义: 与 $\omega$ 等势的集合, 可数集都是无限集.
2. 可数集的性质:
    1. 若 $a$ 为任意集合且 $a\preccurlyeq \omega$, 则 $a$ 为有限集或可数集.
    2. 若 $a$ 为任意无限集, 则 $\omega \preccurlyeq a$. 也就是说, 可数集是最小的无限集.
    3. 若 $\forall a_i(i\in N)\preccurlyeq \omega$, 则对于任意有限数 $n$, $\bigcup\limits_{i=0}^n a_i \preccurlyeq \omega\wedge \bigcup\limits_{i=0}^\infty a_i \preccurlyeq \omega$; 且有 $a_1\times a_2\times \cdots \times a_n\preccurlyeq \omega$.

## 5.2 基数