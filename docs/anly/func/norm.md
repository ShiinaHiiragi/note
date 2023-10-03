# 1 赋范线性空间

## 1.1 赋范线性空间
1. 赋范线性空间：设 $X$ 是实（或复）线性空间，如果对每个向量 $x \in X$ 都有一个确定的实数，记为 $\|x\|$ 与之对应，并且满足
    1. $\|x\| \geqslant 0$，且 $\|x\|=0$ 等价于 $x=0$
    2. $\|\alpha x\|=|\alpha|\|x\|$，其中 $\alpha$ 为任意实（复）数
    3. $\|x+y\| \leqslant\|x\|+\|y\|,\ x, y \in X$

    则称 $\|x\|$ 为向量 $x$ 的范数，称 $X$ 按范数 $\|\cdot\|$ 为赋范线性空间

    1. 无限维线性空间：若线性空间 $X$ 的线性无关子集 $M$ 的基数不为有限数，且 $\operatorname{span}(M) = X$，则称 $X$ 为无限维线性空间，称 $n$ 维线性空间为有限维线性空间
    2. 依范数收敛：设 $\left\{x_{n}\right\}$ 是 $X$ 中点列，如果存在 $x \in X$ 使 ${\displaystyle \lim _{n \rightarrow \infty} \left\|x_{n}-x\right\| \rightarrow 0}$，则称 $\left\{x_{n}\right\}$ 依范数收敛于 $x$，记为 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=x}$ 或 $x_{n} \rightarrow x(n \rightarrow \infty)$
    3. 导出距离：令 $d(x, y)=\|x-y\| \ (x, y \in X)$，则 $d$ 是 $X$ 上的距离且 $\left\{x_{n}\right\}$ 依范数收敛于 $x$ 等价于 $\left\{x_{n}\right\}$ 按距离 $d$ 收敛于 $x$，称 $d$ 为由范数 $\|\cdot\|$ 导出的距离
        1. 赋范线性空间是一种特殊的度量空间
        2. 对任意数 $\alpha$ 和向量 $x, y \in X$，有 $d(x-y, 0)=d(x, y)$ 及 $d(\alpha x, 0)=|\alpha| d(x, 0)$
    4. 商空间：设 $X$ 是赋范线性空间，$V$ 是 $X$ 中的闭子空间．定义 $X$ 上的一个等价关系 $\sim$ 如下．设 $x_{1}, x_{2} \in X, x_{1} \sim x_{2}$ 表示 $x_{1}-x_{2} \in V$．对 $x \in X$，以 $[x]=\{y \in X: x \sim y, y \in X\}$ 表示 $x$ 的等价类并记 $X / V=\{[x]: x \in X\}$．$X / V$ 称为 $X$ 以 $V$ 为模的商空间，在 $X / V$ 中定义加法和数乘为 $[x]+[y]=[x+y], \alpha[x]=[\alpha x]$，任意 $x, y \in X, \alpha$ 为数．定义 $X / V$ 上的非负函数 $\|[x]\|=\inf \{\|x+v\|: v \in V\}$，任意 $x \in X$

2. 设 $\left(R_{1},\|\cdot\|_{1}\right)$ 和 $\left(R_{2},\|\cdot\|_{2}\right)$ 是两个赋范线性空间．如果存在从 $R_{1}$ 到 $R_{2}$ 上的映射 $\varphi$ 满足条件：对任意 $x, y \in R_{1}$ 及数 $\alpha, \beta$ 都有 $\varphi(\alpha x+\beta y)=\alpha \varphi(x)+\beta \varphi(y)$ 以及正数 $c_{1}, c_{2}$，使得对一切 $x \in R_{1}$ 都有 ${\displaystyle c_{1}\|\varphi(x)\|_{2} \leqslant\|x\|_{1} \leqslant c_{2}\|\varphi(x)\|_{2}}$，则称 $\left(R_{1},\|\cdot\|_{1}\right)$ 和 $\left(R_{2},\|\cdot\|_{2}\right)$ 这两个赋范空间是拓扑同构的
    1. 设 $X$ 是 $n$ 维赋范线性空间，$\left\{e_{1}, e_{2}, \cdots, e_{n}\right\}$ 是 $X$ 的一组基，则存在常数 $M$ 和 $M^{\prime}$，使得对一切 ${\displaystyle x=\sum_{k=1}^{n} \xi_{k} e_{k}}$ 成立
    2. 设在有限维线性空间上定义了两个范数 $\|\cdot\|_{1}$ 和 $\|\cdot\|_{2}$，则必存在常数 $M$ 和 $M^{\prime}$，使得对任意 $x \in X$，成立不等式 $M\|x\|_{1} \leqslant\|x\|_{2} \leqslant M^{\prime}\|x\|_{1}$
    3. 任何有限维赋范空间都和同维数 $\text{Euclid}$ 空间（或某个 $\mathbf{C}^{n}$）拓扑同构，同数域上的相同维数的有限维赋范空间彼此拓扑同构

