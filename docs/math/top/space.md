!!! danger "尚未完成"
    此页面现在使用英文标点

# 1 拓扑空间

## 1.1 度量空间
### 1.1.1 一般度量空间
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
7. 导集和闭包
    1. 距离: 设 $(X, \rho)$ 是一个度量空间, $X$ 中的点 $x$ 到 $X$ 的非空子集 $A$ 的距离 $\rho(x, A)=\inf\{\rho(x, y)|y\in A\}$
    2. 设 $A$ 是度量空间 $(X, \rho)$ 中的一个非空子集
        1. $x\in d(A) \leftrightarrow \rho(x, A-\{x\}) = 0$
        2. $x\in \overline A \leftrightarrow \rho(x, A) = 0$
    3. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$, 则以下条件等价
        1. $f$ 是一个连续映射
        2. $Y$ 中任何一个闭集 $B$ 的原像 $f^{-1}(B)$ 是一个闭集
        3. $\forall A\subset X: f(\overline A)=\overline{f(A)}$
        4. $\forall B\subset X: f^{-1}(\overline B)\supset \overline{f^{-1}(B)}$

### 1.1.2 完备度量空间

## 1.2 拓扑空间
### 1.2.1 拓扑空间
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
4. 邻域: 设 $(X, \mathscr T)$ 是一个拓扑空间, $x\in X$. 如果 $U$ 是 $X$ 的一个子集, 且存在一个开集 $V\in \mathscr T$ 使得 $x\in V\subset U$，则称 $U$ 是点 $x$ 的一个邻域. 
    1. 如果 $U$ 是包含点 $x$ 的一个开集, 那么 $U$ 必定是 $x$ 的一个邻域, 称 $U$ 是点 $x$ 的一个开邻域. 称点 $x$ 所有邻域构成的 $X$ 的子集族为点 $x$ 的邻域系
    2. 拓扑空间 $X$ 的一个子集 $U$ 是开集 $\leftrightarrow \forall x\in U: U$ 是 $x$ 的一个邻域
    3. 设 $X$ 是一个拓扑空间, 记 $\mathscr U_x$ 为点 $x\in X$ 的邻域系
        1. $\forall x\in X: \mathscr U_x \neq \varnothing$, 且若 $U\in \mathscr U_x$, 则 $x\in U$
        2. 若 $U, V\in \mathscr U_x$, 则 $U\cap V\in \mathscr U_x$
        3. 若 $U\in \mathscr U_x \wedge U\subset V$, 则 $V\in \mathscr U_x$
        4. 若 $U\in \mathscr U_x$, 则 $\exists V\in \mathscr U_x(V\subset U \wedge \forall y\in V: V\in \mathscr U_y)$
    4. 邻域定义拓扑空间: 设 $X$ 是一个集合, 且 $\forall x\in X$ 指定了 $X$ 的一个子集族 $\mathscr U_x$, 且它们满足上述定理的四条性质, 则 $X$ 有唯一一个拓扑 $\mathscr T$ 使得对于每一点 $x\in X$, 子集族 $\mathscr U_x$ 恰是点 $x$ 在拓扑空间 $(X, \mathscr T)$ 中的邻域系

5. 连续映射
    1. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$. 如果 $Y$ 中的每一个开集 $U$ 的原像 $f^{-1}(U)$ 是 $X$ 中的一个开集, 则称 $f$ 是从 $X$ 到 $Y$ 的一个连续映射, 或称映射 $f$ 连续
    2. 设 $X, Y, Z$ 都是拓扑空间
        1. 恒同映射 $i_X: X\to X$ 是一个连续映射
        2. 如果 $f: X\to Y$ 和 $g: Y\to Z$ 都是连续映射, 则 $g\circ f: X\to Z$ 也是连续映射

    !!! note "邻域定义连续性"
        设 $X, Y$ 是两个拓扑空间, $f: X\to Y, x\in X$. 如果 $f(x)\in Y$ 的每一个邻域的原像 $f^{-1}(U)$ 是 $x\in X$ 的一个邻域, 则称邻域 $f$ 是一个在点 $x$ 处连续的映射

        1. 设 $X, Y, Z$ 都是拓扑空间
            1. 恒同映射 $i_X: X\to X$ 是一个连续映射
            2. 如果 $f: X\to Y$ 和 $g: Y\to Z$ 都是连续映射, 则 $g\circ f: X\to Z$ 也是连续映射
        2. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$, 则映射 $f$ 连续当且仅当 $\forall x\in X$, 映射 $f$ 在点 $x$ 处连续

