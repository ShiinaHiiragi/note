# 1 序列与极限

## 1.1 序列
1. 序列：以自然数 $n$ 或全体自然数的集合 $\mathbf N$ 为定义域的映射，如果其定义域是 $n \in \mathbf N$，则称为长度为 $n$ 的有穷序列．特别地，定义域为 $0$ 的序列称为空序列，定义域为 $\mathbf N$ 的序列称为无穷序列
    1. 有穷序列：$\left<a_i \mid i < n\right>$ 或 $\left<a_0, a_1, \cdots, a_{n-1}\right>$，其值域表示为 $\left\{a_i \mid i < n\right\}$ 或 $\left\{a_0, a_1, \cdots, a_{n-1}\right\}$．特别地，空序列的表示为 $\left<\ \right>$，其值域为 $\varnothing$
    2. 无穷序列：$\left<a_i \mid i \in \mathbf N\right>$ 或 $\left<a_i\right>_{i = 0}^{\infty}$，其值域表示为 $\left\{a_i\right\}_{i = 0}^{\infty}, \left\{a_i\right\}_{i \geqslant 0}$ 或 $\left\{a_i \mid i \in \mathbf N\right\}$
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
        1. $\{S_n\}$ 也是一个数列，且有 $a_n = \left\{\begin{aligned} & S_1, & n = 1 \\ & S_n - S_{n-1}, & n > 1 \end{aligned}\right.$
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

## 1.3 极限论
### 1.3.1 数列极限
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
        1. 若数列 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛，则它们的和与差 $\left\{x_{n} \pm y_{n}\right\}$ 也收敛，且有 ${\displaystyle \lim _{n \rightarrow \infty}\left(x_{n} \pm y_{n}\right)=\lim _{n \rightarrow \infty} x_{n} \pm \lim _{n \rightarrow \infty} y_{n}}$
        2. 若 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛，则 $\left\{x_{n} y_{n}\right\}$ 也收敛，且 ${\displaystyle \lim _{n \rightarrow \infty} x_{n} y_{n}=\lim _{n \rightarrow \infty} x_{n} \cdot \lim _{n \rightarrow \infty} y_{n}}$
        3. 若 $\left\{x_{n}\right\}$ 为有界数列，$\left\{y_{n}\right\}$ 为无穷小量，则它们的积 $\left\{x_{n} y_{n}\right\}$ 是无穷小量
        4. 若 $\left\{x_{n}\right\},\left\{y_{n}\right\}$ 均收敛且 ${\displaystyle \lim _{n \rightarrow \infty} y_{n} \neq 0}$，则 $\left\{\dfrac{x_{n}}{y_{n}}\right\}$ 也收敛，且 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{x_{n}}{y_{n}}=\dfrac{{\displaystyle \lim _{n \rightarrow \infty} x_{n}}}{{\displaystyle \lim _{n \rightarrow \infty} y_{n}}}}$
    3. 收敛准则
        1. 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$，则 $\left\{x_{n}\right\}$ 的任何子列 $\left\{x_{n_{k}}\right\}$ 都收敛于 $a$
        2. 若对任何 $\left\{x_{n}\right\}, x_{n} \rightarrow x_{0} \ (n \rightarrow \infty), x_{n} \neq x_{0}$ 都有 $\left\{f\left(x_{n}\right)\right\}$ 收敛，则 $f(x)$ 在 $x_{0}$ 的极限存在
        3. 若 $\left\{x_{n}\right\}$ 是一个无界数列，则存在子列 $x_{n_{k}} \rightarrow \infty(k \rightarrow \infty)$
2. 无穷小量：当 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=0}$ 时，称数列 $x_n$ 为无穷小量．设 $y, z$ 是两个无穷小量
    1. 若 $\dfrac{y}{z} \rightarrow 0$ 或 $\dfrac{z}{y} \rightarrow \infty$，则称 $y$ 关于 $z$ 是高阶无穷小量或 $z$ 关于 $y$ 是低阶无穷小量，记做 $y=o(z)$
    2. 若 $\dfrac{y}{z} \rightarrow a \neq 0$，则称 $y$ 和 $z$ 是同阶无穷小量．一般地，若存在常数 $A>0, B>0$，变量 $y$ 和 $z$ 自某值以后有 ${\displaystyle A \leqslant\left|\dfrac{y}{z}\right| \leqslant B}$，则称 $y$ 和 $z$ 是同阶无穷小量，记为 $y=O(z)$ 或 $z=O(y)$
    3. 当 $\dfrac{y}{z} \rightarrow 1$ 时，称 $y, z$ 是等价无穷小量，记为 $y \sim z$
    4. 若以 $x$ 作为基本无穷小量，则当 $y$ 与 $x^{k}$（$k$ 为某一正数）为同阶无穷小量时，称 $y$ 为 $k$ 阶无穷小量．特别地，当 $\dfrac{y}{x^{k}} \rightarrow a \neq 0$ 时，$y$ 为 $k$ 阶无穷小量，此时 $y$ 与 $a x^{k}$ 等价，称 $a x^{k}$ 为无穷小量 $y$ 的主要部分
3. 无穷大量：设 $\left\{x_{n}\right\}$ 是一个数列，如果对任意给定的 $G>0$，总存在正整数 $N$，当 $n>N$ 时有 $\left|x_{n}\right|>G$，则称 $\left\{x_{n}\right\}$ 是一个无穷大量，记为 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=\infty}$ 或 $x_{n} \rightarrow \infty \ (n \rightarrow \infty)$．无穷大量也有类似无穷小量的阶
    1. 无穷大量和无穷小量的关系：若 $\left\{x_{n}\right\}$ 为无穷大量，则其倒数所成的数列 $\left\{\dfrac{1}{x_{n}}\right\}$ 为无穷小量；若 $\left\{x_{n}\right\}$ 为无穷小量且 $x_{n} \neq 0 \ (n=1,2, \cdots)$，则其倒数所成的数列 $\left\{\dfrac{1}{x_{n}}\right\}$ 为无穷大量
    2. 正无穷大与负无穷大：对任意给定的 $G>0$，总存在 $N$，当 $n>N$ 时，若有 $x_{n}>$ $G$，则称 $\left\{x_{n}\right\}$ 是正无穷大量；若有 $-x_{n}>$ $G$，则称 $\left\{x_{n}\right\}$ 是负无穷大量
    3. 无穷大量的运算
        1. 设 $\left\{x_{n}\right\}$ 与 $\left\{y_{n}\right\}$ 都是正（负）无穷大量，则其和 $\left\{x_{n}+y_{n}\right\}$ 也是正（负）无穷大量
        2. 设 $\left\{x_{n}\right\}$ 是无穷大量，而 $\left\{y_{n}\right\}$ 是有界数列，则其和 $\left\{x_{n}+y_{n}\right\}$ 是无穷大量
        3. 设 $\left\{x_{n}\right\}$ 是无穷大量，数列 $\left\{y_{n}\right\}$ 具有以下特性：存在某个 $N$，当 $n>N$ 时有 $\left|y_{n}\right| \geqslant \delta>0$，其中 $\delta$ 是一个确定的数，则其乘积 $\left\{x_{n} y_{n}\right\}$ 是无穷大量
        4. 设 $\left\{x_{n}\right\}$ 是无穷大量，$\left\{y_{n}\right\}$ 收敛于 $a \neq 0$，则其乘积 $\left\{x_{n} y_{n}\right\}$ 是无穷大量
