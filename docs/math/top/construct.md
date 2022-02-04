# 2 构造空间

## 2.1 子空间
1. 度量子空间：设 $(X, \rho)$ 是一个度量空间，$Y\subset X$，因此 $Y\times Y\subset X\times X$．显然 $\rho|_{Y\times Y}: Y\times Y\to R$ 是 $Y$ 的一个度量，称之为由 $X$ 的度量诱导的，$(Y, \rho)$ 为 $(X, \rho)$ 的一个度量子空间
    1. 子空间的例子
        1. 实数空间 $R$ 的区间 $(a, b), [a, b]$ 等
        2. $n+1$ 维欧氏空间 $R^{n+1}$ 中的 $n$ 维单位球面 $S^n=\left\{x=(x_1, x_2, \cdots, x_{n+1})\in R^{n+1}|\sum_{i=1}^{n+1}x_i^2=1\right\}$ 以及 $n$ 维单位开球体 $D^n=\left\{x=(x_1, x_2, \cdots, x_n)\in R^n|\sum_{i=1}^n x_i^2<1\right\}$、$n$ 维单位闭球体 $E^n=\left\{x=(x_1, x_2, \cdots, x_n)\in R^n|\sum_{i=1}^n x_i^2\leqslant 1\right\}$
        3. $n+1$ 维欧氏空间 $R^{n+1}$ 中的 $n$ 维开、闭方体 $(0, 1)^n, [0, 1]^n$
    2. 设 $Y$ 是度量空间 $X$ 的一个度量子空间，则 $Y$ 的子集 $U$ 是 $Y$ 中的一个开集当且仅当存在一个 $X$ 中的开集 $V$ 使得 $U=V\cap Y$
2. 拓扑子空间：设 $Y$ 是拓扑空间 $(X, \mathscr T)$ 的一个子集，则 $\mathscr T|_Y$ 在 $Y$ 上的限制 $\mathscr T|_Y=\{T\cap Y|T\in \mathscr T\}$ 称为（相对于 $X$ 的拓扑而言的）相对拓扑；拓扑空间 $(Y, \mathscr T|_Y)$ 称为拓扑空间的拓扑子空间
    1. 若 $Y$ 是拓扑空间 $(X, \mathscr T)$ 的一个子集，则集族 $\mathscr T|_Y$ 是 $Y$ 的一个拓扑
    2. 设 $(Y, \eta)$ 是度量空间 $(X, \rho)$ 的一个度量子空间，则由 $Y$ 诱导的拓扑空间 $(Y, \mathscr T_\eta)$ 是由 $X$ 诱导的拓扑空间 $(X, \mathscr T_\rho)$ 的拓扑子空间
    3. 设 $X, Y, Z$ 都是拓扑空间，如果 $Y$ 是 $X$ 的一个子空间，$Z$ 是 $Y$ 的一个子空间，则 $Z$ 是 $X$ 的子空间
3. 拓扑空间与子空间的关系
    1. 设 $Y$ 是拓扑空间 $X$ 的一个子空间，$y\in Y$
        1. 记 $\mathscr T$ 与 $\widetilde{\mathscr T}$ 为 $X$ 与 $Y$ 的拓扑，则 $\widetilde{\mathscr T} =\mathscr T|_Y$
        2. 记 $\mathscr F$ 与 $\widetilde{\mathscr F}$ 为 $X$ 与 $Y$ 的全体闭集构成的族，则 $\widetilde{\mathscr F} =\mathscr F|_Y$
        3. 记 $\mathscr U_y$ 与 $\widetilde{\mathscr U}_y$ 为点 $y$ 在 $X$ 与 $Y$ 中的邻域系，则 $\widetilde{\mathscr U}_y =\mathscr U_y|_Y$
    2. 设 $Y$ 是拓扑空间 $X$ 的一个子空间，$A\subset Y$
        1. $A$ 在 $Y$ 中的导集是 $A$ 在 $X$ 中的导集与 $Y$ 的交
        2. $A$ 在 $Y$ 中的闭包是 $A$ 在 $X$ 中的闭包与 $Y$ 的交
    3. 设 $Y$ 是拓扑空间 $X$ 的一个子空间，$y\in Y$
        1. 如果 $\mathscr B$ 是拓扑空间 $X$ 的一个基，则 $\mathscr B|_Y$ 是子空间 $Y$ 的一个基
        2. 如果 $\mathscr V_Y$ 是点 $y$ 在拓扑空间 $X$ 中的一个邻域基，则 $\mathscr V_y|_Y$ 是点 $y$ 在子空间 $Y$ 中的一个邻域基