6. 同胚: 设 $X, Y$ 是两个拓扑空间, 如果 $f: X\to Y$ 是一个双射, 并且 $f$ 和 $f^{-1}: Y\to X$ 都是连续的, 则称 $f$ 是一个同胚映射, 同时也称 $f^{-1}$ 为同胚 $f$ 的同胚逆
    1. 设 $X, Y, Z$ 都是拓扑空间
        1. 恒同映射 $i_X: X\to X$ 是一个同胚
        2. 如果 $f: X\to Y$ 是一个同胚, 则 $f^{-1}: Y\to X$ 也是一个同胚
        3. 如果 $f: X\to Y$ 和 $g: Y\to Z$ 都是同胚, 则 $g\circ f: X\to Z$ 也是同胚
    2. 设 $X, Y$ 是两个拓扑空间, 如果存在一个同胚 $f: X\to Y$, 则称拓扑空间 $X$ 与拓扑空间 $Y$ 是同胚的, 或称 $X$ 同胚于 $Y$. 在任意给定的一个由拓扑空间组成的族中, 两个拓扑空间是否同胚这一关系是一个等价关系
    3. 拓扑不变性质: 拓扑空间的某种性质 $P$, 若为某一个拓扑空间所具有, 也必为与其同胚的任何一个拓扑空间所具有, 则称此性质是一个拓扑不变性质

### 1.2.2 闭集与边界
1. 凝聚点与孤立点: 设 $X$ 是一个拓扑空间, $A\subset X$
    1. 凝聚点: 如果点 $x\in X$ 的每一个邻域 $U$ 中都有 $U\cap(A-|x|)\neq \varnothing$, 则称点 $x$ 是集合 $A$ 的一个凝聚点或极限点
    2. 孤立点: 若 $x\in A$ 且存在 $x$ 的一个邻域 $U$ 使得 $U\cap(A-|x|)= \varnothing$, 则称 $x$ 为 $A$ 的一个孤立点
2. 导集: 设 $X$ 是一个拓扑空间, $A\subset X$
    1. 定义: 集合 $A$ 的所有凝聚点构成的集合, 记作 $d(A)$
    2. 设 $X$ 是一个拓扑空间, $A\subset X$
        1. $d(\varnothing) = \varnothing$
        2. $A\subset B\to d(A)\subset d(B)$
        3. $d(A\cup B) = d(A) \cup d(B)$
        4. $d(d(A)) \subset A\cup d(A)$
3. 闭集: 设 $X$ 是一个拓扑空间, $A\subset X$, 若 $d(A) \subset A$, 则称 $A$ 是拓扑空间 $X$ 的一个闭集
    1. 设 $X$ 是一个拓扑空间, $A\subset X$, 则 $A$ 为闭集 $\leftrightarrow A'$ 为开集
    2. 设 $X$ 是一个拓扑空间, 记 $\mathscr F$ 为所有闭集构成的族
        1. $X, \varnothing \in \mathscr F$
        2. 若 $A, B\in \mathscr F$, 则 $A\cup B\in \mathscr F$
        3. 如果 $\varnothing \neq \mathscr F_1\subset \mathscr F$, 则 $\bigcap_{A\in \mathscr F_1}A\in \mathscr F$

        !!! note "$\mathrm{Cantor}$ 集"
            在实数空间 $R$ 中, 定义 $f_1, f_2: R\to R$ 使得对于任意 $t\in R$ 有 $f_1(t)=\dfrac{t}{3}, f_2(t)=\dfrac{t+2}{3}$, 则可以验证 $f_1, f_2$ 均为同胚, 即任意开集 $U\subset R$, 其 $f_1-$像与 $f_2-$像都是开集

            定义 $A_1=\left(\dfrac13, \dfrac23\right), A_n=f_1(A_{n-1})\cup f_2(A_{n-1})(n>1), A=\bigcup_{n\in Z_+}A_n$, 称集合 $C=[0, 1]-A$ 为 $\mathrm{Cantor}$ 集或标准 $\mathrm{Cantor}$ 三分集, 可以验证 $C$ 是一个闭集

