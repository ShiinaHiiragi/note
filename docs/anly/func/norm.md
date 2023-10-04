# 1 赋范线性空间

## 1.1 赋范线性空间
1. 赋范线性空间：设 $X$ 是实（或复）线性空间，如果对每个向量 $\boldsymbol{x} \in X$ 都有一个确定的实数，记为 $\|\boldsymbol{x}\|$ 与之对应，并且满足
    1. $\|\boldsymbol{x}\| \geqslant 0$，且 $\|\boldsymbol{x}\|=0$ 等价于 $\boldsymbol{x}=0$
    2. $\|\alpha \boldsymbol{x}\|=|\alpha|\|\boldsymbol{x}\|$，其中 $\alpha$ 为任意实（复）数
    3. $\|\boldsymbol{x}+\boldsymbol{y}\| \leqslant\|\boldsymbol{x}\|+\|\boldsymbol{y}\|,\ \boldsymbol{x}, \boldsymbol{y} \in X$

    则称 $\|\boldsymbol{x}\|$ 为向量 $\boldsymbol{x}$ 的范数，称 $X$ 按范数 $\|\cdot\|$ 为赋范线性空间

    1. 无限维线性空间：若线性空间 $X$ 的线性无关子集 $M$ 的基数不为有限数，且 $\operatorname{span}(M) = X$，则称 $X$ 为无限维线性空间，称 $n$ 维线性空间为有限维线性空间
    2. 依范数收敛：设 $\left\{\boldsymbol{x}_{n}\right\}$ 是 $X$ 中点列，如果存在 $\boldsymbol{x} \in X$ 使 ${\displaystyle \lim _{n \rightarrow \infty} \left\|\boldsymbol{x}_{n}-\boldsymbol{x}\right\| \rightarrow 0}$，则称 $\left\{\boldsymbol{x}_{n}\right\}$ 依范数收敛于 $\boldsymbol{x}$，记为 ${\displaystyle \lim _{n \rightarrow \infty} \boldsymbol{x}_{n}=\boldsymbol{x}}$ 或 $\boldsymbol{x}_{n} \rightarrow \boldsymbol{x}(n \rightarrow \infty)$
    3. 导出距离：令 $d(\boldsymbol{x}, \boldsymbol{y})=\|\boldsymbol{x}-\boldsymbol{y}\| \ (\boldsymbol{x}, \boldsymbol{y} \in X)$，则 $d$ 是 $X$ 上的距离且 $\left\{\boldsymbol{x}_{n}\right\}$ 依范数收敛于 $\boldsymbol{x}$ 等价于 $\left\{\boldsymbol{x}_{n}\right\}$ 按距离 $d$ 收敛于 $\boldsymbol{x}$，称 $d$ 为由范数 $\|\cdot\|$ 导出的距离
        1. 赋范线性空间是一种特殊的度量空间
        2. 对任意数 $\alpha$ 和向量 $\boldsymbol{x}, \boldsymbol{y} \in X$，有 $d(\boldsymbol{x}-\boldsymbol{y}, 0)=d(\boldsymbol{x}, \boldsymbol{y})$ 及 $d(\alpha \boldsymbol{x}, 0)=|\alpha| d(\boldsymbol{x}, 0)$
    4. 商空间：设 $X$ 是赋范线性空间，$V$ 是 $X$ 中的闭子空间．定义 $X$ 上的一个等价关系 $\sim$ 如下．设 $\boldsymbol{x}_{1}, \boldsymbol{x}_{2} \in X, \boldsymbol{x}_{1} \sim \boldsymbol{x}_{2}$ 表示 $\boldsymbol{x}_{1}-\boldsymbol{x}_{2} \in V$．对 $\boldsymbol{x} \in X$，以 $[\boldsymbol{x}]=\{\boldsymbol{y} \in X: \boldsymbol{x} \sim \boldsymbol{y}, \boldsymbol{y} \in X\}$ 表示 $\boldsymbol{x}$ 的等价类并记 $X / V=\{[\boldsymbol{x}]: \boldsymbol{x} \in X\}$．$X / V$ 称为 $X$ 以 $V$ 为模的商空间，在 $X / V$ 中定义加法和数乘为 $[\boldsymbol{x}]+[\boldsymbol{y}]=[\boldsymbol{x}+\boldsymbol{y}], \alpha[\boldsymbol{x}]=[\alpha \boldsymbol{x}]$，任意 $\boldsymbol{x}, \boldsymbol{y} \in X, \alpha$ 为数．定义 $X / V$ 上的非负函数 $\|[\boldsymbol{x}]\|=\inf \{\|\boldsymbol{x}+v\|: v \in V\}$，任意 $\boldsymbol{x} \in X$