4. 设 $X, Y$ 是两个拓扑空间，如果映射 $f: X\to Y$ 是一个单射且是一个 $X$ 到 $f(X)$ 的同胚，则称此映射为一个嵌入；如果存在一个嵌入 $f: X\to Y$，则称拓扑空间 $X$ 可嵌入拓扑空间 $Y$

## 2.2 积空间
### 2.2.1 有限积空间
1. 度量积空间：设 $(X_1, \rho), (X_2, \rho_2), \cdots, (X_n, \rho_n)$ 是 $n\geqslant 1$ 个度量空间，令 $X=X_1 \times X_2 \times \cdots X_n$．定义 $\rho: X \times X\to R$ 使得 $\forall x=(x_1, x_2, \cdots, x_n), y=(y_1, y_2, \cdots, y_n)\in X: \rho(x, y)=\sqrt{\sum_{i=1}^n \rho_i(x_i, y_i)^2}$
    1. 设 $(X_1, \rho_1), (X_2, \rho_2), \cdots, (X_n, \rho_n)$ 是 $n\geqslant 1$ 个度量空间，$(X, \rho)$ 是它们的积空间．又设 $\mathscr T_i$ 和 $\mathscr T$ 分别是由度量 $\rho_i$ 和 $\rho$ 诱导出来的 $X_i\ (i=1, 2, \cdots, n)$ 和 $X$ 的拓扑，则 $X$ 的子集族 $\mathscr B=\{U_1 \times U_2\times \cdots \times U_n| U_i\in \mathscr  T_i, i=1, 2, \cdots, n\}$ 是 $X$ 的拓扑 $\mathscr T$ 的一个基
    2. 设 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 是 $n\geqslant 1$ 个拓扑空间，则 $X= X_1\times X_2\times \cdots \times X_n$ 的以 $X$ 子集族 $\mathscr B=\{U_1\times U_2\times \cdots \times U_n|U_i\in \mathscr  T_i\}$ 为它的一个基
2. 设 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 是 $n\geqslant 1$ 个拓扑空间，则 $X=X_1\times X_2\times \cdots \times X_n$ 的以子集族 $\mathscr B=\{U_1\times U_2\times \cdots \times U_n|U_i\in \mathscr  T_i\}$ 为它的一个基的唯一拓扑 $\mathscr T$ 称为拓扑 $\mathscr T_1, \mathscr T_2, \cdots, \mathscr T_n$ 的积拓扑，拓扑空间 $(X, \mathscr T)$ 称为拓扑空间 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 的拓扑空间
    1. 设 $X=X_1\times X_2\times \cdots\times X_n$ 是 $n\geqslant 1$ 个度量空间 $X_1, X_2, \cdots, X_n$ 的度量积空间，它们诱导的拓扑空间分别是 $(X, \mathscr T)$ 和 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$，则 $(X, \mathscr T)$ 是 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 的拓扑积空间
    2. 设 $X=X_1\times X_2\times \cdots\times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间，对于每一个 $i=1, 2, \cdots, n$ 拓扑空间 $X_i$ 有一个基 $\mathscr B_i$，则 $X$ 的子集族 $\widetilde B=\{B_1\times B_2\times \cdots \times B_n|B_i\in \mathscr B_i, i=1, 2, \cdots, n\}$ 是拓扑空间 $X$ 的一个基
    3. 设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间．令 $\mathscr T$ 为 $X$ 的拓扑，$\mathscr T_i$ 为 $X_i$ 的拓扑，$i=1, 2, \cdots, n$，则 $X$ 以它的子集族 $\mathscr S=\{p_i^{-1}(U_i)|U_i\in \mathscr T_i, i=1, 2, \cdots, n\}$ 为它的一个子基．其中对于每一个 $i$，映射 $p_i: X\to X_i$ 是 $\mathrm{Descartes}$ 积 $X$ 到它的第 $i$ 个坐标集 $X_i$ 的投射
