# 4 初等数论

## 4.1 整除理论
### 4.1.1 算术基本定理
1. 整除：设 $a, b \in \mathbf Z$ 且 $b \neq 0$．如果存在整数 $c$ 使得 $a = bc$ 成立，则称 $b$ 整除 $a$，记作 $b \mid a$；如果不存在这样的整数 $c$，则称 $b$ 不整除 $a$，记作 $b \nmid a$
    1. 奇数与偶数：设 $a \in \mathbf Z$，若 $2 \nmid a$，则称 $a$ 为奇数，否则称为偶数
    2. 整除的性质
        1. $a \mid b \to \pm a \mid \pm b$
        2. $a \mid b \wedge b \mid c \to a \mid c$
        3. $b \mid a_i \ (i = 1, 2, \cdots, k) \to b \mid a_1x_1 + a_2x_2 + \cdots + a_kx_k$，其中 $x_i \in \mathbf Z$
        4. $b \mid a \to bc \mid ac$
        5. $b \mid a, a \neq 0 \to |b| \leqslant |a|$
        6. $b \mid a \wedge |a| < |b| \to a = 0$
    3. 整除的特征：对于任何整数 $a$，设其各位之和为 $s$
        1. $2 \mid a$ 当且仅当 $a$ 的个位上是 $0, 2, 4, 6, 8$
        2. $3 \mid a$ 当且仅当 $3 \mid s$
        3. $4 \mid a$ 当且仅当 $a$ 的末两位能被 $4$ 整除
        4. $5 \mid a$ 当且仅当 $a$ 的个位上是 $0, 5$
        5. $8 \mid a$ 当且仅当 $a$ 的末三位能被 $8$ 整除
        6. $9 \mid a$ 当且仅当 $9 \mid s$
2. 质数与合数：若整数 $a \neq 0, \pm 1$ 且只有因数 $\pm 1, \pm a$，则称 $a$ 是质数，否则称 $a$ 是合数
    1. 全体正整数可以分为三类：$1$、质数、合数
    2. 任何大于 $1$ 的整数 $a$ 都至少有一个质因数
        1. 如果 $a$ 是大于 $1$ 的整数，则 $a$ 的大于 $1$ 的最小因数必为质数
        2. 任何大于 $1$ 的合数 $a$ 必有一个不超过 $\sqrt a$ 的质因数
    3. 质数的个数是无穷的
    4. 设 $a_1, a_2, \cdots, a_n$ 是 $n$ 个整数，$p$ 是质数．若 $p \mid a_1 a_2 \cdots a_n$，则 $\exists a_i: p \mid a_i \ (1 \leqslant i \leqslant n)$
3. 算术基本定理：任何大于 $1$ 的整数 $a$ 可以唯一地表示成 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$，其中因数 $p_1, p_2, \cdots, p_n$ 是质数且 $p_1 < p_2 < \cdots < p_n$，$\alpha_1, \alpha_2, \cdots, \alpha_n$ 是正整数
    1. 已知 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$ 是 $a$ 的标准分解式，则 $a$ 的不同的正因数个数为 $(1 + \alpha_1) (1 + \alpha_2) \cdots (1 + \alpha_n)$
    2. 设 $a$ 是一个大于 $1$ 的整数且 $a = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}$，$\alpha_i \ (i = 1, 2, \cdots, n)$ 是正整数，则 $\alpha$ 的正因数可以表示成 $d = p_1^{\beta_1} p_2^{\beta_2} \cdots p_n^{\beta_n} \ (\alpha_i \geqslant \beta_i \geqslant 0, i = 1, 2, \cdots, n)$ 的形式
    3. 设 $a, b \in \mathbf Z_+$ 且 $\alpha = p_1^{\alpha_1} p_2^{\alpha_2} \cdots p_n^{\alpha_n}, b = p_1^{\beta_1} p_2^{\beta_2} \cdots p_n^{\beta_n} \ (\alpha_i \geqslant 0, \beta \geqslant 0; i = 1, 2, \cdots, n)$，则 $(a, b) = p_1^{\gamma_1} p_2^{\gamma_2} \cdots p_n^{\gamma_n}$ 且 $[a, b] = p_1^{\delta_1} p_2^{\delta_2} \cdots p_n^{\delta_n}$，其中 $\gamma_i = \min\{\alpha_i, \beta_i\}, \delta_i = \max\{\alpha_i, \beta_i\} \ (i = 1, 2, \cdots, n)$

### 4.1.2 因数与倍数
1. 因数与倍数：设 $a, b\in \mathbf Z$ 且 $b \mid a$，则称 $b$ 是 $a$ 的因数，此时称 $a$ 是 $b$ 的倍数

    !!! note "平凡因数"
        对每个 $a \in \mathbf Z - \{0\}$ 都有因数 $1, -1, a, -a$，称其为平凡因数。否则称之为非平凡因数