4. 上极限与下极限：设 $\{x_n\}$ 是一个数列，定义

    $$
    \begin{aligned}
    H & =\varlimsup_{n \rightarrow \infty} x_{n}=\lim _{k \rightarrow \infty} \sup _{n>k}\left\{x_{n}\right\} \\
    h & =\underset{n \rightarrow \infty}{\underline{\lim}} x_{n}=\lim _{k \rightarrow \infty} \inf _{n>k}\left\{x_{n}\right\}
    \end{aligned}
    $$

    称 $H$ 为 $\{x_n\}$ 的上极限，$h$ 为 $\{x_n\}$ 的下极限．若数列 $\left\{x_{n}\right\}$ 无上界，则称 ${\displaystyle H=\varlimsup_{n \rightarrow \infty} x_{n}=+\infty}$；若数列 $\left\{x_{n}\right\}$ 无下界，则称 ${\displaystyle h=\underset{n \rightarrow \infty}{\underline{\lim}} x_{n}=-\infty}$

    1. 设 ${\displaystyle H=\varlimsup_{n \rightarrow \infty} x_{n}}$，则在 $\left\{x_{n}\right\}$ 中必存在一个子列，其极限为 $H$ 且 $H$ 是 $\left\{x_{n}\right\}$ 中所有收敛子列的极限中的最大值
        1. 当 $H$ 有限时，对于 $H$ 的任何 $\varepsilon$ 邻域 $(H-\varepsilon, H+\varepsilon)$，在数列 $\left\{x_{n}\right\}$ 中有无穷多个项大于 $N$
        2. 当 $H=+\infty$ 时，对任何数 $N>0$，在 $\left\{x_{n}\right\}$ 中必有无穷多个项大于 $N$
        3. 当 $H=-\infty$ 时，数列 $\left\{x_{n}\right\}$ 以 $-\infty$ 为极限
    2. 设 ${\displaystyle h=\underset{n \rightarrow \infty}{\underline{\lim}} x_{n}}$，则在 $\left\{x_{n}\right\}$ 中必存在一个子列，其极限为 $h$ 且 $h$ 是 $\left\{x_{n}\right\}$ 中所有收敛子列的极限中的最小值
        1. 当 $h$ 有限时，对 $h$ 的任何 $\varepsilon$ 邻域 $(h-\varepsilon, h+\varepsilon)$，在数列 $\left\{x_{n}\right\}$ 中有无穷多个项属于这个邻域，而最多只有有限多个小于 $h-\varepsilon$
        2. 当 $h=-\infty$ 时，对任何数 $N>0$，在数列 $\left\{x_{n}\right\}$ 中有无穷多个项小于 $-N$
        3. 当 $h=+\infty$ 时，数列 $\left\{x_{n}\right\}$ 的极限为 $+\infty$
    3. ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=A}$（有限或无穷大）的充要条件为 ${\displaystyle \varlimsup_{n \rightarrow \infty} x_{n}=\underset{n \rightarrow \infty}{\underline{\lim}} x_{n}=A}$

    !!! note "集合序列的上极限与下极限"
        - 对集合序列 $\left\{A_{n}\right\}_{n \geqslant 1}$，定义

            $$
            \begin{aligned}
            \varlimsup_{n \rightarrow \infty} A_{n} & = \limsup _{n \rightarrow \infty} A_{n} = \bigcap_{k \geqslant 1} \bigcup_{n \geqslant k} A_{n} \\
            \varliminf_{n \rightarrow \infty} A_{n} & = \liminf _{n \rightarrow \infty} A_{n} = \bigcup_{k \geqslant 1} \bigcap_{n \geqslant k} A_{n}
            \end{aligned}
            $$

            分别为 $\left\{A_{n}\right\}_{n \geqslant 1}$ 的上（下）极限，也称作上限（下限）点集

        - 当 ${\displaystyle \varliminf_{n \to \infty} A_{n}=\varlimsup_{n \to \infty} A_{n}}$ 时，称 $\left\{A_{n}\right\}$ 有极限，并记 ${\displaystyle \lim _{n \rightarrow \infty} A_{n}=\varlimsup_{n \rightarrow \infty} A_{n}}$，称它为 $\left\{A_{n}\right\}$ 的极限

### 1.3.2 一元函数极限
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

        !!! note "函数极限的定义"
            对于四种函数值的极限情况和六种自变量的极限过程，分别有相应的表述方式

            - $f(x) \rightarrow A: \forall \varepsilon>0, \cdots:|f(x)-A|<\varepsilon$（其中 $A$ 为有限数）
            - $f(x) \rightarrow \infty: \forall G>0, \cdots:|f(x)|>G$
            - $f(x) \rightarrow+\infty: \forall G>0, \cdots: f(x)>G$
            - $f(x) \rightarrow-\infty: \forall G>0, \cdots: f(x)<-G$

            以及

            - $x \rightarrow x_0: \cdots, \exists \delta>0, \forall x\left(0<\left|x-x_0\right|<\delta\right): \cdots$
            - $x \rightarrow x_0+: \cdots, \exists \delta>0, \forall x\left(0<x-x_0<\delta\right): \cdots$
            - $x \rightarrow x_0-: \cdots, \exists \delta>0, \forall x\left(-\delta<x-x_0<0\right): \cdots$
            - $x \rightarrow \infty: \cdots, \exists X>0, \forall x(|x|>X): \cdots$
            - $x \rightarrow+\infty: \cdots, \exists X>0, \forall x(x>X): \cdots$
            - $x \rightarrow-\infty: \cdots, \exists X>0, \forall x(x<-X): \cdots$

