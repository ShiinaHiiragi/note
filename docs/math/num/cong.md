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
    1. 整数集合 $A$ 是模 $m$ 的完全剩余系当且仅当 ① $|A| = m$；② $A$ 中任何两个整数对模 $m$ 不同余
    2. 设 $a, b \in \mathbf Z$，若 $m \geqslant 1, (a, m) = 1$ 且 $\{x_1, x_2, \cdots, x_m\}$ 是模 $m$ 的一个完全剩余系，则 $\{ax_1 + b, ax_2 + b, \cdots, ax_m + b\}$ 也是模 $m$ 的完全剩余系
    3. 设 $m_1, m_2 \in \mathbf N, A \in \mathbf Z, (A, m_1) = 1$，又 $X = \{x_1, x_2, \cdots, x_{m_1}\}, Y = \{y_1, y_2, \cdots, y_{m_2}\}$ 分别是模 $m_1$ 与模 $m_2$ 的完全剩余系，则 $R = \{Ax + m_1y | x \in X, y \in Y\}$ 是模 $m_1, m_2$ 的一个完全剩余系
4. 简化剩余系：对于正整数 $m$，从 $m$ 的简化剩余类中各取一个数 $x_i$，构成一个集合 $\{x_1, x_2, \cdots, x_{\varphi(m)}\}$，称为模 $m$ 的一个简化剩余系
    1. 整数集合 $A$ 是模 $m$ 的简化剩余系当且仅当 ① $|A| = \varphi(m)$；② $A$ 中任何两个整数对模 $m$ 不同余；③ $A$ 中的每个整数都与 $m$ 互质
    2. 设 $a \in \mathbf Z$ 且 $(a, m) = 1$，$B = \{x_1, x_2, \cdots, x_{\varphi(m)}\}$ 是模 $m$ 的简化剩余系，则 $A = \{ax_1, ax_2, \cdots, ax_{\varphi(m)}\}$ 也是模 $m$ 的简化剩余系
    3. 设 $m_1, m_2 \in \mathbf N, (m_1, m_2) = 1$，又设 $X = \{x_1, x_2, \cdots, x_{\varphi(m_1)}\}, Y = \{y_1, y_2, \cdots, y_{\varphi(m_2)}\}$ 分别是模 $m_1$ 与模 $m_2$ 的简化剩余系，则 $A = \{m_1y + m_2x | x \in X, y \in Y\}$ 是模 $m_1m_2$ 的简化剩余系
    4. 若 $r$ 通过模 $c$ 的最小非负完全剩余系，则 $g'$ 通过模 $m$ 的一个简化剩余系

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

### 2.2.2 二次同余式
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
    5. 设 $n \leqslant p$，则同余方程 $f(x) \equiv 0 (\bmod p)$ 有 $n$ 个解当且仅当存在整系数多项式 $q(x)$ 与 $r(x)$，且 $r(x)$ 的次数小于 $n$ 使得 $x^p - x = f(x)q(x) + p\cdot r(x)$
    6. 设 $p$ 是质数且 $n \mid (p - 1), p \nmid a$，则 $x^n \equiv a (\bmod p)$ 有解当且仅当 $a^{\frac{p-1}{n}} \equiv 1 (\bmod p)$．若有解，则解数为 $n$

## 2.3 原根与指标
### 2.3.1 指数与原根
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

### 2.3.2 指标与剩余
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