2. 最大公因数：整数 $a_1, a_2, \cdots, a_k \ (k \geqslant 2)$，若整数 $d$ 是它们之中每一个数的因数，那么 $d$ 就称为 $a_1, a_2, \cdots, a_k$ 的一个公因数，整数 $a_1, a_2, \cdots, a_k$ 的公因数中最大的一个称为最大公因数，记作 $(a_1, a_2, \cdots, a_k)$
    1. 若 $(a_1, a_2, \cdots, a_k) = 1$，则称 $a_1, a_2, \cdots, a_k$ 互质，若 $a_1, a_2, \cdots, a_k$ 中每两个整数互质，则称它们两两互质；特别地，若整数 $a, b$ 有 $(a, b) = 1$，则称 $\dfrac ab$ 为既约分数
        1. $(a_1, a_2, \cdots, a_k) = (|a_1|, |a_2|, \cdots, |a_k|)$
        2. $(a, 1) = 1, (a, 0) = |a|, (a, a) = |a|$
        3. $(a, b) = (b, a)$
        4. 若 $p$ 是质数，$a$ 是整数，则 $(p, a) = 1$ 或 $p \mid a$
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
            1. 带余除法：若 $a, b \in \mathbf Z$ 且 $b > 0$，则存在两个整数 $q, r$ 使得 $a = qb + r \ (0 \leqslant r < b)$ 成立，且 $q, r$ 唯一
            2. 记

                $$
                \begin{aligned}
                & P_0 = 1, P_1 = 1, P_k = q_kP_{k-1} + P_{k-2} \ (k \geqslant 2) \\
                & Q_0 = 0, Q_1 = 1, Q_k = q_kQ_{k-1} + Q_{k-2} \ (k \geqslant 2)
                \end{aligned}
                $$

                则有 $aQ_k - bP_k = (-1)^{k-1}r_k \ (k = 1, 2, \cdots, n)$

                - 若 $a, b$ 是任意两个非零整数，则存在整数 $x, y$ 可使 $ax + by = (a, b)$ 成立
                - 若 $a, b$ 是非零整数，则 $(a, b) = 1 \leftrightarrow \exists x, y\in \mathbf Z: ax + by = 1$

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

## 4.2 同余理论
### 4.2.1 同余的概念
1. 同余：给定正整数 $m$，如果整数 $a, b$ 有 $m \mid (a - b)$，则称 $a$ 与 $b$ 对于模 $m$ 同余，记作 $a \equiv b (\bmod m)$；否则称 $a$ 与 $b$ 对于模 $m$ 不同余，记作 $a \not\equiv b (\bmod n)$
    1. 以下三种叙述等价
        1. $a \equiv b (\bmod m)$
        2. 存在整数 $q$ 使得 $a = b + qm$
        3. 存在整数 $q_1, q_2$ 使得 $a = q_1m + r, b = q_2m + r \ (0 \leqslant r < m)$
    2. 同余是等价关系
        1. $a \equiv a (\bmod m)$
        2. $a \equiv b (\bmod m) \to b \equiv a (\bmod m)$
        3. $a \equiv b (\bmod m) \wedge b \equiv c (\bmod m) \to a \equiv c (\bmod m)$
2. 同余的运算
    1. 同余的加减运算
        1. 若 $a \equiv b (\bmod m)$，$c$ 为整数，则 $a + c \equiv b + c (\bmod m)$
        2. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $a + c \equiv b + d (\bmod m)$
        3. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $a - c \equiv b - d (\bmod m)$
        4. 若 $a + b \equiv c (\bmod m)$，则 $a \equiv c - b (\bmod m)$
    2. 同余的乘除运算
        1. 若 $a \equiv b (\bmod m)$ 且 $c$ 为整数，则 $ac \equiv bc (\bmod m)$
        2. 若 $a \equiv b (\bmod m)$ 且 $c$ 为正整数，则 $ac \equiv bc (\bmod mc)$ 
        3. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $ac \equiv bc (\bmod m)$，特别地，若 $a \equiv b (\bmod m)$ 且 $n$ 为正整数，则 $a^n \equiv b^n (\bmod m)$
        4. 若 $a_i, b_i \ (0 \leqslant i \leqslant n)$ 与 $x, y$ 均为整数，且 $x \equiv y (\bmod m), a_i \equiv b_i (\bmod m) \ (0 \leqslant i \leqslant n)$，则 $\sum_{i = 0}^n a_ix^i \equiv \sum_{i = 0}^n b_iy^i (\bmod m)$
        5. 若 $(c, m) = 1$，则 $a \equiv b (\bmod m) \leftrightarrow ac \equiv bc (\bmod m)$
        6. 若 $a \equiv b (\bmod m) \ (1 \leqslant i \leqslant k)$，则 $a \equiv b (\bmod d)$
    3. 同余与公约数、公倍数的关系
        1. 若 $a \equiv b (\bmod m)$，则 $(a, m) = (b, m)$
        2. 若 $a \equiv b (\bmod m_i) \ (1 \leqslant i \leqslant k)$，则 $a \equiv b (\bmod [m_1, m_2, \cdots, m_k])$

### 4.2.2 剩余类
1. 剩余类：给定正整数 $m$，对于每个整数 $i \ (0 \leqslant i \leqslant m - 1)$，称集合 $R_i(m) = \{n \mid n \equiv i (\bmod m), n \in \mathbf Z\}$ 是模 $m$ 的一个剩余类
2. 简化剩余类：设 $R$ 是模 $m$ 的一个剩余类，若任意 $a \in R$ 都有 $(a, m) = 1$ 成立，则称 $R$ 是模 $m$ 的一个简化剩余类
    1. 对于正整数 $k$，令函数 $\varphi(k)$ 的值等于模 $k$ 的所有简化剩余类的个数，称 $\varphi(k)$ 为 $\text{Euler}$ 函数
    2. 特别地，$\varphi(1) = 1$；当 $p$ 为质数时，$\varphi(p) = p - 1, \varphi(p^k) = p^k - p^{k - 1}$
3. 完全剩余系：设 $m$ 是正整数，从模 $m$ 的每一个剩余类中任取一个数 $x_i \ (0 \leqslant i \leqslant m - 1)$，称集合 $\{x_0, x_1, \cdots, x_{m - 1}\}$ 是模 $m$ 的一个完全剩余系
    1. 整数集合 $A$ 是模 $m$ 的完全剩余系当且仅当 ① $|A| = m$；② $A$ 中任何两个整数对模 $m$ 不同余
    2. 设 $a, b \in \mathbf Z$，若 $m \geqslant 1, (a, m) = 1$ 且 $\{x_1, x_2, \cdots, x_m\}$ 是模 $m$ 的一个完全剩余系，则 $\{ax_1 + b, ax_2 + b, \cdots, ax_m + b\}$ 也是模 $m$ 的完全剩余系
    3. 设 $m_1, m_2 \in \mathbf N, A \in \mathbf Z, (A, m_1) = 1$，又 $X = \{x_1, x_2, \cdots, x_{m_1}\}, Y = \{y_1, y_2, \cdots, y_{m_2}\}$ 分别是模 $m_1$ 与模 $m_2$ 的完全剩余系，则 $R = \{Ax + m_1y \mid x \in X, y \in Y\}$ 是模 $m_1, m_2$ 的一个完全剩余系