4. 闭包: 设 $X$ 是一个拓扑空间, $A\subset X$, 称集合 $A\cup d(A)$ 为集合 $A$ 的闭包, 记作 $\overline A$ 或 $A^-$
    1. $x\in \overline A$ 当且仅当对于 $x$ 的任何一个邻域 $U$ 有 $U\cap A\neq \varnothing$
    2. 拓扑空间 $X$ 的子集 $A$ 是闭集当且仅当 $A=\overline A$, 且任意子集 $A$ 的闭包 $\overline A$ 都是闭集
    3. 设 $X$ 是一个拓扑空间, 则对于任意 $A, B\subset X$ 有
        1. $\overline \varnothing = \varnothing$
        2. $A\subset \overline A$
        3. $\overline{A\cup B} = \overline A \cup \overline B$
        4. $\overline{\overline A} = \overline A$
    4. 设 $X$ 是一个拓扑空间, $\mathscr F$ 是由空间 $X$ 中所有闭集构成的族, 则对于 $X$ 的每个子集 $A$, 有 $\overline A = \bigcap_{B\in \mathscr F, A\subset B}B$
    5. 闭包定义拓扑空间: 设 $X$ 是一个集合 $c^*(X): \mathcal P(X)\to \mathcal P(X)$ 的一个闭包运算, 则存在 $X$ 的唯一一个拓扑 $\mathscr T$, 使得在拓扑空间 $(X, \mathscr T)$ 中对于每一个 $A\subset X$ 有 $c^*(A)=\overline A$
   
    !!! note "闭包运算"
        设 $X$ 是一个集合, 映射 $c^*: \mathcal P(X)\to \mathcal P(X)$ 若对于任意 $A, B\in \mathcal P(X)$, 满足以下 $\mathrm{Kuratowski}$ 公理, 则称为集合 $X$ 上的一个闭包运算

        1. $c^*(\varnothing) = \varnothing$
        2. $A\subset c^*(A)$
        3. $c^*(A\cup B) = c^*(A) \cup c^*(B)$
        4. $c^*(c^*(A)) = c^*(A)$

5. 内部: 设 $X$ 是一个拓扑空间, $A\subset X$, 如果 $A$ 是点 $x\in X$ 的一个邻域, 则称点 $x$ 是集合 $A$ 的一个内点, 集合 $A$ 的所有内点构成的集合称为集合 $A$ 的内部, 记作 $A^o$
    1. 设 $X$ 是一个拓扑空间, $A\subset X$, 则 $A^o = A{}'^-{}'$, 因此 $A^-=A{}'^o{}'$
    2. 拓扑空间 $X$ 的子集 $A$ 是开集 $\leftrightarrow A = A^o$
    3. 设 $X$ 是一个拓扑空间, 则对于任意 $A, B\subset X$ 有
        1. $X^o=X$
        2. $A\supset A^o$
        3. $(A\cap B)^o = A^o\cap B^o$
        4. $A^{oo}=A^o$
    4. 拓扑空间的任何一个子集 $A$ 的内部 $A^o$ 都是开集
    5. 设 $X$ 是一个拓扑空间, $\mathscr T$ 是 $X$ 的拓扑, 则对于 $X$ 的每一个子集 $A$ 有 $A^o=\bigcup_{B\in\mathscr T, B\subset A} B$