2. 设 $\left(R_{1},\|\cdot\|_{1}\right)$ 和 $\left(R_{2},\|\cdot\|_{2}\right)$ 是两个赋范线性空间．如果存在从 $R_{1}$ 到 $R_{2}$ 上的映射 $\varphi$ 满足条件：对任意 $\boldsymbol{x}, \boldsymbol{y} \in R_{1}$ 及数 $\alpha, \beta$ 都有 $\varphi(\alpha \boldsymbol{x}+\beta \boldsymbol{y})=\alpha \varphi(\boldsymbol{x})+\beta \varphi(\boldsymbol{y})$ 以及正数 $c_{1}, c_{2}$，使得对一切 $\boldsymbol{x} \in R_{1}$ 都有 ${\displaystyle c_{1}\|\varphi(\boldsymbol{x})\|_{2} \leqslant\|\boldsymbol{x}\|_{1} \leqslant c_{2}\|\varphi(\boldsymbol{x})\|_{2}}$，则称 $\left(R_{1},\|\cdot\|_{1}\right)$ 和 $\left(R_{2},\|\cdot\|_{2}\right)$ 这两个赋范空间是拓扑同构的
    1. 设 $X$ 是 $n$ 维赋范线性空间，$\left\{e_{1}, e_{2}, \cdots, e_{n}\right\}$ 是 $X$ 的一组基，则存在常数 $M$ 和 $M^{\prime}$，使得对一切 ${\displaystyle \boldsymbol{x}=\sum_{k=1}^{n} \xi_{k} e_{k}}$ 成立
    2. 设在有限维线性空间上定义了两个范数 $\|\cdot\|_{1}$ 和 $\|\cdot\|_{2}$，则必存在常数 $M$ 和 $M^{\prime}$，使得对任意 $\boldsymbol{x} \in X$，成立不等式 $M\|\boldsymbol{x}\|_{1} \leqslant\|\boldsymbol{x}\|_{2} \leqslant M^{\prime}\|\boldsymbol{x}\|_{1}$
    3. 任何有限维赋范空间都和同维数 $\text{Euclid}$ 空间（或某个 $\mathbf{C}^{n}$）拓扑同构，同数域上的相同维数的有限维赋范空间彼此拓扑同构

## 1.2 Banach 空间
1. $\text{Banach}$ 空间：完备的赋范线性空间．$\text{Banach}$ 空间实例如下
    1. $\text{Euclid}$ 空间 $\mathbf R^n$：对每个 $\boldsymbol{x}=\left(\xi_{1}, \xi_{2}, \cdots, \xi_{n}\right) \in \mathbf{R}^{n}$，定义 $\|\boldsymbol{x}\|=\sqrt{\left|\xi_{1}\right|^{2}+\left|\xi_{2}\right|^{2}+\cdots+\left|\xi_{n}\right|^{2}}$
    2. $C[a, b]$ 空间：记闭空间 $[a, b]$ 上实值（或复值）连续函数全体为 $C[a, b]$．对每个 $\boldsymbol{x} \in C[a, b]$，定义 ${\displaystyle \|\boldsymbol{x}\| = \max_{a \leqslant t \leqslant b} |\boldsymbol{x}(t)|}$
    3. $l^{p}$ 空间：记 ${\displaystyle l^{p} = \left\{\boldsymbol{x}=\{\boldsymbol{x}_k\}: \sum_{k=1}^{\infty} \boldsymbol{x}_{k}^{p} < \infty\right\}}$．对每个 $\boldsymbol{x}=\left(\xi_{1}, \xi_{2}, \cdots\right) \in l^{\infty}$，定义 ${\displaystyle \|\boldsymbol{x}\|_{p}=\left(\sum_{i=1}^{\infty}\left|\xi_{i}\right|^{p}\right)^{\frac{1}{p}}}$
    4. $l^{\infty}$ 空间：记有界实（或复）数列全体为 $l^{\infty}$．对每个 $\boldsymbol{x}=\left(\xi_{1}, \xi_{2}, \cdots\right) \in l^{\infty}$，定义 ${\displaystyle \|\boldsymbol{x}\|=\sup \left|\xi_{j}\right|}$
    5. $L^{p}[a, b]$ 空间：设 $f(t)$ 是 $[a, b]$ 上复值可测函数，$p>0$．如果 $|f(\boldsymbol{x})|^{p}$ 是 $[a, b]$ 上 $L$ 可积函数，则称 $f(t)$ 是 $[a, b]$ 上 $p$ 方可积函数，记 $[a, b]$ 上 $p$ 方可积函数全体为 $L^{p}[a, b]$．在空间 $L^{p}[a, b]$ 中，将两个 $\text{a.e.}$相等的函数视为 $L^{p}[a, b]$ 中同一个元素而不加以区别．对每个 $f \in L^{p}[a, b]$，定义 ${\displaystyle \|f\|_{p}=\left(\int_{a}^{b}|f(t)|^{p} \mathrm{d} t\right)^{\frac{1}{p}}}$，则当 $p \geqslant 1$ 时，$L^{p}[a, b]$ 按 $\|\cdot\|_{p}$ 成为 $\text{Banach}$ 空间
        1. $\text{H}\mathrm{\ddot{o}}\text{lder}$ 不等式：设 $p>1, \dfrac{1}{p}+\dfrac{1}{q}=1, f \in L^{p}[a, b], g \in L^{q}[a, b]$，那么 $f(t) g(t)$ 在 $[a, b]$ 上 $L$ 可积，并且 ${\displaystyle \int_{a}^{b}|f(t) g(t)| \mathrm{d} t \leqslant\|f\|_{p}\|g\|_{q}}$
        2. $\text{Minkowski}$ 不等式：设 $p \geqslant 1, f, g \in L^{p}[a, b]$，那么 $f+g \in L^{p}[a, b]$，并且不等式 $\|f+g\|_{p} \leqslant\|f\|_{p}+\|g\|_{p}$ 成立