4. 简化剩余系：对于正整数 $m$，从 $m$ 的简化剩余类中各取一个数 $x_i$，构成一个集合 $\{x_1, x_2, \cdots, x_{\varphi(m)}\}$，称为模 $m$ 的一个简化剩余系
    1. 整数集合 $A$ 是模 $m$ 的简化剩余系当且仅当 ① $|A| = \varphi(m)$；② $A$ 中任何两个整数对模 $m$ 不同余；③ $A$ 中的每个整数都与 $m$ 互质
    2. 设 $a \in \mathbf Z$ 且 $(a, m) = 1$，$B = \{x_1, x_2, \cdots, x_{\varphi(m)}\}$ 是模 $m$ 的简化剩余系，则 $A = \{ax_1, ax_2, \cdots, ax_{\varphi(m)}\}$ 也是模 $m$ 的简化剩余系
    3. 设 $m_1, m_2 \in \mathbf N, (m_1, m_2) = 1$，又设 $X = \{x_1, x_2, \cdots, x_{\varphi(m_1)}\}, Y = \{y_1, y_2, \cdots, y_{\varphi(m_2)}\}$ 分别是模 $m_1$ 与模 $m_2$ 的简化剩余系，则 $A = \{m_1y + m_2x \mid x \in X, y \in Y\}$ 是模 $m_1m_2$ 的简化剩余系
    4. 若 $r$ 通过模 $c$ 的最小非负完全剩余系，则 $g'$ 通过模 $m$ 的一个简化剩余系

### 4.2.3 Fermat 定理
1. $\text{Euler}$ 定理：设 $m \in \mathbf Z_+$ 且 $(a, m) = 1$，则 $a^{\varphi(m)} \equiv 1 (\bmod m)$
2. $\text{Fermat}$ 定理：设 $p$ 是质数，则对于任意整数 $a$ 有 $a^p \equiv a (\bmod p)$

## 4.3 同余方程
- 同余方程：设 $f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$ 是整系数多项式，称 $f(x) \equiv 0 (\bmod m)$ 是关于未知数 $x$ 的模 $m$ 同余方程，
    1. 若 $a_n \not \equiv 0 (\bmod m)$，则称 $f(x) \equiv 0 (\bmod m)$ 为 $n$ 次同余方程
    2. 若 $a$ 是使 $f(a) \equiv 0 (\bmod m)$ 成立的一个整数，则 $x \equiv a (\bmod m)$ 称为 $f(x) \equiv 0 (\bmod m)$ 的一个解

### 4.3.1 一次同余式
1. 一次同余方程的一般形式：$ax \equiv b (\bmod m)$
    1. 同余方程 $ax \equiv b (\bmod m)$ 等价于不定方程 $ax + my = b$
    2. 设 $a, b$ 是整数，$a \not \equiv 0 (\bmod m)$，则同余方程 $ax \equiv b (\bmod m)$ 有解当且仅当 $(a, m) \mid b$．若有解，则恰有 $d = (a, m)$ 个解
2. 中国剩余定理（孙子定理）：设 $m_1, m_2, \cdots, m_k$ 是 $k$ 个两两互质的正整数，$m = m_1 m_2 \cdots m_k$．设 $M_i = \dfrac{m}{m_i} \ (i = 1, 2, \cdots, k)$，则同余式组

    $$
    \left\{\begin{aligned}
    & x \equiv a_1 (\bmod m_1) \\
    & x \equiv a_2 (\bmod m_2) \\
    & \cdots \\
    & x \equiv a_k (\bmod m_k)
    \end{aligned}\right.
    $$

    的解是 $x \equiv M_1'M_1a_1 + M_2'M_2a_2 + \cdots + M_k'M_ka_k (\bmod m)$，其中 $M_i'M_i \equiv 1 (\bmod m_i), i = 1, 2, \cdots, k$

    1. 设 $d = (m_1, m_2), m = [m_1, m_2]$，同余式组 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2)\end{aligned}\right.$ 有解当且仅当 $d \mid (a_1 - a_2)$，当此条件成立时，同余式组恰好有一个解 $x \equiv b (\bmod m)$

    2. 设 $p$ 是质数，当 $m_1 = p^\alpha m_1', m_2 = p^\beta m_2'$ 且 $\alpha \geqslant \beta, p \nmid m_1'm_2'$ 时，若同余式 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2)\end{aligned}\right.$ 有解，则它与 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2')\end{aligned}\right.$ 同解

### 4.3.2 二次同余式
1. 二次剩余：给定整数 $p$，对于任意的整数 $n$ 有 $(n, p) = 1$．若当成 $x^2 \equiv n (\bmod p)$ 有解，则称 $n$ 是模 $p$ 的二次剩余，记作 $n \in \mathrm{QR}(p)$，否则称 $n$ 是模 $p$ 的二次非剩余，记作 $n \in \mathrm{QNR}(p)$． 当 $p = 2$ 时，方程 $x^2 \equiv n (\bmod p)$ 总有解且解数为 $1$
2. $\text{Euler}$ 判别法：设 $p$ 为奇质数且 $(n, p) = 1$．$n$ 是模 $p$ 的二次剩余当且仅当 $n^{\frac{p-1}{2}} \equiv 1 (\bmod p)$
    1. 若 $n$ 是模 $p$ 的二次剩余，则方程 $x^2 \equiv n (\bmod p)$ 有两个解
    2. $n$ 是模 $p$ 的二次非剩余当且仅当 $n^{\frac{p-1}{2}} \equiv 1 (\bmod p)$
    3. 模 $p$ 的简化剩余系中，二次剩余与非二次剩余的个数都为 $\dfrac{p-1}{2}$ 且模 $p$ 的每个二次剩余与且仅与数列 $1^2, 2^2, \cdots, \left(\dfrac{p-1}{2}\right)^2$ 中的一个数同余