3. 开映射与闭映射：设 $X, Y$ 是两个拓扑空间，映射 $f: X\to Y$ 称为一个开映射（闭映射），如果 $X$ 中的任何一个开集（闭集）$U$，像集 $f(U)$ 是 $Y$ 中的一个开集（闭集）
    1. 设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间，又设 $Y$ 也是一个拓扑空间，则映射 $f: Y\to X$ 连续当且仅当对于每一个 $i=1, 2, \cdots, n$，复合映射 $p_i\circ f: Y\to X_i$ 连续，其中 $p_i: X\to X_i$ 是积空间 $X$ 对于第 $i$ 个坐标空间 $X_i$ 的投射
    2. 积拓扑是使从积空间到每一个坐标空间的投射都连续的最小拓扑，即设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间，$\mathscr T$ 是 $X$ 的积拓扑．又设 $\widetilde{\mathscr T}$ 是 $X$ 的某一个拓扑满足条件：对于 $X$ 的拓扑 $\widetilde{\mathscr T}$ 而言，从 $X$ 到它的第 $i$ 个坐标空间 $X_i$ 的投射 $p_i: X\to X_i$ 是连续映射，$i=1, 2, \cdots, n$，则 $\widetilde{\mathscr T}\subset \mathscr T$
    3. 设 $X_1, X_2, \cdots, X_n$ 是 $n\geqslant 2$ 个拓扑空间，则积空间 $X_1\times X_2\times \cdots \times X_n$ 同胚于积空间 $(X_1\times X_2\times \cdots \times X_{n-1})\times X_n$

### 2.2.2 一般积空间
1. 点式收敛拓扑：如果一个集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 中所有的 $X_\gamma$，则称 $\{X_\gamma\}_{\gamma \in \Gamma}$ 是一个拓扑空间族或一族拓扑空间
    1. 设 $\{X_\gamma\}_{\gamma \in \Gamma}$ 是一个拓扑空间族，容易验证 $\mathrm{Descartes}$ 积 $\prod_{\gamma \in \Gamma} X_\gamma$ 的子集族 $\mathscr S=\{p^{-1}_\gamma(U_\gamma)|U_\gamma$ 是 $ $X_\gamma$ 的一个开集 $,\gamma\in \Gamma\}$ 是它的某一个拓扑 $\mathscr T$ 的一个子基, 其中 $p_\gamma$ 是 $\mathrm{Descartes}$ 积 $\prod_{\gamma \in \Gamma} X_\gamma$ 的第 $\gamma \in \Gamma$ 个投射
    2. 拓扑 $\mathscr T$ 称为 $\mathrm{Descartes}$ 积 $\prod_{\gamma \in \Gamma} X_\gamma$ 的积拓扑（点式收敛拓扑），拓扑空间 $(\prod_{\gamma \in \Gamma} X_\gamma, \mathscr T)$ 称为拓扑空间族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 的积空间，拓扑空间 $X_\gamma$ 称为积空间 $\prod_{\gamma \in \Gamma} X_\gamma$ 的第 $\gamma$ 个坐标空间
2. 点式收敛拓扑的性质：设 $\{X_\gamma\}_{\gamma \in \Gamma}$ 是一族拓扑空间
    1. 对于每一个 $\alpha \in \Gamma$，积空间 $\prod_{\gamma \in \Gamma} X_\gamma$ 的第 $\alpha$ 个投射 $p_\alpha: \prod_{\gamma \in \Gamma} X_\gamma \to X_\alpha$ 是一个连续开映射
    2. 设 $Y$ 是一个拓扑空间，则映射 $f: Y\to \prod_{\gamma \in \Gamma} X_\gamma$ 是一个连续映射当且仅当对于每一个 $\alpha \in \Gamma$，映射 $p_\alpha\circ f: Y\to X_\alpha$ 是连续的，其中 $p_\alpha$ 是积空间 $\prod_{\gamma \in \Gamma} X_\gamma$ 的第 $\alpha$ 个投影
    3. 令 $\mathscr T$ 为 $\prod_{\gamma \in \Gamma} X_\gamma$ 的积拓扑．如果 $\widetilde{\mathscr T}$ 是笛卡尔积 $\prod_{\gamma \in \Gamma} X_\gamma$ 的一个拓扑使得对于任何 $\alpha \in \Gamma$，$\prod_{\gamma \in \Gamma} X_\gamma$ 的第 $\alpha$ 个投射 $p_\alpha: \prod_{\gamma \in \Gamma} X_\gamma \to X_\alpha$ 都是连续的，则 $\mathscr T\subset \widetilde{\mathscr T}$
    4. 积空间 $\prod_{\gamma \in \Gamma} X_\gamma$ 中的序列 $\{x^{(i)}\}_{i\in Z_+}$ 收敛于点 $x\in \prod_{\gamma \in \Gamma} X_\gamma$ 的充要条件是对于每一个 $\alpha \in \Gamma$，拓扑空间 $X_\alpha$ 中的序列 $\{p_\alpha(x^{(i)})\}_{i\in Z_+}$ 收敛于 $p_\alpha(x)\in X_\alpha$