2. $\text{Hahn}-\text{Banach}$ 泛函延拓定理：设 $X$ 是实线性空间，$p(\boldsymbol{x})$ 是 $X$ 上次线性泛函．若 $f$ 是 $X$ 的子空间 $Z$ 上的实线性泛函，且被 $p(\boldsymbol{x})$ 控制，即满足 $f(\boldsymbol{x}) \leqslant p(\boldsymbol{x}), \boldsymbol{x} \in Z$，则存在 $X$ 上的实线性泛函 $\widetilde{f}$，使当 $\boldsymbol{x} \in Z$ 时，有 $\widetilde{f}(\boldsymbol{x})=f(\boldsymbol{x})$，并且在整个空间 $X$ 上仍被 $p(\boldsymbol{x})$ 控制 $\widetilde{f}(\boldsymbol{x}) \leqslant p(\boldsymbol{x}), \boldsymbol{x} \in X$
    1. 设 $X$ 是实或复的线性空间，$p(\boldsymbol{x})$ 是 $X$ 上次线性泛函，$f(\boldsymbol{x})$ 是定义在 $X$ 的子空间 $Z$ 上的实或复的线性泛函，且满足 $|f(\boldsymbol{x})| \leqslant p(\boldsymbol{x}), \boldsymbol{x} \in Z$，则存在 $X$ 上线性泛函 $\widetilde{f}$ 是 $f$ 的延拓，且满足 $|\widetilde{f}(\boldsymbol{x})| \leqslant p(\boldsymbol{x}), \boldsymbol{x} \in X$
    2. 设 $f$ 是赋范空间 $X$ 的子空间 $Z$ 上的连续线性泛函，则必存在 $X$ 上连续线性泛函 $\widetilde{f}$ 是 $f$ 的保范延拓，即当 $\boldsymbol{x} \in Z$ 时，有 $\widetilde{f}(\boldsymbol{x})=f(\boldsymbol{x})$ 且 $\|\widetilde{f}\|_{\boldsymbol{x}}=\|f\|_{z}$
    3. 设 $X$ 是赋范线性空间，$\boldsymbol{x}_{0} \in X, \boldsymbol{x}_{0} \neq 0$，则必存在 $X$ 上的有界线性泛函 $f(\boldsymbol{x})$，使得 $\|f\|=1$，并且 $f\left(\boldsymbol{x}_{0}\right)=\left\|\boldsymbol{x}_{0}\right\|$
3. $\text{Riesz}$ 表示定理：$C[a, b]$ 上每一个连续线性泛函 $F$ 都可以表示成为 ${\displaystyle F(f)=\int_{a}^{b} f(t) \mathrm{d} g(t), f \in C[a, b]}$，其中 $g(t)$ 是 $[a, b]$ 上有界变差函数，并且 $\|F\|=\underset{a}{\stackrel{b}{\large \textbf{V} \normalsize}}(g)$
4. $\text{Baire}$ 纲定理：若 $X$ 是非空的完备度量空间，则 $X$ 是第二纲集
    1. 疏朗集：设 $M$ 是度量空间 $X$ 中子集，若 $M$ 不在 $X$ 任何半径不为零的开球中稠密，则称 $M$ 是 $X$ 中的无处稠密集或疏朗集
    2. 第一纲集与第二纲集：设 $X$ 是度量空间，$M$ 是 $X$ 中子集，若 $M$ 是 $X$ 中有限个或可数个疏朗集的并集，则称 $M$ 是第一纲集，不是第一纲集的集称为第二纲集