## 1.2 Banach 空间
- $\text{Banach}$ 空间：完备的赋范线性空间．$\text{Banach}$ 空间实例如下
    1. $\text{Euclid}$ 空间 $\mathbf R^n$：对每个 $x=\left(\xi_{1}, \xi_{2}, \cdots, \xi_{n}\right) \in \mathbf{R}^{n}$，定义 $\|x\|=\sqrt{\left|\xi_{1}\right|^{2}+\left|\xi_{2}\right|^{2}+\cdots+\left|\xi_{n}\right|^{2}}$
    2. $C[a, b]$ 空间：记闭空间 $[a, b]$ 上实值（或复值）连续函数全体为 $C[a, b]$．对每个 $x \in C[a, b]$，定义 ${\displaystyle \|x\| = \max_{a \leqslant t \leqslant b} |x(t)|}$
    3. $l^{p}$ 空间：记 ${\displaystyle l^{p} = \left\{x=\{x_k\}: \sum_{k=1}^{\infty} x_{k}^{p} < \infty\right\}}$．对每个 $x=\left(\xi_{1}, \xi_{2}, \cdots\right) \in l^{\infty}$，定义 ${\displaystyle \|x\|_{p}=\left(\sum_{i=1}^{\infty}\left|\xi_{i}\right|^{p}\right)^{\frac{1}{p}}}$
    4. $l^{\infty}$ 空间：记有界实（或复）数列全体为 $l^{\infty}$．对每个 $x=\left(\xi_{1}, \xi_{2}, \cdots\right) \in l^{\infty}$，定义 ${\displaystyle \|x\|=\sup \left|\xi_{j}\right|}$
    5. $L^{p}[a, b]$ 空间：设 $f(t)$ 是 $[a, b]$ 上复值可测函数，$p>0$．如果 $|f(x)|^{p}$ 是 $[a, b]$ 上 $L$ 可积函数，则称 $f(t)$ 是 $[a, b]$ 上 $p$ 方可积函数，记 $[a, b]$ 上 $p$ 方可积函数全体为 $L^{p}[a, b]$．在空间 $L^{p}[a, b]$ 中，将两个 $\text{a.e.}$相等的函数视为 $L^{p}[a, b]$ 中同一个元素而不加以区别．对每个 $f \in L^{p}[a, b]$，定义 ${\displaystyle \|f\|_{p}=\left(\int_{a}^{b}|f(t)|^{p} \mathrm{d} t\right)^{\frac{1}{p}}}$，则当 $p \geqslant 1$ 时，$L^{p}[a, b]$ 按 $\|\cdot\|_{p}$ 成为 $\text{Banach}$ 空间
        1. $\text{H}\mathrm{\ddot{o}}\text{lder}$ 不等式：设 $p>1, \dfrac{1}{p}+\dfrac{1}{q}=1, f \in L^{p}[a, b], g \in L^{q}[a, b]$，那么 $f(t) g(t)$ 在 $[a, b]$ 上 $L$ 可积，并且 ${\displaystyle \int_{a}^{b}|f(t) g(t)| \mathrm{d} t \leqslant\|f\|_{p}\|g\|_{q}}$
        2. $\text{Minkowski}$ 不等式：设 $p \geqslant 1, f, g \in L^{p}[a, b]$，那么 $f+g \in L^{p}[a, b]$，并且不等式 $\|f+g\|_{p} \leqslant\|f\|_{p}+\|g\|_{p}$ 成立