3. $\text{Legendre}$ 符号：设 $p$ 为奇质数且 $(n, p) = 1$，对于整数 $n$ 定义 $\text{Legendre}$ 符号

    $$
    \left(\dfrac np\right) =
    \left\{\begin{aligned}
    & 0, & p \mid n \\
    & 1, & n \in \mathrm{QR}(p) \\
    & -1, & n \in \mathrm{QNR}(p)
    \end{aligned}\right.
    $$

    1. 设 $p$ 是奇质数，$n$ 是整数，则
        1. $\left(\dfrac np\right) \equiv n^{\frac{p-1}{2}} (\bmod p)$
        2. 若 $n \equiv n_1 (\bmod p)$，则 $\left(\dfrac np\right) \equiv \left(\dfrac{n_1}{p}\right) (\bmod p)$
        3. $\left(\dfrac 1p\right) = 1, \left(\dfrac{-1}{p}\right) = (-1)^{\frac{p-1}{2}}$
    2. 设 $p$ 是奇质数，则有 $-1 \in \mathrm{QR}(p) \leftrightarrow p \equiv 1 (\bmod 4)$ 且 $-1 \in \mathrm{QNR}(p) \leftrightarrow p \equiv 3 (\bmod 4)$
    3. 二次互反律：设 $p, q$ 是两个不相同的两个奇质数，则 $\left(\dfrac qp\right) = (-1)^{\frac{p-1}{2} \cdot \frac{q-1}{2}} \left(\dfrac pq\right)$
        1. 设 $p$ 为奇质数，当 $p \equiv 1 (\bmod 8)$ 或 $p \equiv 7 (\bmod 8)$ 时，$\left(\dfrac 2p\right) = 1$；当 $p \equiv 3 (\bmod 8)$ 或 $p \equiv 5 (\bmod 8)$ 时，$\left(\dfrac 2p\right) = -1$
        2. 对于证书 $k \ \left(1 \leqslant k \leqslant \dfrac{p-1}{2}\right)$，以 $r_k$ 表示 $nk$ 对模 $p$ 的最小非负剩余．设 $r_1, r_2, \cdots, r_k$ 中大于 $\dfrac p2$ 的有 $m$ 个，则 $\left(\dfrac np\right) = (-1)^m$
        3. 设 $p$ 为及素数，则 ① $\left(\dfrac 2p\right) = (-1)^{\frac{p^2-1}{8}}$；② 若 $n$ 时奇数，$(n, p) = 1$，则 $\left(\dfrac np\right) = (-1)^{\sum_{i=1}^{\frac{p-1}{2}} \left[\frac{ni}{p}\right]}$
    4. 对于质数模的二次同余方程的可能性，设 $p$ 为质数，计算 $\text{Legendre}$ 符号如下
        1. 求出 $n_0 \equiv n (\bmod p) \ (1 \leqslant n_0 \leqslant p)$
        2. 将 $n_0$ 写成 $q^2q_1 q_2 \cdots q_k$ 的形式，其中 $q \in \mathbf Z$，$q_1, q_2, \cdots, q_k$ 是互不相同的质数
        3. 若某个 $q_i = 2, i = 1, 2, \cdots, k$，用 $\left(\dfrac 2p\right) = (-1)^{\frac{p^2-1}{8}}$ 计算
        4. 若 $q_i \neq 2, i = 1, 2, \cdots, k$，则用二次互反律将 $\left(\dfrac{q_i}{p}\right)$ 转化为计算 $\left(\dfrac{p}{q_i}\right)$
        5. 重复以上步骤，直至求出每个 $\left(\dfrac{q_i}{p}\right)$，计算 $\left(\dfrac np\right) = \prod_{i=1}^k \left(\dfrac{q_i}{p}\right)$

4. $\text{Jacobi}$ 符号：给定正奇数 $m > 1, m = p_1 p_2 \cdots p_k$，其中 $p_i \ (1 \leqslant i \leqslant k)$ 是奇质数．对于任意的正整数 $a$，定义 $\left(\dfrac am\right) = \left(\dfrac{a}{p_1}\right) \left(\dfrac{a}{p_2}\right) \cdots \left(\dfrac{a}{p_k}\right)$，其中右端的 $\left(\dfrac{a}{p_i}\right) \ (1 \leqslant i \leqslant k)$ 是 $\text{Legendre}$ 符号，称 $\left(\dfrac am\right)$ 为 $\text{Jacobi}$ 符号
    1. 当 $m$ 是奇质数时，$\text{Jacobi}$ 符号就是 $\text{Legendre}$ 符号
    2. $\text{Jacobi}$ 符号的性质
        1. 若 $a \equiv a_i (\bmod m)$，则 $\left(\dfrac am\right) = \left(\dfrac{a_1}{m}\right)$
        2. $\left(\dfrac 1m\right) = 1$
        3. 对于任意整数 $a_1, a_2, \cdots, a_t$，有 $\left(\dfrac{a_1 a_2 \cdots a_t}{m}\right) = \left(\dfrac{a_1}{m}\right) \left(\dfrac{a_2}{m}\right) \cdots \left(\dfrac{a_t}{m}\right)$
        4. 对于任意整数 $a, b, (a, m) = 1$，有 $\left(\dfrac{a^2b}{m}\right) = \left(\dfrac bm\right)$
    3. 设 $a_i \equiv 1 (\bmod m) \ (1 \leqslant i \leqslant k, a = a_1 a_2 \cdots a_k)$，则 $\dfrac{a-1}{m} \equiv \dfrac{a_1-1}{m} + \dfrac{a_2-1}{m} + \cdots + \dfrac{a_k-1}{m} (\bmod m)$
        1. 设 $m = p_1 p_2 \cdots p_k$ 是奇数，其中 $p_1, p_2, \cdots, p_k$ 是质数，则 $\left(\dfrac{-1}{m}\right) = (-1)^{\frac{m-1}{2}}, \left(\dfrac 2m\right) = (-1)^{\frac{m^2-1}{8}}$
        2. 设 $m, n$ 是大于 $1$ 的奇数，则 $\left(\dfrac nm\right) = (-1)^{\frac{m-1}{2} \cdot \frac{n-1}{2}} \left(\dfrac mn\right)$
5. 质数模的二次同余方程：$x^2 \equiv a (\bmod p), p \nmid a$ 且 $p$ 是奇质数
    1. 当 $p \equiv 3 (\bmod 8)$ 或 $p \equiv 7 (\bmod 8)$ 时，方程的解形式为 $x \equiv \pm a^{\frac{p+1}{4}} (\bmod p)$
    2. 当 $p \equiv 5 (\bmod 8)$ 时，若 $a^{\frac{p-1}{4}} \equiv 1 (\bmod p)$，则方程的解形式为 $x \equiv \pm a^{\frac{p+3}{8}} (\bmod p)$；若 $a^{\frac{p-1}{4}} \equiv -1 (\bmod p)$，则方程的解形式为 $x \equiv \pm 2^{\frac{p-1}{4}} \cdot a^{\frac{p+3}{8}} (\bmod p)$
6. 合数模的二次同余方程：$x^2 \equiv a (\bmod m), (a, m) = 1$，其中 $m = 2^{\alpha}p_1^{\alpha_1}p_2^{\alpha_2} \cdots p_k^{\alpha_k}$
    1. 二次同余方程 $x^2 \equiv a (\bmod p^\alpha), \alpha > 0, (a, p) = 1$ 有解当且仅当 $\left(\dfrac ap\right) = 1$，且在有解的情况下该方程的解个数为 $2$
    2. 同余方程 $x^2 \equiv a (\bmod 2^2), (2, a) = 1$ 有解当且仅当 $a \equiv 1 (\bmod 4)$，且有解时，其解数为 $2$，分别为 $x \equiv \pm 1 (\bmod 4)$
    3. 设 $\alpha \geqslant 3$，同余方程 $x^2 \equiv a (\bmod 2^\alpha), (2, \alpha) = 1$ 有解当且仅当 $a \equiv 1 (\bmod 8)$，且方程有解时，其解数为 $4$，分别为 $x \equiv \pm \beta, \pm(\beta + 2^{\alpha-1}) (\bmod 2^\alpha)$
    4. 同余式 $x^2 \equiv a (\bmod m),m = 2^{\alpha}p_1^{\alpha_1}p_2^{\alpha_2} \cdots p_k^{\alpha_k}, (a, m) = 1$ 有解当且仅当当 $\alpha = 2$ 时，$a \equiv 1 (\bmod 4)$；当 $\alpha \geqslant 3$ 时，$a \equiv 1 (\bmod 8)$ 且 $\left(\dfrac{a}{p_i}\right) = 1, i = 1, 2, \cdots, k$．若上述条件成立，则有解且有
        1. 当 $\alpha \in \{0, 1\}$ 时，解的个数为 $2^k$
        2. 当 $\alpha = 2$ 时，解的个数时 $2^{k+1}$
        3. 当 $\alpha \geqslant 3$ 时，解的个数时 $2^{k+2}$

### 4.3.3 高次同余式
1. 解数与解法：
    1. 若 $m_1, m_2, \cdots, m_k$ 是 $k$ 个两两互质的正整数，$m = m_1 m_2 \cdots m_k$，则同余式 $f(x) \equiv 0 (\bmod m)$ 与同余式组 $f(x) \equiv 0 (\bmod m_i) \ (i = 1, 2, \cdots, k)$ 等价，并且若用 $T_i$ 表示 $f(x) \equiv 0 (\bmod m_i) \ (i = 1, 2, \cdots, k)$ 对模 $m_i$ 的解数，$T$ 表示 $f(x) \equiv 0 (\bmod m)$ 对模 $m$ 的解数，则 $T = T_1 T_2 \cdots T_k$
    2. 设 $p$ 是质数，$\alpha \geqslant 2$ 是整数，$f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$ 是整系数多项式，设 $x_1$ 是同余方程 $f(x) \equiv 0 (\bmod p^{\alpha-1})$ 的一个解，以 $f'(x)$ 表示 $f(x)$ 的导函数
        3. 若 $f'(x_1) \not \equiv 0 (\bmod p)$，则存在整数 $t$ 使得 $x = x_1 + p^{\alpha-1}t$ 是同余方程 $f(x) \equiv 0 (\bmod p^\alpha)$ 的解
        4. 若 $f'(x_1) \equiv 0 (\bmod p)$ 且 $f(x_1) \equiv 0 (\bmod p^\alpha)$，则对于 $t = 0, 1, 2, \cdots, p - 1$ 有 $x = x_1 + p^{n-1}t$ 中的 $x$ 都是方程 $f(x) \equiv 0 (\bmod p^n)$ 的解
2. 质数模的高次同余方程：$f(x) \equiv 0 (\bmod p)$，其中 $p \nmid a_n$ 且 $p$ 为质数
    1. $f(x) \equiv 0 (\bmod p)$ 与一个次数不超过 $p - 1$ 的质数模同余式等价
    2. 设 $k \leqslant n$，若同余方程 $f(x) \equiv 0 (\bmod p)$ 有 $k$ 个不同的解 $x_1, x_2, \cdots, x_k$，则对于任何整数 $x$ 有 $f(x) \equiv (x - x_1) (x - x_2) \cdots (x - x_k) f_k(x) (\bmod p)$，其中 $f_k(x)$ 是一个次数为 $n - k$ 的整系数多项式
        1. 若 $p$ 是质数，则对于任何整数 $x$ 有 $x^{p-1} - 1 \equiv (x - 1)(x - 2) \cdots [x - (p - 1)] (\bmod p)$
        2. $\text{Wilson}$ 定理：设 $p$ 是质数，则 $(p - 1)! \equiv -1 (\bmod p)$
    3. $\text{Lagrange}$ 定理：同余方程 $f(x) \equiv 0 (\bmod p)$，其中 $p$ 是质数，$a_n \not \equiv 0 (\bmod p)$ 的解数不超过它的次数
        1. $n$ 次同余方程的解数 $k \leqslant \min(n, p)$
        2. 若 $f(x)$ 是 $n$ 次多项式，$f(x) \equiv 0 (\bmod p)$ 的解数大于 $n$，则必有 $p \mid a_i, i = 1, 2, \cdots, n$
    4. 同余方程 $f(x) \equiv 0 (\bmod p)$ 或者有 $p$ 个解，或者存在次数不超过 $p - 1$ 的整系数多项式 $r(x)$ 使得 同余方程 $f(x) \equiv 0 (\bmod p)$ 与 $r(x) \equiv 0 (\bmod p)$ 等价
    5. 设 $n \leqslant p$，则同余方程 $f(x) \equiv 0 (\bmod p)$ 有 $n$ 个解当且仅当存在整系数多项式 $q(x)$ 与 $r(x)$，且 $r(x)$ 的次数小于 $n$ 使得 $x^p - x = f(x)q(x) + p\cdot r(x)$
    6. 设 $p$ 是质数且 $n \mid (p - 1), p \nmid a$，则 $x^n \equiv a (\bmod p)$ 有解当且仅当 $a^{\frac{p-1}{n}} \equiv 1 (\bmod p)$．若有解，则解数为 $n$

## 4.4 原根与指标
### 4.4.1 指数与原根
1. 设 $m > 1, (a, m) = 1$，则使 $a^r \equiv 1 (\bmod m)$ 成立的最小正整数 $r$ 称为 $a$ 对模 $m$ 的指数或 $a$ 对模 $m$ 的阶，记为 $\delta_m(a)$，简记作 $\delta(a)$
    1. $\delta_m(a) \leqslant \varphi(m)$
    2. 若 $a \equiv b (\bmod m), (a, m) = 1$，则 $\delta_m(a) = \delta_m(b)$
    3. 若 $m > 1, (a, m) = 1, a^n \equiv 1 (\bmod m)$，则 $\delta(a) \mid n$．特别地，若 $p$ 是指数，$(a, p) = 1$，则 $\delta(a) \mid p - 1$
2. 若 $\delta_m(a) = \varphi(m)$，则称 $a$ 是模 $m$ 的原根
    1. 记 $\delta = \delta_m(a)$，则 $a^{0}, a^{1}, \cdots, a^{\delta-1}$ 对模 $m$ 两两不同余
    2. 设 $\delta = \delta_m(a)$，$r, r' \in \mathbf Z_+$，则 $a^r \equiv a^{r'} (\bmod m)$ 当且仅当 $r \equiv r' (\bmod \delta)$
        1. $\delta_m(a) \mid \varphi(n)$
        2. $a^r \equiv 1 (\bmod m) \leftrightarrow \delta \mid r$
    3. 设 $k$ 是正整数，则 $\delta_m(a^k) = \dfrac{\delta_m(a)}{(\delta_m(a), k)}$
        1. 若 $\delta_m(a) = ks, k > 0, s > 0$，则 $\delta_m(a^k) = s$
        2. 若 $r$ 是模 $m$ 的原根，其中 $m$ 是大于 $1$ 的整数，则 $r^n$ 是模 $m$ 的一个原根当且仅当 $(u, \varphi(m)) = 1$
    4. 如果大于 $1$ 的正整数 $m$ 有一个原根，那么它一共有 $\varphi(\varphi(m))$ 个不同的原根
    5. $\delta_m(ab) = \delta_m(a) \delta_m(b) \leftrightarrow (\delta_m(a), \delta_m(b)) = 1$
