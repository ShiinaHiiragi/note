# 2 算子与泛函

## 2.1 有界线性算子
1. 线性算子：设 $X$ 和 $Y$ 是两个同为实（或复）的线性空间，$\mathscr{D}$ 是 $X$ 的线性子空间，$T$ 为 $\mathscr{D}$ 到 $Y$ 中的映射，如果对任何 $\boldsymbol{x}, \boldsymbol{y} \in \mathscr{D}$ 及数 $\alpha$，有

    $$
    \begin{aligned}
    T(\boldsymbol{x}+\boldsymbol{y})&=T \boldsymbol{x}+T \boldsymbol{y} \\
    T(\alpha \boldsymbol{x})&=\alpha T \boldsymbol{x}
    \end{aligned}
    $$

    则称 $T$ 为 $\mathscr{D}$ 到 $Y$ 中的线性算子，其中 $\mathscr{D}$ 称为 $T$ 的定义域，记为 $\mathscr{D}(T)$，$T \mathscr{D}$ 称为 $T$ 的值域，记为 $\mathscr{B}(T)$．算子 $T$ 的零空间定义为 $\mathscr{N}(T)=\{\boldsymbol{x}: T \boldsymbol{x}=0, \boldsymbol{x} \in \mathscr{D}(T)\}$

    1. 设 $X$ 是线性空间，$\alpha$ 是一给定的数，对任意 $\boldsymbol{x} \in X$，令 $T \boldsymbol{x}=\alpha \boldsymbol{x}$，显然 $T$ 是 $X$ 到 $X$ 中的线性算子，称为相似算子．特别当 $\alpha=1$ 时，称为恒等算子，记为 $I_{X}$ 或 $I$，当 $\alpha=0$ 时，称为零算子，记为 $O$
    2. 对任意 $\boldsymbol{x} \in C[a, b]$，令 $(T \boldsymbol{x})(t)=t \boldsymbol{x}(t)$，易知 $T$ 是线性算子，称为乘法算子
    3. 设 $X=C[0,1]$，$K(t, \tau)$ 是矩形域 $[0,1] \times[0,1]$ 上二元连续函数，对每个 $\boldsymbol{x} \in C[0,1]$，令 ${\displaystyle (T \boldsymbol{x})(t)=\int_{0}^{1} K(t, \tau) \boldsymbol{x}(\tau) \mathrm{d} \tau}$．易知 $T$ 是 $C[0,1]$ 到 $C[0,1]$ 中的线性算子，这个算子称为积分算子，其中函数 $K(t, \tau)$ 称为 $T$ 的核

2. 有界线性算子：设 $X$ 和 $Y$ 是两个赋范线性空间，$T$ 是 $X$ 的线性子空间 $\mathscr{D}(T)$ 到 $Y$ 中的线性算子，如果存在常数 $c$，使对所有 $\boldsymbol{x} \in \mathscr{D}(T)$，有 $\|T \boldsymbol{x}\| \leqslant c\|\boldsymbol{x}\|$，则称 $T$ 是 $\mathscr{D}(T)$ 到 $Y$ 中的有界线性算子，当 $\mathscr{D}(T)=X$ 时，称 $T$ 为 $X$ 到 $Y$ 中的有界线性算子，简称为有界算子，不满足条件的算子称为无界算子
    1. 设 $T$ 是赋范线性空间 $X$ 到赋范线性空间 $Y$ 中的线性算子，则 $T$ 为有界算子的充要条件为 $T$ 是 $X$ 上的连续算子
    2. $T$ 为赋范线性空间 $X$ 的子空间 $\mathscr{D}(T)$ 到赋范线性空间 $Y$ 的线性算子，称 ${\displaystyle \|T\|=\sup_{\boldsymbol{x} \neq 0, \ \boldsymbol{x} \in \mathscr{C}(T)} \dfrac{\|T \boldsymbol{x}\|}{\|\boldsymbol{x}\|}}$ 为 $T$ 在 $\mathscr{D}(T)$ 上的范数