## 1.3 Hilbert 空间
### 1.3.1 规范正交系
1. $\text{Hilbert}$ 空间：设 $X$ 是 $\text{Euclid}$ 线性空间，对于任意 $x \in X$，令 $\|x\| = \sqrt{\left<x, x\right>}$，称 $\|\cdot\|$ 为由内积导出的范数．若 $X$ 按范数 $\|\cdot\|$ 完备，则称 $X$ 为 $\text{Hilbert}$ 空间
    1. 正交投影：设 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间，那么有 $X=Y \ \dot{+} \ Y^{\perp}$．于是当 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间时，对每个 $x \in X$，存在唯一 $y \in Y$ 及 $z \in Y^{\perp}$ 使得 $x=y \oplus z$，称 $y$ 为 $x$ 在空间 $Y$ 上的正交投影，简称为投影
    2. 投影算子：定义 $X$ 到 $Y$ 上的映射 $P x=y$ 对任意 $x \in X$ 成立，其中 $y$ 是 $x$ 在 $Y$ 上的投影，称 $P$ 为 $X$ 到 $Y$ 上的投影算子
        1. $P$ 是 $X$ 到 $Y$ 上的有界线性算子，且当 $Y \neq\{0\}$ 时，$\|P\|=1$
        2. $P X=Y, P Y=Y, P Y^{\perp}=\{0\}$
        3. $P^{2}=P$，其中 $P^{2}=P P$
    3. 设 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间，则有 $Y=Y^{\perp \perp}$
    4. 设 $M$ 是 $\text{Hilbert}$ 空间 $X$ 中非空子集，则 $\operatorname{span} M$ 在 $X$ 中稠密的充要条件为 $M^{\perp}=\{0\}$
