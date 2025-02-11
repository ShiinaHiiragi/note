# 2 大数理论

## 2.1 大数基础
1. 基础四则运算
    1. 科学计数法：任何实数 $x \in \mathbf R$ 可被唯一表示为 $x = a \times 10^{n}$ 的形式，其中实数 $a \in [1, 10)$，$n \in \mathbf Z$
    2. 阶乘 $n! = \left\{\begin{aligned} & 1, & n = 0 \\ & n \cdot (n - 1)!, & n > 1 \end{aligned}\right.$

        1. 迭代阶乘：定义 $n!^p = \small \underbrace{\normalsize (\cdots((n!)!)\cdots)!}_{\normalsize p} \normalsize$ 如下

            $$
            n!^p = \left\{\begin{aligned}
            & n!, & n = 1 \\
            & (n!^{n-1})!, & n > 1
            \end{aligned}\right.
            $$

        2. 多重阶乘：定义 $n!^{(p)} = n \small \underbrace{\normalsize !!\cdots!}_{\normalsize p} \normalsize$ 如下

            $$
            n!^{(p)} = \prod_{i=0}^{\left[\frac{n}{p}\right] - 1} (n - ip)
            $$

            并定义 $0!^{(p)} = 1$．当 $p = 2$ 时，称 $n!!$ 为 $n$ 的双阶乘

    3. 超运算：定义超$-n$ 运算 $H_n(a, b)$ 如下

        $$
        H_n(a, b)= \left\{\begin{aligned}
        & b+1, & n=0 \\
        & a, & n=1, b=0 \\
        & 0, & n=2, b=0 \\
        & 1, & n \geqslant 3, b=0 \\
        & H_{n-1}\left(a, H_n(a, b-1)\right), & \textsf{否则}
        \end{aligned}\right.
        $$

        1. 超$-0$ 运算：$H_0(a, b) = b + 1$，即后继运算
        2. 超$-1$ 运算：$H_1(a, b) = a + b$，即加法运算
        3. 超$-n$ 运算：$H_n(a, b) = a \uparrow^{n-2} b \ (n > 1)$，其中 $n = 2, 3, 4$ 时分别称作乘法运算、幂运算、超幂运算

2. 自然数的分类
    1. 数类：定义 $c(n)$ 如下

        $$
        c(n) = \left\{\begin{aligned}
        & 6, & n = 0 \\
        & 10^{c(n-1)}, & n > 0
        \end{aligned}\right.
        $$

        则对于任意自然数，当 $n = 0$ 时，定义第 $0$ 类数为小于 $c(0)$ 的自然数；当 $n > 0$ 时，定义第 $n$ 类数为小于 $c(n)$ 且不小于 $c(n-1)$ 的自然数

    2. 超类：设 $c(n)$ 为自然数类函数，则定义 $h(n)$ 如下

        $$
        h(n) = \left\{\begin{aligned}
        & 6, & n = 0 \\
        & c(h(n-1)), & n > 0
        \end{aligned}\right.
        $$

        为自然数超类函数．则对于任意自然数，当 $n = 0$ 时，定义第 $0$ 类数为小于 $h(0)$ 的自然数；当 $n > 0$ 时，定义第 $n$ 类数为小于 $c(n)$ 且不小于 $h(n-1)$ 的自然数

3. 经典大数实例例举
    - 无量大：$10^{68}$，古印度计数单位中的最大数量
    - 不可说不可说转：$10^{7 \times 2^{122}}$，出现在『华严经』中的最大数
    - $\text{Googol}$ 数：$10^{100}$，出自 $\text{Kasner}$ 的作品『数学与想象』
    - $\text{Shannon}$ 数：$10^{120}$，国际象棋博弈树复杂度的保守下限
    - $\text{Eddington}$ 数：约 $1.57 \times 10^{79}$，即可观测宇宙中的质子数
    - $\text{Poincar}\acute{\mathrm e}$ 回归时间：约 $10 \uparrow 10 \uparrow 10 \uparrow 10 \uparrow 2.08$，即可观测宇宙的始态复现时间

## 2.2 序数层级
1. 基本列：设 $\alpha_0 < \alpha_1 < \alpha_2 < \cdots$ 为一系列严格递增的无穷序数，若存在极限序数 $\alpha$ 使得 $\alpha = \sup\{\alpha_0, \alpha_1, \alpha_2, \cdots\}$，则称 $\alpha_0, \alpha_1, \alpha_2, \cdots$ 为以 $\alpha$ 为极限的基本列，记作 $\alpha = \lim(\alpha_0, \alpha_1, \alpha_2, \cdots)$
    1. $\text{Wainer}$ 层级：对于极限序数 $\alpha \leqslant \varepsilon_0$，定义 $\alpha$ 的基本列 $\alpha[0], \alpha[1], \cdots$ 如下

        $$
        \begin{aligned}
        \omega[n] & =n \\
        \omega^{\alpha+1}[n] & =\omega^\alpha n \\
        \omega^\alpha[n] & =\omega^{\alpha[n]} \ (\alpha \textsf { 为极限序数}) \\
        \left(\omega^{\alpha_1}+\omega^{\alpha_2}+\cdots+\omega^{\alpha_k}\right)[n] & =\omega^{\alpha_1}+\omega^{\alpha_2}+\cdots+\omega^{\alpha_k}[n] \ \left(\alpha_1 \geqslant \alpha_2 \geqslant \cdots \geqslant \alpha_k\right) \\
        \varepsilon_0[0] & =1 \\
        \varepsilon_0[n+1] & =\omega^{\varepsilon_0[n]}
        \end{aligned}
        $$

    2. $\text{Veblen}$ 层级：对于极限序数 $\alpha < \Gamma_0$，定义 $\alpha$ 的基本列 $\alpha[0], \alpha[1], \cdots$ 如下

        $$
        \begin{aligned}
        (\varphi_{\beta_1}(\gamma_1) + \varphi_{\beta_2}(\gamma_2) + \cdots + \varphi_{\beta_k}(\gamma_k))[n]& =\varphi_{\beta_1}(\gamma_1) + \cdots + \varphi_{\beta_{k-1}}(\gamma_{k-1}) + \varphi_{\beta_k}(\gamma_k) [n] \\
        \varphi_0(\gamma) & = \omega^{\gamma} \\
        \varphi_0(\gamma+1) [n] & = \omega^{\gamma} \cdot n \\
        \varphi_{\beta+1}(0)[n]& =\varphi_{\beta}^n(0) \\
        \varphi_{\beta+1}(\gamma+1)[n]& =\varphi_{\beta}^n(\varphi_{\beta+1}(\gamma)+1) \\
        \varphi_{\beta}(\gamma) [n] & = \varphi_{\beta}(\gamma [n]) \ (\textsf{对于极限序数 } \gamma<\varphi_\beta(\gamma)) \\
        \varphi_{\beta}(0) [n] & = \varphi_{\beta [n]}(0) \ (\textsf{对于极限序数 } \beta<\varphi_\beta(0)) \\
        \varphi_{\beta}(\gamma+1) [n] & = \varphi_{\beta [n]}(\varphi_{\beta}(\gamma)+1) \ (\textsf{对于极限序数 } \beta)
        \end{aligned}
        $$

2. 设 $F[\alpha]$ 是增长函数，$f: \mathbf N \to \mathbf N$．若存在 $N \in \mathbf N$ 使得对于任意 $n > N$ 与任意序数 $\beta$ 都有 $\left|f(n)-F[\alpha](n)\right| \leqslant\left|f(n)-F[\beta](n)\right|$，则称函数 $f(n)$ 的增长率为 $\alpha$，记作 $f(n) \sim \alpha$
    1. $\text{Hardy}$ 函数：对于序数 $\alpha$，定义 $H[\alpha]: \mathbf N \to \mathbf N$ 如下

        $$
        \begin{aligned}
        H[0](n) & =n \\
        H[\alpha+1](n) & =H[\alpha](n+1) \\
        H[\alpha](n) & =H[\alpha[n]](n) \ (\alpha \textsf{ 为极限序数且 } \alpha[n] \textsf{ 为基本列})
        \end{aligned}
        $$

        未取定基本列的 $\text{Hardy}$ 函数不是良定义的概念，此处基本列取 $\text{Wainer}$ 层级

        1. $\text{Hardy}$ 函数的复合：若不存在 $\gamma$ 使得 $\alpha + \beta = \gamma + \beta$，则 $H[\alpha + \beta](n) = H[\alpha](H[\beta](n))$
        2. $\text{Hardy}$ 函数的增长率：对于 $m > 1$ 时有 $H[\omega^m](n) > 2 \uparrow^{m-1} n$

    2. 急增长函数 $\text{FGH}$（也称作快速增长层级）：

        $$
        \begin{aligned}
        F[0](n) & =n+1 \\
        F[\alpha+1](n) & =\left[F[\alpha]^n\right](n) \\
        F[\alpha](n) & =F\left[\alpha[n]\right](n) \ (\alpha \textsf{ 为极限序数且 } \alpha[n] \textsf{ 为基本列})
        \end{aligned}
        $$

        1. 当 $\alpha < \varepsilon_0$ 时有 $F[\alpha](n)=H\left[\omega^\alpha\right](n)$
        2. 当 $\alpha = \varepsilon_0$ 时有 $F\left[\varepsilon_0\right](n) \approx H\left[\varepsilon_0\right](n+1)=H\left[\varepsilon_0+1\right](n)$ 近似成立

    3. 缓增长函数 $\text{SGH}$（也称作缓慢增长层级）：

        $$
        \begin{aligned}
        G[0](n) & =0 \\
        G[\alpha+1](n) & =G[\alpha](n)+1 \\
        G[\alpha](n) & =G\left[\alpha[n]\right](n) \ (\alpha \textsf{ 为极限序数且 } \alpha[n] \textsf{ 为基本列})
        \end{aligned}
        $$

        1. 缓增长函数的速度慢于 $\text{Hardy}$ 函数，且有 $G[\varepsilon_0](n) = n \uparrow \uparrow n$
        2. 缓增长函数追上急增长函数的时机取决于基本列的选择

3. 原始数列数：设「$\oplus$」为数列的拼接运算，例如 $\left<0, 1\right> \oplus \left<0\right> = \left<0, 1, 0\right>$
    1. 原始数列的递归定义：设 $S = \left<S_0, S_1, \cdots, S_n\right> \ (S_i \in \mathbf N)$
        1. 空数列 $\left<\right>$ 是原始数列
        2. 若 $S$ 是至多只含一个 $0$ 的原始数列，则 $w(S) = \left<0\right> \oplus S'$ 也是原始数列，其中

            $$
            S' = \left\{\begin{aligned}
            & \left<\right>, & S = \left<\right> \\
            & \left<S_0 + 1, S_1 + 1, \cdots, S_n + 1\right>, & S = \left<S_0, S_1, \cdots, S_n\right> \neq \left<\right>
            \end{aligned}\right.
            $$

        3. 若 $S_1, S_2, \cdots, S_n$ 为按字典序排列的 $n$ 个原始数列，则 $S_1 \oplus S_2 \oplus \cdots \oplus S_n$ 也为原始数列

        除上述定义外不存在其他的原始数列

        4. 一个原始数列与唯一序数对应：设序数 $\alpha, \beta$ 分别与基本列 $S, T$ 对应，记作 $\alpha \leftrightarrow S, \beta \leftrightarrow T$
            1. $0 \leftrightarrow \left<\right>$
            2. $\omega^{\alpha} \leftrightarrow \left<0\right> + S'$
            3. 若 $\alpha > \beta$，则 $S$ 字典序大于 $T$ 且 $\alpha + \beta \leftrightarrow S + T$
        5. 若非空原始数列 $S$ 的末尾不为 $0$，则称 $S$ 为极限原始数列

    2. 原始数列系统：设 $S$ 为原始数列，$f(n) = n^2 + 1$．定义 $S[n]: \mathbf N \to \mathbf N$ 如下
        1. $\left<\right>[n] = n$
        2. 当 $S_n = 0$ 时，$S[n]=\left<S_0, S_1, \cdots, S_{n-1}\right>[f(n)]$
        3. 当 $S_n > 0$ 时，将数列分为好的部分 $g$ 与坏的部分 $b$，令 $r$ 为满足 $k < n$ 且 $S_k < S_n$ 的最大非负整数
            1. 若 $k$ 不存在，则 $g = \left<S_0, S_1, \cdots, S_{n-1}\right>, b = \left<\right>$
            2. 若 $k$ 存在，则 $g = \left<S_0, S_1, \cdots, S_{k-1}\right>, b = \left<S_{k}, S_{k+1}, \cdots, S_{n-1}\right>$

            令 $S[n] = \left<\right.g \oplus \small \underbrace{\normalsize b \oplus b \oplus \cdots \oplus b}_{\normalsize f(n)+1} \normalsize\left.\right>[f(n)]$

        原始数列系统在 $\text{Wainer}$ 层级下近似为 $\left<0, 1, 2, \cdots, n\right>[n] \approx H\left[\varepsilon_0\right](n) \approx F\left[\varepsilon_0\right](n)$

    3. 原始数列的基本列：给定原始数列 $S$ 与非负整数，定义基本列 $S[0], S[1], S[n],\cdots$ 如下
        1. $\left(w\left(S_1\right)\oplus w\left(S_2\right)\oplus \cdots\oplus w\left(S_k\right)\right)[n]=w\left(S_1\right)\oplus w\left(S_2\right)\oplus \cdots\oplus w\left(S_{k-1}\right)\oplus w\left(S_k\right)[n]$
        2. $w(S\oplus (0))[n]=\small \underbrace{\normalsize w(S)\oplus w(S)\oplus \cdots \oplus w(S)}_{\normalsize n} \normalsize$
        3. $w(S)[n]=w(S[n])$，其中 $S$ 为极限原始数列

        从而可定义原始数列基本列下的急增长函数 $F[S](n)$ 如下：

        4. $F[()](n)=n+1$
        5. $F[S+(0)]=\left[F[S]^n\right](n)$
        6. $F[S](n)=F[S[n]](n)$，其中 $S$ 为极限原始数列

## 2.3 可计算函数
### 2.3.1 递归函数
1. $\text{Knuth}$ 箭头：设 $x, y \in \mathbf N$，定义 $x \uparrow^n y = x \ \small \underbrace{\normalsize \uparrow \uparrow \cdots \uparrow}_{\normalsize n} \normalsize \ y$ 如下

    $$
    \begin{aligned}
    x \uparrow y & = x^y \\
    x \uparrow^n 0 & = 1 \\
    x \uparrow^n y & = x \uparrow^{n-1} (x \uparrow^n (y - 1))
    \end{aligned}
    $$

    $\text{Knuth}$ 箭头使用右结合的方式计算

    1. 利用 $\text{Knuth}$ 箭头定义的大数
        1. 定义 $\text{Tritri}$ 数为 $3 \uparrow^4 2 = 3 \uparrow \uparrow \uparrow 3 = 3 \uparrow \uparrow 7625597484987$
        2. 定义 $g_k(n)$ 如下

            $$
            \begin{aligned}
            g_0(n) & = n \\
            g_k(n) & = 3 \uparrow^{g_{k-1}(n)} 3
            \end{aligned}
            $$

            并定义 $\text{Graham}$ 数为 $g_{64}(4)$

    2. 连续化：设 $x \in \mathbf R$ 且 $n \geqslant 1$，定义超对数 $\small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n} \normalsize\mathrm{log}_a(x)$ 如下

        $$
        \small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n} \normalsize\mathrm{log}_a(x)=\left\{\begin{aligned}
        & \small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n} \normalsize\mathrm{log}_a(a \uparrow \uparrow x)-1, & x \leqslant0 \\
        & -1+x, & 0<x \leqslant1 \\
        & \small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n} \normalsize\mathrm{log}_a(\small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n-1} \normalsize\mathrm{log}_a(x))+1, & 1<x
        \end{aligned}\right.
        $$

        则可定义 $a \uparrow^n x$ 如下

        $$
        a \uparrow^n x= \left\{\begin{aligned}
        & \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n-2} \normalsize\mathrm{log} _a\left(a \uparrow^n(x+1)\right), & x \leqslant-1 \\
        & 1+x, & -1<x \leqslant 0 \\
        & a \uparrow^{n-1}\left(a \uparrow^n(x-1)\right), & 0<x
        \end{aligned}\right.
        $$

    3. 推广到序数：设 $\alpha, \beta \in \mathbf{On}$，则定义

        $$
        \begin{aligned}
        \alpha \uparrow \beta & = \alpha^\beta \\
        \alpha \uparrow^n 0 & = 1 \\
        \alpha \uparrow^n (\beta + 1) & = \alpha \uparrow^{n-1} (\alpha \uparrow^n \beta) \\
        \alpha \uparrow^n \gamma & = \sup \left\{\alpha \uparrow^{n} \beta \mid \beta < \gamma \right\} \ (\gamma \textsf{ 为极限序数})
        \end{aligned}
        $$

        特别地，$\alpha \uparrow \beta$ 也可写作 $\alpha \widehat{\ \ \ } \beta$，$\alpha \uparrow \uparrow \beta$ 也可写作 $\alpha \widehat{\ \ \ } \widehat{\ \ \ } \beta$

2. 超 $\text{E}$ 记号：设 $b, a_1, a_2, \cdots, a_n \in \mathbf N$，定义 $E[b] a_1 \# a_2 \# \cdots \# a_n$ 为

    $$
    \begin{aligned}
    E[b] x & = b^x \\
    E[b] a_1 \# a_2 \# \cdots \# a_{n-1} \# 1& = E[b] a_1 \# a_2 \# \cdots \# a_{n-1}\\
    E[b] a_1 \# a_2 \# \cdots \# a_n & = E[b] a_1 \# a_2 \# \cdots \# a_{n-2} (E[b] a_1 \# a_2 \# \cdots \# (a_n - 1)) 
    \end{aligned}
    $$

    1. $E[a] \small \underbrace{\normalsize 1 \# 1 \# \cdots \# 1}_{\normalsize c-1} \normalsize \# b = a \uparrow ^c b$
    2. 称 $b$ 为基数，基数为 $10$ 时通常可被省略，例如 $\text{Googolplex}$ 数可表示为 $E 100\#2$

3. $\text{Steinhaus}-\text{Moser}$ 多边形记号：定义 $m(k, n) \ (k \geqslant 3)$ 如下

    $$
    \begin{aligned}
    m(3, n) & = n^n \\
    m(k, n) & = \small \underbrace{\normalsize m(k-1, m(k-1, \cdots m(k-1, n) \cdots))}_{\normalsize n} \normalsize
    \end{aligned}
    $$

    并定义 $\text{Moser}$ 数为 $m(m(5, 2), 2)$

4. $\text{Ackermann}$ 函数：

    $$
    \begin{aligned}
    A(0, y) & = y + 1 \\
    A(x + 1, 0) & = A(x, 1) \\
    A(x + 1, y + 1) & = A(x, A(x + 1, y))
    \end{aligned}
    $$

    此时 $\text{Ackermann}$ 函数的解析式为 $A(x, y) = 2 \uparrow^{x-2} (y + 3) - 3$

    1. 多变量 $\text{Ackermann}$ 函数：定义 $n$ 元函数 $A(a_1, a_2, \cdots, a_n)$ 如下

        $$
        \begin{aligned}
        A(Y, a) &=a+1 \\
        A(X, b+1,0) &=A(X, b, 1) \\
        A(X, b+1, a+1) &=A(X, b, A(X, b+1, a)) \\
        A(X, b+1,0, Y, a) &=A(X, b, a, Y, a)
        \end{aligned}
        $$

        其中 $a, b \in \mathbf N$，$X$ 为多于或等于 $0$ 个自然数的简记，$Y$ 为多于或等于 $0$ 个 $0$ 的简记，其 $\text{Wainer}$ 层级 $\text{FGH}$ 近似为

        $$
        \begin{aligned}
        A\left(a_k, \cdots, a_2, a_1, a_0, n\right) & \approx F\left[\omega^k \times a_k+\cdots+\omega^2 \times a_2+\omega \times a_1+a_0\right](n)
        \end{aligned}
        $$

        特别地，有 $A(\small \underbrace{\normalsize 1, 1, \cdots, 1}_{\normalsize n} \normalsize) \approx F\left[\omega^\omega\right](n)$ 成立

    2. 二重序列 $\text{Ackermann}$ 函数：

        $$
        \begin{aligned}
        A(Y_1, [X, 0], Y_2) & = A(Y_1, Y_2) \\
        A(Y_1, [Z, X], Y_2) & = A(Y_1, [X], Y_2) \\
        A([a]) & = a+1 \\
        A(Y, [1, b+1]) & = A(Y, [1, b], [1]) \\
        A(Y, [1, b+1], [a+1]) & = A( Y, [1, b], [A(Y, [1, b+1], [a])] ) \\
        A(Y, [X, c+1, b+1], [a]) & = A(Y, [X, c+1, b], [X, c, a], [a]), X \neq Z \vee c \neq 0 \\
        A(Y, [X, c+1, 0, Z, b+1], [a]) & = A(Y, [X, c+1, 0, Z, b], [X, c, a, Z, a], [a])
        \end{aligned}
        $$

        其中 $X$ 表示 $0$ 个以上的自然数，$Y, Y_1, Y_2$ 表示 $0$ 个以上的整数序列，$Z$ 表示 $0$ 个以上的 $0$，$a, b, c$ 表示 $0$ 以上的正整数

        1. 对于大整数 $N$，记 $\mathrm{index} [\cdots, b_3, b_2, b_1, b_0, a_0] = \cdots + N^3 \cdot b_3 + N^2 \cdot b_2 + N \cdot b_1 + b_0$，则 $A$ 中序列按 $\mathrm{index}$ 从大到小的顺序排列，且 $A$ 中不存在 $\mathrm{index}$ 相同的序列
        2. 二重序列 $\text{Ackermann}$ 函数的 $\text{Wainer}$ 层级 $\text{FGH}$ 近似为 $A([\small \underbrace{\normalsize 1, 1, \cdots, 1}_{\normalsize n} \normalsize], [n]) \approx F[\omega^{\omega^{\omega}}](n)$

5. $\text{Conway}$ 链式箭头：设 $a, b, c \in \mathbf Z_+$，$X$ 为 $\text{Conway}$ 链 $x_1 \to x_2 \to \cdots \to x_n \ (n \geqslant 1)$，则 $\text{Conway}$ 链递归定义如下

    $$
    \begin{aligned}
    a \to b & = a \uparrow b \\
    X \to 1 & = X \\
    X \to 1 \to a & = X \\
    X \to (a + 1) \to (b + 1) & = X \to (X \to a \to (b + 1)) \to b
    \end{aligned}
    $$

    当 $\text{Conway}$ 链长度为 $3$ 时，有 $a \to b \to c = a\uparrow^c b$

    1. $\text{Conway}$ 链式箭头不是二元运算符，既没有左结合性也没有右结合性
    2. 扩展链式记号：递归定义如下

        $$
        \begin{aligned}
        a \to_1 b & = a \uparrow b \\
        a \to_c b & = \small \underbrace{\normalsize a \to_{c-1} a \to_{c-1} \cdots \to_{c-1} a}_{\normalsize b} \normalsize \ (c > 1) \\
        X \to_c 1 & = X \\
        X \to_c 1 \to_c a & = X \\
        X \to_c (a + 1) \to_c (b + 1) & = X \to_c (X \to_c a \to_c (b + 1)) \to_c b
        \end{aligned}
        $$

    3. （扩展）$\text{Conway}$ 链的 $\text{Wainer}$ 层级 $\text{FGH}$ 近似

        $$
        \begin{aligned}
        3 \rightarrow 3 \rightarrow n & \approx F[\omega](n) \\
        3 \rightarrow 3 \rightarrow 3 \rightarrow n & \approx F[\omega \times 2](n) \\
        3 \rightarrow 3 \rightarrow 3 \rightarrow 3 \rightarrow n & \approx F[\omega \times 3](n) \\
        3 \rightarrow_2 n & \approx F\left[\omega^2\right](n) \\
        3 \rightarrow_2 3 \rightarrow_2 n & \approx F\left[\omega^2+\omega\right](n) \\
        3 \rightarrow_2 3 \rightarrow_2 3 \rightarrow_2 n & \approx F\left[\omega^2+\omega \times 2\right](n) \\
        3 \rightarrow_2 3 \rightarrow_2 3 \rightarrow_2 3 \rightarrow_2 n & \approx F\left[\omega^2+\omega \times 3\right](n) \\
        3 \rightarrow_3 n & \approx F\left[\omega^2 \times 2\right](n) \\
        3 \rightarrow_4 n & \approx F\left[\omega^2 \times 3\right](n) \\
        3 \rightarrow_n n & \approx F\left[\omega^3\right](n)
        \end{aligned}
        $$

6. 燃烧数：定义

    $$
    f(x) = \left\{\begin{aligned}
    & -x, & x<0 \\
    & \dfrac{1}{2}f(x-f(x-1)), & x \geqslant 0
    \end{aligned}\right.
    $$

    令 $g(n) = \dfrac{1}{f(n)}$，则其 $\text{Wainer}$ 层级的 $\text{FGH}$ 近似有 $g(n) \leqslant F[\varepsilon_{0}](n-c)$

7. $\text{Goodstein}$ 数列：令 $g_{n}(m)$ 为 $\text{Goodstein}$ 定理中定义的序列，定义 $G(m) = \mu n [g_{n}(m) = 0]$，则其 $\text{Wainer}$ 层级的 $\text{FGH}$ 近似为

    $$
    G(2 \uparrow \uparrow n)=F[\omega \uparrow \uparrow(n-1)](3)-3
    $$

### 2.3.2 高阶算术
1. $\text{TREE}$ 序列：给定 $k \in \mathbf N$，对于 $k-$可着色树的一个序列 $T_1, T_2, \cdots$ 有
    1. 每个树 $T_i$ 至多有 $i$ 个顶点
    2. 对于任意 $i<j$，$T_i$ 都不是 $T_j$ 的图子式

    定义该序列的最大长度为 $\text{TREE}[k]$

    1. $\text{TREE}[1] = 1, \text{TREE}[2] = 3, \text{TREE}[3] > F[\textrm{SVO}](G)$，其中 $G$ 为 $\text{Graham}$ 数
    2. 若树不着色，且树 $T_i$ 至多有 $i + k$ 个顶点，其余条件不变，则将该序列的最大长度记为 $\text{tree}(k)$

2. 次立方图数：给定 $k \in \mathbf N$，对于图的一个序列 $G_1, G_2, \cdots$ 有
    1. 个图 $G_i$ 都是次立方图，即每个顶点的度数至多为 $3$
    2. 个图 $G_i$ 至多有 $i+k$ 个顶点
    3. 于任意 $i<j$，$G_i$ 都不是 $G_j$ 的图子式

    定义该序列的最大长度为 $\text{SCG}(k)$

    1. $\text{SCG}(k)$ 的 $\text{FGH}$ 近似为 $F\left[\psi_0\left(\Omega_\omega\right)\right](k) \leqslant \operatorname{SCG}(k)<F\left[\psi_0\left(\varepsilon_{\Omega_\omega+1}\right)\right](k)$
    2. 若要求次立方图无环且无多重边，则定义满足该条件的序列最大长度为 $\text{SSCG}(k)$

## 2.4 不可计算函数
1. $\Xi$ 函数：定义如下操作符

    $$
    \begin{aligned}
    I(x) & = x \\
    K(x, y) & = x \\
    S(x, y, z) & = x(z, y(z))
    \end{aligned}
    $$

    定义 $\Xi(n)$ 为 $n$ 个字符的可终止计算过程中出现的最大 $SKI$ 字符数

    $$
    \begin{aligned}
    \Xi(1) &= 1 \\
    \Xi(2) &= 2 \\
    \Xi(3) &= 3 \\
    \Xi(4) &= 4 \\
    \Xi(25) &> f_{\omega+1}(2) \\
    \Xi(117) &> f_{\omega^{\omega^\omega}+1}(2) \\
    \Xi(2171) &> f_{\varepsilon_0\omega+1}(3) = f_{\omega^{\varepsilon_0+1}+1}(3)
    \end{aligned}
    $$

2. $\text{Rad}\acute{\mathrm o} \ \Sigma-$函数：也称作忙海狸函数
    1. 设（一阶）海狸机 $\text{BB} = (Q, \Sigma, \Gamma, \delta, B, s, t, r)$ 有 $n$ 个状态，且满足
        1. 字母表 $\Sigma = \{0, 1\}$
        2. 起始格局下纸带上均为 $0$

        定义 $\Sigma_1(n)$ 为 $n$ 状态海狸机停机时纸带上 $1$ 的最大数量

        3. $\Sigma_1(0) = 0, \Sigma_1(1) = 1, \Sigma_1(2) = 4, \Sigma_1(3) = 6, \Sigma_1(4) = 13$
        4. $\Sigma_1(5) \geqslant 4098, \Sigma_1(6) \geqslant 10 \uparrow \uparrow 15$

    2. 定义 $\Sigma_k(n)$ 为 $n$ 状态 $k$ 阶海狸机停机时纸带上 $1$ 的最大数量
        1. 定义 $k$ 阶海狸机是带有一个对 $k-1$ 阶海狸机神谕的 $n$ 状态 $\text{Turing}$ 机
        2. $\Sigma_k$ 的 $\text{FGH}$ 近似为 $F\left[\omega_k^{\text{CK}}\right](n)$

3. $\text{TR}$ 函数：令 $T$ 为具有固定算术嵌入的理论，$n \in \mathbf N$．定义 $\operatorname{TR}(T, n)$ 为最小的整数 $N$，使得对于任何 $\text{Turing}$ 机 $M$，若 $M$ 停机在 $T$ 中在 $n$ 个符号内是可证明的，那么 $M$ 会在 $N$ 步内停止
    1. 定义 $\mathrm{I0}(n) = \mathrm{TR}(\mathbf{ZFC}+\mathbf{I0}, n)$
    2. 定义超越整数 $\text{TI} = \operatorname{TR}\left(\mathbf{ZFC}, 2^{1000}\right)$
4. $\text{Rayo}$ 数：定义 $\mathrm{Rayo}(n)$ 为一阶集合论中大于不超过 $n$ 个符号所能表示的任何数的最小正整数，设 $\text{Rayo}$ 数为 $\mathrm{Rayo}(10^{100})$
