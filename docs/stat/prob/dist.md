# 2 概率分布与特征

## 2.1 概率分布
### 2.1.1 概率分布相关概念
1. 概率分布：若 $(\Omega, \mathscr{F}, \mu)$ 为测度空间，$f$ 为 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，则 $\nu(B)=\mu\left(f^{-1}(B)\right), \ B \in \mathscr{E}$ 规定 $(E, \mathscr{E})$ 上的测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的测度．特别地当 $\mu$ 为概率测度时，$\nu$ 也是概率测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的概率分布
    1. 边际分布与联合分布：设 $F_X(x_1, x_2, \cdots, x_n)$ 是随机向量 $X$ 诱导的分布函数
        1. 令 $F_X(+\infty, \cdots, x_i, \cdots, +\infty) = P[X_i < x_i] = F_{X_i}(x_i)$，称 $F_{X_i}(x_i)$ 为边际分布，$F_X(x_1, x_2, \cdots, x_n)$ 本身为联合分布
        2. 联合分布可以唯一确定边际分布，边际分布不能唯一确定联合分布
        3. 若随机变量 $X, Y$ 存在联合密度 $p_{(X, Y)}(x, y)$，则 $X, Y$ 的边际密度函数必存在
    2. 随机变量的变换：设 $f$ 与 $T$ 分别为一元与 $n$ 元 $\text{Borel}$ 可测函数
        1. 对于 $(\Omega, \mathscr{F}, P)\overset{X}{\longrightarrow} (R, \mathscr{B}, P_X)\overset{f}{\longrightarrow}(R, \mathscr{B})$．若 $X$ 的密度函数 $P_X(x)$ 存在，分情况讨论 $Y=f\circ X$ 的密度函数如下
            1. $f$ 严格单调且存在导函数时，$P_Y(y)=P_X(f^{-1}(y))|(f^{-1}(y))'|$
            2. $f(x)$ 有存在 $\mathbf R$ 上一个区间划分 $I_n, f\upharpoonright_{I_n}$ 严格单调时，${\displaystyle P_Y(y)=\sum_{n=1}^\infty P_X(f_n^{-1}(y))|(f^{-1}_n(y))|I_{f(I_n)}(y)}$
        2. 对于 $(\Omega, \mathscr{F}, P)\overset{X}{\longrightarrow} (R^n, \mathscr{B}^n, P_X)\overset{T}{\longrightarrow}(R^n, \mathscr{B}^n)$，若 $T$ 是 $(R^n, \mathscr{B}^n)\to (R^n, \mathscr{B}^n)$ 的一个双射且 $T$ 是一个局部微分同胚，$T$ 存在连续的混合偏导数 $\dfrac{\partial(y_1, y_2, \cdots, y_n)}{\partial(x_1, x_2, \cdots, x_n)}$ 且混合偏导数的行列式不为零．已知 $P_X(x_1, x_2, \cdots, x_n)$，则有 $P_Y(y_1, y_2, \cdots, y_n)=P_X(T^{-1}(y))\left|\dfrac{\partial(y_1, y_2, \cdots, y_n)}{\partial(x_1, x_2, \cdots, x_n)}\right|$
            1. 若 $X_1, X_2, \cdots, X_n$ 是独立的，$f_1, f_2, \cdots, f_n$ 是 $n$ 个可测函数，则 $f(X_1), f(X_2), \cdots, f(X_n)$ 是独立的
            2. 若 $X, Y$ 是独立服从某种分布类型的随机变量，如果 $X+Y$ 也具有该类型的分布，则称随机变量具有再生性．易知二项分布、$\mathrm{Poisson}$ 分布与正态分布分布是具有再生性的
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
    1. 若 $F$ 表示随机变量 $X$ 的分布函数，$\mu_{F}$ 表示由 $F$ 在 $(\mathbf{R}, \mathscr{B})$ 上生成的 $L-S$ 测度，又 $\lambda$ 表示 $(\mathbf{R}, \mathscr{B})$ 上的 $\text{Lebesgue}$ 测度，则 $\mu_{F} \ll \lambda$ 的充要条件是存在 $f \in L^{1}(\mathrm{d} \lambda)$，使

        $$
        \begin{aligned}
        \mu_{F}(B)&=\int_{B} f(x) \lambda(\mathrm{d} x)=\int_{B} f(x) \mathrm{d} x \\
        F(x)&=\int_{(-\infty, x]} f(t) \mathrm{d} t=\int_{-\infty}^{x} f(t) \mathrm{d} t
        \end{aligned}
        $$

        则此时称关于 $\text{Lebesgue}$ 测度几乎处处唯一确定的可积函数 $f$ 称为分布密度

        1. $F_X(x)$ 存在密度函数的必要条件是 $F_X$ 连续，从而单点概率为 $0$
        2. 若 $F_X(x)$ 是某个函数的原函数，则 $F_X(x)$ 一定存在密度函数．特别地，如果 $F_X$ 可导并且存在连续的导函数 $F'$，则 $p(t)=F'(t)$ 为密度函数

    2. 设随机向量 $X:(\Omega, \mathscr{F}, P)\to (R^n, \mathscr{B}^n)$ 诱导的分布函数为 $F_X(x_1, x_2, \cdots, x_n)$，若存在 $p(t_1, t_2, \cdots, t_n) \geqslant 0$ 使得 ${\displaystyle F_X(x_1, x_2, \cdots, x_n)=\int_{-\infty}^{x_1} \int_{-\infty}^{x_2}\cdots \int_{-\infty}^{x_n}p(t_1, t_2, \cdots, t_n)\mathrm{d}t_1\mathrm{d}t_2\cdots \mathrm{d}t_n}$，则称 $X$ 具有密度函数 $p(t_1, t_2, \cdots, t_n)$
        1. 若 $X$ 存在密度函数，则 $F_X(x_1, x_2, \cdots, x_n)$ 关于每个 $x_i$ 是连续的．事实上 $F_X$ 是 $n$ 元连续的
        2. 若 $X$ 的分布函数 $F_X$ 有 $\dfrac{\partial ^nF}{\partial x_1\cdots \partial x_n}$ 存在且连续，则 $X$ 必有密度函数 $p_X(x_1, x_2, \cdots, x_n)=\dfrac{\partial ^nF}{\partial x_1\cdots \partial x_n}$