2. 规范正交系：设 $M$ 是 $\text{Euclid}$ 线性空间 $X$ 的一个不含零的子集，若 $M$ 中向量两两正交，则称 $M$ 为 $X$ 中的正交系，又若 $M$ 中向量的范数都为 $1$，则称 $M$ 为 $X$ 中规范正交系
    1. 部分和：设 $X$ 是赋范线性空间，$x_{i}$ 是 $X$ 中一列向量，$\alpha_{1}, \alpha_{2}, \cdots$ 是一列数，作形式级数 ${\displaystyle \sum_{i=1}^{\infty} \alpha_{i} x_{i}}$．称 ${\displaystyle S_{n}=\sum_{i=1}^{n} \alpha_{i} x_{i}}$ 为级数的 $n$ 项部分和，若存在 $x \in X$，使 $S_{n} \rightarrow x(n \rightarrow \infty)$，则称级数收敛，并称 $x$ 为这个级数的和，记为 ${\displaystyle x=\sum_{i=1}^{\infty} \alpha_{i} x_{i}}$
    2. $\text{Fourier}$ 系数：设 $M$ 为 $\text{Euclid}$ 线性空间 $X$ 中的规范正交系，$x \in X$，称数集 $\{\langle x, e\rangle: e \in M\}$ 为向量 $x$ 关于规范正交系 $M$ 的 $\text{Fourier}$ 系数集，而称 $\langle x, e\rangle$ 为 $x$ 关于 $e$ 的 $\text{Fourier}$ 系数
        1. 设 $X$ 是 $\text{Euclid}$ 线性空间，$M$ 是 $X$ 中规范正交系，任取 $M$ 中有限个向量 $e_{1}, e_{2}, \cdots$, $e_{n}$，那么有
            - ${\displaystyle \left\|x-\sum_{i=1}^{n}\left\langle x, e_{i}\right\rangle e_{i}\right\|^{2}=\|x\|^{2}-\sum_{i=1}^{n}\left|\left\langle x, e_{i}\right\rangle\right|^{2} \geqslant 0}$
            - ${\displaystyle \left\|x-\sum_{i=1}^{n} \alpha_{i} e_{i}\right\| \geqslant\left\|x-\sum_{i=1}^{n}\left\langle x, e_{i}\right\rangle e_{i}\right\|}$，其中 $\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}$ 为任意 $n$ 个数
        2. $\text{Bessel}$ 不等式：设 $\left\{e_{k}\right\}$ 是 $\text{Euclid}$ 线性空间 $X$ 中至多可数的规范正交系，则对每个 $x \in X$，有 ${\displaystyle \sum_{i=1}^{\infty}\left|\left\langle x, e_{i}\right\rangle\right|^{2} \leqslant\|x\|^{2}}$．若 $\text{Bessel}$ 不等式中等号成立，则称此等式为 $\text{Parseval}$ 等式
        3. 设 $\left\{e_{k}\right\}$ 为 $\text{Hilbert}$ 空间 $X$ 中的有限或可数规范正交系
            - 级数 ${\displaystyle \sum_{i=1}^{\infty} \alpha_{i} e_{i}}$ 收敛的充要条件为级数 ${\displaystyle \sum_{i=1}^{\infty}\left|\alpha_{i}\right|^{2}}$ 收敛
            - 若 ${\displaystyle x=\sum_{i=1}^{\infty} \alpha_{i} e_{i}}$，则 $\alpha_{i}=\left\langle x, e_{i}\right\rangle, i=1,2, \cdots$，故 ${\displaystyle x=\sum_{i=1}^{\infty}\left\langle x, e_{i}\right\rangle e_{i}}$
            - 对任何 $x \in X$，级数 ${\displaystyle \sum_{i=1}^{\infty}\left\langle x, e_{i}\right\rangle e_{i}}$ 收敛
    3. 完全规范正交系：设 $M$ 是 $\text{Euclid}$ 线性空间 $X$ 中的规范正交系，如果 $\overline{\operatorname{span} M}=X$，则称 $M$ 是 $X$ 中的完全规范正交系
        1. 设 $M$ 是 $\text{Hilbert}$ 空间 $X$ 中规范正交系，那么 $M$ 完全的充要条件为 $M^{\perp}= \{0\}$
        2. $M$ 是 $\text{Hilbert}$ 空间中完全规范正交系的充要条件为对所有 $x \in X$，成立 $\text{Parseval}$ 等式
        3. $\text{Gram}-\text{Schmidt}$ 正交化：设 $\left\{x_{1}, x_{2}, \cdots\right\}$ 是 $\text{Euclid}$ 线性空间 $X$ 中有限或可数个线性无关向量，那么必有 $X$ 中规范正交系 $\left\{e_{1}, e_{2} \cdots\right\}$，使对任何正整数 $n$，有 ${\displaystyle \operatorname{span}\left\{e_{1}, e_{2}, \cdots, e_{n}\right\}=\operatorname{span}\left\{x_{1}, x_{2}, \cdots, x_{n}\right\}}$
        4. 每个非零 $\text{Hilbert}$ 空间必有完全规范正交系
    4. 设 $X$ 和 $\widetilde{X}$ 是两个 $\text{Euclid}$ 线性空间，若存在 $X$ 到 $\widetilde{X}$ 上的映射 $T$，使对任何 $x, y \in X$ 及数 $\alpha, \beta$，满足

        $$
        \begin{aligned}
        T(\alpha x+\beta y)&=\alpha T x+\beta T y \\
        \langle T x, T y\rangle&=\langle x, y\rangle
        \end{aligned}
        $$

        则称 $X$ 和 $\widetilde{X}$ 同构，并称 $T$ 为 $X$ 到 $\widetilde{X}$ 上的同构映射

        1. 两个 $\text{Hilbert}$ 空间 $X$ 与 $\widetilde{X}$ 同构的充要条件是 $X$ 与 $\widetilde{X}$ 具有相同的 $\text{Hilbert}$ 维数
        2. 任何可分 $\text{Hilbert}$ 空间必和某个 $\mathbf{R}^{n}\left(\mathbf{C}^{n}\right)$ 或 $l^{2}$ 同构

### 1.3.2 Hilbert 空间的算子
