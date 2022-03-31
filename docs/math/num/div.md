# 1 整除与不定方程

## 1.1 整除理论
### 1.1.1 算术基本定理
1. 整除：设 $a, b \in Z$ 且 $b \neq 0$．如果存在整数 $c$ 使得 $a = bc$ 成立，则称 $b$ 整除 $a$，记作 $b \mid a$；如果不存在这样的整数 $c$，则称 $b$ 不整除 $a$，记作 $b \nmid a$
    1. $a \mid b \to \pm a \mid \pm b$
    2. $a \mid b \wedge b \mid c \to a \mid c$
    3. $b \mid a_i \ (i = 1, 2, \cdots, k) \to b | a_1x_1 + a_2x_2 + \cdots + a_kx_k$，其中 $x_i \in Z$
    4. $b \mid a \to bc \mid ac$
    5. $b \mid a, a \neq 0 \to |b| \leqslant |a|$
    6. $b \mid a \wedge |a| < |b| \to a = 0$
2. 质数与合数：若整数 $a \neq 0, \pm 1$ 且只有因数 $\pm 1, \pm a$，则称 $a$ 是质数，否则称 $a$ 是合数
    1. 全体正整数可以分为三类：$1$、质数、合数
    2. 任何大于 $1$ 的整数 $a$ 都至少有一个质因数
        1. 如果 $a$ 是大于 $1$ 的整数，则 $a$ 的大于 $1$ 的最小因数必为质数
        2. 任何大于 $1$ 的合数 $a$ 必有一个不超过 $\sqrt a$ 的质因数
    3. 质数的个数是无穷的
    4. 设 $a_1, a_2, \cdots, a_n$ 是 $n$ 个整数，$p$ 是质数．若 $p \mid a_1 a_2 \cdots a_n$，则 $\exists a_i: p \mid a_i \ (1 \leqslant i \leqslant n)$
3. 算术基本定理：任何大于 $1$ 的整数 $a$ 可以唯一地表示成 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$，其中 $p_1, p_2, \cdots, p_n$ 是质数且 $p_1 < p_2 < \cdots < p_n$，$\alpha_1, \alpha_2, \cdots, \alpha_n$ 是正整数
    1. 已知 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$ 是 $a$ 的标准分解式，则 $a$ 的不同的正因数个数为 $(1 + \alpha_1) (1 + \alpha_2) \cdots (1 + \alpha_n)$
    2. 设 $a$ 是一个大于 $1$ 的整数且 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$，$\alpha_i \ (i = 1, 2, \cdots, n)$ 是正整数，则 $\alpha$ 的正因数可以表示成 $d = p_1^{\beta_1} p_2^{\beta_2} \cdots p_n^{\beta_n} \ (\alpha_i \geqslant \beta_i \geqslant 0, i = 1, 2, \cdots, n)$ 的形式
    3. 设 $a, b \in Z_+$ 且 $\alpha = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}, b = p_1^{\beta_1} p_2^{\beta_2} \cdots p_n^{\beta_n} \ (\alpha_i \geqslant 0, \beta \geqslant 0; i = 1, 2, \cdots, n)$，则 $(a, b) = p_1^{\gamma_1} p_2^{\gamma_2} \cdots p_n^{\gamma_n}$ 且 $[a, b] = p_1^{\delta_1} p_2^{\delta_2} \cdots p_n^{\delta_n}$，其中 $\gamma_i = \min\{\alpha_i, \beta_i\}, \delta_i = \max\{\alpha_i, \beta_i\} \ (i = 1, 2, \cdots, n)$

### 1.1.2 公因数与公倍数
1. 因数与倍数：设 $a, b\in Z$ 且 $b \mid a$，则称 $b$ 是 $a$ 的因数，此时称 $a$ 是 $b$ 的倍数

    !!! note "平凡因数"
        对每个 $a \in Z - \{0\}$ 都有因数 $1, -1, a, -a$，称其为平凡因数。否则称之为非平凡因数