3. 设 $X$ 和 $Y$ 是两个赋范线性空间，$\mathscr{B}(X, Y)$ 表示由 $X$ 到 $Y$ 中有界线性算子全体，并以 $\mathscr{B}(X)$ 表示 $\mathscr{B}(X, X)$．当 $A$ 和 $B$ 属于 $\mathscr{B}(X, Y), \alpha$ 是所讨论数域中的数时，对任意 $\boldsymbol{x} \in X$，令

    $$
    \begin{aligned}
    (A+B) \boldsymbol{x}&=A \boldsymbol{x}+B \boldsymbol{x} \\
    (\alpha A) \boldsymbol{x}&=\alpha A \boldsymbol{x}
    \end{aligned}
    $$

    则 $\mathscr{B}(X, Y)$ 按上述线性运算及算子范数成为赋范线性空间

    1. 当 $Y$ 是 $\text{Banach}$ 空间时，$\mathscr{B}(X, Y)$ 也是 $\text{Banach}$ 空间
    2. 设 $A \in \mathscr{B}(Z, Y), B \in \mathscr{B}(X, Z)$，令 $(A B) \boldsymbol{x}=A(B \boldsymbol{x}), \boldsymbol{x} \in X$，显然 $A B \in \mathscr{B}(X, Y)$ 是线性算子，称为 $B$ 与 $A$ 的乘积
    3. 设 $X$ 是赋范线性空间，若在 $X$ 中定义了两个向量的乘积，并且满足 $\|\boldsymbol{x} \boldsymbol{y}\| \leqslant\|\boldsymbol{x}\|\|\boldsymbol{y}\|, \boldsymbol{x}, \boldsymbol{y} \in X$，则称 $X$ 是赋范代数，当 $X$ 完备时，称 $X$ 为 $\text{Banach}$ 代数

4. 有限秩算子：设 $X, Y$ 是 $\text{Banach}$ 空间，$T \in \mathscr{B}(X, Y)$．如果 $\mathscr{B}(T)$ 是有限维的子空间，则称 $T$ 是有限秩算子．记 $\mathscr{F}(X, Y)$ 为 $\mathscr{B}(X, Y)$ 中有限秩算子全体并记 $\mathscr{A}(X)=\mathscr{F} (X, X)$
    1. 设 $X$ 是 $\text{Banach}$ 空间，$S, T \in \mathscr{F}(X), A \in \mathscr{B}(X)$．则 $\mathscr{F}(X)$ 是 $\mathscr{B}(X)$ 的一个理想
    2. 设 $X$ 是赋范线性空间，$V$ 是 $X$ 中的闭子空间．则 $(X / V,\|\cdot\|)$ 是赋范线性空间；进一步地，如果 $X$ 是 $\text{Banach}$ 空间，则 $X / V$ 也是 $\text{Banach}$ 空间
    3. 设 $X$ 为 $\text{Banach}$ 空间，$T \in \mathscr{F} (X)$，则 $\mathscr{R}(I+T)$ 是 $X$ 中的闭子空间

## 2.2 连续线性泛函
1. 线性泛函：设 $T$ 为 $\mathscr{D}$ 到 $Y$ 中的线性算子，当 $T$ 取值于实（或复）数域时，称 $T$ 为实（或复）线性泛函
    1. 设 $X$ 是赋范线性空间，$f$ 是 $X$ 上线性泛函，那么 $f$ 是 $X$ 上连续泛函的充要条件为 $f$ 的零空间 $\mathscr{N}(f)$ 是 $X$ 中的闭子空间
    2. 设 $X$ 是赋范线性空间，$f$ 是 $X$ 上线性泛函，那么 $f$ 是 $X$ 上连续泛函的充要条件为 $f$ 的零空间 $\mathscr{N}(f)$ 是 $X$ 中的闭子空间
