# 2 同余理论

## 2.1 同余
### 2.1.1 同余的概念
1. 同余：给定正整数 $m$，如果整数 $a, b$ 有 $m | (a - b)$，则称 $a$ 与 $b$ 对于模 $m$ 同余，记作 $a \equiv b (\bmod m)$；否则称 $a$ 与 $b$ 对于模 $m$ 不同余，记作 $a \not\equiv b (\bmod n)$
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

### 2.1.2 剩余类
1. 剩余类：给定正整数 $m$，对于每个整数 $i \ (0 \leqslant i \leqslant m - 1)$，称集合 $R_i(m) = \{n | n \equiv i (\bmod m), n \in \mathbf Z\}$ 是模 $m$ 的一个剩余类
2. 简化剩余类：设 $R$ 是模 $m$ 的一个剩余类，若任意 $a \in R$ 都有 $(a, m) = 1$ 成立，则称 $R$ 是模 $m$ 的一个简化剩余类
    1. 对于正整数 $k$，令函数 $\varphi(k)$ 的值等于模 $k$ 的所有简化剩余类的个数，称 $\varphi(k)$ 为 $\text{Euler}$ 函数
    2. 特别地，$\varphi(1) = 1$；当 $p$ 为质数时，$\varphi(p) = p - 1, \varphi(p^k) = p^k - p^{k - 1}$
3. 完全剩余系：设 $m$ 是正整数，从模 $m$ 的每一个剩余类中任取一个数 $x_i \ (0 \leqslant i \leqslant m - 1)$，称集合 $\{x_0, x_1, \cdots, x_{m - 1}\}$ 是模 $m$ 的一个完全剩余系
    1. 整数集合 $A$ 是模 $m$ 的完全剩余系的充要条件是 ① $|A| = m$；② $A$ 中任何两个整数对模 $m$ 不同余
    2. 设 $a, b \in \mathbf Z$，若 $m \geqslant 1, (a, m) = 1$ 且 $\{x_1, x_2, \cdots, x_m\}$ 是模 $m$ 的一个完全剩余系，则 $\{ax_1 + b, ax_2 + b, \cdots, ax_m + b\}$ 也是模 $m$ 的完全剩余系
    3. 设 $m_1, m_2 \in \mathbf N, A \in \mathbf Z, (A, m_1) = 1$，又 $X = \{x_1, x_2, \cdots, x_{m_1}\}, Y = \{y_1, y_2, \cdots, y_{m_2}\}$ 分别是模 $m_1$ 与模 $m_2$ 的完全剩余系，则 $R = \{Ax + m_1y | x \in X, y \in Y\}$ 是模 $m_1, m_2$ 的一个完全剩余系
4. 简化剩余系：对于正整数 $m$，从 $m$ 的简化剩余类中各取一个数 $x_i$，构成一个集合 $\{x_1, x_2, \cdots, x_{\varphi(m)}\}$，称为模 $m$ 的一个简化剩余系
    1. 整数集合 $A$ 是模 $m$ 的简化剩余系的充要条件是 ① $|A| = \varphi(m)$；② $A$ 中任何两个整数对模 $m$ 不同余；③ $A$ 中的每个整数都与 $m$ 互质
    2. 设 $a \in \mathbf Z$ 且 $(a, m) = 1$，$B = \{x_1, x_2, \cdots, x_{\varphi(m)}\}$ 是模 $m$ 的简化剩余系，则 $A = \{ax_1, ax_2, \cdots, ax_{\varphi(m)}\}$ 也是模 $m$ 的简化剩余系
    3. 设 $m_1, m_2 \in \mathbf N, (m_1, m_2) = 1$，又设 $X = \{x_1, x_2, \cdots, x_{\varphi(m_1)}\}, Y = \{y_1, y_2, \cdots, y_{\varphi(m_2)}\}$ 分别是模 $m_1$ 与模 $m_2$ 的简化剩余系，则 $A = \{m_1y + m_2x | x \in X, y \in Y\}$ 是模 $m_1m_2$ 的简化剩余系

### 2.1.3 Fermat 定理
1. $\text{Euler}$ 定理：设 $m \in \mathbf Z_+$ 且 $(a, m) = 1$，则 $a^{\varphi(m)} \equiv 1 (\bmod m)$
2. $\text{Fermat}$ 定理：设 $p$ 是质数，则对于任意整数 $a$ 有 $a^p \equiv a (\bmod p)$

## 2.2 同余方程

- 同余方程：设 $f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots + a_1x + a_0$ 是整系数多项式，称 $f(x) \equiv 0 (\bmod m)$ 是关于未知数 $x$ 的模 $m$ 同余方程，
    1. 若 $a_n \not \equiv 0 (\bmod m)$，则称 $f(x) \equiv 0 (\bmod m)$ 为 $n$ 次同余方程
    2. 若 $a$ 是使 $f(a) \equiv 0 (\bmod m)$ 成立的一个整数，则 $x \equiv a (\bmod m)$ 称为 $f(x) \equiv 0 (\bmod m)$ 的一个解

### 2.2.1 一次同余式
1. 一次同余方程的一般形式：$ax \equiv b (\bmod m)$
    1. 同余方程 $ax \equiv b (\bmod m)$ 等价于不定方程 $ax + my = b$
    2. 设 $a, b$ 是整数，$a \not \equiv 0 (\bmod m)$，则同余方程 $ax \equiv b (\bmod m)$ 有解的充要条件是 $(a, m) \mid b$．若有解，则恰有 $d = (a, m)$ 个解
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

    1. 设 $d = (m_1, m_2), m = [m_1, m_2]$，同余式组 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2)\end{aligned}\right.$ 有解的充要条件是 $d \mid (a_1 - a_2)$，当此条件成立时，同余式组恰好有一个解 $x \equiv b (\bmod m)$

    2. 设 $p$ 是质数，当 $m_1 = p^\alpha m_1', m_2 = p^\beta m_2'$ 且 $\alpha \geqslant \beta, p \nmid m_1'm_2'$ 时，若同余式 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2)\end{aligned}\right.$ 有解，则它与 $\left\{\begin{aligned}& x \equiv a_1 (\bmod m_1) \\& x \equiv a_2 (\bmod m_2')\end{aligned}\right.$ 同解

### 2.2.2 二次同余式

### 2.2.3 高次同余式
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
    5. 设 $n \leqslant p$，则同余方程 $f(x) \equiv 0 (\bmod p)$ 有 $n$ 个解的充要条件是存在整系数多项式 $q(x)$ 与 $r(x)$，且 $r(x)$ 的次数小于 $n$ 使得 $x^p - x = f(x)q(x) + p\cdot r(x)$
    6. 设 $p$ 是质数且 $n \mid (p - 1), p \nmid a$，则 $x^n \equiv a (\bmod p)$ 有解的充要条件是 $a^{\frac{p-1}{n}} \equiv 1 (\bmod p)$．若有解，则解数为 $n$

## 2.3 原根与指标