5. 一致有界性定理：设 $X$ 是 $\text{Banach}$ 空间，$Y$ 是赋范空间，$\mathscr{B}(X, Y)$ 表示 $X$ 到 $Y$ 中的有界线性算子全体，$T_{n} \in \mathscr{B}(X, Y)$．若对每个 $\boldsymbol{x} \in X$，$\left\{\left\|T_{n} \boldsymbol{x}\right\|\right\}$ 有界，即 $\left\|T_{n} \boldsymbol{x}\right\| \leqslant C_{\boldsymbol{x}}$（其中 $C_{\boldsymbol{x}}$ 是一与 $\boldsymbol{x}$ 有关的实数），则 $\left\{T_{n}\right\}$ 一致有界，即存在与 $\boldsymbol{x}$ 无关的实数 $C$，使得对一切正整数 $n$，有 $\left\|T_{n}\right\| \leqslant C$．该定理也称作共鸣定理
    1. 设 $\left\{f_{n}\right\}$ 是 $\text{Banach}$ 空间 $X$ 上的一列泛函，如果 $\left\{f_{n}\right\}$ 在 $X$ 的每点 $\boldsymbol{x}$ 处有界，那么 $\left\{f_{n}\right\}$ 一致有界
    2. 存在一个实值的连续函数，其 $\text{Fourier}$ 级数在给定的 $t_{0}$ 处是发散的
6. 设 $T_{n}$ 是由 $\text{Banach}$ 空间 $X$ 到 $\text{Banach}$ 空间 $Y$ 中的有界线性算子序列，则 $\left\{T_{n}\right\}$ 强收敛的充要条件是 ① $\left\{\left\|T_{n}\right\|\right\}$ 有界；② 对 $X$ 中一稠密子集 $D$ 中的每个 $\boldsymbol{x}$，$\left\{T_{n} \boldsymbol{x}\right\}$ 都收敛
    1. 设 $X$ 是赋范线性空间，$\boldsymbol{x}_{n} \in X, n=1,2, \cdots$，如果存在 $\boldsymbol{x} \in X$，使得 ${\displaystyle \lim_{n \rightarrow \infty} \left\|\boldsymbol{x}_{n}-\boldsymbol{x}\right\| \rightarrow 0}$，则称点列 $\left\{\boldsymbol{x}_{n}\right\}$ 强收敛于 $\boldsymbol{x}$，如果对任意的 $f \in X^{\prime}$，都有 $f\left(\boldsymbol{x}_{n}\right) \rightarrow f(\boldsymbol{x})(n \rightarrow \infty)$，则称点列 $\left\{\boldsymbol{x}_{n}\right\}$ 弱收敛于 $\boldsymbol{x}$．强收敛必定弱收敛，反之则不一定成立
    2. 设 $X$ 是赋范线性空间，$X^{\prime}$ 是 $X$ 的共轭空间，泛函列 $f_{n} \in X^{\prime}(n=1,2, \cdots)$，如果存在 $f \in X^{\prime}$，使得
        1. $\left\|f_{n}-f\right\| \rightarrow 0 \ (n \rightarrow \infty)$，则称 $\left\{f_{n}\right\}$ 强收敛于 $f$
        2. 对任意 $\boldsymbol{x} \in X$，都有 $| f_{n}(\boldsymbol{x})-f(\boldsymbol{x})| \to 0 \ (n \rightarrow \infty)$，则称 $\left\{f_{n}\right\}$ 弱收敛于 $f$
        3. 若对任意的 $F \in\left(X^{\prime}\right)^{\prime}$，都有 $F\left(f_{n}\right) \rightarrow F(f) \ (n \rightarrow \infty)$，则称 $\left\{f_{n}\right\}$ 弱收敛于 $f$
    3. 设 $X$ 和 $Y$ 是两个赋范线性空间，$\mathscr{B}(X, Y)$ 表示 $X$ 到 $Y$ 中的有界线性算子全体所成的空间，$T_{n} \in \mathscr{B}(X, Y)$，若存在 $T \in \mathscr{B}(X, Y)$，使得
        1. $\left\|T_{n}-T\right\| \rightarrow 0 \ (n \rightarrow \infty)$，则称算子列 $\left\{T_{n}\right\}$ 一致收敛于 $T$
        2. 对任意的 $\boldsymbol{x} \in X,\left\|T_{n} \boldsymbol{x}-T \boldsymbol{x}\right\| \rightarrow 0 \ (n \rightarrow \infty)$，则称 $\left\{T_{n}\right\}$ 强收敛于 $T$
        3. 对任意 $\boldsymbol{x} \in X$ 和任意的 $f \in Y^{\prime}, f\left(T_{n} \boldsymbol{x}\right) \rightarrow f(T \boldsymbol{x}) \ (n \rightarrow \infty)$，则称 $\left\{T_{n}\right\}$ 弱收敛于 $T$