2. 共轭代数：设 $X$ 是赋范线性空间，令 $X^{\prime}$ 表示 $X$ 上连续线性泛函全体所成的空间，称为 $X$ 的共轭空间
    1. 设 $X$ 和 $Y$ 是两个赋范线性空间，$T$ 是 $X$ 到 $Y$ 中的线性算子且对所有 $\boldsymbol{x} \in X$ 有 $\|T \boldsymbol{x}\|=\|\boldsymbol{x}\|$，则称 $T$ 是 $X$ 到 $Y$ 中的保距算子，如果 $T$ 又是映射到 $Y$ 上的，则称 $T$ 是同构映射，此时称 $X$ 与 $Y$ 同构
    2. 任何赋范线性空间的共轭空间是 $\text{Banach}$ 空间
    3. 设 $X, Y$ 是两个赋范线性空间，$X^{\prime}$ 和 $Y^{\prime}$ 分别是 $X$ 和 $Y$ 的共轭空间，$T$ 是 $X$ 到 $Y$ 中的有界线性算子
        1. 对任意 $g \in Y^{\prime}$，定义 $X$ 上的泛函 $f(\boldsymbol{x})=g(T \boldsymbol{x})$，则可以建立 $g \mapsto f$ 的对应，即由 $T$ 派生出一个从 $Y^{\prime}$ 到 $X^{\prime}$ 的算子 $T^{\times}: T^{\times} g=f$．称 $T^{\times}$ 为 $T$ 的共轭算子
        2. 有界线性算子 $T$ 的共轭算子 $T^{\times}$ 也是有界线性算子，且 $\left\|T^{\times}\right\|=\|T\|$
3. 次线性泛函：设 $X$ 是赋范线性空间，子空间 $Z\subseteq X$，$f$ 是 $Z$ 上连续线性泛函，令 ${\displaystyle \|f\|_{Z}=\sup_{\boldsymbol{x} \in Z, \ \|\boldsymbol{x}\|=1}|f(\boldsymbol{x})|, p(\boldsymbol{x})=\|f\|_{\boldsymbol{z}}\|\boldsymbol{x}\|}$，则 $p(\boldsymbol{x})$ 是在整个 $X$ 上有定义的泛函，并且满足
    1. $p(\alpha \boldsymbol{x})=|\alpha| p(\boldsymbol{x}), \boldsymbol{x} \in X, \alpha$ 为数
    2. $p(\boldsymbol{x}+\boldsymbol{y}) \leqslant p(\boldsymbol{x})+p(\boldsymbol{y}), \boldsymbol{x}, \boldsymbol{y} \in X$

    称 $X$ 上满足上述两个条件的泛函为次线性泛函

## 2.3 谱论
### 2.3.1 谱的概念与分类
1. 正则算子：设 $X$ 是赋范线性空间，$T \in \mathscr{B}(X)$．若 $T^{-1}$ 存在且是定义在整个 $X$ 上的有界线性算子，则称 $T$ 是 $X$ 上的正则算子
    1. $T$ 是正则算子的充要条件是存在有界算子 $B \in \mathscr{B}(X)$，使得 $B T=T B=I$，其中 $I$ 是恒等算子
    2. 若 $A, B$ 是正则算子，则 $T=A B$ 也是正则算子，且 $(A B)^{-1}=B^{-1} A^{-1}$
2. 谱的概念：设 $T \in \mathscr{B}(X)$，$\lambda$ 是一复数．若 $(T-\lambda I)$ 正则，则称 $\lambda$ 是算子 $T$ 的正则点，$T$ 的正则点全体称为 $T$ 的正则集或豫解集，记为 $\rho(T)$．不是正则点的复数称为 $T$ 的谱点，其全体构成 $T$ 的谱，记为 $\sigma(T)$
3. 谱的分类：设 $\lambda \in \sigma(T)$，即 $T-\lambda I$ 不存在有界逆算子，可分三种情况
    1. 如果 $T-\lambda I$ 不是一对一，此时存在 $\boldsymbol{x} \in X, \boldsymbol{x} \neq 0$，使 $(T-\lambda I) \boldsymbol{x}=0$，即 $T \boldsymbol{x}=\lambda \boldsymbol{x}$，这时称 $\lambda$ 是算子 $T$ 的特征值，$\boldsymbol{x}$ 称为相应于特征值 $\lambda$ 的特征向量，$T$ 的特征值全体称为 $T$ 的点谱，记为 $\sigma_{p}(T)$
    2. $(T-\lambda I)$ 是一对一的，但值域不充满全空间
    3. $(T-\lambda I)$ 是 $X$ 到 $X$ 上的一对一算子，但 $(T-\lambda I)^{-1}$ 不是有界的

### 2.3.2 有界线性算子的谱
设 $X$ 为 $\text{Banach}$ 空间