### 2.2.3 映射空间
1. 赋值映射：对于任意 $x\in X$，令 $e_x: {}^XY\to Y$ 为 $Y$ 的第 $x$ 个投射，则对于任何 $f\in {}^XY$， $e_x(f)=f(x)$ 恰是映射 $f$ 在点 $x$ 处的像．将投射 $e_x$ 称为 ${}^XY$ 在点 $x\in X$ 处的赋值映射 
2. 映射空间与连续映射空间
    1. 将 ${}^XY=\prod_{x\in X}Y$ 的积拓扑 $\mathscr T$ 称为 ${}^XY$ 的点式收敛拓扑，将拓扑空间 $({}^XY, \mathscr T)$ 称为从集合 $X$ 到集合 $Y$ 的映射空间（点式收敛拓扑）．映射空间是一类特别的积空间，因此关于积空间的一般结论全部适用
    2. 连续映射空间：设 $X$ 和 $Y$ 是两个拓扑空间，记 $\mathscr C(X, Y)$ 为从 $X$ 到 $Y$ 的所有连续映射构成的集合，因此 $\mathscr C(X, Y)\subset {}^XY$．$\mathscr C(X, Y)$ 作为映射空间 ${}^XY$的子空间称为从拓扑空间 $X$ 到 $Y$ 的连续映射空间（点式收敛拓扑），并且此时 $\mathscr C(X, Y)$ 的拓扑也称作点式收敛拓扑
    3. 设 $X$ 是一个 $\mathrm{Tychonoff}$ 空间，则从 $X$ 到实数空间 $R$ 的所有连续映射构成的集合 $\mathscr C(X, R)$ 是映射空间 ${}^XR$ （点式收敛拓扑）中的一个稠密子集
