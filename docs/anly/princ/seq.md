# 1 序列与极限

## 1.1 序列
1. 序列：以自然数 $n$ 或全体自然数的集合 $\mathbf N$ 为定义域的映射，如果其定义域是 $n \in \mathbf N$，则称为长度为 $n$ 的有穷序列．特别地，定义域为 $0$ 的序列称为空序列，定义域为 $\mathbf N$ 的序列称为无穷序列
    1. 有穷序列：$\left<a_i \mid i < n\right>$ 或 $\left<a_0, a_1, \cdots, a_{n-1}\right>$，其值域表示为 $\left\{a_i \mid i < n\right\}$ 或 $\left\{a_0, a_1, \cdots, a_{n-1}\right\}$．特别地，空序列表示为 $\left<\ \right>$，其值域为 $\varnothing$
    2. 无穷序列：$\left<a_i \mid i \in \mathbf N\right>$ 或 $\left<a_i\right>_{i = 0}^{\infty}$，其值域表示为 $\left\{a_i \mid i \in \mathbf N\right\}$ 或 $\left\{a_i\right\}_{i = 0}^{\infty}$
    3. 由 $A$ 的元素组成的所有有穷序列的集合：$A^* = A^{<\mathbf N} = {\displaystyle \bigcup_{n \in \mathbf N} A^n}$
2. 超穷序列：定义域为序数 $\alpha$ 的映射称为长度为 $\alpha$ 的序列．不严格地定义映射 $\mathbf{F}: \mathbf{On} \rightarrow \mathbf{V}$
    1. 如果存在一个公式 $\varphi(x, y)$ 有 $\forall x \exists ! y \ \varphi(x, y)$，并定义类 $\mathbf{F}=\{(x, y) \mid \varphi(x, y)\}$，则 $\mathbf{F}(x)$ 就是使得 $\varphi(x, y)$ 成立的唯一的 $y$
    2. 假设 $X$ 为集合，$\alpha$ 为序数，令 $X^{<\alpha}=\bigcup\left\{X^{\beta} \mid \beta<\alpha\right\}$．若 $\lambda$ 是基数，则定义 $\kappa^{<\lambda}=\left|X^{<\lambda}\right|$，其中 $|X|=\kappa$
        1. 以 $[\kappa]^{\lambda}$ 表示集合 $\{X \subseteq \kappa\mid |X|=\lambda\}$ 的基数．当 $\kappa<\lambda$ 时，$[\kappa]^{\lambda}=0$
        2. 以 $[\kappa]^{<\lambda}$ 表示集合 $\{X \subseteq \kappa \mid |X|<\lambda\}$ 的基数