7. 逆算子定理：设 $X$ 和 $Y$ 都是 $\text{Banach}$ 空间，若 $T$ 是从 $X$ 到 $Y$ 上的一对一有界线性算子，则 $T$ 的逆算子 $T^{-1}$ 也是有界线性算子
    1. 开映射定理：设 $X$ 和 $Y$ 是两个度量空间，$f$ 是 $X$ 到 $Y$ 的映射，若 $f$ 将 $X$ 中的开集映射成 $Y$ 中的开集，则称 $f$ 是开映射．若 $X$ 和 $Y$ 是两个 $\text{Banach}$ 空间，$T$ 是 $X$ 到 $Y$ 上的有界线性映射，则 $T$ 是开映射
    2. 设在线性空间 $X$ 上有两个范数 $\|\cdot\|_{1}$ 和 $\|\cdot\|_{2}$，如果 $X$ 关于这两个范数都成为 $\text{Banach}$ 空间，而且范数 $\|\cdot\|_{2}$ 关于范数 $\|\cdot\|_{1}$ 连续，那么范数 $\|\cdot\|_{1}$ 也必关于 $\|\cdot\|_{2}$ 连续
8. 闭图像定理：设 $X$ 和 $Y$ 是 $\text{Banach}$ 空间，$T$ 是 $\mathscr{D}(T) \subseteq X$ 到 $Y$ 中闭线性算子．如果 $\mathscr{D}(T)$ 是闭的，则 $T$ 是有界算子
    1. 设 $X$ 和 $Y$ 是赋范空间，$T$ 是 $X$ 的子空间 $\mathscr{D}(T)$ 到 $Y$ 的线性算子，称 $X \times Y$ 的集合 $G(T)=\{(\boldsymbol{x}, \boldsymbol{y}): \boldsymbol{x} \in \mathscr{D}(T), \boldsymbol{y}=T \boldsymbol{x}\}$ 为算子 $T$ 的图像
    2. 在 $X \times Y$ 中，定义 $\|(\boldsymbol{x}, \boldsymbol{y})\|=\|\boldsymbol{x}\|+\|\boldsymbol{y}\|$，易知 $X \times Y$ 按 $\|(\boldsymbol{x}, \boldsymbol{y})\|$ 成为赋范线性空间．如果 $G(T)$ 是 $X \times Y$ 中的闭集，则称 $T$ 是闭算子

## 1.3 Hilbert 空间
### 1.3.1 规范正交系
1. $\text{Hilbert}$ 空间：设 $X$ 是 $\text{Euclid}$ 线性空间，对于任意 $\boldsymbol{x} \in X$，令 $\|\boldsymbol{x}\| = \sqrt{\left<\boldsymbol{x}, \boldsymbol{x}\right>}$，称 $\|\cdot\|$ 为由内积导出的范数．若 $X$ 按范数 $\|\cdot\|$ 完备，则称 $X$ 为 $\text{Hilbert}$ 空间
    1. 正交投影：设 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间，那么有 $X=Y \ \dot{+} \ Y^{\perp}$．于是当 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间时，对每个 $\boldsymbol{x} \in X$，存在唯一 $\boldsymbol{y} \in Y$ 及 $z \in Y^{\perp}$ 使得 $\boldsymbol{x}=\boldsymbol{y} \oplus z$，称 $\boldsymbol{y}$ 为 $\boldsymbol{x}$ 在空间 $Y$ 上的正交投影，简称为投影
    2. 投影算子：定义 $X$ 到 $Y$ 上的映射 $P \boldsymbol{x}=\boldsymbol{y}$ 对任意 $\boldsymbol{x} \in X$ 成立，其中 $\boldsymbol{y}$ 是 $\boldsymbol{x}$ 在 $Y$ 上的投影，称 $P$ 为 $X$ 到 $Y$ 上的投影算子
        1. $P$ 是 $X$ 到 $Y$ 上的有界线性算子，且当 $Y \neq\{0\}$ 时，$\|P\|=1$
        2. $P X=Y, P Y=Y, P Y^{\perp}=\{0\}$
        3. $P^{2}=P$，其中 $P^{2}=P P$
    3. 设 $Y$ 是 $\text{Hilbert}$ 空间 $X$ 的闭子空间，则有 $Y=Y^{\perp \perp}$
    4. 设 $M$ 是 $\text{Hilbert}$ 空间 $X$ 中非空子集，则 $\operatorname{span} M$ 在 $X$ 中稠密的充要条件为 $M^{\perp}=\{0\}$
