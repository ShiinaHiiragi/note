# 1 序列与极限

- 序列：以自然数 $n$ 或全体自然数的集合 $\mathbf N$ 为定义域的映射，如果其定义域是 $n \in \mathbf N$，则称为长度为 $n$ 的有穷序列．特别地，定义域为 $0$ 的序列称为空序列，定义域为 $\mathbf N$ 的序列称为无穷序列
    1. 有穷序列：$\left<a_i \mid i < n\right>$ 或 $\left<a_0, a_1, \cdots, a_{n-1}\right>$，其值域表示为 $\left\{a_i \mid i < n\right\}$ 或 $\left\{a_0, a_1, \cdots, a_{n-1}\right\}$．特别地，空序列表示为 $\left<\ \right>$，其值域为 $\varnothing$
    2. 无穷序列：$\left<a_i \mid i \in \mathbf N\right>$ 或 $\left<a_i\right>_{i = 0}^{\infty}$，其值域表示为 $\left\{a_i \mid i \in \mathbf N\right\}$ 或 $\left\{a_i\right\}_{i = 0}^{\infty}$
    3. 由 $A$ 的元素组成的所有有穷序列的集合：$A^* = A^{<\mathbf N} = {\displaystyle \bigcup_{n \in \mathbf N} A^n}$

## 1.1 数列
1. 数列：以数集作为值域的序列称为数列，通常以正整数集 $\mathbf Z_+$ 作为定义域．一般记为 $a_1, a_2, \cdots, a_n, \cdots$，简记作 $\{a_n\}$
    1. 按定义域分类
        1. 有穷数列：以自然数 $n$ 为定义域的数列
        2. 无穷数列：以自然数集 $\mathbf N$ 为定义域的数列
    2. 按值域分类
        1. 有界数列：存在 $M > 0$，对任意定义域中的 $n$ 都有 $|a_n| < M$
        2. 无界数列：对于任意 $M > 0$，总存在定义域中的 $n$ 使得 $|a_n| > M$
    3. 按各项的的增减趋势分类
        1. 常数列：各项都相等的数列
        2. 递增数列：从第二项起每项都大于前一项的数列
        3. 递减数列：从第二项起每项都小于前一项的数列
        4. 摆动数列：有的项大于其前一项，有的项小于其前一项的数列
2. 通项公式：如果数列 $\{a_n\}$ 的第 $n$ 项（即通项）与 $n$ 之间具有函数关系 $f(n)$，则称这个公式为该数列的通项公式
3. 前 $n$ 项和：对于数列 $\{a_n\}$，称 ${\displaystyle \sum_{i=1}^n a_i}$ 为该数列的前 $n$ 项和，记作 $S_n$
    1. $\{S_n\}$ 也是一个数列，且有 $a_n = \left\{\begin{aligned} & S_1, & n = 1 \\ & S_n - S_{n-1}, & n = 2, 3, 4, \cdots \end{aligned}\right.$
    2. 级数：记 ${\displaystyle \sum_{i=1}^\infty a_i = \lim_{n \to \infty} \sum_{i=1}^n a_i = \lim_{n \to \infty} S_n}$ ，称之为无穷级数
4. 差分：对于数列 $\{a_k\}$，称 $\Delta a_k = a_{k+1} - a_k \ (k \in \mathbf Z_+)$ 为 $\{a_k\}$ 的一阶差分，数列 $\{\Delta a_k\}$ 称为 $\{a_k\}$ 的一阶差分数列
    1. 高阶差分：设 $r \in \mathbf Z_+$，称 $\Delta^r a_k = \Delta(\Delta^{r-1}a_k) \ (k \in \mathbf Z_+)$ 为 $\{a_k\}$ 的 $r$ 阶差分，数列 $\{\Delta^r a_k\}$ 称为 $\{a_k\}$ 的 $r$ 阶差分数列
    2. 差分的性质：对于数列 $\{a_k\}, \{b_k\}$
        1. $\Delta(\lambda a_k + \mu b_k) = \lambda \Delta a_k + \mu \Delta b_k$，其中 $\lambda, \mu$ 为常数
        2. 若 $\Delta a_k = \Delta b_k$，则 $a_k = b_k + c \ (k \in \mathbf Z_+)$，其中 $c$ 为常数
        3. ${\displaystyle \sum_{k=1}^n a_k \Delta b_k + \sum_{k=1}^n} b_{k+1} \Delta a_k = a_{n+1} b_{n+1} - a_1 b_1$

### 1.1.1 等差数列
1. 等差数列：如果数列满足 $a_n = a_{n-1} + d（n \geqslant 2）$，则称数列 $\{a_n\}$ 为等差数列，常数 $d$ 为等差数列的公差
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

### 1.1.2 等比数列
1. 等比数列：如果数列满足 $\dfrac{a_n}{a_{n-1}} = q \ (n \geqslant 2, q \neq 0)$，则称数列 $\{a_n\}$ 为等比数列，常数 $q$ 为等比数列的公比
    1. 通项公式：$a_n = a_1 q^{n-1}, n \in \mathbf Z_+$
    2. 前 $n$ 项和：$S_n = \left\{\begin{aligned} & \dfrac{a_1(1 - q^n)}{1 - q}, & q \neq 1 \\ & na_1, & q = 1 \end{aligned}\right.$
2. 公比 $q$ 的取值决定了等比数列 $\{a_n\}$ 的趋势
    1. $q = 1$ 时，$\{a_n\}$ 为常数列
    2. $q > 1$ 时，若 $a_1 > 0$，则 $\{a_n\}$ 为正项递增数列；若 $a_1 < 0$，则 $\{a_n\}$ 为负向递减数列
    3. $0 < q < 1$ 时，若 $a_1 > 0$，则 $\{a_n\}$ 为正项递减数列；若 $a_1 < 0$，则 $\{a_n\}$ 为负向递增数列
    4. $q < 0$ 时，$\{a_n\}$ 为摆动数列
3. 无穷递缩等比数列：公比 $|q| < 1$ 的等比数列，其无穷级数 ${\displaystyle \sum_{n=1}^\infty a_n = \dfrac{a_1}{1 - q}}$

### 1.1.3 线性递推数列
1. 递推数列：如果数列 $\{a_n\}$ 满足递推关系 $a_{n+k} = f(a_{n+k-1}, a_{n+k-2}, \cdots, a_n)$，则称其为 $k$ 阶递推数列
    1. 如果 $k$ 阶数列的递推公式是线性的，即 $a_{n+k} = p_1 a_{n+k-1} + p_2 a_{n+k-2} + \cdots + p_k a_n + f(n)$，其中 $n \in \mathbf Z_+, p_1, p_2, \cdots, p_k$ 是常数且 $p_k \neq 0$，则称 $\{a_n\}$ 为 $k$ 阶线性递推数列
    2. $k$ 阶线性递推数列的递推公式 $f(n) = 0$，则称其为 $k$ 阶线性递归数列．
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

## 1.2 函数序列

## 1.3 数列与极限

## 1.4 级数