1. 设 $T \in \mathscr{B}(X),\|T\|<1$，则 $1 \in \rho(T)$．这时 $I-T$ 有定义在全空间上的有界逆算子

    $$
    (I-T)^{-1}=\sum_{k=0}^{\infty} T^{k}=I+T+T^{2}+\cdots+T^{k}+\cdots
    $$

    这里的级数按 $\mathscr{B}(X)$ 中范数收敛

2. 谱集的闭性：设 $T \in \mathscr{B}(X)$，则 $\rho(T)$ 是开集，$\sigma(T)$ 是闭集
3. 设 $T \in \mathscr{B}(X)$，则 $\sigma(T)$ 是 $\mathbf{C}$ 中的非空有界闭集，且当 $\lambda \in \sigma(T)$ 时，有 $|\lambda| \leqslant\|T\|$

### 2.3.3 全连续算子的谱
1. 全连续算子：设 $X$ 和 $Y$ 是赋范线性空间，$T$ 是 $X$ 到 $Y$ 的线性算子．如果对 $X$ 的任何有界子集 $M$，$T M$ 都是 $Y$ 中相对紧集，则称 $T$ 为全连续算子，亦称紧算子
    1. 设 $X$ 是度量空间，$M$ 是 $X$ 中子集．若 $\overline{M}$ 是 $X$ 中紧集，则称 $M$ 为 $X$ 中的相对紧集
    2. 设 $\left\{T_{n}\right\}$ 是 $X$ 到 $Y$ 上的全连续算子列，$Y$ 是 $\text{Banach}$ 空间，而且 $\left\|T-T_{n}\right\| \rightarrow 0 \ (n \rightarrow \infty)$，则 $T$ 也是全连续算子
2. 设 $\left\{e_{k}\right\}$ 为 $H$ 的任意一组规范正交基，定义 $\mathscr{J}(H)$ 上的线性泛函 $\tau$ 为 ${\displaystyle \tau(T)=\sum_{k=1}^{\infty}\left\langle T e_{k}, e_{k}\right\rangle}$，任意 $T \in \mathscr{J}(H)$．当 $H=\mathrm{C}^{n}$，$A=\begin{bmatrix} a_{i j} \\ \end{bmatrix}_{n \times n}$ 为 $H$ 上的线性算子时，${\displaystyle \tau(A)=\sum_{k=1}^{n} a_{k k}}$ 是 $A$ 的迹．因而当 $H$ 是可分无限维时，也称 $\tau$ 为 $\mathscr{J}(H)$ 上的迹
    1. 上述的迹 $\tau$ 具有下列性质
        1. 设 $V$ 是 $H$ 中的 $n$ 维子空间，$P$ 是 $H$ 到 $V$ 的正交投影算子，则 $\tau(P)=n$
        2. 设 $T \in \mathscr{Z}(H), B \in \mathscr{B}(H)$，则 $\tau(T B)=\tau(B T)$
    2. 设 $A$ 是 $H$ 上的全连续算子，则对任意 $\varepsilon>0$，存在 $A_{\varepsilon} \in \mathscr{J}(H)$ 使得 $\left\|A-A_{\varepsilon}\right\|<\varepsilon$
    3. 设 $A$ 是全连续算子，$I$ 为 $H$ 上的单位算子
        1. $\mathscr{R}(I+A)$ 闭且 $\operatorname{dim} \mathscr{N}(I+A)<\infty, \operatorname{dim} \mathscr{N}\left(I+A^{*}\right)<\infty$
        2. $\mathscr{N}(I+A)=\{0\} \rightarrow \mathscr{N}\left(I+A^{*}\right)=\{0\}$
3. $\text{Riesz}-\text{Schauder}$ 定理：设 $A$ 是 $H$ 上的全连续算子
    1. $0 \in \sigma(A)$
    2. 若 $\lambda \in \sigma(A) -\{0\}$，则 $\lambda \in \sigma_{p}(A)$ 且 $\operatorname{dim} \mathscr{N}(A-\lambda I)<\infty$
    3. 若 $\left\{\lambda_{n}\right\} \subseteq \sigma_{p}(A)$ 是无限互不相同的点列，则 ${\displaystyle \lim _{n \rightarrow \infty} \lambda_{n}=0}$