2. 函数极限的性质
    1. 若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} g(x)=B}$ 且存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x) \leqslant$ $g(x)$，则 $A \leqslant B$
    2. 若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A}$ 而 $A>B$（或 $A<B$），则存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)>B$（或 $f(x)<B$）
    3. 唯一性：若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} f(x)=B}$，则 $A=B$
    4. 夹逼性：若存在 $\delta>0$，使当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x) \leqslant g(x) \leqslant h(x)$ 且 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=\lim _{x \rightarrow x_{0}} h(x)=A}$，则 ${\displaystyle \lim _{x \rightarrow x_{0}} g(x)=A}$
    5. 局部保序性：若 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=A, \lim _{x \rightarrow x_{0}} g(x)=B}$ 且 $A>B$，则存在 $\delta>0$，当 $0<\left|x-x_{0}\right|<\delta$ 时有 $f(x)>g(x)$
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

### 1.3.2 多元函数极限
1. $n$ 重极限：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$\boldsymbol{x}_{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right) \in D$ 为一定点，$z=f(\boldsymbol{x})$ 是定义在 $D -\left\{\boldsymbol{x}_{0}\right\}$ 上的 $n$ 元函数，$A$ 是一个实数．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$ 使得当 $\boldsymbol{x} \in O\left(\boldsymbol{x}_{0}, \delta\right) -\left\{\boldsymbol{x}_{0}\right\}$ 时，有 $|f(x)-A|<\varepsilon$，则称当 $\boldsymbol{x}$ 趋于 $x_{0}$ 时 $f$ 收敛，并称 $A$ 为 $f$ 当 $\boldsymbol{x}$ 趋于 $\boldsymbol{x}_{0}$ 时的 $n$ 重极限，记为 ${\displaystyle \lim _{x \rightarrow x_{0}} f(\boldsymbol{x})=A}$ 或 ${\displaystyle f(\boldsymbol{x}) \rightarrow A\left(\boldsymbol{x} \rightarrow \boldsymbol{x}_{0}\right)}$ 或

    $$
    \lim _{\substack{x_{1} \rightarrow x_{0}^{0} \\ x_{2} \rightarrow x_{2}^{0} \\ \cdots \\ x_{n} \rightarrow x_{n}^{0}}} f\left(x_{1}, x_{2}, \cdots, x_{n}\right)=A
    $$

2. 累次极限：若对任一固定的 $y$，当 $x \rightarrow a$ 时，$f(x, y)$ 的极限存在，即 ${\displaystyle \lim _{x \rightarrow a} f(x, y)=\varphi(y)}$，且有 ${\displaystyle \lim _{y \rightarrow b} \varphi(y)=A}$．则称 $A$ 为 $f(x, y)$ 先对 $x$ 后对 $y$ 的二次极限，记为 ${\displaystyle \lim _{y \rightarrow b} \lim _{x \rightarrow a} f(x, y)=A}$．同样可定义先对 $y$ 后对 $x$ 的二次极限 ${\displaystyle \lim _{x \rightarrow a} \lim _{y \rightarrow b} f(x, y)}$

    !!! note "二重极限与二次极限的关系"
        若 $f(x, y)$ 在点 $(a, b)$ 的二重极限为 ${\displaystyle \lim _{\substack{x \rightarrow a \\ y \rightarrow b}} f(x, y)=A}$（有限或无限），且对任一靠近 $b$（可以不等于 $b$）的 $y$，当 $x \rightarrow a$ 时 $f(x, y)$ 存在有限极限 ${\displaystyle \varphi(y)=\lim _{x \rightarrow a} f(x, y)}$，则二次极限 ${\displaystyle \lim _{y \rightarrow b} \lim _{x \rightarrow a} f(x, y)=\lim _{y \rightarrow b} \varphi(y)}$ 存在且等于二重极限 $A$

3. 向量值函数的极限：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$\boldsymbol{x}_{0} \in D$ 为一定点，$\boldsymbol f: D -\left\{\boldsymbol{x}_{0}\right\} \rightarrow \mathbf{R}^{m}$ 是向量值函数，$\boldsymbol{A}$ 是一个 $m$ 维向量．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$，使得当 $x \in O\left(\boldsymbol{x}_{0}\right.,\delta) -\left\{\boldsymbol{x}_{0}\right\}$ 时有 $|\boldsymbol f(x)-A|<\varepsilon$ 成立，则称 $A$ 为当 $x$ 趋于 $x_{0}$ 时 $\boldsymbol f$ 的极限，并称当 $\boldsymbol{x}$ 趋于 $x_{0}$ 时 $\boldsymbol f$ 收敛，记为 ${\displaystyle \lim _{x \rightarrow x_{0}} \boldsymbol f(x)=A}$ 或 $\boldsymbol f(x) \rightarrow A \ \left(x \rightarrow x_{0}\right)$

