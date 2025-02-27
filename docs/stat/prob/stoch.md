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

2. 平稳过程：设 $T$ 对加法运算封闭
    1. 若随机过程 $X(t)$ 对任意 $t_{1}, \cdots, t_{n} \in T$ 和任何 $h$ 有 $\left(X\left(t_{1}+h\right), \cdots, X\left(t_{n}+h\right)\right) \stackrel{d}{=}\left(X\left(t_{1}\right), \cdots, X\left(t_{n}\right)\right)$ 则称为严格平稳的
        1. 若随机过程的所有二阶矩存在且 $\mathrm{E} X(t)=m$ 及 $R_{X}(t, s)$ 只与时间差 $t-s$ 有关，则称为宽平稳的或二阶矩平稳的
        2. 设 $X=\{X(t), t \in T\}$ 为平稳过程，如果存在正常数 $\kappa$ 使得 $X(t+\kappa)=X(t)$，则称 $X$ 为周期平稳过程，$\kappa$ 为周期
    2. 设 $X=\{X(t),-\infty<t<\infty\}$ 为平稳过程（或序列），则若

        $$
        \overline{X}=\lim _{T \rightarrow \infty} \dfrac{1}{2 T} \int_{-T}^{T} X(t) \mathrm d t \stackrel{L_{2}}{\longrightarrow} m \textsf{ 或 } \overline{X}=\lim _{N \rightarrow \infty} \dfrac{1}{2 N+1} \sum_{k=-N}^{N} X(k) \stackrel{L_{2}}{\longrightarrow} m
        $$

        则称 $X$ 的均值有遍历性；若

        $$
        \widehat{R}(\tau)=\lim _{T \rightarrow \infty} \dfrac{1}{2 T} \int_{-T}^{T}(X(t)-m)(X(t+\tau)-m) \mathrm d t \stackrel{L_{2}}{\longrightarrow} R(\tau) \textsf{ 或 } \widehat{R}(\tau)=\lim _{N \rightarrow \infty} \dfrac{1}{2 N+1} \sum_{k=1}^{n}\left(X(k+\tau)-\widehat{m}_{n}\right)\left(X(k)-\widehat{m}_{n}\right) \stackrel{L_{2}}{\longrightarrow} R(\tau)
        $$

        则称 $X$ 的协方差函数有遍历性；若随机过程（或序列）的均值和协方差函数都有遍历性，则称此随机过程有遍历性

        1. 均值遍历性定理
            1. 设 $X=\left\{X_{n}, n=0, \pm 1, \cdots\right\}$ 为平稳序列，其协方差函数为 $R(\tau)$，则 $X$ 有遍历性当且仅当

                $$
                \lim _{N \rightarrow \infty} \dfrac{1}{N} \sum_{\tau=0}^{N-1} R(\tau)=0
                $$

            2. 若 $X=\{X(t),-\infty<t<\infty\}$ 为平稳过程，则 $X$ 有遍历性当且仅当

                $$
                \lim _{T \rightarrow \infty} \dfrac{1}{T} \int_{0}^{2 T}\left(1-\dfrac{\tau}{2 T}\right) R(\tau) d \tau=0
                $$

        2. 协方差函数遍历性定理：设 $X=\{X(t),-\infty<t<\infty\}$ 为平稳过程，$Y_{\tau}=\left\{Y_{\tau}(t),-\infty<t<\infty\right\}$，其中 $Y_{\tau}(t)=(X(t+\tau)-m)(X(t)-m)$，则对给定的 $\tau$，$X$ 的协方差函数 $R(\tau)$ 有遍历性当且仅当

            $$
            \lim _{T \rightarrow \infty} \dfrac{1}{T} \int_{0}^{2 T}\left(1-\dfrac{\tau_{1}}{2 T}\right)\left(B\left(\tau_{1}\right)-R^{2}(\tau)\right) \mathrm d \tau_{1}=0
            $$

            其中 $B\left(\tau_{1}\right)=E X\left(t+\tau+\tau_{1}\right) X\left(t+\tau_{1}\right) X(t+\tau) X(t)$

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
    3. 存在正常数 $\lambda$，当 $h \to 0$ 时，使在长度为 $h$ 的小区间中事件至少发生一次的概率 $P[N(t+h)-N(t) \geqslant 1]=\lambda h+o(h)$
    4. 在小区间 $(t, t+h]$ 发生两个及以上事件的概率为 $o(h)$，即可以忽略不计

    则过程 $N(t)$ 为 $\text{Poisson}$ 过程