2. 规范正交系：设 $M$ 是 $\text{Euclid}$ 线性空间 $X$ 的一个不含零的子集，若 $M$ 中向量两两正交，则称 $M$ 为 $X$ 中的正交系，又若 $M$ 中向量的范数都为 $1$，则称 $M$ 为 $X$ 中规范正交系
    1. 部分和：设 $X$ 是赋范线性空间，$\boldsymbol{x}_{i}$ 是 $X$ 中一列向量，$\alpha_{1}, \alpha_{2}, \cdots$ 是一列数，作形式级数 ${\displaystyle \sum_{i=1}^{\infty} \alpha_{i} \boldsymbol{x}_{i}}$．称 ${\displaystyle S_{n}=\sum_{i=1}^{n} \alpha_{i} \boldsymbol{x}_{i}}$ 为级数的 $n$ 项部分和，若存在 $\boldsymbol{x} \in X$，使 $S_{n} \rightarrow \boldsymbol{x}(n \rightarrow \infty)$，则称级数收敛，并称 $\boldsymbol{x}$ 为这个级数的和，记为 ${\displaystyle \boldsymbol{x}=\sum_{i=1}^{\infty} \alpha_{i} \boldsymbol{x}_{i}}$
    2. $\text{Fourier}$ 系数：设 $M$ 为 $\text{Euclid}$ 线性空间 $X$ 中的规范正交系，$\boldsymbol{x} \in X$，称数集 $\{\langle \boldsymbol{x}, e\rangle: e \in M\}$ 为向量 $\boldsymbol{x}$ 关于规范正交系 $M$ 的 $\text{Fourier}$ 系数集，而称 $\langle \boldsymbol{x}, e\rangle$ 为 $\boldsymbol{x}$ 关于 $e$ 的 $\text{Fourier}$ 系数
        1. 设 $X$ 是 $\text{Euclid}$ 线性空间，$M$ 是 $X$ 中规范正交系，任取 $M$ 中有限个向量 $e_{1}, e_{2}, \cdots$, $e_{n}$，那么有
            - ${\displaystyle \left\|\boldsymbol{x}-\sum_{i=1}^{n}\left\langle \boldsymbol{x}, e_{i}\right\rangle e_{i}\right\|^{2}=\|\boldsymbol{x}\|^{2}-\sum_{i=1}^{n}\left|\left\langle \boldsymbol{x}, e_{i}\right\rangle\right|^{2} \geqslant 0}$
            - ${\displaystyle \left\|\boldsymbol{x}-\sum_{i=1}^{n} \alpha_{i} e_{i}\right\| \geqslant\left\|\boldsymbol{x}-\sum_{i=1}^{n}\left\langle \boldsymbol{x}, e_{i}\right\rangle e_{i}\right\|}$，其中 $\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}$ 为任意 $n$ 个数
        2. $\text{Bessel}$ 不等式：设 $\left\{e_{k}\right\}$ 是 $\text{Euclid}$ 线性空间 $X$ 中至多可数的规范正交系，则对每个 $\boldsymbol{x} \in X$，有 ${\displaystyle \sum_{i=1}^{\infty}\left|\left\langle \boldsymbol{x}, e_{i}\right\rangle\right|^{2} \leqslant\|\boldsymbol{x}\|^{2}}$．若 $\text{Bessel}$ 不等式中等号成立，则称此等式为 $\text{Parseval}$ 等式
        3. 设 $\left\{e_{k}\right\}$ 为 $\text{Hilbert}$ 空间 $X$ 中的有限或可数规范正交系
            - 级数 ${\displaystyle \sum_{i=1}^{\infty} \alpha_{i} e_{i}}$ 收敛的充要条件为级数 ${\displaystyle \sum_{i=1}^{\infty}\left|\alpha_{i}\right|^{2}}$ 收敛
            - 若 ${\displaystyle \boldsymbol{x}=\sum_{i=1}^{\infty} \alpha_{i} e_{i}}$，则 $\alpha_{i}=\left\langle \boldsymbol{x}, e_{i}\right\rangle, i=1,2, \cdots$，故 ${\displaystyle \boldsymbol{x}=\sum_{i=1}^{\infty}\left\langle \boldsymbol{x}, e_{i}\right\rangle e_{i}}$
            - 对任何 $\boldsymbol{x} \in X$，级数 ${\displaystyle \sum_{i=1}^{\infty}\left\langle \boldsymbol{x}, e_{i}\right\rangle e_{i}}$ 收敛
    3. 完全规范正交系：设 $M$ 是 $\text{Euclid}$ 线性空间 $X$ 中的规范正交系，如果 $\overline{\operatorname{span} M}=X$，则称 $M$ 是 $X$ 中的完全规范正交系
        1. 设 $M$ 是 $\text{Hilbert}$ 空间 $X$ 中规范正交系，那么 $M$ 完全的充要条件为 $M^{\perp}= \{0\}$
        2. $M$ 是 $\text{Hilbert}$ 空间中完全规范正交系的充要条件为对所有 $\boldsymbol{x} \in X$，成立 $\text{Parseval}$ 等式
        3. $\text{Gram}-\text{Schmidt}$ 正交化：设 $\left\{\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \cdots\right\}$ 是 $\text{Euclid}$ 线性空间 $X$ 中有限或可数个线性无关向量，那么必有 $X$ 中规范正交系 $\left\{e_{1}, e_{2} \cdots\right\}$，使对任何正整数 $n$，有 ${\displaystyle \operatorname{span}\left\{e_{1}, e_{2}, \cdots, e_{n}\right\}=\operatorname{span}\left\{\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \cdots, \boldsymbol{x}_{n}\right\}}$
        4. 每个非零 $\text{Hilbert}$ 空间必有完全规范正交系
    4. 设 $X$ 和 $\widetilde{X}$ 是两个 $\text{Euclid}$ 线性空间，若存在 $X$ 到 $\widetilde{X}$ 上的映射 $T$，使对任何 $\boldsymbol{x}, \boldsymbol{y} \in X$ 及数 $\alpha, \beta$，满足

        $$
        \begin{aligned}
        T(\alpha \boldsymbol{x}+\beta \boldsymbol{y})&=\alpha T \boldsymbol{x}+\beta T \boldsymbol{y} \\
        \langle T \boldsymbol{x}, T \boldsymbol{y}\rangle&=\langle \boldsymbol{x}, \boldsymbol{y}\rangle
        \end{aligned}
        $$

        则称 $X$ 和 $\widetilde{X}$ 同构，并称 $T$ 为 $X$ 到 $\widetilde{X}$ 上的同构映射

        1. 两个 $\text{Hilbert}$ 空间 $X$ 与 $\widetilde{X}$ 同构的充要条件是 $X$ 与 $\widetilde{X}$ 具有相同的 $\text{Hilbert}$ 维数
        2. 任何可分 $\text{Hilbert}$ 空间必和某个 $\mathbf{R}^{n}\left(\mathbf{C}^{n}\right)$ 或 $l^{2}$ 同构

