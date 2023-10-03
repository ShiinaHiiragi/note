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
3. 设 $X$ 和 $Y$ 是两个赋范线性空间，$\mathscr{B}(X, Y)$ 表示由 $X$ 到 $Y$ 中有界线性算子全体，并以 $\mathscr{B}(X)$ 表示 $\mathscr{B}(X, X)$．当 $A$ 和 $B$ 属于 $\mathscr{B}(X, Y), \alpha$ 是所讨论数域中的数时，对任意 $x \in X$，令

    $$
    \begin{aligned}
    (A+B) x&=A x+B x \\
    (\alpha A) x&=\alpha A x
    \end{aligned}
    $$

    则 $\mathscr{B}(X, Y)$ 按上述线性运算及算子范数成为赋范线性空间

    1. 当 $Y$ 是 $\text{Banach}$ 空间时，$\mathscr{B}(X, Y)$ 也是 $\text{Banach}$ 空间
    2. 设 $A \in \mathscr{B}(Z, Y), B \in \mathscr{B}(X, Z)$，令 $(A B) x=A(B x), x \in X$，显然 $A B \in \mathscr{B}(X, Y)$ 是线性算子，称为 $B$ 与 $A$ 的乘积
    3. 设 $X$ 是赋范线性空间，若在 $X$ 中定义了两个向量的乘积，并且满足 $\|x y\| \leqslant\|x\|\|y\|, x, y \in X$，则称 $X$ 是赋范代数，当 $X$ 完备时，称 $X$ 为 $\text{Banach}$ 代数

4. 有限秩算子：设 $X, Y$ 是 $\text{Banach}$ 空间，$T \in \mathscr{B}(X, Y)$．如果 $\mathscr{B}(T)$ 是有限维的子空间，则称 $T$ 是有限秩算子．记 $\mathscr{F}(X, Y)$ 为 $\mathscr{B}(X, Y)$ 中有限秩算子全体并记 $\mathscr{A}(X)=\mathscr{F} (X, X)$
    1. 设 $X$ 是 $\text{Banach}$ 空间，$S, T \in \mathscr{F}(X), A \in \mathscr{B}(X)$．则 $\mathscr{F}(X)$ 是 $\mathscr{B}(X)$ 的一个理想
    2. 设 $X$ 是赋范线性空间，$V$ 是 $X$ 中的闭子空间．则 $(X / V,\|\cdot\|)$ 是赋范线性空间；进一步地，如果 $X$ 是 $\text{Banach}$ 空间，则 $X / V$ 也是 $\text{Banach}$ 空间
    3. 设 $X$ 为 $\text{Banach}$ 空间，$T \in \mathscr{F} (X)$，则 $\mathscr{R}(I+T)$ 是 $X$ 中的闭子空间

## 2.2 连续线性泛函
1. 线性泛函：设 $T$ 为 $\mathscr{D}$ 到 $Y$ 中的线性算子，当 $T$ 取值于实（或复）数域时，称 $T$ 为实（或复）线性泛函
    1. 设 $X$ 是赋范线性空间，$f$ 是 $X$ 上线性泛函，那么 $f$ 是 $X$ 上连续泛函的充要条件为 $f$ 的零空间 $\mathscr{N}(f)$ 是 $X$ 中的闭子空间
    2. 设 $X$ 是赋范线性空间，$f$ 是 $X$ 上线性泛函，那么 $f$ 是 $X$ 上连续泛函的充要条件为 $f$ 的零空间 $\mathscr{N}(f)$ 是 $X$ 中的闭子空间
2. 共轭代数：设 $X$ 是赋范线性空间，令 $X^{\prime}$ 表示 $X$ 上连续线性泛函全体所成的空间，称为 $X$ 的共轭空间
    1. 设 $X$ 和 $Y$ 是两个赋范线性空间，$T$ 是 $X$ 到 $Y$ 中的线性算子且对所有 $x \in X$ 有 $\|T x\|=\|x\|$，则称 $T$ 是 $X$ 到 $Y$ 中的保距算子，如果 $T$ 又是映射到 $Y$ 上的，则称 $T$ 是同构映射，此时称 $X$ 与 $Y$ 同构
    2. 任何赋范线性空间的共轭空间是 $\text{Banach}$ 空间
3. 次线性泛函：设 $X$ 是赋范线性空间，子空间 $Z\subseteq X$，$f$ 是 $Z$ 上连续线性泛函，令 ${\displaystyle \|f\|_{Z}=\sup_{x \in Z, \ \|x\|=1}|f(x)|, p(x)=\|f\|_{z}\|x\|}$，则 $p(x)$ 是在整个 $X$ 上有定义的泛函，并且满足
    1. $p(\alpha x)=|\alpha| p(x), x \in X, \alpha$ 为数
    2. $p(x+y) \leqslant p(x)+p(y), x, y \in X$

    称 $X$ 上满足上述两个条件的泛函为次线性泛函

## 2.3 谱
