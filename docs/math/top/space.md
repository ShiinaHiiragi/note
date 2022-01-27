# 1 拓扑空间

## 1.1 度量空间与拓扑空间
### 1.1.1 度量空间
1. 度量: 设 $X$ 是一个集合, $\rho: X\times X\to R$. 若对于 $\forall x, y, z\in X$ 有以下性质成立, 则称 $\rho$ 是集合 $X$ 的一个度量
    1. 正定性: $\rho(x, y)\geqslant 0 \wedge \rho(x, y)=0 \leftrightarrow x=y$
    2. 对称性: $\rho(x, y) = \rho(y, x)$
    3. 三角不等式: $\rho(x, z) \leqslant \rho(x, y) + \rho(y, z)$
2. 度量空间: 若 $\rho$ 是集合 $X$ 的一个度量, 则偶对 $(X, \rho)$ 是一个度量空间, 即 $X$ 是一个对于度量 $\rho$ 而言的度量空间
    1. 对于任意两点 $x, y\in X$, 称 $\rho(x, y)$ 为点 $x$ 到点 $y$ 的一个距离
    2. 度量空间的实例
        1. 实数空间: 对于实数集合 $R$, 定义 $\rho: R\times R\to R$ 有 $\forall x, y\in R: \rho(x, y)=|x-y|$, 这个度量称之为 $R$ 的通常度量
        2. $n$ 维 $\mathrm{Euclid}$ 空间: 对于 $R^n$. 定义 $\rho: R^n\times R^n \to R$ 有 $\forall x, y\in R: \rho(x, y)=\sqrt{\sum_{i=1}^n(x_i-y_i)^2}$, 这个度量称为 $R^n$ 的通常度量
        3. $\mathrm{Hilbert}$ 空间: 对于 $H=\left\{x=(x_1, x_2, \cdots)|\sum_{i=1}^\infty x_i^2<\infty, x_i\in R, i\in Z_+\right\}$, 定义 $\rho: H\times H\to R$ 有 $\forall x=(x_1, x_2, \cdots), y=(y_1, y_2, \cdots)\in H: \rho(x, y)=\sqrt{\sum_{i=1}^\infty (x_i-y_i)^2}$. 容易验证这是良定义, 这个度量称之为 $H$ 的通常度量
        4. 离散度量: 设 $(X, \rho)$ 是一个度量空间, 如果 $\forall x\in X\ \exists \delta_x>0: \rho(x, y)>\delta_x$ 对于任何 $y\in X, y\neq x$ 成立, 则称 $(X, \rho)$ 是离散的, 或称 $\rho$ 是 $X$ 的一个离散度量
3. 球形邻域: 设 $(X, \rho)$ 是一个度量空间, $x\in X$, 对于任意给定的实数 $\varepsilon >0$, 集合 $B(x, \varepsilon) = B_\varepsilon(x) = \{y\in X|\rho(x, y)<\varepsilon\}$ 为一个以 $x$ 为中心, 以 $\varepsilon$ 为半径的球形领域, 或称为 $x$ 的一个 $\varepsilon-$邻域
    1. 每一点 $x\in X$ 至少有一个球形领域, 并且点 $x$ 属于它的每一个球形邻域
    2. 对于点 $x\in X$ 的任意两个球形邻域, 存在 $x$ 的一个球形邻域同时包含于两者
    3. 如果 $y\in X$ 属于 $x\in X$ 的某一个球形邻域, 则 $y$ 有一个球形邻域包含于 $x$ 的那个球形邻域
4. 开集: 设 $A$ 是度量空间 $X$ 的一个子集, 若 $\forall a\in A\ \exists \varepsilon >0: B(a, \varepsilon)\subset A$, 则称 $A$ 是度量空间 $X$ 中的一个开集
    1. 实数空间中的所有开区间都是开集, 但是所有的闭区间与半开半闭区间都不是开集
    2. 度量空间 $X$ 中的开集具有以下性质
        1. 集合 $X$ 与 $\varnothing$ 都是开集
        2. 任意两个开集的交是一个开集
        3. 任意一个开集族的并是一个开集
5. 邻域: 设 $x$ 是度量空间 $X$ 的一个点, $U$ 是 $X$ 的一个子集, 如果存在一个开集 $V$ 满足条件 $x\in V\subset U$, 则称 $U$ 是点 $x$ 的一个邻域
    
    !!! note "邻域定义的等价陈述"
        设 $x$ 是度量空间 $X$ 的一个点, 则 $X$ 的子集 $U$ 是 $x$ 的一个邻域的充要条件是 $x$ 有某一个球形邻域包含于 $U$

6. 连续映射
    1. 连续: 设 $X$ 和 $Y$ 是两个度量空间, $f: X\to Y, x_0\in X$. 如果对于 $f(x_0)$ 的任何一个球形邻域 $B(f(x_0), \varepsilon)$ 存在 $x_0$ 的某一个球形邻域 $B(x_0, \delta)$ 使得 $f(B(x_0, \delta))\subset B(f(x_0), \varepsilon)$, 则称映射在点 $x_0$ 处是连续的
    2. 连续映射: 如果映射 $f$ 在 $X$ 的每一个点 $x\in X$ 处连续, 则称 $f$ 是一个连续映射
    3. 设 $X$ 和 $Y$ 是两个度量空间, $f: X\to Y, x_0\in X$
        1. $f$ 在点 $x_0$ 处连续 $\leftrightarrow f(x_0)$ 的每一个邻域的原像是 $x_0$ 的一个邻域
        2. $f$ 是连续的 $\leftrightarrow Y$ 中的每一个开集的原像是 $X$ 中的一个开集

