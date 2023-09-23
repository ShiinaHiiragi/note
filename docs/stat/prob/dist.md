# 2 概率分布

## 2.1 概率分布
### 2.1.1 概率分布相关概念
1. 概率分布：若 $(\Omega, \mathscr{F}, \mu)$ 为测度空间，$f$ 为 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，则 $\nu(B)=\mu\left(f^{-1}(B)\right), \ B \in \mathscr{E}$ 规定 $(E, \mathscr{E})$ 上的测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的测度．特别地当 $\mu$ 为概率测度时，$\nu$ 也是概率测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的概率分布
2. 分布函数：设 $(\Omega, \mathscr{F}, P)$ 为概率空间，$X$ 为有限实值随机变量, 则 $F(x)=P[X \leqslant x]$ 称为 $X$ 的分布函数．若 $X=\left(X_{1}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量，则 $F\left(x_{1}, x_{2}, \cdots, x_{n}\right)=P\left[X_{1} \leqslant x_{1}, X_{2} \leqslant x_{2}, \cdots, X_{n} \leqslant x_{n}\right]$ 称为 $X$ 所诱导的 $n$ 维分布函数
    1. 设 $F(x)$ 为离散随机变量 $X$ 的分布函数
        1. $F(x)$ 单调递增
        2. ${\displaystyle \lim _{x \rightarrow-\infty} F(x)=0, \lim _{x \rightarrow+\infty} F(x)=1}$
        3. $F(x)$ 是一个分段函数且 $F(x)$ 在 $x_0$ 不连续 $\leftrightarrow F[X=x_0] = F(x_0) - F(x_0 - 0) \neq 0$
    2. 设 $F(x)$ 为连续随机变量 $X$ 的分布函数
        1. $F(x)$ 单调递增
        2. ${\displaystyle \lim _{x \rightarrow-\infty} F(x)=0, \lim _{x \rightarrow+\infty} F(x)=1}$
        3. $F(x)$ 右连续．若定义 $\overline{F}(x)=P[X < x]$，则 $\overline{F}$ 左连续

        反之，若 $F(x)$ 为 $\mathbf{R}$ 上满足上述命题的函数，则必存在概率空间 $(\Omega, \mathscr{F}, P)$ 及其上的随机变量 $X$ 使 $P[X \leqslant x]=F(x)$

    3. 设 $F(x_1, x_2, \cdots, x_n)$ 为随机向量 $X$ 的分布函数
        1. $F_X(x_1, x_2, \cdots, x_n)$ 关于每个变量 $X_i$ 单调递增
        2. ${\displaystyle \lim_{x \to -\infty} F_X(x_1, x_2, \cdots, x, \cdots, x_n)=0, \lim_{x \to +\infty} F_X(x_1, x_2, \cdots, x, \cdots, x_n)=1}$
        3. $F_X(x_1, x_2, \cdots, x_n)$ 关于每个变量 $X_i$ 右连续
    4. 取 $\Omega=\mathbf{R}, \mathscr{F}=\mathscr{B}$，$P$ 为由 $F$ 在 $(\mathbf{R}, \mathscr{B})$ 上生成的 $L-S$ 测度，则它是一个概率测度；令 $X(x)=x, x \in \mathbf{R}$，则它是一个随机变量且 $P[X \leqslant y]=P\{x: x \leqslant y\}=F(y)$．分别称 $(\mathbf{R}, \mathscr{B}, P)$ 和 $X$ 为标准概率空间和标准随机变量
    5. 若随机向量 $\left(X_{1}, \cdots, X_{n}\right)$ 和 $\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同 $n$ 维分布函数，则对 $\mathbf{R}^{n}$ 到 $\mathbf{R}^{m}$ 的任一 $\text{Borel}$ 函数 $g$，$g\left(X_{1}, \cdots, X_{n}\right)$ 和 $g\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同的分布，即对一切 $\mathbf{R}^{m}$ 中的 $\text{Borel}$ 集 $B$ 都有 $P\left\{g\left(X_{1}, \cdots, X_{n}\right) \in B\right\}=P\left\{g\left(Y_{1}, \cdots, Y_{n}\right) \in B\right\}$

3. 连续随机变量的密度函数
    1. 设连续随机变量 $X$ 诱导的分布函数为 $F_X(x)$，若存在 $p(t) \geqslant 0$ 使得 ${\displaystyle \forall x \left(F_X(x)=\int_{-\infty}^x p(t)\mathrm{d}t\right)}$，则称 $p(t)$ 是随机变量 $X$ 的密度函数
        1. $F_X(x)$ 存在密度函数的必要条件是 $F_X$ 连续，从而单点概率为 $0$
        2. 若 $F_X(x)$ 是某个函数的原函数，则 $F_X(x)$ 一定存在密度函数．特别地，如果 $F_X$ 可导并且存在连续的导函数 $F'$，则 $p(t)=F'(t)$ 为密度函数
    2. 设随机向量 $X:(\Omega, \mathscr{F}, P)\to (R^n, \mathscr{B}^n)$ 诱导的分布函数为 $F_X(x_1, x_2, \cdots, x_n)$，若存在 $p(t_1, t_2, \cdots, t_n) \geqslant 0$ 使得 ${\displaystyle F_X(x_1, x_2, \cdots, x_n)=\int_{-\infty}^{x_1} \int_{-\infty}^{x_2}\cdots \int_{-\infty}^{x_n}p(t_1, t_2, \cdots, t_n)\mathrm{d}t_1\mathrm{d}t_2\cdots \mathrm{d}t_n}$，则称 $X$ 具有密度函数 $p(t_1, t_2, \cdots, t_n)$
        1. 若 $X$ 存在密度函数，则 $F_X(x_1, x_2, \cdots, x_n)$ 关于每个 $x_i$ 是连续的．事实上 $F_X$ 是 $n$ 元连续的
        2. 若 $X$ 的分布函数 $F_X$ 有 $\dfrac{\partial ^nF}{\partial x_1\cdots \partial x_n}$ 存在且连续，则 $X$ 必有密度函数 $p_X(x_1, x_2, \cdots, x_n)=\dfrac{\partial ^nF}{\partial x_1\cdots \partial x_n}$
4. 边际分布与联合分布：设 $F_X(x_1, x_2, \cdots, x_n)$ 是随机向量 $X$ 诱导的分布函数
    1. 令 $F_X(+\infty, \cdots, x_i, \cdots, +\infty) = P[X_i < x_i] = F_{X_i}(x_i)$，称 $F_{X_i}(x_i)$ 为边际分布，$F_X(x_1, x_2, \cdots, x_n)$ 本身为联合分布
    2. 联合分布可以唯一确定边际分布，边际分布不能唯一确定联合分布
    3. 若随机变量 $X, Y$ 存在联合密度 $p_{(X, Y)}(x, y)$，则 $X, Y$ 的边际密度函数必存在

### 2.1.2 离散概率分布

### 2.1.3 连续概率分布

## 2.2 期望与方差
### 2.2.1 数学期望
1. 离散随机变量的期望：若 ${\displaystyle X(\omega)=\sum_{i} x_{i} I_{A_{i}}(\omega)}$ 为离散随机变量，则称 ${\displaystyle \sum_{i} x_{i} P\left(A_{i}\right)}$ 为 $X$ 的期望或 $X$ 关于 $P$ 的积分，记为

    $$
    \mathrm{E}[X], \mathrm{E} X, \int X(\omega), \int X \mathrm{dP} \textsf{ 或 } \int X
    $$

    1. 若 $\mathscr{E}$ 表示 $(\Omega, \mathscr{F})$ 上离散随机变量全体
        1. 期望 $\mathrm{E} X$ 是唯一满足 $\mathrm{E}\left(I_{A}\right)=P(A)$ 的 $\mathscr{E}$ 上的正线性泛函
        2. $\mathrm{E}[\cdot]$ 在 $\mathscr{E}$ 上是单调的，且若 $\left\{X_{n}\right\}_{n \geqslant 1} \subseteq \mathscr{E}, X_{n} \uparrow(\textsf{或 }\downarrow) X \in \mathscr{E}$，则 $\mathrm{E}\left(X_{n}\right) \uparrow(\textsf{或 } \downarrow) \mathrm{E}(X)$
        3. 若 $\mathrm{E}(\cdot)$ 为 $\mathscr{E}$ 上正线性泛函，$\mathrm{E}(1)=1$，且当 $\mathscr{E}$ 中序列 $X_{n} \downarrow 0$ 时，$\mathrm{E} X_{n} \downarrow 0$，则由 $Q(A)=\mathrm{E}\left(I_{A}\right)$ 可规定 $(\Omega, \mathscr{F})$ 上的概率测度
    2. 若 $\mathscr{E}_{+}$ 表示非负离散随机变量全体，$\left\{X_{n}\right\}_{n \geqslant 1},\left\{Y_{n}\right\}_{n \geqslant 1}$ 都是 $\mathscr{E}_{+}$ 中递增序列，且 ${\displaystyle \lim _{n \to \infty} X_{n} \leqslant \lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n} \leqslant \lim _{n \to \infty} E Y_{n}}$．特别地，若 ${\displaystyle \lim _{n \to \infty} X_{n}=\lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n}=\lim _{n \to \infty} \mathrm{E} Y_{n}}$