3. 在 $\text{Poisson}$ 过程中，记第 $n-1$ 次与第 $n$ 次事件间的间隔时间记作 $X_{n}$，$W_{n}={\displaystyle \sum_{i=1}^{n} X_{i}}$ 为第 $n$ 次事件的到达或等待时间
    1. $X_{n}$ 是均值为 $\dfrac{1}{\lambda}$ 的独立同分布的指数随机变量
    2. $W_{n}$ 服从参数为 $n$ 和 $\lambda$ 的 $\Gamma$ 分布
    3. $W_{1}, \cdots, W_{n}$ 的联合密度为 ${\displaystyle f_{W_{1}, \cdots, W_{n} \mid N(t)=n}\left(w_{1}, \cdots, w_{n} \mid n\right)=\dfrac{n!}{t^{n}}, \  0<w_{1}<\cdots<w_{n} \leqslant t}$

## 5.2 Markov 过程
### 5.2.1 离散 Markov 链
1. 若对任何一列状态 $i_{0}, i_{1}, \cdots, i_{n-1}, i, j$ 及对任何 $n \geqslant 0$，随机过程 $\left\{X_{n}, n \geqslant 0\right\}$ 满足 $\text{Markov}$ 性质

    $$
    P\left[X_{n+1}=j \mid X_{0}=i_{0}, \cdots, X_{n-1}=i_{n-1}, X_{n}=i\right]=P\left[X_{n+1}=j \mid X_{n}=i\right]
    $$

    则称 $X_{n}$ 为离散时间 $\text{Markov}$ 链．称 $P[X_{n+1}=j \mid X_{n}=i]$ 为 $\text{Markov}$ 链的一步转移概率，记作 $P_{i j}^{n, n+1}$

    1. 当 $P_{i j}^{n, n+1}$ 与 $n$ 无关时称该 $\text{Markov}$ 链有平稳转移概率，记为 $P_{i j}$，称作时间齐性 $\text{Markov}$ 链或时齐 $\text{Markov}$ 链
        1. 对任意 $i, j \geqslant 0$ 有 $P_{i j} \geqslant 0$ 且 ${\displaystyle \sum_{j=0}^{\infty} P_{i j}=1}$
        2. 称 $\boldsymbol{P}^{(n)}=[P_{i j}^{(n)}]$ 为 $\text{Markov}$ 链的 $n$ 步转移概率矩阵
            1. 设 $\boldsymbol{P}^{(1)} = \boldsymbol{P}$，则 $\boldsymbol{P}^{(n)} = \boldsymbol{P}^{n}$
            2. 约定 $P_{i i}^{(0)}=1$，当 $j \neq i$ 时 $P_{i j}^{(0)}=0$，则 ${\displaystyle P_{i j}^{(n)}=\sum_{k=0}^{\infty} P_{i k} P_{k j}^{(n-1)}}$

    2. 若 $n \geqslant 0$ 蕴含 $P_{i j}^{(n)}>0$，则称状态 $j$ 是从状态 $i$ 可达的，记作 $i \rightarrow j$；互相可达的状态 $i$ 和 $j$ 称为互达的，记作 $i \leftrightarrow j$
        1. 互达性是等价关系
        2. 若在互达性下 $\text{Markov}$ 链的所有状态都居于同一等价类，则就称这个 $\text{Markov}$ 链是不可约的
    3. 设 $i$ 为 $\text{Markov}$ 链的一个状态，使 $P_{i i}^{(n)}>0$ 的所有正整数 $n \ (n \geqslant 1)$ 的最大公约数称作是状态 $i$ 的周期，记作 $d(i)$
        1. 若对所有 $n \geqslant 1$，都有 $P_{i i}^{(n)}=0$，则约定周期为 $\infty$；$d(i)=1$ 的状态 $i$ 则称为是非周期的
        2. 若 $i \leftrightarrow j$，则 $d(i)=d(j)$
        3. 若状态 $i$ 有周期 $d(i)$，则存在整数 $N$，使得对所有的 $n>N$ 恒有 $P_{i i}^{(n d(i))}>0$
    4. 设 $\boldsymbol{P}$ 为不可约、非周期的有限状态 $\text{Markov}$ 链的转移概率阵，则存在 $N$，使得当 $n \geqslant N$ 时，$\boldsymbol{P}^{(n)}$ 的所有元素都非零

