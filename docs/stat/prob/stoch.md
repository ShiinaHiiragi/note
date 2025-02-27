# 5 随机过程

1. 随机过程：即一族随机变量 $\{X(t) \mid t \in T\}$，其中属于某个指标集 $T$ 的 $t$ 是参数，$T$ 是参数集
    1. 随机变量 $X(t): \Omega \to \mathbf{R}$ 随 $t \in T$ 与 $\omega \in \Omega$ 变化，因此也可记作 $X(t, \omega)$
    2. 当 $T = \mathbf{N}$ 时，称为随机序列；若 $T$ 至多可数时，称为离散参数过程；若 $T$ 是高维向量，称为随机场
    3. 数字特征与有限维分布
        1. 过程的均值函数 $\mu_{X}(t) = \mathrm{E}[X(t)]$
        2. 过程的自相关函数：$r_{X}\left(t_{1}, t_{2}\right) = \mathrm{E}\left[X\left(t_{1}\right) X\left(t_{2}\right)\right]$
        3. 过程的协方差函数：$R_{X}\left(t_{1}, t_{2}\right) = \operatorname{Cov}\left(X\left(t_{1}\right), X\left(t_{2}\right)\right)=\mathrm{E}\left[\left(X\left(t_{1}\right)-\right. \left.\mu_{X}\left(t_{1}\right)\right)\left(X\left(t_{2}\right)-\mu_{X}\left(t_{2}\right)\right)\right]$
        4. 随机过程的有限维分布族 $F_{t_{1}, t_{2}, \cdots, t_{n}}\left(x_{1}, \cdots, x_{n}\right), t_{1}, \cdots, t_{n} \in T$，其中

            $$
            F_{t_{1}, t_{2}, \cdots, t_{n}}\left(x_{1}, \cdots, x_{n}\right)=P\left[X\left(t_{1}\right) \leqslant x_{1}, \cdots, X\left(t_{n}\right) \leqslant x_{n}\right]
            $$

2. 平稳过程：若随机过程 $X(t)$ 对任意 $t_{1}, \cdots, t_{n} \in T$ 和任何 $h$ 有 $\left(X\left(t_{1}+h\right), \cdots, X\left(t_{n}+h\right)\right) \stackrel{d}{=}\left(X\left(t_{1}\right), \cdots, X\left(t_{n}\right)\right)$ 则称为严格平稳的
    1. 若随机过程的所有二阶矩存在且 $\mathrm{E} X(t)=m$ 及 $R_{X}(t, s)$ 只与时间差 $t-s$ 有关，则称为宽平稳的或二阶矩平稳的
    2. 对于宽平稳过程，由于对 $-\infty<s, t<\infty$ 有 $R_{X}(s, t)=R_{X}(0, t-s)$，所以可记为 $R_{X}(t-s)$
3. 独立增量过程：若对任意 $t_{1}<t_{2} \cdots<t_{n}$，$t_{1}, \cdots, t_{n} \in T$，$X\left(t_{2}\right)- X\left(t_{1}\right), X\left(t_{3}\right)-X\left(t_{2}\right), \cdots, X\left(t_{n}\right)-X\left(t_{n-1}\right)$ 相互独立，则称 $X(t)$ 为独立增量过程．若进一步有对任意 $t_{1}, t_{2}$，$X\left(t_{1}+h\right)-X\left(t_{1}\right) \stackrel{d}{=} X\left(t_{2}+h\right)-X\left(t_{2}\right)$，则过程称为有平稳独立增量的过程

## 5.1 Poisson 过程
1. $\text{Poisson}$ 过程：若整数值随机过程 $\{N(t), t \geqslant 0\}$ 有
    1. $N(0)=0$
    2. $N(t)$ 是独立增量过程
    3. 对任何 $t>0$，$s \geqslant 0$，$N(s+t)-N(t)$ 服从参数为 $\lambda t$ 的 $\text{Poisson}$ 分布，即 $P[N(s+t)-N(t)=k]=\dfrac{(\lambda t)^{k} \mathrm{e}^{-\lambda t}}{k!}$

    则称 $N(t)$ 是强度为 $\lambda>0$ 的 $\text{Poisson}$ 过程

