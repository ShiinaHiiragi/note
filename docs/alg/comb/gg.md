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
        & H_{n-1}\left(a, H_n(a, b-1)\right), & \text{otherwise}
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
### 2.2.1 基本列
1. 基本列：设 $\alpha_0 < \alpha_1 < \alpha_2 < \cdots$ 为严格递增的无穷序数序列，若存在极限序数 $\alpha$ 使得 $\alpha = \sup\{\alpha_0, \alpha_1, \alpha_2, \cdots\}$，则称 $\alpha_0, \alpha_1, \alpha_2, \cdots$ 为以 $\alpha$ 为极限的基本列，记作 $\alpha = \lim(\alpha_0, \alpha_1, \alpha_2, \cdots)$
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

2. 序数分析：为形式系统指派序数，作为其证明强度的度量，称为证明论序数
    1. 一阶算术系统的证明论序数

        <div class="text-table">

        |  算术系统  | $\mathbf Q$ |  $\mathbf{PA}$  |
        | :--------: | :---------: | :-------------: |
        | 证明论序数 |  $\omega$   | $\varepsilon_0$ |

        </div>

    2. 二阶算术系统的证明论序数

        <div class="text-table">

        |  算术系统  | $\mathbf{RCA}_0$  | $\mathbf{WKL}_0$  | $\mathbf{ACA}_0$ | $\mathbf{ATR}_0$ |  $\mathbf{\Pi_1^1-CA}_0$  |
        | :--------: | :---------------: | :---------------: | :--------------: | :--------------: | :-----------------------: |
        | 证明论序数 | $\omega^{\omega}$ | $\omega^{\omega}$ | $\varepsilon_0$  |    $\Gamma_0$    | $\psi_0(\Omega_{\omega})$ |

        </div>

### 2.2.2 序数层级
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