2. 最大公因数：整数 $a_1, a_2, \cdots, a_k \ (k \geqslant 2)$，若整数 $d$ 是它们之中每一个数的因数，那么 $d$ 就称为 $a_1, a_2, \cdots, a_k$ 的一个公因数，整数 $a_1, a_2, \cdots, a_k$ 的公因数中最大的一个称为最大公因数，记作 $(a_1, a_2, \cdots, a_k)$
    1. 若 $(a_1, a_2, \cdots, a_k) = 1$，则称 $a_1, a_2, \cdots, a_k$ 互质，若 $a_1, a_2, \cdots, a_k$ 中每两个整数互质，则称它们两两互质；特别地，若整数 $a, b$ 有 $(a, b) = 1$，则称 $\dfrac ab$ 为既约分数
        1. $(a_1, a_2, \cdots, a_k) = (|a_1|, |a_2|, \cdots, |a_k|)$
        2. $(a, 1) = 1, (a, 0) = |a|, (a, a) = |a|$
        3. $(a, b) = (b, a)$
        4. 若 $p$ 是质数，$a$ 是整数，则 $(p, a) = 1$ 或 $p | a$
        5. 若 $a = pb + r$，则 $(a, b) = (b, r)$
    2. 若 $a, b \ (b > 0)$ 是任意两个整数，且有

        $$
        \begin{aligned}
        & a = bq_1 + r & (0 < r_1 < b) \\
        & b = r_1q_2 + r_2 & (0 < r_2 < r_1) \\
        & \cdots \\
        & r_{n-2} = r_{n-1}q_n + r_n & (0 < r_n < r_{n-1}) \\
        & r_{n-1} = r_nq_{n+1} + r_{n+1} & (r_{n+1} = 0)
        \end{aligned}
        $$

        则 $(a, b) = r_n$，这一组带余除法称为辗转相除法

        !!! note "辗转相除法"
            1. 带余除法：若 $a, b \in Z$ 且 $b > 0$，则存在两个整数 $q, r$ 使得 $a = qb + r \ (0 \leqslant r < b)$ 成立，且 $q, r$ 唯一
            2. 记

                $$
                \begin{aligned}
                & P_0 = 1, P_1 = 1, P_k = q_kP_{k-1} + P_{k-2} \ (k \geqslant 2) \\
                & Q_0 = 0, Q_1 = 1, Q_k = q_kQ_{k-1} + Q_{k-2} \ (k \geqslant 2)
                \end{aligned}
                $$

                则有 $aQ_k - bP_k = (-1)^{k-1}r_k \ (k = 1, 2, \cdots, n)$

                - 若 $a, b$ 是任意两个非零整数，则存在整数 $x, y$ 可使 $ax + by = (a, b)$ 成立
                - 若 $a, b$ 是非零整数，则 $(a, b) = 1 \leftrightarrow \exists x, y\in Z: ax + by = 1$

    3. 设 $a, b$ 是任意两个不全为零的整数
        1. 若 $m$ 是任意一个正整数，则 $(am, bm) = (a, b)m$
        2. 若 $\delta$ 是 $a, b$ 的任意一个公因数，则 $\left(\dfrac{a}{\delta}, \dfrac{b}{\delta}\right) = \dfrac{(a, b)}{|\delta|}$

3. 最小公倍数：整数 $a_1, a_2, \cdots, a_n$ 的公共倍数成为 $a_1, a_2, \cdots, a_n$ 的公倍数，$a_1, a_2, \cdots, a_n$ 的正公倍数的最小一个称为 $a_1, a_2, \cdots, a_n$ 的最小公倍数，记作 $[a_1, a_2, \cdots, a_n]$
    1. 以下命题成立
        1. $[a, 1] = |a|, [a, a] = |a|$
        2. $[a, b] = [b, a]$
        3. $[a_1, a_2, \cdots, a_n] = [|a_1|, |a_2|, \cdots, |a_n|]$
        4. 若 $a \mid b$，则 $[a, b] = |b|$
    2. 对任意正整数 $a, b$ 有 $[a, b] \cdot (a, b) = ab$
        1. 两个整数的任何公倍数可以被它们的最小公倍数整除
        2. 设 $m, a, b$ 是正整数，则 $[ma, mb] = m[a, b]$
    3. 若 $a_1, a_2, \cdots, a_n$ 是 $n \ (n \geqslant 2)$ 个正整数，记 $[a_1, a_2] = m_2, [m_2, a_2] = m_3, \cdots, [m_{n-2}, a_{n-1}] = m_{n-1}, [m_{n-1}, a_n] = m_n$，则 $[a_1, a_2, \cdots, a_n] = m_n$

