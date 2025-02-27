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

## 5.2 Markov 过程
1. 概率生成函数：若 $X$ 为离散随机变量，则期望 $\mathrm{E}\left[s^{X}\right]$ 为其概率生成函数，记作 $\phi_{X}(s)$
    1. 若 $P[X=k]=p_{k}, k \in \mathbf{N}$，则 $\phi_{X}(s)={\displaystyle \sum_{k=0}^{\infty} p_{k} s^{k}}$
    2. 若 $X, Y$ 为独立随机变量，则其和式的概率生成函数为 $\phi_{X+Y}(s)=\phi_{X}(s) \phi_{Y}(s)$

2. ...

## 5.3 Brown 过程

## 5.4 鞅过程