### 2.1.2 离散概率分布
1. 退化分布
    1. $P[X=c]=1$
    2. 分布特征：$\mathrm{E}X=c, \ \mathrm{D}X=0, \ \varphi_X(t) = \mathrm{e}^{\mathrm{i}ct}$
2. 两点分布（$\text{Bernoulli}$ 分布）：$X \sim B(1, p)$
    1. $\mathrm{Bernoulli}$ 试验：设 $\Omega=\{0,1\}, \mathscr{F}=\mathcal{P}(\Omega)$，且 $P(\{1\})=p, P(\{0\})=q=1-p$
    2. 随机变量 $X: \Omega \to \mathbf R$ 表示 $\mathrm{Bernoulli}$ 试验中成功的次数，则 $P[X=1]=p, \ P[X=0]=q$
    3. 分布特征：$\mathrm{E}X=p, \ \mathrm{D}X=pq, \ \varphi_X(t) = p\mathrm{e}^{\mathrm{i}t}+q$
3. 二项分布：$X \sim B(n, p)$
    1. $n$ 重独立 $\mathrm{Bernoulli}$ 试验：设 $\Omega^n=\{0, 1\}^{n}, \mathscr{F}=\mathcal{P}(\Omega^{n})$，且 $P(\{(a_1,\cdots,a_n)\})={\displaystyle \prod_{i=1}^n P(\{a_i\})}$
    2. 随机变量 $X: \Omega^{n} \to \mathbf R$ 表示 $n$ 次独立 $\mathrm{Bernoulli}$ 试验中成功的次数，则 $P[X=k]=b(k;n,p)=C_n^{k} p^k \cdot q^{n-k}$
        1. $b(k;n,p)=b(n-k;n,1-p)$
        2. 使 $b(k;n,p)$ 最大的 $k=\lfloor (n+1)\cdot p\rfloor$
    3. 分布特征：$\mathrm{E}X=np, \ \mathrm{D}X=npq, \ \varphi_X(t) = (p\mathrm{e}^{\mathrm{i}t}+q)^{n}$
