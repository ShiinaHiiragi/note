# 2 算子与泛函

## 2.1 有界线性算子
1. 线性算子：设 $X$ 和 $Y$ 是两个同为实（或复）的线性空间，$\mathscr{D}$ 是 $X$ 的线性子空间，$T$ 为 $\mathscr{D}$ 到 $Y$ 中的映射，如果对任何 $x, y \in \mathscr{D}$ 及数 $\alpha$，有

    $$
    \begin{aligned}
    T(x+y)&=T x+T y \\
    T(\alpha x)&=\alpha T x
    \end{aligned}
    $$

    则称 $T$ 为 $\mathscr{D}$ 到 $Y$ 中的线性算子，其中 $\mathscr{D}$ 称为 $T$ 的定义域，记为 $\mathscr{D}(T)$，$T \mathscr{D}$ 称为 $T$ 的值域，记为 $\mathscr{B}(T)$．算子 $T$ 的零空间定义为 $\mathscr{N}(T)=\{x: T x=0, x \in \mathscr{D}(T)\}$

    1. 设 $X$ 是线性空间，$\alpha$ 是一给定的数，对任意 $x \in X$，令 $T x=\alpha x$，显然 $T$ 是 $X$ 到 $X$ 中的线性算子，称为相似算子．特别当 $\alpha=1$ 时，称为恒等算子，记为 $I_{X}$ 或 $I$，当 $\alpha=0$ 时，称为零算子，记为 $O$
    2. 对任意 $x \in C[a, b]$，令 $(T x)(t)=t x(t)$，易知 $T$ 是线性算子，称为乘法算子
    3. 设 $X=C[0,1]$，$K(t, \tau)$ 是矩形域 $[0,1] \times[0,1]$ 上二元连续函数，对每个 $x \in C[0,1]$，令 ${\displaystyle (T x)(t)=\int_{0}^{1} K(t, \tau) x(\tau) \mathrm{d} \tau}$．易知 $T$ 是 $C[0,1]$ 到 $C[0,1]$ 中的线性算子，这个算子称为积分算子，其中函数 $K(t, \tau)$ 称为 $T$ 的核

2. 有界线性算子：设 $X$ 和 $Y$ 是两个赋范线性空间，$T$ 是 $X$ 的线性子空间 $\mathscr{D}(T)$ 到 $Y$ 中的线性算子，如果存在常数 $c$，使对所有 $x \in \mathscr{D}(T)$，有 $\|T x\| \leqslant c\|x\|$，则称 $T$ 是 $\mathscr{D}(T)$ 到 $Y$ 中的有界线性算子，当 $\mathscr{D}(T)=X$ 时，称 $T$ 为 $X$ 到 $Y$ 中的有界线性算子，简称为有界算子，不满足条件的算子称为无界算子
    1. 设 $T$ 是赋范线性空间 $X$ 到赋范线性空间 $Y$ 中的线性算子，则 $T$ 为有界算子的充要条件为 $T$ 是 $X$ 上的连续算子
    2. $T$ 为赋范线性空间 $X$ 的子空间 $\mathscr{D}(T)$ 到赋范线性空间 $Y$ 的线性算子，称 ${\displaystyle \|T\|=\sup_{x \neq 0, \ x \in \mathscr{C}(T)} \dfrac{\|T x\|}{\|x\|}}$ 为 $T$ 在 $\mathscr{D}(T)$ 上的范数
3. 有界算子空间

## 2.2 有界秩算子

## 2.3 连续线性泛函
1. 线性泛函：设 $T$ 为 $\mathscr{D}$ 到 $Y$ 中的线性算子，当 $T$ 取值于实（或复）数域时，称 $T$ 为实（或复）线性泛函
    1. 设 $X$ 是赋范线性空间，$f$ 是 $X$ 上线性泛函，那么 $f$ 是 $X$ 上连续泛函的充要条件为 $f$ 的零空间 $\mathscr{N}(f)$ 是 $X$ 中的闭子空间