6. 边界点: 设 $X$ 是一个拓扑空间, $A\subset X$, 点 $x\in X$. 若在 $x$ 的任意一个邻域 $U$ 中有 $U\cap A\neq \varnothing \wedge U\cap A'\neq \varnothing$, 则称 $x$ 是集合 $A$ 的一个边界点
    1. 边界: 集合 $A$ 的全体边界点构成的集合, 记作 $\partial(A)$
    2. 设 $X$ 是一个拓扑空间, $A\subset X$
        1. $A^-=A^o\cup \partial(A), A^o=A^--\partial(A)$
        2. $\partial(A)=A^-\cap A{}'^-=(A^o\cup A{}'^o)'=\partial(A')$

### 1.2.3 基与子基
1. 基: 设 $(X, \mathscr T)$ 是一个拓扑空间, $\mathscr B$ 是 $\mathscr T$ 的一个子族. 若 $\forall U\in \mathscr T\ \exists \mathscr B_1\subset \mathscr B: U=\bigcup_{B\in \mathscr B_1}B$, 则称 $\mathscr B$ 是拓扑 $\mathscr T$ 的一个基
    1. 一个度量空间的所有球形邻域构成集族是这个度量空间作为拓扑空间时的一个基
    2. 设 $\mathscr B$ 是拓扑空间 $(X, \mathscr T)$ 的一个开集族, 则 $\mathscr B$ 是拓扑空间 $X$ 的一个基当且仅当对于每一个 $x\in X$ 和 $x$ 的每一个邻域 $U_x$, 存在 $V_x\in \mathscr B$ 使得 $x\in V_x\subset U_x$
    3. 设 $X$ 是一个集合, $\mathscr B\subset \mathcal P(X)$, 若 $\bigcup_{B\in \mathscr B}B=X$, 且若 $B_1, B_2\in \mathscr B$, 则对于任何 $x\in B_1\cap B_2$, 存在 $B\in \mathscr B$ 使得 $x\in B\subset B_1\cap B_2$, 则 $X$ 的子集族 $\mathscr T=\left\{U\subset X|\exists \mathscr B_U\subset \mathscr B: U=\bigcup_{B\in \mathscr B_U} B\right\}$ 是集合 $X$ 的唯一以 $\mathscr B$ 为基的拓扑, 反之也成立
2. 子基: 设 $(X, \mathscr T)$ 是一个拓扑空间, $\mathscr S$ 是 $\mathscr T$ 的一个子族, 如果 $\mathscr S$ 的所有非空有限子族之交构成的集族 $\mathscr B=\{S_1\cap S_2\cap \cdots \cap S_n|S_i\in \mathscr S, i=1,2,\cdots,n;n\in Z_+\}$ 是拓扑 $\mathscr T$ 的一个基, 则称集族 $\mathscr S$ 是拓扑 $\mathscr T$ 的一个子基
    1. 设 $X$ 是一个集合, $\mathscr S\subset \mathscr T(X)$, 若 $X=\bigcup_{S\in \mathscr S}S$, 则 $X$ 有唯一一个拓扑 $\mathscr T$ 以 $\mathscr S$ 为子基, 且若令 $\mathscr B=\{S_1\cap S_2\cap \cdots \cap S_n|S_i\in \mathscr S, i=1,2,\cdots,n;n\in Z_+\}$, 则 $\mathscr T=\left\{\bigcup_{B\in \mathscr B_1}B|\mathscr B_1\subset \mathscr B\right\}$
    2. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$, 则以下条件等价
        1. $f$ 连续
        2. 拓扑空间 $Y$ 有一个基 $\mathscr B$, 使得对于任何一个 $B\in \mathscr B$, 原像 $f^{-1}(B)$ 是 $X$ 中的一个开集
        3. $Y$ 有一个子基 $\mathscr S$, 使得对于任何一个 $S\in \mathscr S$, 原像 $f^{-1}(S)$ 是 $X$ 中的一个开集
