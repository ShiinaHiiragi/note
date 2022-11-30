# 2 大数理论

## 2.1 大数基础
1. 科学计数法：任何一个数 $x \in \mathbf R$ 可被唯一表示为 $x = a \times 10^{n}$ 的形式，其中实数 $a \in [1, 10)$，$n \in \mathbf Z$
2. 自然数类：定义 $c(n)$ 如下

    $$
    c(n) = \left\{\begin{aligned}
    & 6, & n = 0 \\
    & 10^{c(n-1)}, & n > 0
    \end{aligned}\right.
    $$

    则对于任意自然数，当 $n = 0$ 时，定义第 $0$ 类数为小于 $c(0)$ 的自然数；当 $n > 0$ 时，定义第 $n$ 类数为小于 $c(n)$ 且不小于 $c(n-1)$ 的自然数

    !!! note "超类"
        设 $c(n)$ 为自然数类函数，定义 $h(n)$ 如下

        $$
        c(n) = \left\{\begin{aligned}
        & 6, & n = 0 \\
        & c(h(n-1)), & n > 0
        \end{aligned}\right.
        $$

3. 经典大数实例
    - 无量大：$10^{68}$，古印度计数单位中的最大数量
    - 不可说不可说转：$10^{7 \times 2^{122}}$，出现在『华严经』中的最大数
    - $\text{Googol}$ 数：$10^{100}$，出自 $\text{Kasner}$ 的作品『数学与想象』
    - $\text{Eddington}$ 数：约 $1.57 \times 10^{79}$，即可观测宇宙中的质子数
    - $\text{Poincar}\acute{\mathrm e}$ 回归时间：约 $10 \uparrow 10 \uparrow 10 \uparrow 10 \uparrow 2.08$，即可观测宇宙的始态复现时间
    - $\text{Shannon}$ 数：$10^{120}$，国际象棋博弈树复杂度的保守下限
    - 第二 $\text{Skewes}$ 数：$e \uparrow e \uparrow e \uparrow e \uparrow 7.705 \approx E 3\#4$，是满足 ${\displaystyle \pi(x) > \int_0^x \dfrac{\mathrm dt}{\ln t}}$ 的最小自然数 $x$ 的一个上界．其中 $\pi(x)$ 是质数计数函数，表示不大于实数 $x$ 的质数个数

## 2.2 递归函数
### 2.2.1 原始递归函数
1. $\text{Knuth}$ 箭头：设 $x, y \in \mathbf N$，定义 $x \uparrow^n y = x \ \small \underbrace{\normalsize \uparrow \uparrow \cdots \uparrow}_{\normalsize n} \normalsize \ y$如下

    $$
    \begin{aligned}
    x \uparrow y & = x^y \\
    x \uparrow^n 1 & = x \\
    x \uparrow^n y & = x \uparrow^{n-1} (x \uparrow^n (y - 1))
    \end{aligned}
    $$

    $\text{Knuth}$ 箭头使用右结合的方式计算

    - 定义 $\text{Tritri}$ 数为 $3 \uparrow^4 2 = 3 \uparrow \uparrow \uparrow 3 = 3 \uparrow \uparrow 7625597484987$
    - 定义 $g_k(n)$ 如下

        $$
        \begin{aligned}
        g_0(n) & = n \\
        g_k(n) & = 3 \uparrow^{g_{k-1}(n)} 3
        \end{aligned}
        $$

        并定义 $\text{Graham}$ 数为 $g_{64}(4)$

2. 超运算：定义超$-n$ 运算 $H_n(a, b)$ 如下

    $$
    H_n(a, b)= \begin{cases}
    b+1, & n=0 \\
    a, & n=1, b=0 \\
    0, & n=2, b=0 \\
    1, & n \geqslant 3, b=0 \\
    H_{n-1}\left(a, H_n(a, b-1)\right), & \text{otherwise}
    \end{cases}
    $$

    1. 超$-0$ 运算：$H_0(a, b) = b + 1$，即后继运算
    2. 超$-1$ 运算：$H_1(a, b) = a + b$，即加法运算
    3. 超$-n$ 运算：$H_n(a, b) = a \uparrow^{n-2} b \ (n > 1)$，其中 $n = 2, 3, 4$ 时分别称作乘法运算、幂运算、超幂运算

### 2.2.2 多重递归函数
1. $\text{Moser}$ 数：定义 $m(k, n) \ (k \geqslant 3)$ 如下

    $$
    \begin{aligned}
    m(3, n) & = n^n \\
    m(k, n) & = \small \underbrace{\normalsize m(k-1, m(k-1, \cdots m(k-1, n) \cdots))}_{\normalsize n} \normalsize
    \end{aligned}
    $$

    并定义 $\text{Moser} = m(m(5, 2), 2)$

2. 超 $\text{E}$ 表示：设 $b, a_1, a_2, \cdots, a_n \in \mathbf N$，定义 $E[b] a_1 \# a_2 \# \cdots \# a_n$ 为

    $$
    \begin{aligned}
    E[b] x & = b^x \\
    E[b] a_1 \# a_2 \# \cdots \# a_{n-1} \# 1& = E[b] a_1 \# a_2 \# \cdots \# a_{n-1}\\
    E[b] a_1 \# a_2 \# \cdots \# a_n & = E[b] a_1 \# a_2 \# \cdots \# a_{n-2} (E[b] a_1 \# a_2 \# \cdots \# (a_n - 1)) 
    \end{aligned}
    $$

    称 $b$ 为基数

    1. 基数为 $10$ 时通常可被省略，例如 $\text{Googolplex}$ 数可表示为 $E 100\#2$
    2. $a \uparrow ^c b = E[a] \small \underbrace{\normalsize 1 \# 1 \# \cdots \# 1}_{\normalsize c-1} \normalsize \# b$

3. 多变量 $\text{Ackermann}$ 函数：定义 $n$ 元函数 $A(a_1, a_2, \cdots, a_n)$ 如下

    $$
    \begin{aligned}
    A(Y, a) &=a+1 \\
    A(X, b+1,0) &=A(X, b, 1) \\
    A(X, b+1, a+1) &=A(X, b, A(X, b+1, a)) \\
    A(X, b+1,0, Y, a) &=A(X, b, a, Y, a)
    \end{aligned}
    $$

    其中 $a, b \in \mathbf N$，$X$ 为多于或等于 $0$ 个自然数的简记，$Y$ 为多于或等于 $0$ 个 $0$ 的简记

4. $\text{Conway}$ 链式箭头：设 $a, b, c \in \mathbf Z_+$，$X$ 为 $\text{Conway}$ 链 $x_1 \to x_2 \to \cdots \to x_n \ (n \geqslant 1)$，则 $\text{Conway}$ 链递归定义如下

    $$
    \begin{aligned}
    a \to b & = a \uparrow b \\
    X \to 1 & = X \\
    X \to 1 \to a & = X \\
    X \to (a + 1) \to (b + 1) & = X \to (X \to a \to (b + 1)) \to b
    \end{aligned}
    $$

    1. $\text{Conway}$ 链式箭头不是二元运算符，既没有左结合性也没有右结合性
    2. 当 $\text{Conway}$ 链长度为 $3$ 时，有 $a \to b \to c = a\uparrow^c b$
    3. 扩张链式表示：递归定义如下

        $$
        \begin{aligned}
        a \to_1 b & = a \uparrow b \\
        a \to_c b & = \small \underbrace{\normalsize a \to_{c-1} a \to_{c-1} \cdots \to_{c-1} a}_{\normalsize b} \normalsize \ (c > 1) \\
        X \to_c 1 & = X \\
        X \to_c 1 \to_c a & = X \\
        X \to_c (a + 1) \to_c (b + 1) & = X \to_c (X \to_c a \to_c (b + 1)) \to_c b
        \end{aligned}
        $$

5. $\text{Fish}$ 数

## 2.3 序数与集合

## 2.4 不可计算函数