2. 记 $[0, \infty)$ 为观察过程的时间轴，$0$ 为起始时刻，$N(b)-N(a)$ 代表时间区间 $(a, b]$ 上发生的事件数，若有如下假定
    1. 在不相交区间中事件发生的数目相互独立
    2. 对任何时刻 $t$ 和正数 $h$，增量 $N(t+h)-N(t)$ 的分布只依赖于区间长度 $h$ 而不依赖时刻 $t$
    3. 存在正常数 $\lambda$，当 $h \to 0$ 时，使在长度为 $h$ 的小区间中事件至少发生一次的概率 $P\{N(t+h)-N(t) \geqslant 1\}=\lambda h+o(h)$
    4. 在小区间 $(t, t+h]$ 发生两个及以上事件的概率为 $o(h)$，即可以忽略不计

    则过程 $N(t)$ 为 $\text{Poisson}$ 过程

3. 在 $\text{Poisson}$ 过程中，记第 $n-1$ 次与第 $n$ 次事件间的间隔时间记作 $X_{n}$，$W_{n}={\displaystyle \sum_{i=1}^{n} X_{i}}$ 为第 $n$ 次事件的到达或等待时间
    1. $X_{n}$ 是均值为 $\dfrac{1}{\lambda}$ 的独立同分布的指数随机变量
    2. $W_{n}$ 服从参数为 $n$ 和 $\lambda$ 的 $\Gamma$ 分布
    3. $W_{1}, \cdots, W_{n}$ 的联合密度为 ${\displaystyle f_{W_{1}, \cdots, W_{n} \mid N(t)=n}\left(w_{1}, \cdots, w_{n} \mid n\right)=\dfrac{n!}{t^{n}}, \  0<w_{1}<\cdots<w_{n} \leqslant t}$

## 5.2 Markov 过程
1. 概率生成函数：若 $X$ 为离散随机变量，则期望 $\mathrm{E}\left[s^{X}\right]$ 为其概率生成函数，记作 $\phi_{X}(s)$
    1. 若 $P[X=k]=p_{k}, k \in \mathbf{N}$，则 $\phi_{X}(s)={\displaystyle \sum_{k=0}^{\infty} p_{k} s^{k}}$
    2. 若 $X, Y$ 为独立随机变量，则其和式的概率生成函数为 $\phi_{X+Y}(s)=\phi_{X}(s) \phi_{Y}(s)$

2. 若对任何一列状态 $i_{0}, i_{1}, \cdots, i_{n-1}, i, j$ 及对任何 $n \geqslant 0$，随机过程 $\left\{X_{n}, n \geqslant 0\right\}$ 满足 $\text{Markov}$ 性质

    $$
    P\left[X_{n+1}=j \mid X_{0}=i_{0}, \cdots, X_{n-1}=i_{n-1}, X_{n}=i\right]=P\left[X_{n+1}=j \mid X_{n}=i\right]
    $$

    则称 $X_{n}$ 为离散时间 $\text{Markov}$ 链．称 $P[X_{n+1}=j \mid X_{n}=i]$ 为 $\text{Markov}$ 链的一步转移概率，记作 $P_{i j}^{n, n+1}$

    1. 当 $P_{i j}^{n, n+1}$ 与 $n$ 无关时称该 $\text{Markov}$ 链有平稳转移概率，记为 $P_{i j}$，称作时间齐性 $\text{Markov}$ 链或时齐 $\text{Markov}$ 链
        1. 对任意 $i, j \geqslant 0$ 有 $P_{i j} \geqslant 0$ 且 ${\displaystyle \sum_{j=0}^{\infty} P_{i j}=1}$
        2. ...

## 5.3 Brown 过程

## 5.4 鞅过程