## 1.2 数列
1. 数列：以数集作为值域的序列称为数列，通常以正整数集 $\mathbf Z_+$ 作为定义域．一般记为 $a_1, a_2, \cdots, a_n, \cdots$，简记作 $\{a_n\}$
    1. 通项公式：如果数列 $\{a_n\}$ 的第 $n$ 项（即通项）与 $n$ 之间具有函数关系 $f(n)$，则称这个公式为该数列的通项公式
    2. 子列：在数列 $\{a_n\}$ 中，保持原来次序自左往右任意选取无穷多个项的数列 $a_{n_{1}}, a_{n_{2}}, \cdots, a_{n_{k}}, \cdots$ 称为 $\left\{a_{n}\right\}$ 的一个子列，简记作 $\{a_{n_{k}}\}$
    3. 前 $n$ 项和：对于数列 $\{a_n\}$，称 ${\displaystyle \sum_{i=1}^n a_i}$ 为该数列的前 $n$ 项和，记作 $S_n$
        1. $\{S_n\}$ 也是一个数列，且有 $a_n = \left\{\begin{aligned} & S_1, & n = 1 \\ & S_n - S_{n-1}, & n = 2, 3, 4, \cdots \end{aligned}\right.$
        2. 级数：记 ${\displaystyle \sum_{i=1}^\infty a_i = \lim_{n \to \infty} \sum_{i=1}^n a_i = \lim_{n \to \infty} S_n}$ ，称之为无穷级数

        !!! note "$\text{Bernoulli}$ 数"
            设 $S_n^p=1^p+2^p+\cdots+n^p$，则有

            $$
            S_n^p=\dfrac{1}{p+1} n^{p+1}+\dfrac{1}{2} n^p+\dfrac{B_2}{2}\dbinom{p}{1} n^{p-1}+\dfrac{B_3}{3}\dbinom{p}{2}n^{p-2}+\cdots+\dfrac{B_p}{p}\dbinom{p}{p-1}n
            $$

            且

            $$
            \dfrac{1}{p+1}+\dfrac{1}{2}+\dfrac{B_2}{2}\dbinom{p}{1}+\dfrac{B_3}{3}\dbinom{p}{2}+\cdots+\dfrac{B_p}{p}\dbinom{p}{p-1}=1
            $$

            其中 ${\displaystyle \sum_{k=0}^n\dbinom{p+1}{k} B_k=0}$．从而以下结论成立

            1. $(1+B)^{p+1}-B_{p+1}=0$
            2. $\dfrac{S_n^p}{p !}=\dfrac{B_0(n+1)^{p+1}}{0 !(p+1) !}+\dfrac{B_1(n+1)^p}{1 ! p !}+\dfrac{B_2(n+1)^{p-1}}{2 !(p-1) !}+\cdots+\dfrac{B_p(n+1)}{p ! 1 !}$
            3. ${\displaystyle \dfrac{x}{\mathrm{e}^x-1}=\dfrac{B_0}{0 !}+\dfrac{B_1}{1 !} x+\dfrac{B_2}{2 !} x^2+\cdots=\sum_{k=0}^{\infty} \dfrac{B_k}{k !} x^k}$

            据此导出常用的前 $n$ 项和

            4. $1+2+3+\cdots+n=\dfrac{1}{2} n(n+1)$
            5. $1^2+2^2+3^2+\cdots+n^2=\dfrac{1}{6} n(n+1)(2 n+1)$
            6. $1^3+2^3+3^3+\cdots+n^3=\dfrac{1}{4} n^2(n+1)^2$
            7. $1^4+2^4+3^4+\cdots+n^4=\dfrac{1}{30} n(n+1)(2 n+1)\left(3 n^2+3 n-1\right)$
            8. $1^5+2^5+3^5+\cdots+n^5=\dfrac{1}{12} n^2(n+1)^2\left(2 n^2+2 n-1\right)$

2. 数列的分类
    1. 按定义域分类
        1. 有穷数列：以自然数 $n$ 为定义域的数列
        2. 无穷数列：以自然数集 $\mathbf N$ 为定义域的数列
    2. 按值域分类
        1. 有界数列：存在 $M > 0$，对任意定义域中的 $n$ 都有 $|a_n| < M$
        2. 无界数列：对于任意 $M > 0$，总存在定义域中的 $n$ 使得 $|a_n| > M$
    3. 按各项的的增减趋势分类
        1. 常数列：各项都相等的数列
        2. 单调数列：从第二项起每项都大于等于（小于等于）前一项的数列，则称数列为单调递增（递减）数列．特别地，若数列从第二项起每项都大于（小于）前一项，则称数列是严格单调递增（递减）的
        3. 摆动数列：有的项大于其前一项，有的项小于其前一项的数列
3. 差分：对于数列 $\{a_k\}$，称 $\Delta a_k = a_{k+1} - a_k \ (k \in \mathbf Z_+)$ 为 $\{a_k\}$ 的一阶差分，数列 $\{\Delta a_k\}$ 称为 $\{a_k\}$ 的一阶差分数列
    1. 高阶差分：设 $r \in \mathbf Z_+$，称 $\Delta^r a_k = \Delta(\Delta^{r-1}a_k) \ (k \in \mathbf Z_+)$ 为 $\{a_k\}$ 的 $r$ 阶差分，数列 $\{\Delta^r a_k\}$ 称为 $\{a_k\}$ 的 $r$ 阶差分数列
    2. 差分的性质：对于数列 $\{a_k\}, \{b_k\}$
        1. $\Delta(\lambda a_k + \mu b_k) = \lambda \Delta a_k + \mu \Delta b_k$，其中 $\lambda, \mu$ 为常数
        2. 若 $\Delta a_k = \Delta b_k$，则 $a_k = b_k + c \ (k \in \mathbf Z_+)$，其中 $c$ 为常数
        3. ${\displaystyle \sum_{k=1}^n a_k \Delta b_k + \sum_{k=1}^n} b_{k+1} \Delta a_k = a_{n+1} b_{n+1} - a_1 b_1$

### 1.2.1 等差数列
1. 等差数列：如果数列满足 $a_n = a_{n-1} + d \ (n \geqslant 2)$，则称数列 $\{a_n\}$ 为等差数列，常数 $d$ 为等差数列的公差
    1. 通项公式：$a_n = a_m + (n - m)d$
    2. 前 $n$ 项和：$S_n = na_1 + \dfrac 12n(n - 1)d$
    3. 等差中项：如果三个数 $x, A, y$ 成等差数列，则称 $A = \dfrac{x+y}{2}$ 为 $x, y$ 的等差中项
2. 等差公式的性质：设 $\{a_n\}$ 为公差为 $d$ 的等差数列
    1. 当 $d > 0$ 时，$\{a_n\}$ 为递增数列；当 $d < 0$ 时，$\{a_n\}$ 为递减数列；当 $d = 0$ 时，$\{a_n\}$ 为常数列
    2. 设 $k \in \mathbf R$，则 $\{a_n + k\}$ 与 $\{ka_n\}$ 仍为等差数列，公差分别为 $d$ 与 $kd$
    3. 设 $r, s, t \in \mathbf Z_+$，则 $r, s, t$ 成等差数列当且仅当 $a_r, a_s, a_t$ 成等差数列
    4. 设 $k, l, m, p \in \mathbf Z_+$，则 $k + l = m + p \leftrightarrow a_k + a_l = a_m + a_p$
    5. 设 $k \in \mathbf Z_+$，则 $S_k, (S_{2k} - S_k), (S_{3k} - S_{2k}), \cdots$ 成等差数列，且其公差为 $k^2d$
3. 高阶等差数列：对于数列 $\{a_n\}$，若有正整数 $m$ 使得 $\{\Delta^m a_n\}$ 为非零常数列，则称 $\{a_m\}$ 为 $m$ 阶等差数列
    1. 当 $m \geqslant 2$ 时，将 $m$ 阶等差数列称为高阶等差数列
    2. 高阶等差数列的通项公式
        1. 设 $\{a_n\}$ 为高阶等差公式，则 $a_n = {\displaystyle \sum_{k=0}^{n-1} C_{n-1}^k \Delta^k a_1} \ (n \geqslant 2)$
        2. 若 $\{a_n\}$ 为 $r$ 阶等差数列，则当 $2 \leqslant r \leqslant n - 1$ 时，$a_n = {\displaystyle \sum_{k=0}^{r} C_{n-1}^k \Delta^k a_1}$
        3. $\{a_n\}$ 是 $m$ 阶等差数列当且仅当 $a_n$ 是 $n$ 的 $m$ 次多项式
    3. 前 $n$ 项和：设 $\{a_n\}$ 是 $m$ 阶等差数列，则 $S_n = {\displaystyle \sum_{k=0}^m C_n^{k+1} \Delta^k a_1}$ 是关于 $n$ 的 $m + 1$ 次多项式

### 1.2.2 等比数列
1. 等比数列：如果数列满足 $\dfrac{a_n}{a_{n-1}} = q \ (n \geqslant 2, q \neq 0)$，则称数列 $\{a_n\}$ 为等比数列，常数 $q$ 为等比数列的公比
    1. 通项公式：$a_n = a_1 q^{n-1}, n \in \mathbf Z_+$
    2. 前 $n$ 项和：$S_n = \left\{\begin{aligned} & \dfrac{a_1(1 - q^n)}{1 - q}, & q \neq 1 \\ & na_1, & q = 1 \end{aligned}\right.$
2. 公比 $q$ 的取值决定了等比数列 $\{a_n\}$ 的趋势
    1. $q = 1$ 时，$\{a_n\}$ 为常数列
    2. $q > 1$ 时，若 $a_1 > 0$，则 $\{a_n\}$ 为正项递增数列；若 $a_1 < 0$，则 $\{a_n\}$ 为负向递减数列
    3. $0 < q < 1$ 时，若 $a_1 > 0$，则 $\{a_n\}$ 为正项递减数列；若 $a_1 < 0$，则 $\{a_n\}$ 为负向递增数列
    4. $q < 0$ 时，$\{a_n\}$ 为摆动数列
3. 无穷递缩等比数列：公比 $|q| < 1$ 的等比数列，其无穷级数 ${\displaystyle \sum_{n=1}^\infty a_n = \dfrac{a_1}{1 - q}}$

### 1.2.3 线性递推数列
1. 递推数列：如果数列 $\{a_n\}$ 满足递推关系 $a_{n+k} = f(a_{n+k-1}, a_{n+k-2}, \cdots, a_n)$，则称其为 $k$ 阶递推数列
    1. 如果 $k$ 阶数列的递推公式是线性的，即 $a_{n+k} = p_1 a_{n+k-1} + p_2 a_{n+k-2} + \cdots + p_k a_n + f(n)$，其中 $n \in \mathbf Z_+, p_1, p_2, \cdots, p_k$ 是常数且 $p_k \neq 0$，则称 $\{a_n\}$ 为 $k$ 阶线性递推数列
    2. $k$ 阶线性递推数列的递推公式 $f(n) = 0$，则称其为 $k$ 阶线性递归数列
2. $k$ 阶线性递归数列：设 $a_{n+k} = p_1 a_{n+k-1} + p_2 a_{n+k-2} + \cdots + p_k a_n$
    1. 特征方程：$x^k - c_1 x^{n-1} - \cdots - a_k = 0$，其 $k$ 个根 $q_1, q_2, \cdots, q_n \in \mathbf C$ 称为递推关系的特征根
    2. 通解：若特征方程有 $t$ 个互异的根，$q_1, q_2, \cdots, q_t$ 的重数分别为 $m_1, m_2, \cdots, m_t$ 且有 $k = {\displaystyle \sum_{i=1}^t} m_i$．则递推关系的同解为 $a_n = {\displaystyle \sum_{i=1}^t \left(\sum_{j=1}^{m_i} c_{ij} \cdot n^{j-1} q_i^n\right)}$，其中 $c_{ij} \ (1 \leqslant j \leqslant m_i, 1 \leqslant i \leqslant t)$ 为常数
3. $k$ 阶线性递推数列：设 $a_{n+k} = p_1 a_{n+k-1} + p_2 a_{n+k-2} + \cdots + p_k a_n + f(n)$
    1. 递推关系的通解为 $a_n = a_n' + a_n^*$，其中 $a_n'$ 是对应的 $k$ 阶线性递归关系 $a_{n+k} = p_1 a_{n+k-1} + p_2 a_{n+k-2} + \cdots + p_k a_n$ 的通解，$a_n^*$ 为 $k$ 阶线性递推关系的特解
    2. 对于一般的 $f(n)$ 没有普遍解法
        1. 当 $f(n)$ 是 $n$ 的 $t$ 次多项式时，对应的特解形式为 $a_n^* = {\displaystyle \sum_{i=0}^t p_i n^i}$，其中 $p_i \ (0 \leqslant i \leqslant t)$ 为常数
        2. 当 $f(n) = \alpha^n$ 时，若 $\alpha$ 是对应递归关系的 $m$ 重特征根，则特解为 $a_n^* = p \cdot n^m \alpha^n$，否则 $a_n^* = p \cdot \alpha^n$，其中 $p$ 为常数

    !!! note "低阶线性递推数列例举"

        1. 一阶线性递推数列：设数列 $\{a_n\}$ 有 $\left\{\begin{aligned} & a_1 = a \\ & a_{n+1} = p a_n + q \end{aligned}\right.$，其中 $p, q, a$ 均为常数，$p \neq 0$ 且 $p \neq 1$．则 $a_n = p^{n-1}\left(a - \dfrac{q}{1 - p}\right) + \dfrac{q}{1 - p}$，当 $q = 0$ 时，$\{a_n\}$ 是一个等比数列
        2. 二阶线性递归数列：设数列 $\{a_n\}$ 有 $\left\{\begin{aligned} & a_1 = a, a_2 = b \\ & a_{n + 1} = p a_n + q a_{n - 1} \end{aligned}\right.$，其中 $p, q \neq 0$ 且 $n \geqslant 2$
            1. 若 $p + q = 1$，$a_n = a + (a - b) \cdot \dfrac{q + (-q)^n}{1 + q}$
            2. 若 $p + q \neq 1$，则 $x^2 - px - q$ 为 $\{a_n\}$ 的特征方程，设 $x_1, x_2$ 为特征根
                1. 若 $x_1 \neq x_2$，则 $a_n = \dfrac{ax_2 - b}{x_2 - x_1} x_1^{n-1} - \dfrac{ax_1 - b}{x_2 - x_1} x_2^{n-1}$
                2. 若 $x_1 = x_2 = \dfrac p2$，则 $a_n = \left(\dfrac p2\right)^{n-2} \left[\left(pa - b\right) - n\left(\dfrac{pa}{2} - b\right)\right]$

## 1.3 函数序列

## 1.4 极限论
### 1.4.1 数列极限
1. 数列极限：设 $\left\{x_{n}\right\}$ 是一个数列，$a$ 是实数．若对任意给定的 $\varepsilon>0$，总存在一个正整数 $N$，当 $n>N$ 时都有 $\left|x_{n}-a\right|<\varepsilon$，则称 $a$ 是数列 $\left\{x_{n}\right\}$ 的极限，或称数列 $\left\{x_{n}\right\}$ 收敛于 $a$ 记为 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$ 或 $x_{n} \rightarrow a \ (n \rightarrow \infty)$．此时也称数列 $\left\{x_{n}\right\}$ 极限存在
    1. 数列极限的性质
        1. 保序性：若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a, \lim _{n \rightarrow \infty} y_{n}=b}$ 且 $a>b$，则总存在正整数 $N$，当 $n>N$ 时，不等式 $x_{n}>y_{n}$ 成立
            - 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a, \lim _{n \rightarrow \infty} y_{n}=b}$，且存在正整数 $N$ 使得当 $n>N$ 时，不等式 $x_{n}>y_{n}$ 都成立，则 $a \geqslant b$
            - 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$ 且 $a>b$（其中 $b$ 为常数），则存在正整数 $N$，当 $n>N$ 时有 $x_{n}>b$
            - 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$ 且 $a<c$（其中 $c$ 为常数），则当 $n$ 充分大时有 $x_{n}<c$．特别地，若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$ 且 $a<0$，则当 $n$ 充分大时有 $x_{n}<0$
        2. 唯一性：若数列 $\left\{x_{n}\right\}$ 收敛，则它的极限唯一
        3. 有界性：收敛数列有界
        4. 夹逼准则：若存在正整数 $N$，当 $n>N$ 时有 $x_{n} \leqslant y_{n} \leqslant z_{n}$ 且 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=\lim _{n \rightarrow \infty} z_{n}=a}$，则有 ${\displaystyle \lim _{n \rightarrow \infty} y_{n}=a}$
    2. 数列极限的运算
        1. 若数列 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛，则它们的和与差 $\left\{x_{n} \pm y_{n}\right\}$ 也收玫，且有 ${\displaystyle \lim _{n \rightarrow \infty}\left(x_{n} \pm y_{n}\right)=\lim _{n \rightarrow \infty} x_{n} \pm \lim _{n \rightarrow \infty} y_{n}}$
        2. 若 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛，则 $\left\{x_{n} y_{n}\right\}$ 也收敛，且 ${\displaystyle \lim _{n \rightarrow \infty} x_{n} y_{n}=\lim _{n \rightarrow \infty} x_{n} \cdot \lim _{n \rightarrow \infty} y_{n}}$
        3. 若 $\left\{x_{n}\right\}$ 为有界数列，$\left\{y_{n}\right\}$ 为无穷小量，则它们的积 $\left\{x_{n} y_{n}\right\}$ 是无穷小量
        4. 若 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛且 ${\displaystyle \lim _{n \rightarrow \infty} y_{n} \neq 0}$，则 $\left\{\dfrac{x_{n}}{y_{n}}\right\}$ 也收敛，且 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{x_{n}}{y_{n}}=\dfrac{{\displaystyle \lim _{n \rightarrow \infty} x_{n}}}{{\displaystyle \lim _{n \rightarrow \infty} y_{n}}}}$