3. 邻域基: 设 $X$ 是一个拓扑空间, $x\in X$. 记 $\mathscr U_x$ 为 $x$ 的邻域系, 若 $\mathscr U_x$ 的子族 $\mathscr V_x$ 满足对于任何 $U\in \mathscr U_x$, 存在 $V\in \mathscr V_x$ 使得 $V\subset U$, 则称 $\mathscr V_x$ 是点 $x$ 的邻域系的一个子集, 或简称为点 $x$ 的一个邻域基
    1. 若 $\mathscr U_x$ 的子族 $\mathscr W_x$ 有 $\mathscr W_x$ 的每一个非空有限子族之交的全体构成的集族 $\{W_1 \cap W_2 \cap \cdots \cap W_n|W_i\in \mathscr W_x, i=1, 2, \cdots, n; n\in Z_+\}$ 是 $\mathscr U_x$ 的一个邻域基, 则称 $\mathscr W_x$ 是点 $x$ 的邻域系的一个子基, 或称为点 $x$ 的一个邻域子基
    2. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y, x\in X$, 则以下条件等价
        1. $f$ 在点 $x$ 处连续
        2. $f(x)$ 有一个邻域基 $\mathscr V_{f(x)}$ 使得对于任何 $V\in \mathscr V_{f(x)}$, 原像 $f^{-1}(V)$ 是 $x$ 的一个邻域
        3. $f(x)$ 有一个邻域子基 $\mathscr W_{f(x)}$ 使得对于任何 $W\in \mathscr W_{f(x)}$, 原像 $f^{-1}(W)$ 是 $x$ 的一个邻域
    3. 设 $X$ 是一个拓扑空间, $x\in X$
        1. 若 $\mathscr B$ 是 $X$ 的一个基, 则 $\mathscr B_x=\{B\in \mathscr B|x\in B\}$ 是点 $x$ 的一个邻域基
        2. 若 $\mathscr S$ 是 $X$ 的一个子基, 则 $\mathscr S_x=\{S\in \mathscr S|x\in S\}$ 是点 $x$ 的一个邻域子基

### 1.2.4 拓扑空间中的序列
1. 序列: 设 $X$ 是一个拓扑空间, 每一个映射 $S: Z_+\to X$ 称作 $X$ 中的一个序列, 将序列 $S$ 记作 $\{x_i\}_{i\in Z_+}$ 或 $\{x_1, x_2, \cdots\}$, 其中 $x_i=S(i), i\in Z_+$
    1. $\{x_i\}_{i\in Z_+}$ 可简记为 $\{x_i\}$
    2. 集合 $\{x_i|i\in Z_+\}$ 可为有限集, 当其为单点集时, 称序列 $\{x_i\}_{i\in Z_+}$ 为一个常值序列
2. 极限点: 设 $\{x_i\}_{i\in Z_+}$ 是拓扑空间中的一个序列, $x\in X$. 若对于 $x$ 的任意邻域 $U$, 存在 $M\in Z$ 使得当 $i>M$ 时有 $x_i\in U$, 则称点 $x$ 是序列 $\{x_i\}_{i\in Z_+}$ 的一个极限点, 也称序列 $\{x_i\}_{i\in Z_+}$ 收敛于 $x$, 记作 $\lim_{i\to \infty}x_i=x$ 或 $x_i\to x(i\to \infty)$
    1. 如果序列至少有一个极限, 则称这个序列是一个收敛序列
    2. 设 $X$ 是一个拓扑空间, $S, S_1:Z_+ \to X$ 是 $X$ 中的两个序列, 如果存在一个映射 $N: Z_+\to Z_+$ 有 $\forall n_1, n_2\in Z_+: n_1<n_2 \to N(n_1)<N(n_2)$, 使得 $S_1=S\circ N$, 则称序列 $S_1$ 是序列 $S$ 的一个子序列