### 1.3.2 Hilbert 空间的泛函
1. $\text{Riesz}$ 定理：设 $X$ 是 $\text{Hilbert}$ 空间，$f$ 是 $X$ 上连续线性泛函，那么存在唯一的 $z \in X$，使对每个 $\boldsymbol{x} \in X$，有 $f(\boldsymbol{x})=\langle \boldsymbol{x}, z\rangle$ 且 $\|f\|=\|z\|$
2. 对每个 $\boldsymbol{y} \in X$，令 $T \boldsymbol{y}=f_{\boldsymbol{y}}$，其中 $f_{\boldsymbol{y}}$ 为 $X$ 上连续线性泛函 $f_{\boldsymbol{y}}(\boldsymbol{x})=\langle \boldsymbol{x}, \boldsymbol{y}\rangle, \boldsymbol{x} \in X$，$T$ 是 $X$ 到 $X^{\prime}$ 上的映射，其中 $X^{\prime}$ 表示 $X$ 上连续线性泛函全体所成的 $\text{Banach}$ 空间．称满足 $T(\alpha \boldsymbol{x}+\beta \boldsymbol{y})=\overline{\alpha} T \boldsymbol{x}+\overline{\beta} T \boldsymbol{y}$ 的映射 $T$ 是复共轭线性映射
    1. 映射 $T \boldsymbol{y}=f_{\boldsymbol{y}}$ 是 $X$ 到 $X^{\prime}$ 上保持范数不变的复共轭线性映射，称为复共轭同构映射
    2. 若存在 $\text{Hilbert}$ 空间 $X$ 到 $\widetilde{X}$ 上的复共轭同构映射，则称 $X$ 与 $\widetilde{X}$ 是复共轭同构，并不加以区别视为同一，写成 $X=\widetilde{X}$
    3. 当 $X$ 是 $\text{Hilbert}$ 空间时，$X=X^{\prime}$，即 $X$ 是息共轭的