3. 一致收敛度量与一致收敛拓扑
    1. 一致收敛度量：设 $X$ 是一个集合，$(Y, \rho)$ 是一个度量空间．记 ${}^XY$ 为从 $X$ 到 $Y$ 的所有映射的集合，定义 $\widetilde{\rho}: {}^XY\times {}^XY \to R$ 使得对于任何 $f, g\in {}^XY$ 有 $\widetilde{\rho}(f, g) = \left\{\begin{aligned}&1,\ \exists x\in X: \rho(f(x), g(x))\geqslant 1 \\& \sup\{\rho(f(x), g(x)) | x\in X\},\ \mathrm{otherwise}\end{aligned}\right.$，则容易验证 $\widetilde{\rho}$ 是 ${}^XY$ 的一个度量，称之为 ${}^XY$ 的一致收敛度量；度量空间 $({}^XY, \widetilde{\rho})$ 称为映射空间（一致收敛度量）
    2. 一致收敛拓扑：由一致收敛度量 $\widetilde{\rho}$ 诱导的 ${}^XY$ 的拓扑 $\mathscr T_{\widetilde{\rho}}$ 称为 ${}^XY$ 的一致收敛度量，拓扑空间 $({}^XY, \mathscr T_{\widetilde{\rho}})$ 称为连续映射空间（一致收敛拓扑），此时其拓扑也称为一致收敛拓扑
4. 一致收敛：设 $X$ 是一个集合，$(Y, \rho)$ 是一个度量空间，对于映射集合 ${}^XY$ 中的一个序列 $\{f_i\}_{i\in Z_+}$，若对于任意给定的实数 $\varepsilon>0$，存在整数 $N>0$ 使得当 $i>N$ 时，$\rho(f_i(x), f(x))<\varepsilon$ 对于任何 $x\in X$ 成立，则称此序列一致收敛于映射 $f\in {}^XY$
    1. 设 $X$ 是一个集合，$(Y, \rho)$ 是一个度量空间，在度量空间 ${}^XY$（一致收敛度量）中的一个序列 $\{f_i\}_{i\in Z_+}$ 收敛于 $f\in {}^XY$ 当且仅当序列 $\{f_i\}_{i\in Z_+}$ 一致收敛于 $f\in {}^XY$
    2. 设 $X$ 是一个集合，$(Y, \rho)$ 是一个度量空间．如果度量空间 $(Y, \rho)$ 是一个完备的度量空间，则映射空间 ${}^XY$（一致收敛度量）也是一个完备度量空间
    3. 设 $X$ 是一个集合，$(Y, \rho)$ 是一个度量空间．则从 $X$ 到实数空间 $R$ 的所有连续映射构成的集合 $\mathscr C(X, R)$ 是樱花色空间 ${}^XY$（一致收敛拓扑）中的一个闭集．因此当 $(Y, \rho)$ 是一个完备度量空间时，度量空间 $\mathscr C(X, Y)$（一致收敛度量）也是一个完备的度量空间
5. 紧$-$开拓扑：设 $X, Y$ 是两个集合，对于任意 $E\subset X$ 和 $B\subset Y$，记 $W(E, B)=\{f\in {}^XY|f(E)\subset B\}$
    1. $\mathscr E-$开拓扑： 设 $X$ 是一个集合，$Y$ 是一个拓扑空间，$\mathscr E$ 是 $X$ 的一个子集族，则全体从 $X$ 到 $Y$ 的映射构成的族 ${}^XY$ 的子集族 $\mathscr{S_E}=\{W(E, U)\subset {}^XY|E\in \mathscr E, U$ 是 $Y$ 的一个开集 $\}$ 的并是 ${}^XY$．因此 ${}^XY$ 有唯一的拓扑 $\mathscr{T_E}$ 以 $\mathscr{S_E}$ 为它的一个子基．${}^XY$ 的拓扑 $\mathscr{T_E}$ 称为 ${}^XY$ 的 $\mathscr E-$开拓扑；拓扑空间 $({}^XY, \mathscr{T_E})$ 称为映射空间（$\mathscr E-$开拓扑）

        !!! note "点$-$开拓扑"
            如果记 $\mathscr P$ 为 $X$ 中所有单点子集勾构成的族，那么 ${}^XY$ 的点式收敛拓扑恰好是 $\mathscr{T_P}$．因此点式收敛拓扑也被称作点$-$开拓扑

    2. 映射空间紧$-$开拓扑：设 $X, Y$ 是两个拓扑空间，$\mathscr C$ 是 $X$ 的全体紧子集构成的集族，则从 $X$ 到 $Y$ 的全体映射构成的集合 ${}^XY$ 的 $\mathscr C-$开拓扑 $\mathscr{T_C}$ 称为 ${}^XY$ 的紧$-$开拓扑，拓扑空间 $({}^XY, \mathscr{T_C})$ 称为映射空间（紧$-$开拓扑）
    3. 连续映射空间紧$-$开拓扑：从 $X$ 到 $Y$ 的全体连续映射构成的集合 $\mathscr C(X, Y)$ 作为映射空间 ${}^XY$（紧$-$开拓扑）的子空间称为连续映射空间（紧$-$开拓扑），且 ${}^XY$ 的紧$-$开拓扑在 $\mathscr C(X, Y)$ 在 $\mathscr C(X, Y)$ 上的限制也叫做 $\mathscr C(X, Y)$ 的紧$-$开拓扑

6. 紧$-$开拓扑的性质
    1. 设 $X, Y$ 都是两个拓扑空间，记 $\mathscr{T_P, T_C}$ 分别是从 $X$ 到 $Y$ 的全体映射构成的集合 ${}^XY$ 的点式收敛拓扑和紧$-$开拓扑，则 $\mathscr{T_P\subset T_C}$．因此对于每一个 $x\in X$，复制映射 $e_x: {}^XY\to Y$ 对于 ${}^XY$ 的紧$-$开拓扑而言是一个连续映射
    2. 设 $X$ 是一个拓扑空间，$Y\subset X$．如果 $\mathscr S$ 是 $X$ 的一个子基，且对于任何一个 $y\in Y$ 和 $\mathscr S$ 中任何一个包含 $y$ 中的元素 $s$，存在 $\mathscr S$ 中的一个包含 $y$ 的元素 $T$ 使得 $T$ 在拓扑空间 $X$ 中的闭包 $\overline T\subset S$，则 $Y$ 作为 $X$ 的子空间是一个正则空间
    3. 设 $X, Y$ 都是拓扑空间，如果 $Y$ 是一个正则空间，则连续映射空间 $\mathscr C(X, Y)$（紧$-$开拓扑）也是一个正则空间
    4. 设 $X$ 是一个紧空间，$(Y,\rho)$ 是一个度量空间，则连续映射空间 $\mathscr C(X, Y)$ 的一致收敛拓扑和紧$-$开拓扑相同

## 2.3 商空间
1. 商拓扑：设 $(X, \mathscr T)$ 是一个拓扑空间，$Y$ 是一个集合，$f: X\to Y$ 是一个满射．容易验证 $Y$ 的子集族 $\mathscr T_1=\{U\subset Y|f^{-1}(U)\in \mathscr T\}$ 是 $Y$ 的一个拓扑．称 $\mathscr T_1$ 为 $Y$ 的相对于满射 $f$ 而言的商拓扑
    1. $Y$ 的一个拓扑 $\widetilde{\mathscr T}$ 是 $Y$ 的商拓扑当且仅当在拓扑空间 $(Y, \widetilde{\mathscr T})$ 中 $F\subset Y$ 是一个闭集 $\leftrightarrow f^{-1}(F)$ 是 $X$ 中的一个闭集
    2. 设 $(X, \mathscr T)$ 是一个拓扑空间，$Y$ 是一个集合，$f: X\to Y$ 是一个满射，则商拓扑是使映射 $f$ 连续的最大拓扑
        1. 如果 $\mathscr T_1$ 是 $Y$ 的商拓扑，则 $f:X\to Y$ 是一个连续拓扑
        2. 如果 $\widetilde{\mathscr T_1}$ 是 $Y$ 的一个拓扑，使得对于这个拓扑 $\widetilde{\mathscr T_1}$ 而言映射 $f$ 是连续的，则 $\widetilde{\mathscr T_1}\subset \mathscr T_1$
2. 商映射：设 $X, Y$ 是两个拓扑空间，如果映射 $f: X\to Y$ 是一个满射且 $Y$ 的拓扑是对于映射 $f$ 而言的商拓扑，则称 $f$ 为一个商映射
    1. 设 $X, Y, Z$ 都是拓扑空间，且 $f: X\to Y$ 是一个商映射，则映射 $g: Y\to Z$ 连续当且仅当映射 $g\circ f: X\to Z$ 连续
    2. 设 $X, Y$ 是两个拓扑空间，如果映射 $f: X\to Y$ 是一个连续的满射，且是一个开映射（闭映射），则 $Y$ 的拓扑是相对于满射 $f$ 而言的商拓扑
3. 商空间：设 $(X, \mathscr T)$ 是一个拓扑空间，$R$ 是 $X$ 中的一个等价关系．商集 $X/R$ 相对于自然投射 $p: X\to X/R$ 而言的商拓扑 $\mathscr T_R$ 称为 $X/R$ 的（相对于等价关系 $R$ 而言的）商拓扑，拓扑空间 $(X/R, \mathscr T_R)$ 称为拓扑空间 $(X, \mathscr T)$ 的（相对于等价关系 $R$ 而言的）商空间
4. 商空间例举
    1. 圆周：在单位闭区间 $I=[0, 1]$ 中黏合两个端点得到的商空间：给定等价条件 $\sim=\{(x, y)\in I\times I|x=y\vee \{x, y\}=\{0, 1\}\}$ 得到的商空间 $[0, 1]/\sim$，它与单位圆周 $S^1$ 同胚
    2. 圆柱面：在单位正方形 $I^2=[0, 1]^2$ 中给定一个等价关系 $\sim=\{(x, y)\in(I\times I)^2|x=y\vee \{x_1, y_1\}=\{0, 1\}, x_2=y_2, x=(x_1, x_2), y=(y_1, y_2)\}$ 得到的商空间 $I^2/\sim$
    3. $\mathrm{Mobius}$ 带：将单位正方形 $I^2=[0, 1]^2$ 的一对竖直的对边上的每一对点 $(0, y)$ 和 $(1, 1-y)$ 粘合得到的商空间，它与 $\mathrm{Mobius}$ 带同胚，且不同胚与圆柱面
    4. $\mathrm{Klein}$ 瓶：在单位正方形 $I^2=[0, 1]^2$ 中将它的一堆水平的对边上具有相同的第一个坐标的点 $(x, 0)$ 和 $(x, 1)$ 粘合，同时将其一对竖边上的每一对点 $(0, y)$ 和 $(1, 1-y)$ 粘合，得到的商空间与 $\mathrm{Klein}$ 瓶同胚，这个商空间不可能画在 $R^3$ 中
