# 中转站

## Pell 方程
1. $\text{Pell}$ 方程：形如 $x^2 - dy^2 = 1$ 的方程，其中 $d$ 是一个固定的正整数且不是完全平方数
    1. 有两个整数 $P_n, Q_n$ 存在使得 $\beta_n = \dfrac{\sqrt d + P_n}{Q_n} \ (P_n^2 \equiv d (\bmod Q_n))$；若 $d$ 是一个非平方的正整数，则二次方程 $x^2 - dy^2 = (-1)^n Q_n$ 有正整数解 $x, y$ 且 $(x, y) = 1$
        1. 令 $r + s\sqrt n = t + u\sqrt n$，其中 $r, s, t, u \in \mathbf Q, n \in \mathbf Z_+$ 且 $n$ 不为完全平方数，那么 $r = t$ 且 $s = u$
        2. 若 $\alpha_1 = \dfrac{a_1 + b_1\sqrt d}{c_1}, \alpha_2 = \dfrac{a_2 + b_2\sqrt d}{c_2}$ 是有理数或二次无理数，则 $(\alpha_1\alpha_2)' = \alpha_1'\alpha_2'$
    2. 设 $d$ 为正整数且非完全平方数，则方程 $x^2 - dy^2 = 1$ 总有正整数解，如果 $(x_1, y_1)$ 是使 $x_1$ 最小的解，则每个解 $(x_k, y_k)$ 可以通过取幂得到 $x_k + y_k\sqrt d = (x_1 + y_1 \sqrt d)^k \ (k = 1, 2, 3, \cdots)$
2. 若 $d$ 是一个非平方的正整数，令 $\dfrac{p_k}{q_k}$ 表示 $\sqrt d$ 的简单连分数的第 $k$ 个渐近分数，$k = 1, 2, \cdots, t$ 表示连分数的循环节长度
    1. 当 $t$ 是偶数时，方程 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{jt-1}, y = q_{jt-1} \ (j = 1, 2, 3, \cdots)$ 且方程 $x^2 - dy^2 = -1$ 无解
    2. 当 $t$ 是奇数时，当成 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{2jt-1}, y = q_{2jt-1} \ (j = 1, 2, 3, \cdots)$，方程 $x^2 - dy^2 = -1$ 的全体正整数解为 $x = p_{(2j-1)t-1}, y = q_{(2j-1)t-1} \ (j = 1, 2, 3, \cdots)$

## 取整函数
1. 取整函数与分数部分函数：设 $x, y \in \mathbf R$，整数函数（也称 $\text{Gaussian}$ 函数）$[x]$ 是不超过 $x$ 的最大整数，称它为 $x$ 的整数部分；分数部分函数定义为 $\{x\} = x - [x]$
    1. $x \leqslant y \to [x] \leqslant [y]$
    2. 若 $m\in \mathbf Z$，则 $[m + x] = m + [x]$
    3. 若 $0 \leqslant x < 1$，则 $[x] = 0$
    4. $[x] \leqslant x < [x] + 1, x - 1 < [x] \leqslant x, 0 \leqslant \{x\} < 1$
    5. $[x] + [y] \leqslant [x + y], \{x + y\} \leqslant \{x\} + \{y\}$
    6. $[x + y] = \left\{\begin{aligned} & [x] + [y], & \{x\} + \{y\} < 1 \\ & [x] + [y] + 1, & \{x\} + \{y\} \geqslant 1 \end{aligned}\right.$
    7. $[-x] = \left\{\begin{aligned} & -[x], & x\in \mathbf Z \\ & -[x] - 1, & x \notin Z \end{aligned}\right.$
    8. $\{x\} = \left\{\begin{aligned} & 0, & x\in \mathbf Z \\ & 1 - \{x\}, & x\ \notin Z \end{aligned}\right.$
2. 设 $a, b \in \mathbf Z_+$，则在 $1, 2, \cdots, a$ 中能被 $b$ 整除的恰有 $\left[\dfrac{a}{b}\right]$ 个
3. 在 $n!$ 的质因数分解中，质数 $p$ 的指数是 $\left[\dfrac{n}{p}\right] + \left[\dfrac{n}{p^2}\right] + \left[\dfrac{n}{p^3}\right] + \cdots = \sum_{r = 1}^{\infty} \left[\dfrac{n}{p_r}\right]$，进一步地，有 $n! = \prod_{p \leqslant n} p^{\sum_{r=1}^{\infty}\left[\frac{n}{p^r}\right]}$

## 复数的定义

- 复数：在集合 $\mathbf C = \mathbf R \times \mathbf R$ 内定义加法和乘法运算

    $$
    \begin{aligned}
    & (a, b) + (c, d) = (a + c, b + d) \\
    & (a, b) \cdot (c, d) = (ac - bd, ad + bc)
    \end{aligned}
    $$

    称集合 $\mathbf C$ 为复数集，其中 $(a, b)$ 称作复数

    1. $a$ 为复数 $(a, b)$ 的实部，记作 $\text{Re}(a, b)$；$b$ 为复数 $(a, b)$ 的虚部，记作 $\text{Im}(a, b)$
    2. 设 $i = (0, 1)$，记 $(a, b) = a + bi \ (a, b \in \mathbf R)$，称之为复数 $(a, b)$ 的代数形式