4. $\text{Hilbert}$ 定理：设 $A$ 是 $H$ 上的自伴全连续算子，$\left\{\mu_{j}\right\},\left\{\varphi_{j}\right\}$ 及 $V$ 如下所述．则对任意 $\boldsymbol{x} \in H$ 有

    $$
    V^{\perp}=\mathscr{N}(A) \ ; \ A \boldsymbol{x}=\sum_{j} \mu_{j}\left\langle \boldsymbol{x}, \varphi_{j}\right\rangle \varphi_{j}
    $$

    1. 设 $A$ 是 $H$ 上的自伴全连续算子
        1. 存在 $e \in H,\|e\|=1$，使得 $\|A e\|=\|A\|$
        2. $\|A\|$ 或 $-\|A\|$ 是 $A$ 的点谱
    2. 设 $A$ 是 $H$ 上自伴全连续算子
        1. $\sigma(A) \subseteq \mathbf{R}$
        2. 对 $\lambda, \mu \in \sigma_{p}(A)$ 且 $\mu \neq \lambda$，有 $\mathscr{N}(A-\lambda I) \perp \mathscr{N}(A-\mu I)$

### 2.3.4 算子与指标
1. $\text{Fredholm}$ 算子：设 $T \in \mathscr{B}(H)$．如果 $T$ 满足下列条件
    1. $\mathscr{R}(T)$ 在 $H$ 中闭
    2. $\operatorname{dim} \mathscr{N}(T)<\infty, \operatorname{dim} \mathscr{N}\left(T^{*}\right)<\infty$

    则称 $T$ 为 $\text{Fredholm}$ 算子，以 $\operatorname{Fred}(H)$ 表示 $\mathscr{B}(H)$ 中 $\text{Fredholm}$ 算子全体．设 $T \in \mathscr{B}(H)$

    1. 若 $T \in \operatorname{Fred}(H)$，则存在 $S \in \mathscr{B}(H)$ 使 $S T=I-P, T S=I-Q$，其中 $P: H \rightarrow \mathscr{N}(T), Q: H \rightarrow \mathscr{N}\left(T^{*}\right)$ 是投影算子
    2. 若存在 $B_{1}, B_{2} \in \mathscr{B}(H)$ 及全连续算子 $K_{1}, K_{2}: H \rightarrow H$ 使得 $B_{1} T=I+K_{1}, T B_{2}=I+ K_{2}$，则 $T \in \operatorname{Fred}(H)$

2. $\text{Fredholm}$ 指标：设 $T \in \operatorname{Fred}(H)$，$\operatorname{dim} \mathscr{N}(T)-\operatorname{dim} \mathscr{N}\left(T^{*}\right)$ 称为 $T$ 的 $\text{Fredholm}$ 指标，记为 $\operatorname{ind}(T)$
    1. 设 $T \in \operatorname{Fred}(H), \tau$ 为 $\mathscr{J}(H)$ 上的迹．若存在 $B \in \mathscr{B}(H)$ 及 $F_{1}, F_{2} \in \mathscr{J}(H)$ 使得 $B T=I+F_{1}, T B=I+F_{2}$．则 $\operatorname{ind}(T)=\tau(T B-B T)$
    2. 设 $S, T \in \operatorname{Fred}(H), G, K \in \mathscr{B}(H)$，其中 $G$ 是可逆算子，$K$ 是全连续算子
        1. $S T \in \operatorname{Fred}(H)$ 且 $\operatorname{ind}(S T)=\operatorname{ind}(S)+\operatorname{ind}(T)$
        2. $G+K \in \operatorname{Fred}(H)$ 且 $\operatorname{ind}(G+K)=0$
        3. 存在 $\delta>0$，使得对任意 $C \in U(T, \delta)$ 有 $C \in \operatorname{Fred}(H)$ 且 $\operatorname{ind}(T)=\operatorname{ind}(C)$
    3. 设 $T \in \operatorname{Fred}(H)$，$K$ 是 $H$ 上全连续算子．则 $T+K \in \operatorname{Fred}(H)$ 且 $\operatorname{ind}(T+K)=\operatorname{ind}(T)$