2. 无穷小量：当 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=0}$ 时，称数列 $x_n$ 为无穷小量．设 $y, z$ 是两个无穷小量
    1. 若 $\dfrac{y}{z} \rightarrow 0$ 或 $\dfrac{z}{y} \rightarrow \infty$，则称 $y$ 关于 $z$ 是高阶无穷小量或 $z$ 关于 $y$ 是低阶无穷小量，记做 $y=o(z)$
    2. 若 $\dfrac{y}{z} \rightarrow a \neq 0$，则称 $y$ 和 $z$ 是同阶无穷小量．一般地，若存在常数 $A>0, B>0$，变量 $y$ 和 $z$ 自某值以后有 ${\displaystyle A \leqslant\left|\dfrac{y}{z}\right| \leqslant B}$，则称 $y$ 和 $z$ 是同阶无穷小量，记为 $y=O(z)$ 或 $z=O(y)$
    3. 当 $\dfrac{y}{z} \rightarrow 1$ 时，称 $y, z$ 是等价无穷小量，记为 $y \sim z$
    4. 若以 $x$ 作为基本无穷小量，则当 $y$ 与 $x^{k}$（$k$ 为某一正数）为同阶无穷小量 时，称 $y$ 为 $k$ 阶无穷小量．特别地，当 $\dfrac{y}{x^{k}} \rightarrow a \neq 0$ 时，$y$ 为 $k$ 阶无穷小量，此时 $y$ 与 $a x^{k}$ 等价，称 $a x^{k}$ 为无穷小量 $y$ 的主要部分