2. 连续随机变量的期望：定义 $X^+=\max(X, 0),\ X^-=\max(-X, 0),\ X=X^+-X^-,\ |X|=X^++X^-$．若 $\mathrm{E}\left[X^{+}\right]<\infty$ 及 $\mathrm{E}\left[X^{-}\right]<\infty$，则称 $X$ 为可积的，且以 $\mathrm{E} X=\mathrm{E} [X^{+}]-\mathrm{E} [X^{-}]$ 表示 $X$ 关于 $P$ 的积分，也称为期望或数学期望，记为 ${\displaystyle \int X \mathrm{dP}}$ 等．一般地，若 $\mathrm{E} X^{+}, \mathrm{E} X^{-}$ 中至少有一个取有限值，则称 $X$ 为准可积的
    1. 设 $\mathscr{E}_{+}$ 是全体非负离散随机变量，记 ${\displaystyle \mathscr{G}_{+}=\left\{X=\lim _{n \to \infty} \uparrow X_{n}: X_{n} \in \mathscr{E}_{+}\right\}}$，对 $X \in \mathscr{G}_{+}$，若 ${\displaystyle X=\lim _{n \to \infty} \uparrow X_{n}, X_{n} \in \mathscr{E}_{+}}$，令 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$
        1. $\mathscr{G}_{+}$ 为 $(\Omega, \mathscr{F})$ 上非负随机变量全体
        2. 由 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$ 规定的 $E[\cdot]$ 是完全确定的
        3. $0 \leqslant \mathrm{E} X \leqslant \infty\left(X \in \mathscr{G}_{+}\right)$
        4. 在 $\mathscr{G}_{+}$ 中若 $X_{1} \leqslant X_{2}$，则 $\mathrm{E} X_{1} \leqslant \mathrm{E} X_{2}$
        5. 若 $X \in \mathscr{G}_{+}, c \geqslant 0$，则 $c X \in \mathscr{G}_{+}$ 且 $\mathrm{E}[c X]=c \mathrm{E}[X]$
        6. 若 $X_{1}, X_{2} \in \mathscr{G}_{+}$，则 $X_{1}+X_{2}, X_{1} \vee X_{2}, X_{1} \wedge X_{2} \in \mathscr{G}_{+}$，且

            $$
            \mathrm{E}\left[X_{1}+X_{2}\right]=\mathrm{E}\left[X_{1}\right]+\mathrm{E}\left[X_{2}\right]=\mathrm{E}\left[X_{1} \vee X_{2}\right]+\mathrm{E}\left[X_{1} \wedge X_{2}\right]
            $$

        7. $\left\{X_{n}\right\}_{n \geqslant 1}$ 为 $\mathscr{G}_{+}$ 中递增序列，则 ${\displaystyle \lim _{n \to \infty} X_{n}=X \in \mathscr{G}_{+}}$ 且 ${\displaystyle \mathrm{E} \lim _{n \to \infty} \uparrow X_{n}=\lim _{n \to \infty} \uparrow \mathrm{E} X_{n}}$

    2. 若 $\mathrm{E}[\cdot]$ 表示概率空间 $(\Omega, \mathscr{F}, P)$ 上的准可积随机变量的期望
        1. $E X \in \mathbf\{\widehat{R}\}, E X \in \mathbf{R}$ 的充要条件是 $X^{+}, X^{-}$ 都可积，且这时必有 $P[X= \pm \infty]=0$
        2. 若 $X \geqslant 0$（或更一般地 $P[X<0]=0$），则 $\mathrm{E} X \geqslant 0$，且这时 $\mathrm{E} X=0$ 的充要条件是 $P[X=0]=1$
        3. 对每个 $c \in \mathbf{R}$ 都有 $\mathrm{E}[c X]=c \mathrm{E} X$．又若 $X+Y$ 有确定的含义，且 $X^{-}, Y^{-}$（或 $X^{+}, Y^{+}$）可积，则 $\mathrm{E}[X+Y]=\mathrm{E} X+\mathrm{E} Y$．特别地，当 $X, Y$ 中至少有一个为可积时，前式必成立
        4. 若 $X \leqslant Y$，且 $\mathrm{E} X, \mathrm{E} Y$ 存在，则 $\mathrm{E} X \leqslant \mathrm{E} Y$
    3. $\text{Markov}$ 不等式：若 $X$ 为非负随机变量，则有

        $$
        \begin{aligned}
        P[X \geqslant a] & \leqslant \dfrac{1}{a} \mathrm{E}\left[X I_{(X \geqslant a)}\right] \leqslant \dfrac{1}{a} \mathrm{E} X, \  a \geqslant 0 \\
        P[|X| \geqslant a] & \leqslant \dfrac{1}{a^{p}} \mathrm{E}|X|^{p}, \  a>0, p>0 \\
        P[|X| \geqslant a] & \leqslant \dfrac{1}{f(a)} \mathrm{E}[f(|X|)]
        \end{aligned}
        $$

    4. $\text{Lesbegue}$ 控制收敛定理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$\left|X_{n}\right| \leqslant Y, Y$ 可积，且 ${\displaystyle \lim _{n \to \infty} X_{n}=X}$ 存在，则 ${\displaystyle \lim _{n \to \infty} \mathrm{E} X_{n}=\mathrm{E} X}$
        1. $\text{Levi}$ 引理
            - 若 $X_{n} \uparrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{-}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \uparrow \mathrm{E} X_{n}=\mathrm{E} X}$
            - 若 $X_{n} \downarrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{+}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \downarrow \mathrm{E} X_{n}=\mathrm{E} X}$
        2. $\text{Fatou}$ 引理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$Y, Z$ 为可积随机变量
            - 若 $X_{n} \geqslant Z, n \geqslant n_{0}$，则 ${\displaystyle E\left[\varlimsup_{n \to \infty} X_{n}\right] \leqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$
            - 若 $X_{n} \leqslant Y, n \geqslant n_{0}$，则 ${\displaystyle \mathrm{E}\left[\varlimsup_{n \to \infty} X_{n}\right] \geqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$

3. 不定积分：设 $X$ 为随机变量，$A \in \mathscr{F}$．若 $X$ 准可积，则记 ${\displaystyle \int_{A} X \mathrm{dP}=\mathrm{E}\left[X I_{A}\right]}$，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$ 看作为 $A \in \mathscr{F}$ 的函数时称为 $X$ 的不定积分
    1. 设 $X$ 准可积，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$
        1. $\phi$ 是 $\mathscr{F}$ 上的 $\sigma$ 可加集函数，特别当 $X \geqslant 0$ 时，$\phi$ 是 $\mathscr{F}$ 上的测度
        2. 若 $P(A)=0$，则 $\phi(A)=0$
    2. 对 $(\Omega, \mathscr{F}, P)$ 上的 $n$ 维随机变量 $X$，其分布函数 $F\left(x_{1}, \cdots, x_{n}\right)$ 可在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上产生一个 $\text{Lebesgue}-\text{Stieltjes}$ 测度，即 $X$ 在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上的分布．记这一测度与分布函数用同一符号，$\mathbf{R}^{n}$ 上 $\text{Borel}$ 函数关于它的积分记为 ${\displaystyle \int f \mathrm{d} F}$，${\displaystyle \int f(x) \mathrm{d} F(x)}$ 或 ${\displaystyle \int f(x) F(\mathrm{d} x)}$，也称为 $f$ 关于 $F$ 的 $\text{Lebesgue}-\text{Stieltjes}$ 积分，简称 $L-S$ 积分
    3. 若 $X$ 为 $(\Omega, \mathscr{F}, P)$ 上 $n$ 维随机变量，$F$ 为 $X$ 的 $n$ 元分布函数．又 $g\left(x_{1}, \cdots, x_{n}\right)$ 为 $n$ 元 $\text{Borel}$ 函数，$F_{g(X)}$ 表示 $g(X)$ 的分布函数，则当 $\mathrm{E} g(X)$ 存在时，${\displaystyle \mathrm{E} g(X)=\int_{\Omega} g(X(\omega)) P(\mathrm{d} \omega)=\int_{\mathbf{R}} y \mathrm{d} F_{g(X)}(y)=\int_{\mathbf{R}^{n}} g\left(x_{1}, \cdots, x_{n}\right) \mathrm{d} F\left(x_{1}, \cdots, x_{n}\right)}$
        1. 对于 $(\Omega, \mathscr{F}, P)\overset{X}{\longrightarrow} (R, \mathscr{B}, P_X)\overset{g}{\longrightarrow}(R, B, P_{g(X)})$，有 ${\displaystyle E[g(X)]=\int_\Omega g\circ X\mathrm{d}P=\int_R g(x) \mathrm dP_X=\int_R g(x) \mathrm{d} F_{X}(x)}$
        2. 设 $X$ 存在密度函数 $p_X(x)$，则对任意非零可测函数 $g$ 或有界可测函数 $g$ 成立 ${\displaystyle E[g \circ X]=\int_R g(x)p_X(x)\mathrm dx}$

### 2.2.2 方差与协方差
1. 矩的相关概念：若 $X$ 为 $(\Omega, \mathscr{F}, P)$ 上的随机变量且 $p>0$，称 $E|X|^{p}$ 为 $X$ 的 $p$ 阶绝对矩，$\mathrm{E} X^{p}$（若其存在）称为 $X$ 的 $p$ 阶矩
    1. 方差：$\mathrm{D}X = \mathrm{E}[X-\mathrm{E} X]^{2}$ 称为 $X$ 的方差，也可记作 $\operatorname{Var}(X)$，方差的算术平方根称为标准差
    2. 协方差：若 $Y$ 亦为随机变量，则称 $\operatorname{Cov}(X, Y) = [(X-\mathrm{E} X)(Y-\mathrm{E} Y)]$ 为 $X, Y$ 的协方差
    3. 相关系数：定义

        $$
        \rho(X, Y)= \begin{cases}\dfrac{\operatorname{Cov}(X, Y)}{\sqrt{\mathrm{D}X \cdot \mathrm{D}Y}}, & \mathrm{D}X \cdot \mathrm{D}Y \neq 0 \\ 0, & \mathrm{D}X \cdot \mathrm{D}Y=0\end{cases}
        $$

        为 $X, Y$ 的相关系数．若 $\mathrm{E} X Y=0$，则称 $X, Y$ 为正交的；若 $\rho(X, Y)=0$，则称 $X, Y$ 为互不相关的

        1. $|\operatorname{Cov}(X, Y)| \leqslant \sqrt{\mathrm{D}X \cdot \mathrm{D}Y}$
        2. $|\rho(X, Y)| \leqslant 1$

2. $\text{Chebyshev}$ 不等式：$P(|X-\mathrm{E} X|>a) \leqslant \dfrac{1}{a^{2}} \mathrm{D}X, a>0$