4. 几何分布：$X \sim G(p)$
    1. 可数重独立 $\mathrm{Bernoulli}$ 试验：设 $\Omega^{\mathbf N}=\{0, 1\}^{\mathbf N}, \mathscr{F}=\mathcal{P}(\Omega^{\mathbf N})$，且 $P(\{(a_1,a_2,\cdots,a_n)\}\times \Omega^\infty)={\displaystyle \prod_{i=1}^n P(a_i)}$
    2. 随机变量 $X: \Omega^{\mathbf N} \to \mathbf R$ 表示可数次独立 $\mathrm{Bernoulli}$ 试验中成功的次数，随机变量 $T_1: \Omega^{\mathbf N} \to \mathbf R$ 表示可数次独立 $\mathrm{Bernoulli}$ 试验中首次成功的位次 $\inf \{n: X_n = 1\}$．如果永远不成功，则记为 $T_1=\inf \varnothing=+\infty$，于是 $T_1\in N\cup \{+\infty\}$
        1. $P[T_1=k]=q^{k-1}\cdot p$
        2. 无穷次试验必然成功：${\displaystyle \sum_{k=1}^{\infty}P[T_1=k]=1}$
        3. 无记忆性: $P[T_1=n+m \mid T_1\geqslant m]=p\cdot q^n$
        4. 若 $P[T_1=n+1 \mid T_1>n]=a$，则 $T_1$ 必然服从几何分布
    3. 分布特征：$\mathrm{E}X=\dfrac{1}{p}, \ \mathrm{D}X=\dfrac{q}{p^2}, \ \varphi_X(t) = \dfrac{p\mathrm{e}^{\mathrm{i}t}}{1-q\mathrm{e}^{\mathrm{i}t}}$
5. $\text{Pascal}$ 分布：$X \sim \operatorname{NB}(r, p)$
    1. 随机变量 $X: \Omega^{\mathbf N} \to \mathbf R$ 表示可数次独立 $\mathrm{Bernoulli}$ 试验中成功的次数，随机变量 $T_m: \Omega^{\mathbf N} \to \mathbf R$ 表示可数次独立 $\mathrm{Bernoulli}$ 试验中第 $m$ 次成功的位次，则 $P[T_m=k]=f(k;m,p)=C_{k-1}^{m-1}\cdot p^m(1-p)^{k-m}$
    2. 分布特征：$\mathrm{E}X=\dfrac{r}{p}, \ \mathrm{D}X=\dfrac{rq}{p^2}, \ \varphi_X(t) = \left(\dfrac{p\mathrm{e}^{\mathrm{i}t}}{1-q\mathrm{e}^{\mathrm{i}t}}\right)^{r}$
6. $\text{Poisson}$ 分布：$X \sim P(\lambda)$
    1. 在独立试验中，事件 $A$ 在试验中出现的概率为 $p_n$，它与实验总数有关．如果 $np_n\to \lambda$，则有 ${\displaystyle \lim_{n \to \infty} b(k;n,p_n)\to \dfrac{\lambda^k}{k!} e^{-\lambda}}$，记为 $p(k; \lambda)$．由于 ${\displaystyle \sum_{k=0}^\infty \dfrac{\lambda^k}{k!}\cdot e^{-\lambda}=1}$，因此称 $p(k;\lambda)$ 为 $\text{Poisson}$ 分布
    2. 分布特征：$\mathrm{E}X=\lambda, \ \mathrm{D}X=\lambda, \ \varphi_X(t)=\mathrm{e}^{\lambda(e^{\mathrm{i}t}-1)}$
    3. 在应用中，当 $p\leqslant 0.1$ 时，一般就可以使用近似公式 $b(k;n,p)\approx \dfrac{(np)^k}{k!}\cdot e^{-np}$
7. 超几何分布：$X \sim H(n, M, N)$
    1. 从含有 $M$ 件次品的 $N$ 件产品中随机取出 $n$ 件，记随机变量 $X$ 为 $n$ 件样品中的次品数，则 $P[X=k]=\dfrac{C_{M}^{k} \cdot C_{N-M}^{n-k}}{C_{N}^{n}}$
    2. 分布特征：$\mathrm{E}X=\dfrac{nM}{N}, \ \mathrm{D}X=\dfrac{n M}{N}\left(1-\dfrac{M}{N}\right) \cdot \dfrac{N-n}{N-1}, \ \varphi_X(t)={\displaystyle \sum_{k=0}^{n} \dfrac{C_{M}^{k} \cdot C_{N-M}^{n-k}}{C_{N}^{n}} \mathrm{e}^{\mathrm{i}tk}}$