3. 无穷大量：设 $\left\{x_{n}\right\}$ 是一个数列，如果对任意给定的 $G>0$，总存在正整数 $N$，当 $n>N$ 时有 $\left|x_{n}\right|>G$，则称 $\left\{x_{n}\right\}$ 是一个无穷大量，记为 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=\infty}$ 或 $x_{n} \rightarrow \infty \ (n \rightarrow \infty)$．无穷大量也有类似无穷小量的阶
    1. 无穷大量和无穷小量的关系：若 $\left\{x_{n}\right\}$ 为无穷大量，则其倒数所成的数列 $\left\{\dfrac{1}{x_{n}}\right\}$ 为无穷小量；若 $\left\{x_{n}\right\}$ 为无穷小量且 $x_{n} \neq 0 \ (n=1,2,3, \cdots)$，则其倒数所成的数列 $\left\{\dfrac{1}{x_{n}}\right\}$ 为无穷大量
    2. 正无穷大与负无穷大：对任意给定的 $G>0$，总存在 $N$，当 $n>N$ 时，若有 $x_{n}>$ $G$，则称 $\left\{x_{n}\right\}$ 是正无穷大量；若有 $-x_{n}>$ $G$，则称 $\left\{x_{n}\right\}$ 是负无穷大量
    3. 无穷大量的运算
        1. 设 $\left\{x_{n}\right\}$ 与 $\left\{y_{n}\right\}$ 都是正（负）无穷大量，则其和 $\left\{x_{n}+y_{n}\right\}$ 也是正（负）无穷大量
        2. 设 $\left\{x_{n}\right\}$ 是无穷大量，而 $\left\{y_{n}\right\}$ 是有界数列，则其和 $\left\{x_{n}+y_{n}\right\}$ 是无穷大量
        3. 设 $\left\{x_{n}\right\}$ 是无穷大量，数列 $\left\{y_{n}\right\}$ 具有以下特性：存在某个 $N$，当 $n>N$ 时有 $\left|y_{n}\right| \geqslant \delta>0$，其中 $\delta$ 是一个确定的数，则其乘积 $\left\{x_{n} y_{n}\right\}$ 是无穷大量
        4. 设 $\left\{x_{n}\right\}$ 是无穷大量，$\left\{y_{n}\right\}$ 收敛于 $a \neq 0$，则其乘积 $\left\{x_{n} y_{n}\right\}$ 是无穷大量