## 1.2 取整函数
1. 取整函数与分数部分函数：设 $x, y \in R$，整数函数（也称 $\text{Gaussian}$ 函数）$[x]$ 是不超过 $x$ 的最大整数，称它为 $x$ 的整数部分；分数部分函数定义为 $\{x\} = x - [x]$
    1. $x \leqslant y \to [x] \leqslant [y]$
    2. 若 $m\in Z$，则 $[m + x] = m + [x]$
    3. 若 $0 \leqslant x < 1$，则 $[x] = 0$
    4. $[x] \leqslant x < [x] + 1, x - 1 < [x] \leqslant x, 0 \leqslant \{x\} < 1$
    5. $[x] + [y] \leqslant [x + y], \{x + y\} \leqslant \{x\} + \{y\}$
    6. $[x + y] = \left\{\begin{aligned} & [x] + [y], & \{x\} + \{y\} < 1 \\ & [x] + [y] + 1, & \{x\} + \{y\} \geqslant 1 \end{aligned}\right.$
    7. $[-x] = \left\{\begin{aligned} & -[x], & x\in Z \\ & -[x] - 1, & x \notin Z \end{aligned}\right.$
    8. $\{x\} = \left\{\begin{aligned} & 0, & x\in Z \\ & 1 - \{x\}, & x\ \notin Z \end{aligned}\right.$
2. 设 $a, b \in Z_+$，则在 $1, 2, \cdots, a$ 中能被 $b$ 整除的恰有 $\left[\dfrac{a}{b}\right]$ 个
3. 在 $n!$ 的质因数分解中，质数 $p$ 的指数是 $\left[\dfrac{n}{p}\right] + \left[\dfrac{n}{p^2}\right] + \left[\dfrac{n}{p^3}\right] + \cdots = \sum_{r = 1}^{\infty} \left[\dfrac{n}{p_r}\right]$，进一步地，有 $n! = \prod_{p \leqslant n} p^{\sum_{r=1}^{\infty}\left[\frac{n}{p^r}\right]}$

## 1.3 不定方程

1. 不定方程：方程的个数少于未知数的个数且未知数又必须为整数的方程（组）
2. 二元一次不定方程：设 $a, b, c \in Z$ 且 $a, b \neq 0$，任何二元一次方程可以写成 $ax + by = c$，其中 $x, y \in Z$
    1. 设 $a, b \in Z - \{0\}, c \in Z$，方程 $ax + by = c$ 有整数解当且仅当 $(a, b) | c$
    2. 若 $(a, b) = 1$，如果 $(x_0, y_0)$ 是方程 $ax + by = c$ 的一组解，则它所有整数解都可以写成

        $$
        \left\{\begin{aligned}
        & x = x_0 + bt \\
        & y = y_0 - at
        \end{aligned}\right.
        $$

        其中 $t$ 为任意整数

    3. 设 $(a, b) = d, a = a_1d, b = b_1d$，如果 $(x_0, y_0)$ 是方程 $ax + by = c$ 的一组解，则它所有的整数解都可以写作

        $$
        \left\{\begin{aligned}
        & x = x_0 + b_1t \\
        & y = y_0 - a_1t
        \end{aligned}\right.
        $$

        其中 $t$ 为任意整数

3. 多元一次不定方程：设 $n$ 是大于 $2$ 的正整数，$a_1, a_2, \cdots, a_n$ 是非零整数，$c$ 是整数．则任何 $n$ 元一次方程都可以写作 $a_1x_1 + a_2x_2 + \cdots + a_nx_n = c$ 的形式，其中 $x_1, x_2, \cdots, x_n$ 是未知数
    - 已知 $a_1, a_2, \cdots, a_n$ 是非零整数，$c$ 是整数，若 $d = (a_1, a_2, \cdots, a_n)$，则方程 $a_1x_1 + a_2x_2 + \cdots + a_nx_n$ 有整数解当且仅当 $d | c$