### 1.1.2 拓扑空间
1. 拓扑: 设 $X$ 是一个集合, $\mathscr T\subset \mathcal P(X)$, 如果 $\mathscr T$ 满足以下条件, 则称 $\mathscr T$ 是 $X$ 的一个拓扑
    1. $X, \varnothing\in \mathscr T$
    2. 若 $A, B\in \mathscr T$, 则 $A\cap B\in \mathscr T$
    3. 若 $\mathscr T_1\subset \mathscr T$, 则 $\bigcup_{A\in \mathscr T_1}A\in \mathscr T$
2. 拓扑空间: 若 $\mathscr T$ 是集合 $X$ 的一个拓扑, 则称偶对 $(X, \mathscr T)$ 是一个拓扑空间, 集合 $X$ 是一个相对于拓扑 $\mathscr T$ 而言的拓扑空间
    1. 当 $\mathscr T$ 已约定时, 称集合 $X$ 是一个拓扑空间, $\mathscr T$ 的每一个元素都叫做拓扑空间 $(X, \mathscr T)$ 的一个开集
    2. 设 $X, \rho$ 是一个度量空间, 令 $\mathscr T_\rho$ 为由 $X$ 中所有开集构成的集族, 则 $(X, \mathscr T_\rho)$ 是 $X$ 的一个拓扑, 称 $\mathscr T_\rho$ 为 $X$ 由度量 $\rho$ 诱导的拓扑

        !!! note "可度量化空间"
            设 $(X, \mathscr T)$ 是一个拓扑空间, 如果存在 $X$ 的一个度量 $\rho$ 使得拓扑 $\mathscr T$ 即是由度量 $\rho$ 诱导的拓扑 $\mathscr T_\rho$, 则称 $(X, \mathscr T)$ 是一个可度量化空间

    3. 设 $X$ 为一个集合, 容易验证 $\varnothing$ 与 $\mathcal P(X)$ 都是 $X$ 的拓扑, 分别称之为平庸拓扑和离散拓扑. 称 $(X, \varnothing)$ 为一个平庸空间, $(X, \mathcal P(X))$ 为一个离散空间

3. 补空间: 对于基础集 $X$, 记子集 $A\subset X$ 的补集 $A'=X-A$
    1. 设 $X$ 为一个集合, 令 $\mathscr T=\{U\subset X|U'$ 是 $X$ 中的一个有限子集 $\}\cup \{\varnothing\}$, 则称 $\mathscr T$ 是 $X$ 的有限补拓扑, 称 $(X, \mathscr T)$ 为有限补空间
    2. 设 $X$ 为一个集合, 令 $\mathscr T=\{U\subset X|U'$ 是 $X$ 中的一个可数子集 $\}\cup \{\varnothing\}$, 则称 $\mathscr T$ 是 $X$ 的可数补拓扑, 称 $(X, \mathscr T)$ 为可数补空间
4. 连续映射
    1. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$. 如果 $Y$ 中的每一个开集 $U$ 的原像 $f^{-1}(U)$ 是 $X$ 中的一个开集, 则称 $f$ 是从 $X$ 到 $Y$ 的一个连续映射, 或称映射 $f$ 连续
    2. 设 $X,Y,Z$ 都是拓扑空间
        1. 恒同映射 $i_X: X\to X$ 是一个连续映射
        2. 如果 $f: X\to Y$ 和 $g: Y\to Z$ 都是连续映射, 则 $g\circ f: X\to Z$ 也是连续映射
5. 同胚: 设 $X, Y$ 是两个拓扑空间, 如果 $f: X\to Y$ 是一个双射, 并且 $f$ 和 $f^{-1}: Y\to X$ 都是连续的, 则称 $f$ 是一个同胚映射, 同时也称 $f^{-1}$ 为同胚 $f$ 的同胚逆
    1. 设 $X, Y, Z$ 都是拓扑空间
        1. 恒同映射 $i_X: X\to X$ 是一个同胚
        2. 如果 $f: X\to Y$ 是一个同胚, 则 $f^{-1}: Y\to X$ 也是一个同胚
        3. 如果 $f: X\to Y$ 和 $g: Y\to Z$ 都是同胚, 则 $g\circ f: X\to Z$ 也是同胚
    2. 设 $X, Y$ 是两个拓扑空间, 如果存在一个同胚 $f: X\to Y$, 则称拓扑空间 $X$ 与拓扑空间 $Y$ 是同胚的, 或称 $X$ 同胚于 $Y$. 在任意给定的一个由拓扑空间组成的族中, 两个拓扑空间是否同胚这一关系是一个等价关系
    3. 拓扑不变性质: 拓扑空间的某种性质 $P$, 若为某一个拓扑空间所具有, 也必为与其同胚的任何一个拓扑空间所具有, 则称此性质是一个拓扑不变性质

## 1.2 基本概念

## 1.3 构造空间