2. 定义 $f_{i j}^{(n)}$，记从 $i$ 出发在 $n$ 步转移时首次到达 $j$ 的概率

    $$
    \begin{aligned}
    f_{i j}^{(0)}&=0 \\
    f_{i j}^{(n)}&=P[X_{n}=j, X_{k} \neq j, k=1, \cdots, n-1 \mid X_{0}=i]
    \end{aligned}
    $$

    若 $f_{i i}=1$，称状态 $i$ 是常返的，称非常返状态为瞬过的

    1. 状态 $i$ 常返当且仅当 ${\displaystyle \sum_{n=1}^{\infty} P_{i i}^{(n)}=\infty}$，状态 $i$ 瞬过当且仅当 ${\displaystyle \sum_{n=1}^{\infty} P_{i i}^{(n)}<\infty}$
        1. 如果 $i$ 是常返的，且 $i \leftrightarrow j$，则 $j$ 也是常返的
        2. 常返状态 $i$ 当且仅当 $\mu_{i}=\infty$ 时称为零常返的，而当且仅当 $\mu_{i}<\infty$ 时称为正常返的
    2. 设常返状态 $i$ 的常返时间 $T_{i} = \min \left\{n \geqslant 1: X_{n}=i\right\}$，设 ${\displaystyle \mu_{i}=\sum_{n=1}^{\infty} n f_{i i}^{(n)}}$，其中 $f_{i i}$ 是 $T_{i}$ 的条件概率分布
        1. $\text{Markov}$ 链的基本极限定理
            1. 若状态 $i$ 是瞬过的或者是零常返的，则 ${\displaystyle \lim _{n \rightarrow \infty} P_{i i}^{(n)}=0}$
            2. 若状态 $i$ 是周期为 $d$ 的常返状态，则 ${\displaystyle \lim _{n \rightarrow \infty} P_{i i}^{(n d)}=\dfrac{d}{\mu_{i}}}$
            3. 当状态 $i$ 是非周期的正常返状态，则 ${\displaystyle \lim _{n \rightarrow \infty} P_{i i}^{(n)}=\dfrac{1}{\mu_{i}}}$
        2. 如果状态 $i$ 是遍历的，则对所有 $i \rightarrow j$ 有 ${\displaystyle \lim _{n \rightarrow \infty} P_{j i}^{(n)}=\lim _{n \rightarrow \infty} P_{i i}^{(n)}=\dfrac{1}{\mu_{i}}}$

3. $\text{Markov}$ 链有转移概率阵 $\boldsymbol{P}=\left[P_{i j}\right]$，概率分布 $\left\{\pi_{i}, i \geqslant 0\right\}$ 如果满足 ${\displaystyle \pi_{j}=\sum_{i=0}^{\infty} \pi_{i} P_{i j}}$，则称为这一 $\text{Markov}$ 链的平稳分布
    1. 如果过程的初始状态 $X_{0}$ 有平稳概率分布 $\pi=\left\{\pi_{j}, j \geqslant 0\right\}$，则 $P[X_{n}=j]=\pi_{j}$
    2. 若不可约 $\text{Markov}$ 链中的所有状态都是遍历的，则对所有 $i, j$，极限 ${\displaystyle \lim _{n \rightarrow \infty} P_{i j}^{(n)}=\pi_{j}}$ 存在且 $\pi=\left\{\pi_{j}, j \geqslant 0\right\}$ 为平稳分布，即 ${\displaystyle \sum_{j=0}^{\infty} \pi_{j}=1, \pi_{j}>0}$ 且 ${\displaystyle \sum_{i=0}^{\infty} \pi_{i} P_{i j}=\pi_{j}}$．反之，若不可约 $\text{Markov}$ 链只存在一个平稳分布，且该 $\text{Markov}$ 链的所有状态都是遍历的，则该平稳分布就是此 $\text{Markov}$ 链的极限分布，即对任何 $i$ 有 ${\displaystyle \lim _{n \rightarrow \infty} P_{i j}^{(n)}=\pi_{j}}$

### 5.2.2 连续 Markov 链
1. 若对所有 $s, t \geqslant 0$ 和任何非负整数 $i, j, x(u), 0 \leqslant u \leqslant s$，随机过程 $X(t), t \geqslant 0$ 满足

    $$
    P[X(t+s) =j \mid X(s)=i, X(x)=x(u), 0 \leqslant u<s]=P[X(t+s)=j \mid X(s)=i]
    $$

    则称为连续时间 $\text{Markov}$ 链．其转移概率 $P_{i j}(i)$ 和 $p_{i}$ 完全确定了过程的所有联合分布

2. 函数 $P_{i j}(t)$ 能够作为无瞬即转移的 $\text{Markov}$ 过程的转移概率函数当且仅当
    1. $P_{i j}(t) \geqslant 0$ 且 ${\displaystyle \sum_{j=0}^{\infty} P_{i j}(t)=1}$
    2. $\text{Chapman}-\text{Kolmogrov}$ 方程：${\displaystyle P_{i j}(t+\tau) = \sum_{k=0}^{\infty} P_{i k}(\tau) P_{k j}(t)}$
    3. 对任何状态 $i$ 都有 ${\displaystyle \lim _{\tau \to 0} P[X(t+\tau)=i \mid X(t)=i]=\lim _{\tau \to 0} P_{i i}(\tau)=1}$

## 5.3 Brown 过程

## 5.4 鞅过程