4. 上极限与下极限

### 1.4.2 一元极限
1. 函数极限的定义
    1. 函数在 $x_{0}$ 点的极限：设函数 $f(x)$ 在 $x_{0}$ 点的某个去心球形邻域有定义
        1. 函数值趋于有穷的极限：设 $A$ 是一个定数，若对于任意给定的 $\varepsilon>0$，一定存在 $\delta>0$ 使得当 $0<$ $\left|x-x_{0}\right|<\delta$ 时，总有 $|f(x)-A|<\varepsilon$，则称 $A$ 是函数 $f(x)$ 在 $x_{0}$ 点的极限，记作 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A}$ 或 $f(x) \rightarrow A \ \left(x \rightarrow x_{0}\right)$．此时也称函数 $f(x)$ 在 $x_{0}$ 点极限存在，其极限值是 $A$
        2. 函数值趋于正无穷大的极限：若对于任何 $G>0$，存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)>G$，则称函数 $f(x)$ 在 $x_{0}$ 点趋于正无穷大（或发散到正无穷大），记为 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=+\infty}$ 或 $f(x) \rightarrow+\infty\left(x \rightarrow x_{0}\right)$
        3. 函数值趋于负无穷大的极限：若对于任何 $G>0$，存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)<-G$，则称函数 $f(x)$ 在 $x_{0}$ 点趋于负无穷大（或发散到负无穷大），记为 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=-\infty}$ 或 $f(x) \rightarrow-\infty\left(x \rightarrow x_{0}\right)$
        4. 函数值趋于无穷大的极限：若对于任何 $G>0$，存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时，有 $|f(x)|>G$，则称函数 $f(x)$ 在 $x_{0}$ 点趋于无穷大（或发散到无穷大），记为 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=\infty}$ 或 $f(x) \rightarrow \infty\left(x \rightarrow x_{0}\right)$
    2. 函数在无穷远处的极限（以函数值趋于有穷的极限为例）
        1. 函数在正无穷远处的极限：若对任意给定的 $\varepsilon>0$，存在 $X>0$，当 $x>X$ 时，总有 $|f(x)-A|<\varepsilon$，则称 $A$ 为 $f(x)$ 在正无穷远处的极限，或称 $A$ 是当 $x \rightarrow+\infty$ 时 $f(x)$ 的极限，记为 ${\displaystyle \lim _{x \rightarrow+\infty} f(x)=A}$ 或 $f(+\infty)=A$ 或 $f(x) \rightarrow A \ (x \rightarrow+\infty)$
        2. 函数在负无穷远处的极限：若对任意给定的 $\varepsilon>0$，存在 $X>0$，当 $x<-X$ 时，总有 $|f(x)-A|<\varepsilon$，则称 $A$ 为 $f(x)$ 在负无穷远处的极限，或称 $A$ 是当 $x \rightarrow-\infty$ 时 $f(x)$ 的极限，记为 ${\displaystyle \lim _{x \rightarrow-\infty} f(x)=A}$ 或 $f(-\infty)=A$ 或 $f(x) \rightarrow A \ (x \rightarrow-\infty)$
        3. 函数在无穷远处的极限：若对任意给定的 $\varepsilon>0$，存在 $X>0$，当 $|x|>X$ 时，有 $|f(x)-A|<\varepsilon$，则称 $A$ 是 $f(x)$ 在无穷远处的极限，或称 $A$ 为当 $x \rightarrow \infty$ 时 $f(x)$ 的极限，记为 ${\displaystyle \lim _{x \rightarrow \infty} f(x)=A}$ 或 $f(\infty)=A$ 或 $f(x) \rightarrow A \ (x \rightarrow \infty)$
    3. 单侧极限（以函数值趋于有穷的极限为例）
        1. 右极限：设存在 $\eta > 0$ 使得函数 $f(x)$ 在 $\left(x_{0}, x_{0}+\eta\right)$ 有定义，$A$ 是一个定数．若对任意给定的 $\varepsilon>0$，总存在 $\delta>0$，当 $0<x-x_{0}<\delta$ 时有 $|f(x)-A|<\varepsilon$，则称 $A$ 是函数 $f(x)$ 在 $x_{0}$ 点的右极限，记为 ${\displaystyle \lim _{x \rightarrow x_{0}+0} f(x)=A}$ 或 $f\left(x_{0}+0\right)=A$ 或 $f(x) \rightarrow A \ \left(x \rightarrow x_{0}+0\right)$
        2. 左极限：设存在 $\eta > 0$ 使得函数 $f(x)$ 在 $\left(x_{0}-\eta, x_{0}\right)$ 有定义，$A$ 是一个定数．若对任意给定的 $\varepsilon>0$，总存在 $\delta>0$，当 $0<x_{0}-x<\delta$ 时有 $|f(x)-A|<\varepsilon$，则称 $A$ 是函数 $f(x)$ 在 $x_{0}$ 点的左极限，记为 ${\displaystyle \lim _{x \rightarrow x_{0}-0} f(x)=A}$ 或 $f\left(x_{0}-0\right)=A$ 或 $f(x) \rightarrow A \ \left(x \rightarrow x_{0}-0\right)$
