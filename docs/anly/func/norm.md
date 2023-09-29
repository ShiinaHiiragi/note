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