## 2.3 可计算函数
### 2.3.1 递归函数
1. $\text{Knuth}$ 箭头：设 $x, y \in \mathbf N$，定义 $x \uparrow^n y = x \ \small \underbrace{\normalsize \uparrow \uparrow \cdots \uparrow}_{\normalsize n} \normalsize \ y$如下

    $$
    \begin{aligned}
    x \uparrow y & = x^y \\
    x \uparrow^n 0 & = 1 \\
    x \uparrow^n y & = x \uparrow^{n-1} (x \uparrow^n (y - 1))
    \end{aligned}
    $$

    $\text{Knuth}$ 箭头使用右结合的方式计算

    1. 利用 $\text{Knuth}$ 箭头定义的大数
        - 定义 $\text{Tritri}$ 数为 $3 \uparrow^4 2 = 3 \uparrow \uparrow \uparrow 3 = 3 \uparrow \uparrow 7625597484987$
        - 定义 $g_k(n)$ 如下

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
        & \small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n} \normalsize\mathrm{log}_a\left(\small \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n-1} \normalsize\mathrm{log}_a(x)\right)+1, & 1<x
        \end{aligned}\right.
        $$

        则可定义 $a \uparrow^n x$ 如下

        $$
        a \uparrow^n x= \left\{\begin{aligned}
        & \underbrace{\normalsize \mathrm{ss\cdots s}}_{\normalsize n-2} \normalsize\mathrm{log} _a\left(a \uparrow^n(x+1)\right), & x \leq-1 \\
        & 1+x, & -1<x \leq 0 \\
        & a \uparrow^{n-1}\left(a \uparrow^n(x-1)\right), & 0<x
        \end{aligned}\right.
        $$

    3. 推广到序数：设 $\alpha, \beta \in \mathbf{On}$，则定义

        $$
        \begin{aligned}
        \alpha \uparrow \beta & = \alpha^\beta \\
        \alpha \uparrow^n 0 & = 1 \\
        \alpha \uparrow^n \beta & = \alpha \uparrow^{n-1} (\alpha \uparrow^n (\beta - 1))
        \end{aligned}
        $$

        特别地，$\alpha \uparrow \beta$ 也可写作 $\alpha \widehat{\ \ \ } \beta$

2. 超 $\text{E}$ 表示：设 $b, a_1, a_2, \cdots, a_n \in \mathbf N$，定义 $E[b] a_1 \# a_2 \# \cdots \# a_n$ 为

    $$
    \begin{aligned}
    E[b] x & = b^x \\
    E[b] a_1 \# a_2 \# \cdots \# a_{n-1} \# 1& = E[b] a_1 \# a_2 \# \cdots \# a_{n-1}\\
    E[b] a_1 \# a_2 \# \cdots \# a_n & = E[b] a_1 \# a_2 \# \cdots \# a_{n-2} (E[b] a_1 \# a_2 \# \cdots \# (a_n - 1)) 
    \end{aligned}
    $$

    1. $E[a] \small \underbrace{\normalsize 1 \# 1 \# \cdots \# 1}_{\normalsize c-1} \normalsize \# b = a \uparrow ^c b$
    2. 称 $b$ 为基数，基数为 $10$ 时通常可被省略，例如 $\text{Googolplex}$ 数可表示为 $E 100\#2$

3. $\text{Steinhaus}-\text{Moser}$ 多边形表示：定义 $m(k, n) \ (k \geqslant 3)$ 如下

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
        A\left(a_k, \ldots, a_2, a_1, a_0, n\right) & \approx F\left[\omega^k \times a_k+\ldots+\omega^2 \times a_2+\omega \times a_1+a_0\right](n)
        \end{aligned}
        $$

        特别地，有 $A(\small \underbrace{\normalsize 1, 1, \cdots, 1}_{\normalsize n} \normalsize) \approx F\left[\omega^\omega\right](n)$ 成立

    2. 多重序列 $\text{Ackermann}$ 函数

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
    2. 扩展链式表示：递归定义如下

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

6. $\text{Fish}$ 数
    1. $\text{Fish 1}$ 数的 $\text{Wainer}$ 层级 $\text{FGH}$ 近似：$F_1 \approx F[\omega^2+1](63)$
        1. 定义从自然数和函数到自然数和函数的映射 $S: (m,f(x)) \to (g(m),g(x))$，其中 $g(x)$ 定义为

            $$
            \begin{eqnarray*}
            B(0,n) & = & f(n) \\ 
            B(m+1,0) & = & B(m, 1) \\ 
            B(m+1,n+1) & = & B(m, B(m+1, n)) \\
            g(x) & = & B(x,x) 
            \end{eqnarray*}
            $$

        2. 定义从「数集、函数和映射 $S$」到「数集、函数和映射 $S'$」的映射 $SS:(m,f(x),S)\to (n,g(x),S')$ 如下：

            $$
            S S(m, f, S)=\left(\left[S^{f(m)}\right](m, f), \left[S^{f(m)}\right]\right)
            $$

        3. 设 $m_0 = 3, f_0(x) = x + 1, S_0 = S$，则记 $(F_1, F_1(x), S_{63}) = [SS^{63}](m_0, f_0, S_0)$，称 $F_1$ 为 $\text{Fish 1}$ 数，$F_1(x)$ 为 $\text{Fish 1}$ 函数

    2. $\text{Fish 2}$ 数的 $\text{Wainer}$ 层级 $\text{FGH}$ 近似：$F_2 \approx F[\omega^3](63)$
        1. 定义从自然数和函数到自然数和函数的映射 $S: (m,f(x)) \to (g(m),g(x))$，其中 $g(x)$ 定义为

            $$
            \begin{eqnarray*}
            B(0,n) & = & f(n) \\ 
            B(m+1,0) & = & B(m, 1) \\ 
            B(m+1,n+1) & = & B(m, B(m+1, n)) \\
            g(x) & = & B(x,x) 
            \end{eqnarray*}
            $$

        2. 对于映射 $S$，定义新的映射 $S^*$ 为 $S^*(f)(x)=[S^x](f)(x)$，同样定义从「数集、函数和映射 $S$」到「数集、函数和映射 $S'$」的映射 $SS:(m,f(x),S)\to (n,g(x),S')$ 如下：

            $$
            S S(m, f, S)=\left(\left[S^{f(m)}\right](f)(m),\left[S^{f(m)}\right]^*(f), \left[S^{f(m)}\right]\right)
            $$

        3. 设 $m_0 = 3, f_0(x) = x + 1, S_0 = S$，则记 $(F_2, F_2(x), S_{63}) = [SS^{63}](m_0, f_0, S_0)$，称 $F_2$ 为 $\text{Fish 2}$ 数，$F_2(x)$ 为 $\text{Fish 2}$ 函数

    3. $\text{Fish 3}$ 数的 $\text{Wainer}$ 层级 $\text{FGH}$ 近似：$F_3 \approx F[\omega^{\omega+1} \times 63 + 1](63)$
        1. 设 $n \in \mathbf Z_+$，则定义从函数 $f(x)$ 到 $g(x)$ 的映射 $s(n)$ 为

            $$
            s(n)(f) = \left\{\begin{aligned}
            & [f^x](x), & n = 1 \\
            & \left[s(n-1)^x\right](f(x)), & n > 1
            \end{aligned}\right.
            $$

        2. 定义从函数 $f(x)$ 到 $g(x)$ 的映射 $ss(n)$ 为

            $$
            ss(n)(f) = \left\{\begin{aligned}
            & s(x)(f), & n=1 \\
            & [ss(n-1)^{x}](f), & n>1
            \end{aligned}\right.
            $$

        3. 设 $f(x) = 1$，定义 $\text{Fish 3}$ 函数 $F_3(x) = \left[ss(2)^{63}\right](f)$，$\text{Fish 3}$ 数为 $F_3 = F_3^{63}(3)$

7. $\text{BEAF}$ 数阵
    1. 线性数阵：设 $A = (a_1, a_2, \cdots, a_n)$ 为正整数组成的 $n$ 元有序组，则数阵符号是从这个 $n$ 元有序组到正整数的映射 $v(A) = \{x_1, x_2, \cdots, x_n\}$，并定义为
        1. $\{a_0\} = a_0$
        2. $\{a_1, a_2\} = a_1^{a_2}$
        3. $\{a_1, a_2, \cdots, a_n, 1\} = \{a_1, a_2, \cdots, a_n\}$
        4. 当第二个元素为 $1$ 时，有 $\{a_1, 1, a_3, \cdots, a_n\} = a_1$；当第三个元素为 $1$ 时，有

            $$
            \{a_1, a_2, 1, \cdots, 1, a_{x+3}, \cdots, a_n\} = \left\{a_1, a_1, \{a_1, a_2 - 1, 1, \cdots, 1, a_{x+3}, \cdots, a_n\}, a_{x+3} - 1, a_{x+4}, \cdots, a_n\right\}
            $$

        5. 当以上条件均不满足时，有 $\{a_1, a_2, \cdots, a_n\} = \left\{a_1, \{a_1, a_2 - 1, a_3, \cdots, a_n\}, a_3 - 1, a_4, \cdots, a_n\right\}$

        对于三个正整数的数阵有 $\{a, b, c\}=a \rightarrow b \rightarrow c=a \uparrow^c b$，其 $\text{Wainer}$ 层级 $\text{FGH}$ 近似为

        $$
        \begin{aligned}
        & \left\{n+1, m+1, a_0+1, a_1+1, a_2+1, \ldots, a_k+1\right\} \\
        \approx \ & \left[F\left[\omega^k \times a_k+\ldots+\omega^2 \times a_2+\omega \times a_1+a_0\right]^m\right](n) \\
        = \ & H\left[\omega^{\omega^k \times a_k+\ldots+\omega^2 \times a_2+\omega \times a_1+a_0} \times m\right](n)
        \end{aligned}
        $$

        特别地，有 $\{\small \underbrace{\normalsize 1, 1, \cdots, 1}_{\normalsize n} \normalsize\} \approx F\left[\omega^\omega\right](n)$ 成立

    2. 四元数阵

### 2.3.2 高阶算术

## 2.4 不可计算函数