3. 设 $X$ 和 $Y$ 是两个 $\text{Hilbert}$ 空间，$A \in \mathscr{B}(X, Y)$，那么存在唯一的 $A^{*} \in \mathscr{B}(Y$, $X)$，使得对任何 $\boldsymbol{x} \in X$ 及 $\boldsymbol{y} \in Y$，有 $\langle A \boldsymbol{x}, \boldsymbol{y}\rangle=\left\langle \boldsymbol{x}, A^{*} \boldsymbol{y}\right\rangle$ 且 $\left\|A^{*}\right\|=\|A\|$．称算子 $A^{*}$ 为 $A$ 的 $\text{Hilbert}$ 共轭算子，或简称为共轭算子
    1. $(A+B)^{*}=A^{*}+B^{*}$
    2. $(\alpha A)^{*}=\alpha A^{*}$
    3. $\left(A^{*}\right)^{*}=A$
    4. $\left\|A^{*} A\right\|=\left\|A A^{*}\right\|=\|A\|^{2}$，由此可知 $A^{*} A=0$ 等价于 $A=0$
    5. 当 $X=Y$ 时，$(A B)^{*}=B^{*} A^{*}$

### 1.3.3 Hilbert 空间的算子
1. 自伴算子：设 $T$ 为 $\text{Hilbert}$ 空间 $X$ 到 $X$ 中的有界线性算子，若 $T=T^{*}$，则称 $T$ 为 $X$ 上的自伴算子
    1. 设 $T$ 为复 $\text{Hilbert}$ 空间 $X$ 上有界线性算子，则 $T$ 为自伴算子的充要条件为对一切 $\boldsymbol{x} \in X$，$\langle T \boldsymbol{x}, \boldsymbol{x}\rangle$ 是实数
    2. 设 $T_{1}$ 和 $T_{2}$ 是 $\text{Hilbert}$ 空间 $X$ 上两个自伴算子，则 $T_{1} T_{2}$ 自伴的充要条件为 $T_{1} T_{2}=T_{2} T_{1}$
    3. 设 $\left\{T_{n}\right\}$ 是 $\text{Hilbert}$ 空间 $X$ 上一列自伴算子，并且 ${\displaystyle \lim _{n \rightarrow \infty} T_{n}=T}$，那么 $T$ 仍为 $X$ 上自伴算子
2. 酉算子：设 $T$ 为 $\text{Hilbert}$ 空间 $X$ 到 $X$ 中的有界线性算子，若 $T$ 是 $X$ 到 $X$ 上的一对一映射，且 $T^{*}=T^{-1}$，则称 $T$ 为 $X$ 上的酉算子
    1. 设 $U$ 及 $V$ 是 $\text{Hilbert}$ 空间 $X$ 上两个酉算子
        1. $U$ 是保范算子，即对任何 $\boldsymbol{x} \in X$，成立 $\|U \boldsymbol{x}\|=\|\boldsymbol{x}\|$
        2. 当 $X \neq\{0\}$ 时，$\|U\|=1$
        3. $U^{-1}$ 是酉算子
        4. $U V$ 是酉算子
        5. 若 $U_{n}, n=1,2, \cdots$ 是 $X$ 上一列酉算子，且 $\left\{U_{n}\right\}$ 收敛于有界算子 $A$，则 $A$ 也为酉算子
    2. 设 $T$ 为复 $\text{Hilbert}$ 空间 $X$ 上有界线性算子，那么 $T$ 是酉算子的充要条件为 $T$ 是映射到上的保范算子
3. 正规算子：设 $T$ 为 $\text{Hilbert}$ 空间 $X$ 到 $X$ 中的有界线性算子，若 $T T^{*}=T^{*} T$，则称 $T$ 为 $X$ 上的正规算子
    1. 设 $T$ 是复 $\text{Hilbert}$ 空间 $X$ 上有界线性算子，$A+\mathrm{i} B$ 为 $T$ 的笛卡儿分解，则 $T$ 为正规算子的充要条件为 $A B=B A$
    2. 设 $T$ 为复 $\text{Hilbert}$ 空间 $X$ 上有界线性算子，则 $T$ 为正规算子的充要条件为对任何 $\boldsymbol{x} \in X$，有 $\left\|T^{*} \boldsymbol{x}\right\|=\|T \boldsymbol{x}\|$