3. 原根存在的条件
    1. 模 $m$ 有原根的必要条件是 $m = 2, 4, p^\alpha$ 或 $2p^\alpha$，其中 $p$ 是奇质数，$p > 1$
    2. 若 $p$ 是质数，则 $p$ 有原根
        1. 设 $m$ 是正整数，对于任意的 $a, b \in \mathbf Z$，一定存在 $c \in \mathbf Z$ 使得 $\delta_m(c) = [\delta_m(a), \delta_m(b)]$
        2. 设 $p$ 是奇质数，$\alpha$ 是正整数，则模 $p^\alpha$ 有原根
        3. 设 $p$ 是奇质数且 $\alpha \geqslant 1$，则模 $2p^\alpha$ 有原根
        4. 设 $p$ 是奇质数且 $m = 2, 4, p^\alpha, 2p^\alpha$，则模 $m$ 有原根
    3. 设 $m > 1, (g, m) = 1$ 且 $\varphi(m)$ 的所有不同质因数是 $p_1, p_2, \cdots, p_k$．则 $g$ 是模 $m$ 的原根当且仅当 $g^{\frac{\varphi(m)}{p_i}} \not \equiv 1 (\bmod m) \ (1 \leqslant i \leqslant k)$

### 4.4.2 指标与剩余
1. 指标：设 $a \in \mathbf Z$，若对模 $m$ 的一个原根 $g$ 有一整数 $r$ 存在使得 $a \equiv g^r (\bmod m) \ (r \geqslant 0)$ 成立，则 $r$ 称作以 $g$ 为底的 $a$ 对模 $m$ 的一个指标，记作 $r = \mathrm{ind}_g a$，简记作 $\mathrm{ind} a$
    1. 指标的性质
        1. $\mathrm{ind}_g g = 1$
        2. $\mathrm{ind}_g 1 = 0$
        3. $\mathrm{ind}_g (-1) = \dfrac{\varphi(m)}{2}$
    2. 若 $a$ 是一个与 $m$ 互质的整数，$g$ 是模 $m$ 的一个原根，则对模 $m$ 而言，$a$ 有一个以 $g$ 为底的指标 $r' \ (0 \leqslant r' < c)$ 且以 $g$ 为底的 $a$ 对模 $m$ 的一切指标是满足 $r \equiv r' (\bmod c) \ (r \geqslant 0)$ 的一切整数
    3. 设 $g$ 是模 $m$ 的一个原根，$r \in \mathbf N$，则以 $g$ 为底，对模 $m$ 有同一指标 $r$ 的一切整数是模 $m$ 的一个与模 $m$ 互质的剩余类