3. 序列的性质
    1. 设 $\{x_i\}_{i\in Z_+}$ 是拓扑空间 $X$ 中的一个序列
        1. 若 $\{x_i\}_{i\in Z_+}$ 是一个常值序列, 则 $\lim_{i\to \infty} x_i=x$
        2. 若序列 $\{x_i\}_{i\in Z_+}$ 收敛于 $x\in X$, 则序列 $\{x_i\}_{i\in Z_+}$ 的每一个子序列也收敛于 $x$
    2. 设 $X$ 是一个拓扑空间, $A\subset X, x\in X$. 若 $\forall i\in Z_+: x_i\in A_\{x\}$, 且 $\lim_{i\to \infty}x_i=x$, 则 $x$ 是集合 $A$ 的一个凝聚点. 反之不成立
    3. 设 $X, Y$ 是两个拓扑空间, $f: X\to Y$, 则以下命题成立, 反之不成立
        1. 若 $f$ 在点 $x_0\in X$ 处连续, 则 $X$ 中的一个序列 $\{x_i\}_{i\in Z_+}$ 收敛于 $x_0 \to Y$ 中序列 $\{f(x_i)\}_{i\in Z_+}$ 收敛于 $f(x_0)$
        2. 若 $f$ 连续, 则 $X$ 中的一个序列 $\{x_i\}_{i\in Z_+}$ 收敛于 $x\in X \to Y$ 中的序列 $\{f(x_i)\}_{i\in Z_+}$ 收敛于 $f(x)$
4. 度量描述序列收敛: 设 $(X, \rho)$ 是一个度量空间, $\{x_i\}_{i\in Z_+}$ 是 $X$ 中的一个序列, $x\in X$, 则以下条件等价
    1. $\lim_{i\to \infty} x_i=x$
    2. $\forall \varepsilon>0\ \exists N\in Z_+\ \forall i>N: \rho(x_i, x)<\varepsilon$
    3. $\lim_{i\to \infty} \rho(x_i, x)=0$

## 1.3 子空间
1. 度量子空间: 设 $(X, \rho)$ 是一个度量空间, $Y\subset X$, 因此 $Y\times Y\subset X\times X$. 显然 $\rho|_{Y\times Y}: Y\times Y\to R$ 是 $Y$ 的一个度量, 称之为由 $X$ 的度量诱导的, $(Y, \rho)$ 为 $(X, \rho)$ 的一个度量子空间
    1. 子空间的例子
        1. 实数空间 $R$ 的区间 $(a, b), [a, b]$ 等
        2. $n+1$ 维欧氏空间 $R^{n+1}$ 中的 $n$ 维单位球面 $S^n=\left\{x=(x_1, x_2, \cdots, x_{n+1})\in R^{n+1}|\sum_{i=1}^{n+1}x_i^2=1\right\}$ 以及 $n$ 维单位开球体 $D^n=\left\{x=(x_1, x_2, \cdots, x_n)\in R^n|\sum_{i=1}^n x_i^2<1\right\}$、$n$ 维单位闭球体 $E^n=\left\{x=(x_1, x_2, \cdots, x_n)\in R^n|\sum_{i=1}^n x_i^2\leqslant 1\right\}$
        3. $n+1$ 维欧氏空间 $R^{n+1}$ 中的 $n$ 维开、闭方体 $(0, 1)^n, [0, 1]^n$
    2. 设 $Y$ 是度量空间 $X$ 的一个度量子空间, 则 $Y$ 的子集 $U$ 是 $Y$ 中的一个开集当且仅当存在一个 $X$ 中的开集 $V$ 使得 $U=V\cap Y$
2. 拓扑子空间: 设 $Y$ 是拓扑空间 $(X, \mathscr T)$ 的一个子集, 则 $\mathscr T|_Y$ 在 $Y$ 上的限制 $\mathscr T|_Y=\{T\cap Y|T\in \mathscr T\}$ 称为 (相对于 $X$ 的拓扑而言的) 相对拓扑; 拓扑空间 $(Y, \mathscr T|_Y)$ 称为拓扑空间的拓扑子空间
    1. 若 $Y$ 是拓扑空间 $(X, \mathscr T)$ 的一个子集, 则集族 $\mathscr T|_Y$ 是 $Y$ 的一个拓扑
    2. 设 $(Y, \eta)$ 是度量空间 $(X, \rho)$ 的一个度量子空间, 则由 $Y$ 诱导的拓扑空间 $(Y, \mathscr T_\eta)$ 是由 $X$ 诱导的拓扑空间 $(X, \mathscr T_\rho)$ 的拓扑子空间
    3. 设 $X, Y, Z$ 都是拓扑空间, 如果 $Y$ 是 $X$ 的一个子空间, $Z$ 是 $Y$ 的一个子空间, 则 $Z$ 是 $X$ 的子空间