## 1.4 级数
### 1.4.1 数项级数
1. 无穷级数：设数列 $\{u_n\}$ 的部分和数列 ${\displaystyle S_n = \sum_{i=1}^{n} u_{i}}$ 收敛于有限值 $S$，即 ${\displaystyle \lim _{n \rightarrow \infty} S_{n}=\lim _{n \rightarrow \infty} \sum_{k=1}^{n} u_{k}=S}$，则称级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛，记作 ${\displaystyle \sum_{n=1}^{\infty} u_{n}=S}$ 并称 $S$ 为级数的和数．若 $S_{n}$ 发散，则称级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 发散．当级数收敛时，又称 $r_{n}=S-S_{n}$ 为级数的余和
    1. 无穷级数的性质
        1. 若级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛，$a$ 为任一常数，则 ${\displaystyle \sum_{n=1}^{\infty} a u_{n}}$ 亦收敛，且有 ${\displaystyle \sum_{n=1}^{\infty} a u_{n}=a \sum_{n=1}^{\infty} u_{n}}$
        2. 若两个级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 和 ${\displaystyle \sum_{n=1}^{\infty} v_{n}}$ 都收敛，则 ${\displaystyle \sum_{n=1}^{\infty}\left(u_{n} \pm v_{n}\right)}$ 也收敛，且有 ${\displaystyle \sum_{n=1}^{\infty}\left(u_{n} \pm v_{n}\right)=\sum_{n=1}^{\infty} u_{n} \pm \sum_{n=1}^{\infty} v_{n}}$
        3. 一个收敛级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$，对其项任意加括号后所成级数 $\left(u_{1}+u_{2}+\cdots+u_{i_{1}}\right)+\left(u_{i_{1}+1}+\cdots+u_{i_{2}}\right)+\cdots$ 仍收敛，且和不变
        4. 收敛的必要条件：若级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛，则 $u_{n} \rightarrow 0 \ (n \rightarrow \infty)$
    2. $\text{Cauchy}$ 收敛原理：级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛的充要条件是对任意给定的正数 $\varepsilon$，总存在 $N$ 使得当 $n>N$ 时，对于任意的正整数 $p$，都有 $\left|u_{n+1}+u_{n+2}+\cdots+u_{n+p}\right|<\varepsilon$
2. 正项级数：每一项都是非负的级数称为正项级数
    1. 比较判别法：给定两正项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}, {\displaystyle \sum_{n=1}^{\infty} v_{n}}$，若有 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{u_{n}}{v_{n}}=l \ (0<l<+\infty)}$，那么这两个级数同时收敛或发散
    2. $\text{Cauchy}$ 判别法：对于正项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$，设 ${\displaystyle r=\varlimsup_{n \rightarrow \infty} \sqrt[n]{u_{n}}}$
        1. 当 $r<1$ 时此级数必为收敛
        2. 当 $r>1$ 时此级数发散
        3. 当 $r=1$ 时此级数的收敛性需进一步判定
    3. $\text{d'Alembert}$ 判别法：对于正项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$
        1. 当 ${\displaystyle \varlimsup_{n \rightarrow \infty} \dfrac{u_{n}}{u_{n-1}}=\overline{r}<1}$ 时，级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛
        2. 当 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{u_{n}}{u_{n-1}}=r>1}$ 时，级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 发散
        3. 而当 $\overline{r}=1$ 或者 $r=1$ 时，级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 的敛散性需进一步判定
    4. $\text{Cauchy}$ 积分判别法：对于正项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$，设 $\left\{u_{n}\right\}$ 为单调递减数列，作一个连续的单调递减的正值函数 $f(x) \ (x>0)$ 使得当 $x$ 等于正整数 $n$ 时，其函数值恰为 $u_{n}$．则级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 与数列 $\left\{A_{n}\right\}$，此时 ${\displaystyle A_{n}=\int_{1}^{n} f(x) \mathrm{d} x}$ 同为收敛或同为发散
3. 特殊级数的判别
    1. $\text{Leibniz}$ 定理：形如 $u_{1}-u_{2}+u_{3}-u_{4}+\cdots+(-1)^{n+1} u_{n}+\cdots \ (u_{n}>0,n=1,2,\cdots)$ 的级数若有
        1. 单调递减 $u_{n} \geqslant u_{n+1} \ (n=1,2, \cdots)$
        2. ${\displaystyle \lim _{n \rightarrow \infty} u_{n}=0}$

        则称其为 $\text{Leibniz}$ 型级数，此时有

        1. 级数 ${\displaystyle \sum_{n=1}^{\infty}(-1)^{n+1} u_{n}}$ 收敛
        2. 其余和 $r_{n}$ 的符号与余和第一项的符号相同，且 $\left|r_{n}\right| \leqslant \left|u_{n+1}\right|$

    2. $\text{Abel}$ 判别法：若
        1. 级数 ${\displaystyle \sum_{n=1}^{\infty} b_{n}}$ 收敛
        2. 数列 $\left\{a_{n}\right\}$ 单调有界，$\left|a_{n}\right| \leqslant K \ (n=1,2, \cdots)$

        则级数 ${\displaystyle \sum_{n=1}^{\infty} a_{n} b_{n}}$ 收敛

    3. $\text{Dirichlet}$ 判别法：若
        1. 级数 ${\displaystyle \sum_{n=1}^{\infty} b_{n}}$ 的部分和 $B_{n}$ 有界且 $\left|B_{n}\right| \leqslant M \ (n=1,2, \cdots)$
        2. 数列 $\left\{a_{n}\right\}$ 单调趋于零

        则级数 ${\displaystyle \sum_{n=1}^{\infty} a_{n} b_{n}}$ 收敛

4. 绝对收敛与条件收敛：对于级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$，如果其每一项加上绝对值以后所组成的正项级数 ${\displaystyle \sum_{n=1}^{\infty}\left|u_{n}\right|}$ 收敛，则称级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 绝对收敛．如果 ${\displaystyle \sum_{n=1}^{\infty}\left|u_{n}\right|}$ 发散但 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 收敛，则称级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 条件收敛
    1. 绝对收敛级数必为收敛级数，反之不然
    2. 对于级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$，定义

        $$
        \begin{aligned}
        & v_{n}=\dfrac{\left|u_{n}\right|+u_{n}}{2}=\left\{\begin{array}{cc}
        u_{n}, & u_{n}>0 \\
        0, & u_{n} \leqslant 0
        \end{array}\right. \\
        & w_{n}=\dfrac{\left|u_{n}\right|-u_{n}}{2}=\left\{\begin{array}{cc}
        -u_{n}, & u_{n}<0 \\
        0, & u_{n} \geqslant 0
        \end{array}\right.
        \end{aligned}
        $$

        则有

        1. 若级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 绝对收敛，则级数 ${\displaystyle \sum_{n=1}^{\infty} v_{n}}$ 和 ${\displaystyle \sum_{n=1}^{\infty} w_{n}}$ 都收敛
        2. 若级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 条件收敛，则级数 ${\displaystyle \sum_{n=1}^{\infty} v_{n}}$ 和 ${\displaystyle \sum_{n=1}^{\infty} w_{n}}$ 都发散

    3. 绝对收敛级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 的更序级数（即将其项重新排列后所得到的级数）${\displaystyle \sum_{n=1}^{\infty} u_{n}^{\prime}}$ 仍绝对收敛且其和相同，${\displaystyle \sum_{n=1}^{\infty} u_{n}=\sum_{n=1}^{\infty} u_{n}^{\prime}}$
    4. $\text{Cauchy}$ 定理：若级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}}$ 和 ${\displaystyle \sum_{n=1}^{\infty} v_{n}}$ 均绝对收敛，其和分别为 $U$ 和 $V$．则其各项之积 $u_{i} v_{k} \ (i, k=1,2, \cdots)$ 按照任何方法排列所构成的级数也绝对收敛且其和为 $U V$

