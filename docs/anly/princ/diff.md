# 2 微分法

## 2.1 连续统
### 2.1.1 连续函数
1. 连续函数的定义
    1. 函数 $f(x)$ 在单点连续
        1. 函数在 $x_0$ 连续：${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$，此时 $f(x)$ 在 $x_0$ 有定义
        2. 函数在 $x_0$ 点左连续：$f\left(x_{0}-0\right)=f\left(x_{0}\right)$
        3. 函数在 $x_0$ 点右连续：$f\left(x_{0}+0\right)=f\left(x_{0}\right)$
    2. 函数在区间内连续
        1. 函数 $f(x)$ 在 $(a, b)$ 连续：对 $(a, b)$ 内任何一点 $x_{0}$ 均有 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$
        2. 函数 $f(x)$ 在 $[a, b]$ 连续：函数在 $(a, b)$ 连续且 $f(a+0)=f(a), f(b-0)=f(b)$
2. 连续函数的性质
    1. 若 $f(x), g(x)$ 在点 $x_{0}$ 连续，则 $f(x) \pm g(x), f(x) g(x)$ 也在点 $x_0$ 连续，若 $g\left(x_{0}\right) \neq 0$，则 $\dfrac{f(x)}{g(x)}$ 也在点 $x_0$ 连续
    2. 设 $f(x)$ 在 $a \leqslant x \leqslant b$ 严格单调递增（或递减）且在每点连续，又设 $f(a)=\alpha, f(b)=\beta$，则在区间 $\alpha \leqslant y \leqslant \beta$ 上存在 $y=f(x)$ 的反函数 $x=\varphi(y)$ 在区间上单调递增（或递减）且连续
    3. 若 $u=g(x)$ 在点 $x_{0}$ 连续，$y=f(u)$ 在点 $u_{0}$ 连续且 $g\left(x_{0}\right)=u_{0}$，则复合函数 $y=f \circ g(x)$ 在点 $x_{0}$ 连续
    4. 初等函数均在其定义域内连续
3. 不连续点：设 $x_0$ 是函数 $f(x)$ 的一个不连续点
    1. 第一类不连续点：$f\left(x_{0}+0\right), f\left(x_{0}-0\right)$ 存在但不相等
    2. 第二类不连续点：$f\left(x_{0}+0\right)$ 与 $f\left(x_{0}-0\right)$ 中至少有一个不存在
    3. 可移不连续点：${\displaystyle \lim _{x \rightarrow x_{0}} f(x)}$ 存在但不等于 $f\left(x_{0}\right)$ 或 $f(x)$ 在点 $x_{0}$ 没有定义
4. 一致连续：设函数 $f(x)$ 在区间 $X$ 内满足对任意的 $\varepsilon>0$，可找到只与 $\varepsilon$ 有关而与 $X$ 内的点 $x$ 无关的 $\eta>0$，使得对 $X$ 内任意两点 $x_{1}$ 和 $x_{2}$，当 $\left|x_{1}-x_{2}\right|<\eta$ 时，总有 $\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right|<\varepsilon$，则称 $f(x)$ 在 $X$ 内一致连续
5. 闭区间上连续函数的性质：设 $f(x)$ 在 $[a, b]$ 上连续
    1. 有界性：$f(x)$ 在 $[a, b]$ 上有界
    2. 最值：在 $[a, b]$ 内至少有两点 $\xi_{1}$ 和 $\xi_{2}$，使得对 $[a, b]$ 内的一切 $x$，有 $f\left(\xi_{1}\right) \leqslant f(x) \leqslant f\left(\xi_{2}\right)$
    3. 零点存在定理：若 $f(a)f(b) < 0$，则在 $[a, b]$ 内至少有一点 $\xi$，使 $f(\xi)=0$
    4. 介值定理：设 $f(x)$ 在 $[a, b]$ 上的最小值为 $m$，最大值为 $M$．则对任何 $c \ (m<c<M)$，在 $[a, b]$ 内至少存在一个 $\xi$，使得 $f(\xi)=c$
    5. $\text{Cantor}$ 定理：$f(x)$ 在 $[a, b]$ 上一致连续

### 2.1.2 实数理论
1. 实数系基本定理：以下六个定理相互等价
    1. 有界数集的确界定理：有上界的非空数集必有上确界，有下界的非空数集必有下确界
    2. 单调有界数列的极限存在定理：单调有界数列必收敛
    3. 区间套定理：设一无穷闭区间序列 $\left\{\left[a_{n}, b_{n}\right]\right\}$ 适合下面两个条件
        1. 对任一正整数 $n$ 有 $a_{n} \leqslant a_{n+1}<b_{n+1} \leqslant b_{n}$
        2. ${\displaystyle \lim _{n \rightarrow \infty}\left(b_{n}-a_{n}\right)=0}$

        则区间的两个端点所成两数列 $\left\{a_{n}\right\}$ 及 $\left\{b_{n}\right\}$ 收敛于同一极限 $\xi$，且 $\xi$ 是所有区间的唯一公共点

    4. $\text{Weierstrass}$ 定理：任一有界数列必有收敛子列，也称作致密性定理
    5. $\text{Cauchy}$ 收敛原理：数列 $\left\{x_{n}\right\}$ 有极限当且仅当对任意给定的 $\varepsilon>0$，存在 $N \in \mathbf N$，当 $m, n>N$ 时有 $\left|x_{n}-x_{m}\right|<\varepsilon$
    6. $\text{Borel}$ 定理：若由无限多个开区间所组成的区间集 $E$ 能够覆盖一个闭区间 $[a, b]$，则存在 $E$ 中的有限个区间覆盖 $[a, b]$，也称作有限覆盖定理

2. 收敛准则
    1. 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$，则 $\left\{x_{n}\right\}$ 的任何子列 $\left\{x_{n_{k}}\right\}$ 都收敛于 $a$．
    2. 若对任何 $\left\{x_{n}\right\}, x_{n} \rightarrow x_{0} \ (n \rightarrow \infty), x_{n} \neq x_{0}$ 都有 $\left\{f\left(x_{n}\right)\right\}$ 收敛，则 $f(x)$ 在 $x_{0}$ 的极限存在
    3. 若 $\left\{x_{n}\right\}$ 是一个无界数列，则存在子列 $x_{n_{k}} \rightarrow \infty(k \rightarrow \infty)$

## 2.2 一元微分法

## 2.3 多元微分法