2. 指标法则：若 $a_1, a_2, \cdots, a_n$ 是与 $m$ 与之的 $n$ 个整数
    1. 乘积法则：$\mathrm{ind} (a_1, a_2, \cdots, a_n) \equiv \mathrm{ind} a_1, \mathrm{ind} a_2, \cdots, \mathrm{ind} a_n (\bmod c)$
    2. 幂法则：$\mathrm{ind}a^n \equiv n \mathrm{ind}a (\bmod c)$
3. $n$ 次剩余：设 $m \in \mathbf Z$，若同余式 $x^n \equiv a (\bmod m), (a, m) = 1$ 有解，则称 $a$ 是模 $m$ 的一个 $n$ 次剩余．若无解，则称 $a$ 是模 $m$ 的一个 $n$ 次非剩余
    1. 若 $(n, c) = d, (a, m) = 1$
        1. 同余式 $x^n \equiv a (\bmod m)$ 有解当且仅当 $d \mid \mathrm{ind} a$，且在有解的情况下解数为 $d$
        2. 在模 $m$ 的一个简化剩余系中，$n$ 次剩余的个数为 $\dfrac cd$
    2. $a$ 是模 $m$ 的 $n$ 次剩余当且仅当 $a^{\frac cd} \equiv 1 (\bmod m), d = (n, c)$