### 1.4.2 函数项级数
1. 函数项级数：设 $u_{n}(x) \ (n=1,2, \cdots)$ 是定义在实数集 $X$ 上的函数，称 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)=u_{1}(x)+u_{2}(x)+\cdots+u_{n}(x)+\cdots}$ 是函数项级数，并称 ${\displaystyle S_{n}(x)=\sum_{k=1}^{n} u_{k}(x)}$ 是这一级数的 $n$ 次部分和
    1. 如果对 $X$ 中的一点 $x_{0}$，数项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}\left(x_{0}\right)=u_{1}\left(x_{0}\right)+u_{2}\left(x_{0}\right)+\cdots+u_{n}\left(x_{0}\right)+\cdots}$ 收敛，则称函数项级数在 $x_{0}$ 点收敛，否则称其在 $x_{0}$ 点发散
    2. 如果对 $X$ 中任何一点 $x$，级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 收敛，则称函数项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 在 $X$ 上收敛（即在每一点都收敛）．此时对每一点 $x \in X$，级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 有和，记为 $S(x)$，从而 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)=S(x)}$
2. 一致收敛：设有函数列 $\left\{S_{n}(x)\right\}$（或函数项级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 的部分和序列），若对任给的 $\varepsilon>0$，存在只依赖于 $\varepsilon$ 的正整数 $N(\varepsilon)$ 使 $n>N(\varepsilon)$ 时，不等式 $\left|S_{n}(x)-S(x)\right|<\varepsilon$（对函数项级数, 此式也可写为 ${\displaystyle \left|r_{n}(x)\right|=\left|\sum_{k=n+1}^{\infty} u_{k}(x)\right|<\varepsilon}$）对 $X$ 上一切 $x$ 都成立, 则称 $\left\{S_{n}(x)\right\}$ 在 $X$ 上一致收敛于 $S(x)$．当 $S_{n}(x)$ 在 $(a, b)$ 内任一闭区间上一致收敛时，称 $S_{n}(x)$ 在区间 $(a, b)$ 内闭一致收敛
    1. 一致收敛的充要条件
        1. 设 $\left\|S_{n}-S\right\|={\displaystyle \sup _{x \in X}\left|S_{n}(x)-S(x)\right|}$，则 $S_{n}(x)$ 在 $X$ 上一致收敛于 $S(x)$ 当且仅当 ${\displaystyle \lim _{n \rightarrow \infty}\left\|S_{n}-S\right\|=0}$
        2. $\text{Cauchy}$ 充要条件：函数列 $\left\{S_{n}(x)\right\}$ 在 $X$ 上一致收敛的充要条件为对任给的 $\varepsilon>0$，可得正整数 $N=N(\varepsilon)$ 使 $n>N$ 时，不等式 $\left|S_{n+p}(x)-S_{n}(x)\right|<\varepsilon$ 对任意的正整数 $p$ 和 $X$ 上任意的 $x$ 都成立
    2. 一致收敛的性质
        1. 若在 $[a, b]$ 上，函数列 $\left\{S_{n}(x)\right\}$ 的每一项 $S_{n}(x)$ 都连续且 $S_{n}(x)$ 一致收敛于 $S(x)$，则对 $[a, b]$ 上任一点 $x_{0}$ 有

            $$
            \lim _{x \rightarrow x_{0}} \lim _{n \rightarrow \infty} S_{n}(x)=S\left(x_{0}\right)=\lim _{n \rightarrow \infty} \lim _{x \rightarrow x_{0}} S_{n}(x)
            $$

        2. 设 $\left\{S_{n}(x)\right\}$ 在 $[a, b]$ 上一致收敛于 $S(x)$，每一 $S_{n}(x)$ 都在 $[a, b]$ 上连续，则

            $$
            \lim _{n \rightarrow \infty} \int_{a}^{b} S_{n}(x) \mathrm{d} x=\int_{a}^{b} S(x) \mathrm{d} x=\int_{a}^{b} \lim _{n \rightarrow \infty} S_{n}(x) \mathrm{d} x
            $$

        3. 若在 $[a, b]$ 上函数列 $\left\{S_{n}(x)\right\}$ 的每一项都有连续导数，$\left\{S_{n}(x)\right\}$ 收敛于 $S(x)$ 且 $\left\{S_{n}^{\prime}(x)\right\}$ 一致收敛于 $\sigma(x)$，则

            $$
            \dfrac{\mathrm{d}}{\mathrm{d} x} \lim _{n \rightarrow \infty} S_{n}(x)=\lim _{n \rightarrow \infty} \dfrac{\mathrm{d}}{\mathrm{d} x} S_{n}(x)
            $$

        把上述各性质的 $S_{n}(x)$ 都作为函数项级数的 $n$ 项部分和看待，则得到函数项级数相类似的定理

        1. 和的连续性：若 $[a, b]$ 上级数 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 每项 $u_{n}(x)$ 都连续且 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 一致收敛于 $S(x)$，则 $S(x)$ 也在 $[a, b]$ 上连续
        2. 逐项求积：设 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 在 $[a, b]$ 上一致收敛于 $S(x)$ 且每一 $u_{n}(x)$ 都在 $[a, b]$ 上连续，则

            $$
            \sum_{n=1}^{\infty} \int_{a}^{b} u_{n}(x) \mathrm{d} x=\int_{a}^{b} S(x) \mathrm{d} x=\int_{a}^{b} \sum_{n=1}^{\infty} u_{n}(x) \mathrm{d} x
            $$

        3. 逐项求导：若在 $[a, b]$ 上，${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 的每一项都具有连续导数 $u_{n}^{\prime}(x)$ 且 ${\displaystyle \sum_{n=1}^{\infty} u_{n}^{\prime}(x)}$ 一致收敛于 $\sigma(x)$，又 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 收敛于 $S(x)$，则 $S^{\prime}(x)=\sigma(x)$，即

            $$
            \dfrac{\mathrm{d}}{\mathrm{d} x} \sum_{n=1}^{\infty} u_{n}(x)=\sum_{n=1}^{\infty} \dfrac{\mathrm{d}}{\mathrm{d} x} u_{n}(x)
            $$

    3. 一致收敛级数的判别法
        1. $\text{Weierstrass}$ 判别法：若对充分大的 $n$，存在实数 $a_{n}$ 使得 $\left|u_{n}(x)\right| \leqslant a_{n}$ 对 $X$ 上任意的 $x$ 都成立，且数项级数 ${\displaystyle \sum_{n=1}^{\infty} a_{n}}$ 收敛，则 ${\displaystyle \sum_{n=1}^{\infty} u_{n}(x)}$ 在 $X$ 上一致收敛
        2. $\text{Abel}$ 判别法：若在 $X$ 上 ${\displaystyle \sum_{n=1}^{\infty} b_{n}(x)}$ 一致收敛，又对 $X$ 中每一固定的 $x$，数列 $a_{n}(x)$ 单调．对任意的 $n$ 和 $X$ 中每个 $x$，有 $\left|a_{n}(x)\right| \leqslant L$（不依赖于 $x$ 和 $n$ 的定数），则 ${\displaystyle \sum_{n=1}^{\infty} a_{n}(x) b_{n}(x)}$ 在 $X$ 上一致收敛
        3. $\text{Dirichlet}$ 判别法：设 ${\displaystyle \sum_{n=1}^{\infty} b_{n}(x)}$ 的部分和 ${\displaystyle B_{n}(x)=\sum_{i=1}^{n} b_{i}(x)}$ 在 $X$ 上一致有界，又对 $X$ 内每一 $x$，数列 $a_{n}(x)$ 单调且函数列 $\left\{a_{n}(x)\right\}$ 在 $X$ 上一致收敛于零，则 ${\displaystyle \sum_{n=1}^{\infty} a_{n}(x) b_{n}(x)}$ 在 $X$ 上一致收敛

3. 幂级数：形如 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}=a_{0}+a_{1}\left(x-x_{0}\right)+a_{2}\left(x-x_{0}\right)^{2}+\cdots$ 的函数项级数
    1. $\text{Cauchy} - \text{Hadamard}$ 定理：幂级数 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 在 $\left|x-x_{0}\right|<R$ 内绝对收敛，在 $\left|x-x_{0}\right|>R$ 内发散，其中

        $$
        R= \left\{\begin{aligned}
        & \dfrac{1}{{\displaystyle \lim _{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|}}}, & {\displaystyle 0<\varlimsup_{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|<\infty}} \\
        & \infty, & {\displaystyle \varlimsup_{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|}=0} \\
        & 0, & {\displaystyle \varlimsup_{n \rightarrow \infty} \sqrt[n]{\left|a_{n}\right|}=\infty}
        \end{aligned}\right.
        $$

        1. $\text{Abel}$ 第一定理：若 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 在点 $x=\xi$ 收敛，则它必在 $\left|x-x_{0}\right|<\left|\xi-x_{0}\right|$ 内绝对收敛，又若 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 在 $x=\xi$ 发散，则它必在 $\left|x-x_{0}\right|>$ $\left|\xi-x_{0}\right|$ 也发散
        2. $\text{Abel}$ 第二定理：若 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 的收敛半径为 $R$，则此级数在 $\left(x_{0}-R, x_{0}+R\right)$ 内的任一个闭区间 $[a, b]$ 上一致收敛，即在 $\left(x_{0}-R, x_{0}+R\right)$ 内闭一致收敛；又若级数在 $x_{0}+R$ 点收敛，则它必在 $\left[a, x_{0}+R\right]$ 一致收敛．同理，当级数在 $x_{0}-R$ 收敛时可得类似结论

    2. 幂级数的性质
        1. 设幂级数 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 的收敛半径为 $R$，则其和函数 $S(x)$ 在 $\left(x_{0}-R\right.$, $x_{0}+R$ ) 内连续．又若幂级数在 $x_{0}-R$（或 $x_{0}+R$）收敛，则 $S(x)$ 在 $\left[x_{0}-R, x_{0}+R\right)$（或 $\left(x_{0}-R, x_{0}+R\right]$）连续
        2. 设幂级数 ${\displaystyle \sum_{n=0}^{\infty} a_{n}\left(x-x_{0}\right)^{n}}$ 的收敛半径为 $R$，其和函数为 $S(x)$，则在 $\left(x_{0}-R, x_{0}+R\right)$ 内幂级数可以逐项积分和逐项微分．即对 $\left(x_{0}-R, x_{0}+R\right)$ 内任意一点 $x$ 有

            $$
            \sum_{n=0}^{\infty} \int_{x_{0}}^{x} a_{n}\left(x-x_{0}\right)^{n} \mathrm{d} x=\sum_{n=0}^{\infty} \dfrac{a_{n}}{n+1}\left(x-x_{0}\right)^{n+1}=\int_{x_{0}}^{x} S(x) \mathrm{d} x
            $$

            以及

            $$
            \sum_{n=0}^{\infty} \dfrac{\mathrm{d}}{\mathrm{d} x}\left[a_{n}\left(x-x_{0}\right)^{n}\right]=\sum_{n=1}^{\infty} n a_{n}\left(x-x_{0}\right)^{n-1}=\dfrac{\mathrm{d}}{\mathrm{d} x} S(x)
            $$

    3. $\text{Taylor}$ 级数：设

        $$
        R_{n}(x)=f(x)-\left[f\left(x_{0}\right)+f^{\prime}\left(x_{0}\right)\left(x-x_{0}\right)+\cdots+\dfrac{f^{(n)}\left(x_{0}\right)}{n !}\left(x-x_{0}\right)^{n}\right]
        $$

        若在某个区间 $\left(x_{0}-R, x_{0}+R\right)$ 内 $R_{n}(x) \rightarrow 0 \ (n \rightarrow \infty)$，那么 

        $$
        f(x)=f\left(x_{0}\right)+f^{\prime}\left(x_{0}\right)\left(x-x_{0}\right)+\cdots+\dfrac{f^{(n)}\left(x_{0}\right)}{n !}\left(x-x_{0}\right)^{n}+\cdots
        $$

        是函数 $f(x)$ 的幂级数展开，称作 $f(x)$ 的 $\text{Taylor}$ 级数．当 $x = 0$ 时，称级数为 $\text{Maclaurin}$ 级数

        !!! note "初等函数的展开式"
            1. $\mathrm{e}^{x}=1+x+\dfrac{1}{2 !} x^{2}+\cdots+\dfrac{1}{n !} x^{n}+\cdots \ (-\infty<x<+\infty)$

                $\ln (1+x)=x-\dfrac{x^{2}}{2}+\dfrac{x^{3}}{3}-\cdots+(-1)^{n}\dfrac{x^{n+1}}{n+1}+\cdots \ (-1<x \leqslant 1)$

            2. $\sin x=x-\dfrac{x^{3}}{3 !}+\dfrac{x^{5}}{5 !}-\dfrac{x^{7}}{7 !}+\cdots+(-1)^{n} \dfrac{x^{2 n+1}}{(2 n+1) !}+\cdots \ (-\infty<x<+\infty)$

                $\cos x=x-\dfrac{x^{2}}{2!}+\dfrac{x^{4}}{4 !}-\dfrac{x^{6}}{6 !}+\cdots+(-1)^{n} \dfrac{x^{2 n}}{(2 n) !}+\cdots \ (-\infty<x<+\infty)$

4. $\text{Fourier}$ 级数：设 $f(x)$ 是一个周期为 $T$ 的函数，称 $f(x)=A_{0}+{\displaystyle \sum_{n=1}^{\infty}\left(a_{n} \cos n \omega x+b_{n} \sin n \omega x\right)}$ 的级数是由函数 $f(x)$ 所确定的 $\text{Fourier}$ 级数
    1. $\text{Fourier}$ 系数：设函数 $f(x)$ 已展开为区间 $[-\pi, \pi]$ 上的一致收敛的三角级数 ${\displaystyle f(x)=\dfrac{a_{0}}{2}+\sum_{k=1}^{\infty}\left(a_{k} \cos k x+b_{k} \sin k x\right)}$，则有 $\text{Euler} - \text{Fourier}$ 公式成立

        $$
        \begin{aligned}
        & a_{k}=\dfrac{1}{\pi} \int_{-\pi}^{\pi} f(x) \cos k x \mathrm{d} x \ (k=0,1,2, \cdots) \\
        & b_{k}=\dfrac{1}{\pi} \int_{-\pi}^{\pi} f(x) \sin k x \mathrm{d} x \ (k=1,2, \cdots)
        \end{aligned}
        $$

        称该级数为 $f(x)$ 关于三角函数系 $\{1, \cos x, \sin x, \cdots\}$ 的 $\text{Fourier}$ 级数，$a_{k}, b_{k}$ 称为 $f(x)$ 的 $\text{Fourier}$ 系数，记为

        $$
        f(x) \sim \dfrac{a_{0}}{2}+\sum_{k=1}^{\infty}\left(a_{k} \cos k x+b_{k} \sin k x\right)
        $$

    2. $\text{Fourier}$ 级数的收敛判别法：设函数 $f(x)$ 在 $[-\pi, \pi]$ 上可积和绝对可积

        $$
        f(x) \sim \dfrac{a_{0}}{2}+\sum_{n=1}^{\infty}\left(a_{n} \cos n x+b_{n} \sin n x\right)
        $$

        若 $f(x)$ 在 $x$ 点的左右极限 $f(x-0)$ 和 $f(x+0)$ 都存在，且两个广义单侧导数

        $$
        \lim _{\Delta x \rightarrow+0} \dfrac{f(x+\Delta x)-f(x+0)}{\Delta x}, \ \lim _{\Delta x \rightarrow-0} \dfrac{f(x+\Delta x)-f(x-0)}{\Delta x}
        $$

        都存在，则 $f(x)$ 的 $\text{Fourier}$ 级数在 $x$ 点收敛．当 $x$ 是 $f(x)$ 的连续点时它收敛于 $f(x)$，当 $x$ 是 $f(x)$ 的间断点时收敛于 $\dfrac{1}{2}[f(x+0)+f(x-0)]$．特别地，若 $f(x)$ 在 $x$ 点可导或两个单侧导数 $f_{-}^{\prime}(x)$ 和 $f_{+}^{\prime}(x)$ 都存在，则 $f(x)$ 的 $\text{Fourier}$ 级数在 $x$ 点收敛于 $f(x)$

    3. $\text{Fourier}$ 级数的复数形式：令 $a_{0}=c_{0}, a_{n}-\mathrm{i} b_{n}=c_{n}, a_{n}+\mathrm{i} b_{n}=c_{-n} \ (n=1,2, \cdots)$，则有

        $$
        \begin{aligned}
        f(x) &= \dfrac{a_{0}}{2}+\sum_{n=1}^{\infty}\left(a_{n} \cos n \omega t+b_{n} \sin n \omega t\right) \\
        &= \dfrac{a_{0}}{2}+\sum_{n=1}^{\infty}\left(\dfrac{a_{n}-\mathrm{i} b_{n}}{2} \mathrm{e}^{\mathrm{i} n \omega t}+\dfrac{a_{n}+\mathrm{i} b_{n}}{2} \mathrm{e}^{-\mathrm{i} n \omega t}\right) \\
        &= \dfrac{1}{2} \sum_{n=-\infty}^{+\infty} c_{n} \mathrm{e}^{i n \omega t}
        \end{aligned}
        $$

        其中 ${\displaystyle c_{n}=\dfrac{2}{T} \int_{-\frac{T}{2}}^{\frac{T}{2}} f(t) \mathrm{e}^{-\mathrm{i} n \omega t} \mathrm{d} t}, \omega=\dfrac{2 \pi}{T}, n=0, \pm 1, \pm 2, \cdots$

    4. $\text{Fourier}$ 级数的性质
        1. 一致收敛性
            - 设周期为 $2 \pi$ 的可积和绝对可积函数 $f(x)$ 在比 $[a, b]$ 更宽的区间 $[a-\delta, b+$ $\delta]$（其中 $\delta>0$）上有有界导数 $f^{\prime}(x)$，那么 $f(x)$ 的 $\text{Fourier}$ 级数在区间 $[a, b]$ 上一致收敛于 $f(x)$
            - 设周期为 $2 \pi$ 的可积和绝对可积函数 $f(x)$ 在比 $[a, b]$ 更宽的区间 $[a-\delta, b+ \delta]$（其中 $\delta>0$）上连续且为分段单调函数，那么 $f(x)$ 的 $\text{Fourier}$ 级数在区间 $[a, b]$ 上一致收敛于 $f(x)$
        2. 逐项求积与逐项求导：设 $c$ 和 $x$ 是 $[-\pi, \pi]$ 上任意两点，$f(x)$ 是 $[-\pi, \pi]$ 上的分段连续函数，其 $\text{Fourier}$ 级数是 ${\displaystyle f(x) \sim \dfrac{a_{0}}{2}+\sum_{n=1}^{\infty} a_{n} \cos n x+b_{n} \sin n x}$，则有 ${\displaystyle \int_{c}^{x} f(t) \mathrm{d} t=\dfrac{a_{0}}{2}(x-c)+\sum_{n=1}^{\infty} \int_{c}^{x}\left(a_{n} \cos n t+b_{n} \sin n t\right) \mathrm{d} t}$
        3. 最佳平方平均逼近：设 $f(x)$ 是 $[-\pi, \pi]$ 上可积和平方可积函数，又设 $T_{n}(x)$ 是任意一个 $n$ 次三角多项式 ${\displaystyle T_{n}(x)=\dfrac{A_{0}}{2}+\sum_{k=1}^{n} A_{k} \cos k x+B_{k} \sin k x}$，其中 $A_{0}, A_{k}, B_{k}\ (k=1,2, \cdots)$ 为常数，称

            $$
            \delta^{2}\left(f, T_{n}\right)=\dfrac{1}{2 \pi} \int_{-\pi}^{\pi}\left(f(x)-T_{n}(x)\right)^{2} \mathrm{d} x
            $$

            是用三角多项式 $T_{n}(x)$ 在平方平均意义下逼近 $f(x)$ 的偏差．设 ${\displaystyle f(x) \sim \dfrac{a_{0}}{2}+\sum_{n=1}^{\infty} a_{n} \cos n x+b_{n} \sin n x}$，其 $n$ 次部分和 ${\displaystyle S_{n}(x)=\dfrac{a_{0}}{2}+\sum_{k=1}^{n} a_{k} \cos k x+b_{k} \sin k x}$ 是 $f(x)$ 的最佳平方平均逼近，亦即对任何 $n$ 次三角多项式 $T_{n}(x)$，都有 $\delta^{2}\left(f, S_{n}\right) \leqslant \delta^{2}\left(f, T_{n}\right)$

    5. $\text{Fourier}$ 变换：称 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{e}^{-\mathrm{i} \omega x} \mathrm{d} x}$ 是 $f(x)$ 的 $\text{Fourier}$ 变换，记为 $\widehat{f}(\omega)$ 或 $F(f)$，称 ${\displaystyle f(x)=\dfrac{1}{2 \pi} \int_{-\infty}^{+\infty} \widehat{f}(\omega) \mathrm{e}^{\mathrm{i} \omega x} \mathrm{d} \omega}$ 是 $\widehat{f}(\omega)$ 的 $\text{Fourier}$ 逆变换，并称 ${\displaystyle f(x)=\dfrac{1}{2 \pi} \int_{-\infty}^{+\infty}\left[\int_{-\infty}^{+\infty} f(x) \mathrm{e}^{-i \omega x} \mathrm{d} x\right] \mathrm{e}^{\mathrm{i} \omega x} \mathrm{d} x}$ 是 $f(x)$ 的 $\text{Fourier}$ 积分公式
        1. $\text{Riemann}$ 引理：${\displaystyle \lim _{\omega \rightarrow \infty} \widehat{f}(\omega)=0}$
        2. $\text{Fourier}$ 变换的性质
            1. $\widehat{f}(\omega)$ 是 $\omega \in(-\infty,+\infty)$ 内的连续函数
            2. $F\left(a_{1} f_{1}+a_{2} f_{2}\right)=a_{1} F\left(f_{1}\right)+a_{2} F\left(f_{2}\right)$，其中 $a_{1}, a_{2}$ 是两个任意给定的常数
            3. 对任何函数 $f(x)$，设 $\tau_{s} f(x)=f(x-s)$（即 $f(x)$ 的平移），则 $F\left(\tau_{s} f\right)=\mathrm{e}^{-i s \omega} F(f)$
            4. 设 $f(x) \rightarrow 0 \ (x \rightarrow \pm \infty)$，则 $F\left(\dfrac{\mathrm{d}}{\mathrm{d} x} f\right)=\mathrm{i} \omega F(f)$ 或 $\widehat{f}^{\prime}=\mathrm{i} \omega \widehat{f}$
            5. $F(-\mathrm{i} x f(x))=\dfrac{\mathrm{d}}{\mathrm{d} \omega} F(f)$

        !!! note "卷积"
            设函数 $f$ 和 $g$ 在 $(-\infty,+\infty)$ 上定义，且积分 ${\displaystyle (f * g)(x)=\int_{-\infty}^{+\infty} f(t) g(x-t) \mathrm{d} t}$ 存在，则称函数 $f * g$ 为 $f$ 和 $g$ 的卷积

            1. 卷积的 $\text{Fourier}$ 变换：设函数 $f$ 和 $g$ 在 $(-\infty,+\infty)$ 上绝对可积，则有 $F(f * g)=F(f) \cdot F(g)$
            2. $\text{Parseval}$ 等式：设函数 $f$ 在 $(-\infty,+\infty)$ 上绝对可积，且 ${\displaystyle \int_{-\infty}^{+\infty}[f(x)]^2 \mathrm{d} x}$ 收敛．记 $f$ 的 $\text{Fourier}$ 变换为 $\widehat{f}$，则

                $$
                \int_{-\infty}^{+\infty}[f(x)]^2 \mathrm{d} x=\dfrac{1}{2 \pi} \int_{-\infty}^{+\infty}|\widehat{f}(\omega)|^2 \mathrm{d} \omega
                $$