3. 拓扑空间与子空间的关系
    1. 设 $Y$ 是拓扑空间 $X$ 的一个子空间, $y\in Y$
        1. 记 $\mathscr T$ 与 $\widetilde{\mathscr T}$ 为 $X$ 与 $Y$ 的拓扑, 则 $\widetilde{\mathscr T} =\mathscr T|_Y$
        2. 记 $\mathscr F$ 与 $\widetilde{\mathscr F}$ 为 $X$ 与 $Y$ 的全体闭集构成的族, 则 $\widetilde{\mathscr F} =\mathscr F|_Y$
        3. 记 $\mathscr U_y$ 与 $\widetilde{\mathscr U}_y$ 为点 $y$ 在 $X$ 与 $Y$ 中的邻域系, 则 $\widetilde{\mathscr U}_y =\mathscr U_y|_Y$
    2. 设 $Y$ 是拓扑空间 $X$ 的一个子空间, $A\subset Y$
        1. $A$ 在 $Y$ 中的导集是 $A$ 在 $X$ 中的导集与 $Y$ 的交
        2. $A$ 在 $Y$ 中的闭包是 $A$ 在 $X$ 中的闭包与 $Y$ 的交
    3. 设 $Y$ 是拓扑空间 $X$ 的一个子空间, $y\in Y$
        1. 如果 $\mathscr B$ 是拓扑空间 $X$ 的一个基, 则 $\mathscr B|_Y$ 是子空间 $Y$ 的一个基
        2. 如果 $\mathscr V_Y$ 是点 $y$ 在拓扑空间 $X$ 中的一个邻域基, 则 $\mathscr V_y|_Y$ 是点 $y$ 在子空间 $Y$ 中的一个邻域基
4. 设 $X, Y$ 是两个拓扑空间, 如果映射 $f: X\to Y$ 是一个单射且是一个 $X$ 到 $f(X)$ 的同胚, 则称此映射为一个嵌入; 如果存在一个嵌入 $f: X\to Y$, 则称拓扑空间 $X$ 可嵌入拓扑空间 $Y$

## 1.4 积空间
### 1.4.1 有限积空间
1. 度量积空间: 设 $(X_1, \rho), (X_2, \rho_2), \cdots, (X_n, \rho_n)$ 是 $n\geqslant 1$ 个度量空间, 令 $X=X_1 \times X_2 \times \cdots X_n$. 定义 $\rho: X \times X\to R$ 使得 $\forall x=(x_1, x_2, \cdots, x_n), y=(y_1, y_2, \cdots, y_n)\in X: \rho(x, y)=\sqrt{\sum_{i=1}^n \rho_i(x_i, y_i)^2}$
    1. 设 $(X_1, \rho_1), (X_2, \rho_2), \cdots, (X_n, \rho_n)$ 是 $n\geqslant 1$ 个度量空间, $(X, \rho)$ 是它们的积空间. 又设 $\mathscr T_i$ 和 $\mathscr T$ 分别是由度量 $\rho_i$ 和 $\rho$ 诱导出来的 $X_i\ (i=1, 2, \cdots, n)$ 和 $X$ 的拓扑, 则 $X$ 的子集族 $\mathscr B=\{U_1 \times U_2\times \cdots \times U_n| U_i\in \mathscr  T_i, i=1, 2, \cdots, n\}$ 是 $X$ 的拓扑 $\mathscr T$ 的一个基
    2. 设 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 是 $n\geqslant 1$ 个拓扑空间, 则 $X= X_1\times X_2\times \cdots \times X_n$ 的以 $X$ 子集族 $\mathscr B=\{U_1\times U_2\times \cdots \times U_n|U_i\in \mathscr  T_i\}$ 为它的一个基