### 2.1.3 连续概率分布
1. 均匀分布：$X \sim U[a, b]$
    1. 设 $[a, b] \subseteq \mathbf R$ 且 $a < b$，则密度函数 $p(x)=\left\{\begin{aligned} & \dfrac{1}{b-a}, & a \leqslant x \leqslant b \\ & 0, & \text{otherwise} \end{aligned}\right.$ 给出的分布称为均匀分布
    2. 分布特征：$\mathrm{E}X=\dfrac{a+b}{2}, \ \mathrm{D}X=\dfrac{(b-a)}{12}, \ \varphi_X(t)=\dfrac{\mathrm{e}^{\mathrm{i}tb} - \mathrm{e}^{\mathrm{i}ta}}{\mathrm{i}t(b-a)}$
2. 正态分布（$\text{Gauss}$ 分布）：$X \sim N(\mu, \sigma^2)$
    1. 称由密度函数 $p(x; \mu, \sigma^2)=\dfrac{1}{\sqrt{2\pi}\cdot \sigma}e^{-\frac{(x-\mu)^2}{2\sigma ^2}}$ 确定的参数为 $\mu, \sigma^2$ 的正态分布，也可记作 $\phi(x; \mu, \sigma^2)$．特别地，令 $\Phi(x)=\phi(x; 0, 1)$ 为标准正态分布
        1. 高斯积分：${\displaystyle \int_{-\infty}^{+\infty} \mathrm{e}^{-ax^2} = \sqrt{\dfrac{\pi}{a}}}$
        2. 设 $X\sim \phi(x; \mu, \sigma^2)$，则 ① $P[X\leqslant x]=\Phi \left(\dfrac{x-\mu}{\sigma} \right)$；② $\dfrac{X - \mu}{\sigma} \sim N(0, 1)$
        3. 在一次试验中，$X$ 几乎总是落在 $(\mu-3\sigma, \mu+3\sigma)$ 之中

            $$
            \begin{aligned}
            P[|X-\mu|<\sigma] & \approx 68.27\% \\
            P[|X-\mu|<2\sigma] & \approx 95.45\% \\
            P[|X-\mu|<3\sigma] & \approx 99.73\%
            \end{aligned}
            $$

    2. 分布特征：$\mathrm{E}X=\mu, \ \mathrm{D}X=\sigma^2, \ \varphi_X(t)=\mathrm{e}^{\mathrm{i}\mu t - \frac{1}{2}\sigma^2 t^2}$

3. 多元正态分布：$X\sim N(\boldsymbol \mu, \boldsymbol B)$
    1. 设 $\boldsymbol B$ 是一个对称正定矩阵，称由密度函数 $p_n(\boldsymbol x)=\dfrac{1}{(2\pi)^{\frac{n}{2}}|\boldsymbol B|^{\frac{1}{2}}}\exp\left\{-\dfrac{1}{2}(\boldsymbol x-\boldsymbol \mu)^{\mathrm{T}}\boldsymbol B^{-1}(\boldsymbol x-\boldsymbol \mu)\right\}$ 确定的的 $n$ 元正态分布．其中 $\boldsymbol \mu$ 为随机向量的均值，$\boldsymbol B$ 为随机向量的协方差矩阵
    2. 二元正态函数：$n=2$ 时，设 $(X, Y)\sim N\left(\begin{bmatrix}\mu_1 \\ \mu_2\end{bmatrix}, \begin{bmatrix} \sigma_1^2 &r\sigma_1\sigma_2 \\ r\sigma_1\sigma_2 &\sigma_2^2\end{bmatrix}\right)$．由于 $\boldsymbol B$ 为正定矩阵，于是 $0<r<1$
        1. （联合分布）密度函数

            $$
            p(x, y) =\frac{1}{2 \pi \sigma_1 \sigma_2 \sqrt{1-r^2}} \exp \left\{-\frac{1}{2\left(1-r^2\right)} \times\right. {\left.\left[\frac{\left(x-\mu_1\right)^2}{\sigma_1^2}-2 r \frac{\left(x-\mu_1\right)\left(y-\mu_2\right)}{\sigma_1 \sigma_2}+\frac{\left(y-\mu_2\right)^2}{\sigma_2^2}\right]\right\} }
            $$

        2. 边际分布密度函数

            $$
            p_X(x)=\dfrac{1}{\sqrt{2\pi} \cdot \sigma_1}\exp\left\{-\dfrac{(x-\mu_1)^2}{2\sigma_1^2}\right\}, p_X(x)=\dfrac{1}{\sqrt{2\pi} \cdot \sigma_2}\exp\left\{-\dfrac{(x-\mu_2)^2}{2\sigma_2^2}\right\}
            $$

        3. 条件分布密度函数

            $$
            p_{X|Y}(x|y)=\dfrac{1}{\sqrt{2\pi} \sigma_1 \sqrt{1-r^2}}\exp\left\{-\dfrac{\left[(x-\left(\mu_1+r\dfrac{\sigma_1}{\sigma_2}(y-\mu_2)\right)\right]^2}{2\sigma_1^2(1-r^2)}\right\} \sim N\left(\mu_1+r\dfrac{\sigma_1}{\sigma_2}(y-\mu_2), \sigma_1^2(1-r^2)\right)
            $$

        4. $X$ 与 $Y$ 独立当且仅当 $r=0$
        5. $r(X, Y)=r$，即 $X, Y$ 线性无关当且仅当 $r=0$
        6. 设随机变量 $X$ 与 $Y$ 独立且 $(X, Y)$ 存在联合密度函数 $P_{X, Y}(x, y)=h(\sqrt{x^2+y^2})$，则 $X, Y$ 服从正态分布

    3. 特征函数：$\varphi_X(\boldsymbol t)=e^{\mathrm{i}\boldsymbol t\boldsymbol \mu-\frac{1}{2}\boldsymbol t^{\mathrm{T}}\boldsymbol B\boldsymbol t}$

4. 指数分布：$X \sim \operatorname{Exp}(\lambda)$
    1. 密度函数 $p(x)=\left\{\begin{aligned}&\lambda e^{-\lambda x}, & x>0 \\&0, & x\leqslant 0\end{aligned}\right. \ (\lambda > 0)$ 可写作 $p(x)=\lambda e^{-\lambda x} I_{[x\geqslant 0]}$，称密度函数为 $p(x)$ 的随机变量 $X$ 服从指数分布
        1. 无记忆性：设 $T_1$ 为首次发生某事件的时间，则 $P[T_1>s+t|T_1>t]=P[T_1>s]$ 当且仅当 $T_1$ 服从指数分布
        2. 设 $W_k$ 为从第 $k-1$ 次发生事件到第 $k$ 次事件发生所经历的时间，则 $T_k={\displaystyle \sum_{i=0}^k W_i}$

    2. 分布特征：$\mathrm{E}X=\lambda^{-1}, \ \mathrm{D}X=\lambda^{-2}, \ \varphi_X(t)=\left(1-\dfrac{\mathrm{i} t}{\lambda}\right)^{-1}$

## 2.2 分布特征
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
        P[|X| \geqslant a] & \leqslant \dfrac{1}{f(a)} \mathrm{E}[f(|X|)] \\
        P[X \geqslant a] & = P[\mathrm{e}^{tX} \geqslant \mathrm{e}^{tc}] \leqslant \dfrac{1}{\mathrm{e}^{tc}} \mathrm{E} [\mathrm{e}^{tX}]
        \end{aligned}
        $$

        最后一个式子称作 $\text{Chernoff}$ 界

    4. $\text{Lebesgue}$ 控制收敛定理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$\left|X_{n}\right| \leqslant Y, Y$ 可积，且 ${\displaystyle \lim _{n \to \infty} X_{n}=X}$ 存在，则 ${\displaystyle \lim _{n \to \infty} \mathrm{E} X_{n}=\mathrm{E} X}$
        1. $\text{Levi}$ 引理
            - 若 $X_{n} \uparrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{-}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \uparrow \mathrm{E} X_{n}=\mathrm{E} X}$
            - 若 $X_{n} \downarrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{+}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \downarrow \mathrm{E} X_{n}=\mathrm{E} X}$
        2. $\text{Fatou}$ 引理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$Y, Z$ 为可积随机变量
            - 若 $X_{n} \geqslant Z, n \geqslant n_{0}$，则 ${\displaystyle E\left[\varlimsup_{n \to \infty} X_{n}\right] \leqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$
            - 若 $X_{n} \leqslant Y, n \geqslant n_{0}$，则 ${\displaystyle \mathrm{E}\left[\varlimsup_{n \to \infty} X_{n}\right] \geqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$

    !!! note "随机向量的数学期望"
        设 $X = (X_1, X_2, \cdots, X_n)$ 是随机向量，则 $\mathrm{E}X = (\mathrm{E}X_1, \mathrm{E}X_2, \cdots, \mathrm{E}X_n)$（方差的定义方式同理）

3. 不定积分：设 $X$ 为随机变量，$A \in \mathscr{F}$．若 $X$ 准可积，则记 ${\displaystyle \int_{A} X \mathrm{dP}=\mathrm{E}\left[X I_{A}\right]}$，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$ 看作为 $A \in \mathscr{F}$ 的函数时称为 $X$ 的不定积分
    1. 设 $X$ 准可积，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$
        1. $\phi$ 是 $\mathscr{F}$ 上的 $\sigma$ 可加集函数，特别当 $X \geqslant 0$ 时，$\phi$ 是 $\mathscr{F}$ 上的测度
        2. 若 $P(A)=0$，则 $\phi(A)=0$
    2. 对 $(\Omega, \mathscr{F}, P)$ 上的 $n$ 维随机变量 $X$，其分布函数 $F\left(x_{1}, \cdots, x_{n}\right)$ 可在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上产生一个 $\text{Lebesgue}-\text{Stieltjes}$ 测度，即 $X$ 在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上的分布．记这一测度与分布函数用同一符号，$\mathbf{R}^{n}$ 上 $\text{Borel}$ 函数关于它的积分记为 ${\displaystyle \int f \mathrm{d} F}$，${\displaystyle \int f(x) \mathrm{d} F(x)}$ 或 ${\displaystyle \int f(x) F(\mathrm{d} x)}$，也称为 $f$ 关于 $F$ 的 $\text{Lebesgue}-\text{Stieltjes}$ 积分，简称 $L-S$ 积分
    3. 若 $X$ 为 $(\Omega, \mathscr{F}, P)$ 上 $n$ 维随机变量，$F$ 为 $X$ 的 $n$ 元分布函数．又 $g\left(x_{1}, \cdots, x_{n}\right)$ 为 $n$ 元 $\text{Borel}$ 函数，$F_{g(X)}$ 表示 $g(X)$ 的分布函数，则当 $\mathrm{E} g(X)$ 存在时，${\displaystyle \mathrm{E} g(X)=\int_{\Omega} g(X(\omega)) P(\mathrm{d} \omega)=\int_{\mathbf{R}} y \mathrm{d} F_{g(X)}(y)=\int_{\mathbf{R}^{n}} g\left(x_{1}, \cdots, x_{n}\right) \mathrm{d} F\left(x_{1}, \cdots, x_{n}\right)}$
        1. 对于 $(\Omega, \mathscr{F}, P)\overset{X}{\longrightarrow} (R, \mathscr{B}, P_X)\overset{g}{\longrightarrow}(R, B, P_{g(X)})$，有 ${\displaystyle E[g(X)]=\int_\Omega g\circ X\mathrm{d}P=\int_R g(x) \mathrm dP_X=\int_R g(x) \mathrm{d} F_{X}(x)}$
        2. 设 $X$ 存在密度函数 $p_X(x)$，则对任意非零可测函数 $g$ 或有界可测函数 $g$ 成立 ${\displaystyle E[g \circ X]=\int_R g(x)p_X(x)\mathrm dx}$
        3. 对任意常数 $c_i, i = 1, 2, \cdots , n$ 以及常数 $b$ 有 ${\displaystyle \mathrm{E}\left[\sum_{i=1}^{n} c_i X_i + b\right] = \sum_{i=1}^{n} c_i \mathrm{E}X_i + b}$ 成立．特别地，$\mathrm{E}[b] = b$

### 2.2.2 矩
1. 矩：若随机变量 $X$ 有 $E|X|^n<+\infty$，则称 $EX^n$ 为 $X$ 的 $n$ 阶原点矩，$E|X|^{p}$ 为 $X$ 的 $p$ 阶绝对矩．此时 $EX^k \ (k\leqslant n)$ 均存在，称 $E[X-EX]^n$ 为 $X$ 的 $n$ 阶中心矩
2. 方差：称 $X$ 的二阶中心矩 $\mathrm{D}X = \mathrm{E}[X-\mathrm{E} X]^{2}$ 为 $X$ 的方差，也可记作 $\operatorname{Var}(X)$，方差的算术平方根称为标准差或均方差
    1. 方差的性质
        1. $\mathrm{D}(c)=0$
        2. $\mathrm{D}(X+c)=\mathrm{D}(X)$
        3. $\mathrm{D}(cX)=c^2 \mathrm{D}(X)$
        4. $\mathrm{E}[X-c]^2\geqslant \mathrm{D}X$，等号成立当且仅当 $c=\mathrm{E}X$
    2. $\text{Chebyshev}$ 不等式：$P(|X-\mathrm{E} X|>a) \leqslant \dfrac{1}{a^{2}} \mathrm{D}X \ (a>0)$．一般地，对任意 $n \in \mathbf N$，有 $P[|X|\geqslant a]\leqslant \dfrac{\mathrm{E}|X|^n}{a^n}$
3. 协方差：若 $X, Y$ 为随机变量，则称 $\operatorname{Cov}(X, Y) = \mathrm{E}[(X-\mathrm{E} X)(Y-\mathrm{E} Y)]$ 为 $X, Y$ 的协方差
    1. $\text{Cauchy}-\text{Schwarz}$ 不等式：对任意随机变量 $X, Y$，有 $\mathrm{E}[XY]\leqslant (\mathrm{E}|X|^2)^{\frac{1}{2}}(\mathrm{E}|Y|^2)^{\frac{1}{2}}$，等号成立当且仅当存在 $t_0$ 使得 $P[X=t_0Y]=1$
    2. 定义 $r(X, Y)=\dfrac{\mathrm{Cov}(X, Y)}{\sqrt{\mathrm{D} X\cdot \mathrm{D} Y}}$ 为 $X, Y$ 的相关系数．若 $r(X, Y)=0$，则称随机变量 $X, Y$ 线性无关
        1. $|r(X, Y)| \leqslant 1$．当 $|r| = 1$ 时，称 $X$ 与 $Y$ 有完全线性关系：$r = 1$ 时称为完全正相关；$r = -1$ 时称为完全负相关
        2. 若 $X, Y$ 独立，则 $X, Y$ 线性无关，反之不一定成立
        3. 若 $X, Y$ 同为二元正态分布或二值随机变量，则 $X$ 与 $Y$ 独立当且仅当 $X$ 与 $Y$ 不想管

        !!! note "线性无关的等价条件"
            下列命题等价

            1. $X, Y$ 线性无关
            2. $\mathrm{Cov}(X, Y)=0$
            3. $\mathrm{E}XY=\mathrm{E}X\cdot \mathrm{E}Y$
            4. $\mathrm{D}(X+Y)=\mathrm{D}X+\mathrm{D}Y$

    3. 协方差矩阵：设 $X = (X_1, X_2, \cdots, X_n)$ 是随机向量，则定义 $\sigma_{ij} = \operatorname{Cov}(X_i, X_j)$，称

        $$
        \boldsymbol \Sigma = \begin{bmatrix}
        \sigma_{11} & \sigma_{12} & \cdots & \sigma_{1n} \\
        \sigma_{21} & \sigma_{22} & \cdots & \sigma_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        \sigma_{n1} & \sigma_{n2} & \cdots & \sigma_{nn} \\
        \end{bmatrix}
        $$

        为 $X$ 的协方差矩阵．易知 $\boldsymbol \Sigma$ 是一个对称的非负定矩阵

### 2.2.3 特征函数
1. 随机变量的特征函数：若 $X, Y$ 是随机变量，$\mathrm{E}X, \mathrm{E}Y$ 存在，定义 $\mathrm{E}[X+\mathrm{i}Y]=\mathrm{E}[X]+\mathrm{i}\mathrm{E}[Y]$．令 $X$ 是一个随机变量，设 $\varphi_X(t)=\mathrm{E}e^{\mathrm{i}tX}=\mathrm{E}\cos tX+\mathrm{i}\mathrm{E}\sin tX$ 有定义，称 $\varphi_X(t)$ 是 $X$ 的一个特征函数
    1. $|\varphi_X(t)| \leqslant 1, \varphi_X(0)=1$
    2. $\overline{\varphi_X(t)}=\varphi_X(-t)$
    3. ${\displaystyle \forall \lambda_i \forall t_i\in \mathbf R: \sum\lambda_i \overline{\lambda_j} \varphi_X(t_i-t_j)\geqslant 0}$
    4. $\varphi_X$ 在 $\mathbf R$ 上一致连续
2. 随机向量的特征函数：设 $X = (x_1, x_2, \cdots, x_n), \varphi_X(t_1, t_2, \cdots, t_n)=\mathrm Ee^{\mathrm{i}t^TX}=\mathrm Ee^{\mathrm{i}\overline{\sum_{j=1}^n t_jx_j}}$
    1. $|\varphi_X(t_1, t_2, \cdots, t_n)|\leqslant 1, |\varphi_X(0, 0, \cdots, 0)|=1$
    2. $|\varphi_X(-t_1, -t_2, \cdots, -t_n)|=\overline{|\varphi_X(t_1, t_2, \cdots, t_n)|}$
    3. $\varphi_X$ 是连续的
    4. $\mathrm E|X_1|^{k_1}|X_2|^{k_2}\cdots |X_n|^{k_n}<+\infty$．于是 $\varphi_X(t_1, t_2, \cdots, t_n)$ 关于 $t$ 的混合偏导数 $\dfrac{\partial^{k_1+\cdots+k_n}}{\partial t_1^{k_1}\cdots \partial t_n^{k_n}}\varphi_X(t_1, t_2, \cdots, t_n)$ 存在，且 $\dfrac{\partial^{k_1+\cdots+k_n}}{\partial t_1^{k_1}\cdots \partial t_n^{k_n}}\varphi_X(t_1, t_2, \cdots, t_n)=\mathrm{E}\left[\dfrac{\partial^{k_1+\cdots+k_n}}{\partial t_1^{k_1}\cdots \partial t_n^{k_n}} e^{i\sum_{j=1}^n t_jx_j}\right]$
    5. $\varphi_{x_{i_1},x_{i_2},\cdots,x_{i_k}}(t_{i_1},t_{i_2},\cdots,t_{i_n})=\varphi_X(0, \cdots, 0, t_{i_1}, 0, \cdots, 0, t_{i_2},0,\cdots, 0, t_{i_k}, 0, \cdots, 0)$
3. 特征函数由分布函数唯一决定：${\displaystyle \varphi_X(t)=\mathrm Ee^{\mathrm{i}tx}=\int_{\mathbf R}e^{\mathrm{i}tx}\mathrm dF_X(x)}$
    1. 令 ${\displaystyle g(x; x_1, x_2, T)=\dfrac{1}{2\pi}\int_{-T}^T \dfrac{\sin t(x-x_1)-\sin t(x-x_2)}{t}\mathrm dt}$
        1. $g(x; x_1, x_2, T)$ 是有界函数
        2. ${\displaystyle \lim_{T\to +\infty} g(x; x_1, x_2, T)}=\left\{\begin{aligned}&0, & x>x_2\\ &\dfrac{1}{2}, & x=x_2\\ &1, & x_1<x<x \\&-\dfrac{1}{2}, & x=x_1\\ &0, & x<x_1\end{aligned}\right.$
    2. 随机变量的逆转公式：$x_1, x_2\in C(F_X)$，则

        $$
        F(x_2)-F(x_1)=\lim_{T\to +\infty} \dfrac{1}{2\pi} \int_{-T}^T \dfrac{e^{-\mathrm{i}tx_1}-e^{-\mathrm{i}tx_2}}{\mathrm{i}t}\varphi_X(t)\mathrm dt
        $$

        1. ${\displaystyle \forall x\in C(F_X), F(x)=\lim_{x_1\in C(F), x_1\to -\infty} \lim_{T\to +\infty}\dfrac{1}{2\pi} \int_{-T}^T\dfrac{e^{-\mathrm{i}tx_1}-e^{-\mathrm{i}tx_2}}{\mathrm{i}t}\varphi_X(t)\mathrm dt, F(x)=\lim_{x'\in C(F), x'\to x^-}F(x')}$
        2. 若 $X$ 的特征函数 $\varphi_X(t)$ 绝对可积，则 $F_X(x)$ 一定存在密度函数 ${\displaystyle P_X(t)=\dfrac{1}{2\pi} \int_{-\infty}^{+\infty} e^{-\mathrm{i}tx}\varphi_X(t)\mathrm dt}$

    3. 随机向量的逆转公式

        $$
        P[a_1<X_1<b_1, \cdots, a_n<X_n<b_n]=\lim_{T_j \to \infty} \dfrac{1}{(2\pi)^n}\int_{-T_1}^{T_1}\cdots\int_{-T_n}^{T_n}\prod_{j=1}^n \dfrac{e^{-\mathrm{i}t_ja_j}-e^{-\mathrm{i}t_jb_j}}{\mathrm{i}t_j}\varphi_X(t_1, t_2, \cdots, t_n)\mathrm dt_1 \cdots \mathrm dt_1
        $$