2. 函数极限的性质
    1. 若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} g(x)=B}$ 且 $A>B$，则存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)>g(x)$
    2. 若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} g(x)=B}$ 且存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x) \leqslant$ $g(x)$，则 $A \leqslant B$
    3. 若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A}$ 而 $A>B$（或 $A<B$），则存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)>B$（或 $f(x)<B$）
    4. 唯一性：若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} f(x)=B}$，则 $A=B$
    5. 夹逼性：若存在 $\delta>0$，使当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x) \leqslant g(x) \leqslant h(x)$ 且 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=\lim _{x \rightarrow x_{0}} h(x)=A}$，则 ${\displaystyle \lim _{x \rightarrow x_{0}} g(x)=A}$
    6. 局部有界性：若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A}$，则存在 $\delta>0$ 使得 $f(x)$ 在区间 $\left(x_{0}-\delta, x_{0}\right) \cup\left(x_{0}, x_{0}+\delta\right)$ 内有界
    7. $\text{Heine}$ 定理：${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A}$ 当且仅当对任何以 $x_{0}$ 为极限的数列 $\left\{x_{n}\right\}\left(x_{n} \neq x_{0}\right)$ 都有 $f\left(x_{n}\right) \rightarrow A \ (n \rightarrow \infty)$
    8. 两个重要极限：${\displaystyle \lim _{x \rightarrow 0} \dfrac{\sin x}{x}=1}$ 与 ${\displaystyle \lim _{x \rightarrow \infty}\left(1+\dfrac{1}{x}\right)^{x}=\mathrm{e}}$
