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

2. 有限维赋范线性空间的性质

## 1.2 Banach 空间
- $\text{Banach}$ 空间：完备的赋范线性空间
    1. $\text{Euclid}$ 空间 $\mathbf R^n$：对每个 $x=\left(\xi_{1}, \xi_{2}, \cdots, \xi_{n}\right) \in \mathbf{R}^{n}$，定义 $\|x\|=\sqrt{\left|\xi_{1}\right|^{2}+\left|\xi_{2}\right|^{2}+\cdots+\left|\xi_{n}\right|^{2}}$，则 $\mathbf R^n$ 是 $\text{Banach}$ 空间
    2. $C[a, b]$ 空间：记闭空间 $[a, b]$ 上实值（或复值）连续函数全体为 $C[a, b]$．对每个 $x \in C[a, b]$，定义 ${\displaystyle \|x\| = \max_{a \leqslant t \leqslant b} |x(t)|}$，则 $C[a, b]$ 是 $\text{Banach}$ 空间
    3. $l^{\infty}$ 空间：记有界实（或复）数列全体为 $l^{\infty}$．对每个 $x=\left(\xi_{1}, \xi_{2}, \cdots\right) \in l^{\infty}$，定义 ${\displaystyle \|x\|=\sup \left|\xi_{j}\right|}$，则 $l^{\infty}$ 是 $\text{Banach}$ 空间
    4. $L^{p}[a, b]$ 空间：设 $f(t)$ 是 $[a, b]$ 上复值可测函数，$p>0$．如果 $|f(x)|^{p}$ 是 $[a, b]$ 上 $L$ 可积函数，则称 $f(t)$ 是 $[a, b]$ 上 $p$ 方可积函数，记 $[a, b]$ 上 $p$ 方可积函数全体为 $L^{p}[a, b]$．在空间 $L^{p}[a, b]$ 中，将两个 $\text{a.e.}$相等的函数视为 $L^{p}[a, b]$ 中同一个元素而不加以区别．对每个 $f \in L^{p}[a, b]$，定义 ${\displaystyle \|f\|_{p}=\left(\int_{a}^{b}|f(t)|^{p} \mathrm{d} t\right)^{\frac{1}{p}}}$，则当 $p \geqslant 1$ 时，$L^{p}[a, b]$ 按 $\|\cdot\|_{p}$ 成为 $\text{Banach}$ 空间