## 4.5 连分数
### 4.5.1 连分数的概念
1. 有限连分数：设 $a_1, a_2, \cdots, a_n$ 是一个实数列，$a_i > 0, i \geqslant 2$．对给定的 $n \geqslant 1$，将形如

    $$
    a_1 + \cfrac{1}{
        a_2 + \cfrac{1}{
            a_3 + \genfrac{}{}{0pt}{0}{}{
                \ddots + \dfrac{1}{
                    a_{n-1} + \dfrac{1}{a_n}
                }
            }
        }
    }
    $$

    的表达式称为 $n$ 阶有限连分数，如果 $a_1, a_2, \cdots, a_n$ 都是整数，则称连分数是 $n$ 阶有限简单连分数，简记为 $\left<a_1, a_2, \cdots, a_n\right> = a_1 + \dfrac{1}{a_2+} \dfrac{1}{a_3+} \cdots \dfrac{1}{a_n}$

2. 连分数：设 $a_1, a_2, \cdots, a_n, \cdots$ 是一个无限实数列，$a_i > 0, i \geqslant 2$．记 $\dfrac{p_k}{q_k} = \left<a_1, a_2, \cdots, a_n\right>$，若 $\dfrac{p_k}{q_k}$ 有意义，且 ${\displaystyle \lim_{n \to \infty} \dfrac{p_k}{q_k}} = A \neq \infty$，则称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是无限连分数，并称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 等于 $A$．也称它是 $A$ 的连分数，或称它表示 $A$，记作 $A = \left<a_1, a_2, \cdots, a_n, \cdots\right> = a_1 + \dfrac{1}{a_2+} \dfrac{1}{a_3+} \cdots \dfrac{1}{a_n+} \cdots$
    1. 称 $\dfrac{p_k}{q_k}$ 为连分数 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 的第 $k$ 个渐近分数
    2. 下列关系成立
        1. $p_1 = a_1, p_2 = a_1a_2 + 1, p_k = a_kp_{k-1} + p_{k-2} \ (k \geqslant 3)$
        2. $q_1 = 1, q_2 = a_2, q_k = a_kq_{k-1} + q_{k-2} \ (k \geqslant 3)$
        3. $p_kq_{k-1} - p_{k-2}q_k = (-1)^k \ (k \geqslant 2)$
        4. $p_kq_{k-2} - p_{k-2}q_k = (-1)^{k-1} a_k \ (k \geqslant 3)$
    3. 当 $k \geqslant 3$ 时，$q_k \geqslant q_{k-1} + 1$，因为对任何 $k$ 都有 $q_k \geqslant k-1$
    4. 设 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 时简单连分数，$\dfrac{p_k}{q_k} \ (k \geqslant 1)$ 是它的渐近分数
        1. $\dfrac{p_{2(k-2)}}{q_{2(k-1)}} > \dfrac{p_{2k}}{q_{2k}}, \dfrac{p_{2k-1}}{q_{2k-1}} > \dfrac{p_{2k-3}}{q_{2k-3}}, \dfrac{p_{2k}}{q_{2k}} > \dfrac{p_{2k-1}}{q_{2k-1}}$
        2. $\forall k \in \mathbf Z_+ : (p_k, q_k) = 1$