3. 函数极限的运算：设 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} g(x)=B}$
    1. ${\displaystyle \lim _{x \rightarrow x_{0}}[f(x) \pm g(x)]=A \pm B, \lim _{x \rightarrow x_{0}} f(x) g(x)=AB}$
    2. 若 $B\neq 0$，则 ${\displaystyle \lim _{x \rightarrow x_{0}} \dfrac{f(x)}{g(x)}=\dfrac{A}{B}}$
    3. 若 $A=0$ 且 $g(x)$ 在某区间 $\left(x_{0}-\delta, x_{0}\right) \cup\left(x_{0}, x_{0}+\delta\right)$ 有界，则 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x) g(x)=0}$
4. $\text{L'Hospital}$ 法则：设 $f(x), g(x)$ 为两个函数，若
    1. $f(x)$ 和 $g(x)$ 在 $(a, a+\delta)$ 上有定义（$\delta > 0$），且 ${\displaystyle \lim _{x \rightarrow a+0} f(x)=0, \lim _{x \rightarrow a+0} g(x)=0}$
    2. $f(x)$ 和 $g(x)$ 在 $(a, a+\delta)$ 可导，$g^{\prime}(x) \neq 0$ 且 ${\displaystyle \lim _{x \rightarrow a+0} \dfrac{f^{\prime}(x)}{g^{\prime}(x)}=A}$（包括 $A = \infty$ 的情形）

    则 ${\displaystyle \lim _{x \rightarrow a+0} \dfrac{f(x)}{g(x)}=\lim _{x \rightarrow a+0} \dfrac{f^{\prime}(x)}{g^{\prime}(x)}=A}$．若

    3. $f(x)$ 和 $g(x)$ 在 $(a, a+\delta)$ 上有定义（$\delta>0$），且 ${\displaystyle \lim _{x \rightarrow a+0} f(x)=\infty, \lim _{x \rightarrow a+0} g(x)=\infty}$
    4. $f(x)$ 和 $g(x)$ 在 $(a, a+\delta)$ 可导，$g^{\prime}(x) \neq 0$ 且 ${\displaystyle \lim _{x \rightarrow a+0} \dfrac{f^{\prime}(x)}{g^{\prime}(x)}=A}$（包括 $A = \infty$ 的情形）

    则 ${\displaystyle \lim _{x \rightarrow a+0} \dfrac{f(x)}{g(x)}=\lim _{x \rightarrow a+0} \dfrac{f^{\prime}(x)}{g^{\prime}(x)}=A}$．以上定理也适用 $x \rightarrow a-0$，$x \rightarrow a$ 与 $x \rightarrow \infty$ 的情形

### 1.4.2 多元极限

## 1.5 级数