2. 设 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 是 $n\geqslant 1$ 个拓扑空间, 则 $X=X_1\times X_2\times \cdots \times X_n$ 的以子集族 $\mathscr B=\{U_1\times U_2\times \cdots \times U_n|U_i\in \mathscr  T_i\}$ 为它的一个基的唯一拓扑 $\mathscr T$ 称为拓扑 $\mathscr T_1, \mathscr T_2, \cdots, \mathscr T_n$ 的积拓扑, 拓扑空间 $(X, \mathscr T)$ 称为拓扑空间 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 的拓扑空间
    1. 设 $X=X_1\times X_2\times \cdots\times X_n$ 是 $n\geqslant 1$ 个度量空间 $X_1, X_2, \cdots, X_n$ 的度量积空间, 它们诱导的拓扑空间分别是 $(X, \mathscr T)$ 和 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$, 则 $(X, \mathscr T)$ 是 $(X_1, \mathscr T_1), (X_2, \mathscr T_2), \cdots, (X_n, \mathscr T_n)$ 的拓扑积空间
    2. 设 $X=X_1\times X_2\times \cdots\times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间, 对于每一个 $i=1, 2, \cdots, n$ 拓扑空间 $X_i$ 有一个基 $\mathscr B_i$, 则 $X$ 的子集族 $\widetilde B=\{B_1\times B_2\times \cdots \times B_n|B_i\in \mathscr B_i, i=1, 2, \cdots, n\}$ 是拓扑空间 $X$ 的一个基
    3. 设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间. 令 $\mathscr T$ 为 $X$ 的拓扑, $\mathscr T_i$ 为 $X_i$ 的拓扑, $i=1, 2, \cdots, n$, 则 $X$ 以它的子集族 $\mathscr S=\{p_i^{-1}(U_i)|U_i\in \mathscr T_i, i=1, 2, \cdots, n\}$ 为它的一个子基. 其中对于每一个 $i$, 映射 $p_i: X\to X_i$ 是 $\mathrm{Descartes}$ 积 $X$ 到它的第 $i$ 个坐标集 $X_i$ 的投射
3. 开映射与闭映射: 设 $X, Y$ 是两个拓扑空间, 映射 $f: X\to Y$ 称为一个开映射 (闭映射), 如果 $X$ 中的任何一个开集 (闭集) $U$, 像集 $f(U)$ 是 $Y$ 中的一个开集 (闭集)
    1. 设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间, 又设 $Y$ 也是一个拓扑空间, 则映射 $f: Y\to X$ 连续当且仅当对于每一个 $i=1, 2, \cdots, n$, 复合映射 $p_i\circ f: Y\to X_i$ 连续, 其中 $p_i: X\to X_i$ 是积空间 $X$ 对于第 $i$ 个坐标空间 $X_i$ 的投射
    2. 积拓扑是使从积空间到每一个坐标空间的投射都连续的最小拓扑, 即设 $X=X_1\times X_2\times \cdots \times X_n$ 是 $n\geqslant 1$ 个拓扑空间 $X_1, X_2, \cdots, X_n$ 的积空间, $\mathscr T$ 是 $X$ 的积拓扑. 又设 $\widetilde{\mathscr T}$ 是 $X$ 的某一个拓扑满足条件: 对于 $X$ 的拓扑 $\widetilde{\mathscr T}$ 而言, 从 $X$ 到它的第 $i$ 个坐标空间 $X_i$ 的投射 $p_i: X\to X_i$ 是连续映射, $i=1, 2, \cdots, n$, 则 $\widetilde{\mathscr T}\subset \mathscr T$
    3. 设 $X_1, X_2, \cdots, X_n$ 是 $n\geqslant 2$ 个拓扑空间, 则积空间 $X_1\times X_2\times \cdots \times X_n$ 同胚于积空间 $(X_1\times X_2\times \cdots \times X_{n-1})\times X_n$

### 1.4.2 一般积空间

### 1.4.3 映射空间

## 1.5 商空间