3. 实数与连分数
    1. 任何简单连分数都表示一个实数
        1. 任何有限简单连分数都表示一个有理数；任何有理数都可以表示为有限简单连分数
        2. 任何无理数都可以表示为无限简单连分数，并且这种连分数表示是唯一的
        3. 设 $\beta$ 是实无理数，则对于任意的正整数 $k$，存在 $\eta_k, \delta_k$ 有 $0 < \eta_k, \delta_k < 1$ 使得 $\beta = \dfrac{p_k}{q_k} + \dfrac{(-1)^{k-1}\eta_k}{q_kq_{k+1}} = \dfrac{p_k}{q_k} + \dfrac{(-1)^{k-1} \delta_k}{q_k^2}$
    2. 设 $a, b$ 是整数，$\left<a_1, a_2, \cdots, a_n\right>$ 与 $\left<b_1, b_2, \cdots, b_m\right>$ 是 $\dfrac ab$ 的两个简单连分数表示
        1. 若 $a_n > 1, b_m > 1$，则 $n = m, a_i = b_i \ (1 \leqslant i \leqslant n)$
        2. 若 $a_n$ 是大于 $i$ 的整数，则有理数 $\dfrac ab$ 仅有两种表示成简单连分数的方法，即 $\left<a_1, a_2, \cdots, a_n\right> = \left<a_1, a_2, \cdots, a_n - 1, 1\right>$
    3. 设 $\dfrac{p_k}{q_k}$ 是实数 $\alpha$ 的第 $k$ 个渐近分数，则若 $0 < q \leqslant q_k$，则 $\left|a - \dfrac{p_k}{q_k}\right| \leqslant \left|a - \dfrac pq\right|$
    4. 若 $\dfrac{p_j}{q_j}$ 是无理数 $\alpha$ 的第 $j$ 个渐近分数，$j = 1, 2, \cdots, r$ 与 $s$ 都是整数，且 $s > 0, k \in \mathbf Z_+$ 使得 $|sa - r| < |q_k\alpha - p_k|$，则 $s \geqslant q_{k+1}$
        1. 设 $\dfrac{p_j}{q_j}$ 是无理数 $\alpha$ 的第 $j$ 个渐近分数，$j = 1, 2, \cdots$，如果 $\dfrac rs$ 为一有理数，其中 $r, s$ 都是整数，且 $s > 0, k \in \mathbf Z_+$ 使得 $\left|\alpha -\dfrac rs\right| < \left|\alpha -  \dfrac{p_k}{q_k}\right|$，那么 $s > q$
        2. 如果 $\alpha$ 是一个无理数，且 $\dfrac rs$ 是一个既约分数且 $r, s \in \mathbf Z, s > 0$ 使得 $\left|\alpha - \dfrac rs\right| < \dfrac{1}{2s^2}$，那么 $\dfrac rs$ 是 $\alpha$ 的简单连分数的一个渐近分数
4. 循环连分数：设 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是无限简单连分数，如果存在两个整数 $s \geqslant 0, t > 0$ 使得 $a_{s+i} = a_{s + kt + i}, i = 1, 2, \cdots, t, k \in \mathbf N$，则称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是循环连分数，并记作 $\left<a_1, a_2, \cdots, a_s, \dot a_{s+1}, \dot a_{s+2}, \cdots, \dot a_{s+t}\right>$；如果 $s = 0$，则称它是纯循环连分数
    1. 任何循环连分数表示一个不可约整系数二次方程的实根
    2. 设 $\beta$ 是二次不可约整系数方程 $Ax^2 + Bx + C = 0$ 的实根，则 $\beta$ 的简单连分数是循环连分数

### 4.5.2 Pell 方程
5. $\text{Pell}$ 方程：形如 $x^2 - dy^2 = 1$ 的方程，其中 $d$ 是一个固定的正整数且不是完全平方数
    1. 有两个整数 $P_n, Q_n$ 存在使得 $\beta_n = \dfrac{\sqrt d + P_n}{Q_n} \ (P_n^2 \equiv d (\bmod Q_n))$；若 $d$ 是一个非平方的正整数，则二次方程 $x^2 - dy^2 = (-1)^n Q_n$ 有正整数解 $x, y$ 且 $(x, y) = 1$
        1. 令 $r + s\sqrt n = t + u\sqrt n$，其中 $r, s, t, u \in \mathbf Q, n \in \mathbf Z_+$ 且 $n$ 不为完全平方数，那么 $r = t$ 且 $s = u$
        2. 若 $\alpha_1 = \dfrac{a_1 + b_1\sqrt d}{c_1}, \alpha_2 = \dfrac{a_2 + b_2\sqrt d}{c_2}$ 是有理数或二次无理数，则 $(\alpha_1\alpha_2)' = \alpha_1'\alpha_2'$
    2. 设 $d$ 为正整数且非完全平方数，则方程 $x^2 - dy^2 = 1$ 总有正整数解，如果 $(x_1, y_1)$ 是使 $x_1$ 最小的解，则每个解 $(x_k, y_k)$ 可以通过取幂得到 $x_k + y_k\sqrt d = (x_1 + y_1 \sqrt d)^k \ (k = 1, 2, 3, \cdots)$
6. 若 $d$ 是一个非平方的正整数，令 $\dfrac{p_k}{q_k}$ 表示 $\sqrt d$ 的简单连分数的第 $k$ 个渐近分数，$k = 1, 2, \cdots, t$ 表示连分数的循环节长度
    1. 当 $t$ 是偶数时，方程 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{jt-1}, y = q_{jt-1} \ (j = 1, 2, 3, \cdots)$ 且方程 $x^2 - dy^2 = -1$ 无解
    2. 当 $t$ 是奇数时，当成 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{2jt-1}, y = q_{2jt-1} \ (j = 1, 2, 3, \cdots)$，方程 $x^2 - dy^2 = -1$ 的全体正整数解为 $x = p_{(2j-1)t-1}, y = q_{(2j-1)t-1} \ (j = 1, 2, 3, \cdots)$
