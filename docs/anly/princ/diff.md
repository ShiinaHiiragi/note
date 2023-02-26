# 2 微分法

## 2.1 连续统
### 2.1.1 一元连续函数
1. 连续函数的定义
    1. 函数 $f(x)$ 在单点连续
        1. 函数在 $x_0$ 连续：${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$，此时 $f(x)$ 在 $x_0$ 有定义
        2. 函数在 $x_0$ 点左连续：$f\left(x_{0}-0\right)=f\left(x_{0}\right)$
        3. 函数在 $x_0$ 点右连续：$f\left(x_{0}+0\right)=f\left(x_{0}\right)$
    2. 函数在区间内连续
        1. 函数 $f(x)$ 在 $(a, b)$ 连续：对 $(a, b)$ 内任何一点 $x_{0}$ 均有 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$
        2. 函数 $f(x)$ 在 $[a, b]$ 连续：函数在 $(a, b)$ 连续且 $f(a+0)=f(a), f(b-0)=f(b)$
2. 连续函数的性质
    1. 若 $f(x), g(x)$ 在点 $x_{0}$ 连续，则 $f(x) \pm g(x), f(x) g(x)$ 也在点 $x_0$ 连续，若 $g\left(x_{0}\right) \neq 0$，则 $\dfrac{f(x)}{g(x)}$ 也在点 $x_0$ 连续
    2. 设 $f(x)$ 在 $a \leqslant x \leqslant b$ 严格单调递增（或递减）且在每点连续，又设 $f(a)=\alpha, f(b)=\beta$，则在区间 $\alpha \leqslant y \leqslant \beta$ 上存在 $y=f(x)$ 的反函数 $x=\varphi(y)$ 在区间上单调递增（或递减）且连续
    3. 若 $u=g(x)$ 在点 $x_{0}$ 连续，$y=f(u)$ 在点 $u_{0}$ 连续且 $g\left(x_{0}\right)=u_{0}$，则复合函数 $y=f \circ g(x)$ 在点 $x_{0}$ 连续
    4. 初等函数均在其定义域内连续
3. 不连续点：设 $x_0$ 是函数 $f(x)$ 的一个不连续点
    1. 第一类不连续点：$f\left(x_{0}+0\right), f\left(x_{0}-0\right)$ 存在但不相等
    2. 第二类不连续点：$f\left(x_{0}+0\right)$ 与 $f\left(x_{0}-0\right)$ 中至少有一个不存在
    3. 可移不连续点：${\displaystyle \lim _{x \rightarrow x_{0}} f(x)}$ 存在但不等于 $f\left(x_{0}\right)$ 或 $f(x)$ 在点 $x_{0}$ 没有定义
4. 闭区间上连续函数的性质：设 $f(x)$ 在 $[a, b]$ 上连续
    1. 有界性：$f(x)$ 在 $[a, b]$ 上有界
    2. 最值：在 $[a, b]$ 内至少有两点 $\xi_{1}$ 和 $\xi_{2}$，使得对 $[a, b]$ 内的一切 $x$，有 $f\left(\xi_{1}\right) \leqslant f(x) \leqslant f\left(\xi_{2}\right)$
    3. 零点存在定理：若 $f(a)f(b) < 0$，则在 $[a, b]$ 内至少有一点 $\xi$，使 $f(\xi)=0$
    4. 介值定理：设 $f(x)$ 在 $[a, b]$ 上的最小值为 $m$，最大值为 $M$．则对任何 $c \ (m<c<M)$，在 $[a, b]$ 内至少存在一个 $\xi$，使得 $f(\xi)=c$
    5. $\text{Cantor}$ 定理：$f(x)$ 在 $[a, b]$ 上一致连续

        !!! note "一致连续"
            设函数 $f(x)$ 在区间 $X$ 内满足对任意的 $\varepsilon>0$，可找到只与 $\varepsilon$ 有关而与 $X$ 内的点 $x$ 无关的 $\eta>0$，使得对 $X$ 内任意两点 $x_{1}$ 和 $x_{2}$，当 $\left|x_{1}-x_{2}\right|<\eta$ 时，总有 $\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right|<\varepsilon$，则称 $f(x)$ 在 $X$ 内一致连续

### 2.1.2 多元连续函数
1. 连续性的定义
    1. 多元函数的连续性：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$z=f(\boldsymbol{x})$ 是定义在 $D$ 上的函数，$\boldsymbol{x}_{0} \in D$ 为定点．如果 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$，则称函数 $f$ 在点 $x_{0}$ 连续
    2. 向量值函数的连续性：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$x_{0} \in D$ 为一定点，$\boldsymbol f: D \rightarrow \mathbf{R}^{m}$ 是向量值函数．如果 $\boldsymbol f$ 满足 ${\displaystyle \lim _{x \rightarrow x_{0}} \boldsymbol f(x)=\boldsymbol f\left(x_{0}\right)}$，则称 $\boldsymbol f$ 在 $x_{0}$ 点连续
        1. 设点集 $K \subset \mathbf{R}^{n}, \boldsymbol{f}: K \rightarrow \mathbf{R}^{m}$ 为向量值函数，$\boldsymbol{x}_{0} \in K$．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$ 使得当 $\boldsymbol{x} \in O\left(\boldsymbol{x}_{0}, \delta\right) \cap K$ 时有 $\left|\boldsymbol{f}(\boldsymbol{x})-\boldsymbol{f}\left(\boldsymbol{x}_{0}\right)\right|<\varepsilon$，则称 $\boldsymbol{f}$ 在点 $\boldsymbol{x}_{0}$ 连续．如果映射 $\boldsymbol{f}$ 在 $K$ 上每一点连续，则称 $\boldsymbol{f}$ 在 $K$ 上连续，或称映射 $\boldsymbol{f}$ 为 $K$ 上的连续映射
        2. 设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$\boldsymbol{x}_{0} \in D$ 为一定点，那么映射 $\boldsymbol f: D \rightarrow \mathbf{R}^{m}$ 在 $\boldsymbol{x}_{0}$ 点连续的充分必要条件为函数 $f_{1}, f_{2}, \cdots, f_{m}$ 在 $x_{0}$ 点连续
        3. 如果 $\boldsymbol g$ 在 $D$ 上连续，$\boldsymbol f$ 在 $\Omega$ 上连续，那么复合映射 $\boldsymbol f \circ \boldsymbol g$ 在 $D$ 上连续
2. 连续函数的性质
    1. 紧集上的连续映射：设 $S$ 为 $\mathbf R^n$ 上的点集，如果 $S$ 的任意一个开覆盖 $\{U_n\}$ 中总存在一个有限子覆盖，则称 $S$ 为紧集
        1. 连续映射将紧集映射成紧集
        2. 有界性定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 在 $K$ 上有界
        3. 最值定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 在 $K$ 上必能取到最大值和最小值．即存在 $\xi_{1}, \boldsymbol{\xi}_{2} \in K$，使得对于一切 $x \in K$ 成立
        4. 一致连续性定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$\boldsymbol f: K \rightarrow \mathbf{R}^{m}$ 为连续映射，则 $\boldsymbol f$ 在 $K$ 上一致连续

            !!! note "一致连续"
                设 $K$ 是 $\mathbf{R}^{n}$ 中点集，$\boldsymbol f: K \rightarrow \mathbf{R}^{m}$ 为映射．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$ 使得 $\left|f\left(x^{\prime}\right)-f\left(x^{\prime \prime}\right)\right|<\varepsilon$ 对于 $K$ 中所有满足 $\left|\boldsymbol{x}^{\prime}-\boldsymbol{x}^{\prime \prime}\right|<\delta$ 的 $\boldsymbol{x}^{\prime}, \boldsymbol{x}^{\prime \prime}$ 成立，则称 $\boldsymbol{f}$ 在 $K$ 上一致连续

    2. 连通集上的连续映射：设 $S$ 为 $\mathbf R^n$ 上的点集，若 $S$ 中的任意两点 $\boldsymbol{x}, \boldsymbol{y}$ 之间都存在 $S$ 中以 $\boldsymbol{x}$ 为起点，$\boldsymbol{y}$ 为终点的道路，则称 $S$ 为（道路）连通的，或称 $S$ 为连通集
        1. 连续映射将连通集映射成连通集，将连通的紧集映射成闭区间
        2. 介值定理：设 $K$ 为 $\mathbf{R}^{n}$ 中连通的紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 的值域是闭区间 $[m, M]$

### 2.1.3 连续统
1. 实数系基本定理：以下六个定理相互等价
    1. 确界存在定理：有上界的非空数集必有上确界，有下界的非空数集必有下确界
    1. 收敛准则：单调有界数列必收敛
    2. 区间套定理：设一无穷闭区间序列 $\left\{\left[a_{n}, b_{n}\right]\right\}$ 适合下面两个条件
        1. 对任一正整数 $n$ 有 $a_{n} \leqslant a_{n+1}<b_{n+1} \leqslant b_{n}$
        2. ${\displaystyle \lim _{n \rightarrow \infty}\left(b_{n}-a_{n}\right)=0}$

        则区间的两个端点所成两数列 $\left\{a_{n}\right\}$ 及 $\left\{b_{n}\right\}$ 收敛于同一极限 $\xi$，且 $\xi$ 是所有区间的唯一公共点

    3. $\text{Weierstrass}$ 定理：任一有界数列必有收敛子列，也称作致密性定理
    4. $\text{Cauchy}$ 收敛原理：数列 $\left\{x_{n}\right\}$ 有极限当且仅当对任意给定的 $\varepsilon>0$，存在 $N \in \mathbf N$，当 $m, n>N$ 时有 $\left|x_{n}-x_{m}\right|<\varepsilon$
    5. $\text{Borel}$ 定理：若由无限多个开区间所组成的区间集 $E$ 能够覆盖一个闭区间 $[a, b]$，则存在 $E$ 中的有限个区间覆盖 $[a, b]$，也称作有限覆盖定理

2. 收敛准则
    1. 若 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=a}$，则 $\left\{x_{n}\right\}$ 的任何子列 $\left\{x_{n_{k}}\right\}$ 都收敛于 $a$．
    2. 若对任何 $\left\{x_{n}\right\}, x_{n} \rightarrow x_{0} \ (n \rightarrow \infty), x_{n} \neq x_{0}$ 都有 $\left\{f\left(x_{n}\right)\right\}$ 收敛，则 $f(x)$ 在 $x_{0}$ 的极限存在
    3. 若 $\left\{x_{n}\right\}$ 是一个无界数列，则存在子列 $x_{n_{k}} \rightarrow \infty(k \rightarrow \infty)$

### 2.1.4 Euclid 空间
- $\text{Euclid}$ 空间基本定理：以下四个定理相互等价
    1. $\text{Cantor}$ 闭区域套定理：设 $\left\{S_{k}\right\}$ 是 $\mathbf{R}^{n}$ 上的非空闭集序列，满足 $S_{1} \supset S_{2} \supset \cdots \supset S_{k} \supset S_{k+1} \supset \cdots$ 及 ${\displaystyle \lim _{k \rightarrow \infty} \operatorname{diam} S_{k}=0}$，则存在惟一点属于 ${\displaystyle \bigcap_{k=1}^{\infty} S_{k}}$．这里 $\operatorname{diam} S=\sup \{|x-y| \mid x, y \in S\}$
    2. $\text{Weierstrass}$ 定理：$\mathbf{R}^{n}$ 上的有界点列 $\left\{\boldsymbol{x}_{k}\right\}$ 中必有收敛子列
    3. $\text{Heine}-\text{Borel}$ 定理：$\mathbf{R}^{n}$ 上的点集 $S$ 是紧集的充分必要条件为其是有界闭集
    4. $\text{Cauchy}$ 收敛原理：$\mathbf{R}^{n}$ 上的点列 $\left\{\boldsymbol{x}_{k}\right\}$ 收敛的充分必要条件是对于任意给定的 $\varepsilon>0$，存在正整数 $K$ 使得对任意 $k, l>K$ 有 $\left|\boldsymbol{x}_{l}-\boldsymbol{x}_{k}\right|<\varepsilon$

## 2.2 一元微分法
### 2.3.1 导数
1. 导数的定义：设函数 $y=f(x)$ 在 $x_{0}$ 附近有定义，对应于自变量的任一改变量 $\Delta x \ (\Delta x>0$ 或 $\Delta x<0)$，函数的改变量为 $\Delta y=f\left(x_{0}+\Delta x\right)-f\left(x_{0}\right)$．若极限

    $$
    \lim _{\Delta x \rightarrow 0} \dfrac{\Delta y}{\Delta x}=\lim _{\Delta x \rightarrow 0} \dfrac{f\left(x_{0}+\Delta x\right)-f\left(x_{0}\right)}{\Delta x}
    $$

    存在，则称此极限值为函数 $f(x)$ 在点 $x_{0}$ 的导数（微商），记作 $f^{\prime}\left(x_{0}\right)$ 或 $y^{\prime}\left(x_{0}\right), \dfrac{\mathrm{d} y}{\mathrm{~d} x}\left(x_{0}\right), \dfrac{\mathrm{d} f}{\mathrm{~d} x}\left(x_{0}\right)$，此时称 $f(x)$ 在点 $x_{0}$ 的导数存在，或称 $f(x)$ 在点 $x_{0}$ 可导

    1. 若 $f(x)$ 在点 $x$ 可导当且仅当

        $$
        \begin{aligned}
        &\lim _{\Delta x \rightarrow+0} \dfrac{f(x+\Delta x)-f(x)}{\Delta x} \\
        &\lim _{\Delta x \rightarrow-0} \dfrac{f(x+\Delta x)-f(x)}{\Delta x}
        \end{aligned}
        $$

        同时存在而且相等，分别称之为 $f(x)$ 在点 $x$ 的右导数与左导数，记为 $f_{+}^{\prime}(x)$ 与 $f_{-}^{\prime}(x)$

    2. 函数 $f(x)$ 在区间 $X$ 内的可导性
        1. 若 $f(x)$ 在区间 $(a, b)$ 的每一点都可导，则称 $f(x)$ 在区间 $(a, b)$ 可导；若 $f(x)$ 在开区间 $(a, b)$ 可导，且 $f_{+}^{\prime}(a)$ 及 $f_{-}^{\prime}(b)$ 存在，则称 $f(x)$ 在闭区间 $[a, b]$ 可导
        2. 若函数 $f(x)$ 在区间 $X$ 内可导，则 $f^{\prime}(x)$ 是 $X$ 上的函数，称之为导函数

2. 求导法则
    1. 导数的四则运算
        1. $[u(x) \pm v(x)]^{\prime}=u^{\prime}(x) \pm v^{\prime}(x)$
        2. $[c u(x)]^{\prime}=c u^{\prime}(x)$，其中 $c$ 为常数
        3. $[u(x) v(x)]^{\prime}=u^{\prime}(x) v(x)+u(x) v^{\prime}(x)$
        4. $\left[\dfrac{u(x)}{v(x)}\right]^{\prime}=\dfrac{u^{\prime}(x) v(x)-u(x) v^{\prime}(x)}{v^{2}(x)} \ (v(x) \neq 0)$
    2. 反函数的导数：若 $y=f(x)$ 有 ① $f'(x_0) \neq 0$；② $f(x)$ 在点 $x_{0}$ 的某一邻域内连续且严格单调，则其反函数 $x=\varphi(y)$ 在点 $y_{0}$ 可导，这里 $y_{0}=f\left(x_{0}\right)$ 且 $\varphi^{\prime}\left(y_{0}\right)=\dfrac{1}{f^{\prime}\left(x_{0}\right)}$
    3. 复合函数的导数：若 $y=f(u)$ 在点 $u$ 可导，$u=g(x)$ 在点 $x$ 可导，则复合函数 $y=f \circ g(x)$ 在点 $x$ 可导，且有

        $$
        \dfrac{\mathrm{d} y}{\mathrm{~d} x}=\dfrac{\mathrm{d} y}{\mathrm{~d} u} \cdot \dfrac{\mathrm{d} u}{\mathrm{~d} x}=f^{\prime}(g(x)) g^{\prime}(x)
        $$

3. 初等函数的导数
    1. $(c)^{\prime}=0$（$c$ 为常数）
    2. $\left(x^{\alpha}\right)^{\prime}=\alpha x^{\alpha-1}$
    3. $\left(a^{x}\right)^{\prime}=a^{x} \ln a,\left(\mathrm{e}^{x}\right)^{\prime}=\mathrm{e}^{x}, \left(\log _{a} x\right)^{\prime}=\dfrac{1}{x \ln a},(\ln x)^{\prime}=\dfrac{1}{x}$
    4. $(\sin x)^{\prime}=\cos x, (\cos x)^{\prime}=-\sin x, (\tan x)^{\prime}=\sec ^{2} x, (\cot x)^{\prime}=-\csc ^{2} x$
    5. $(\arcsin x)^{\prime}=\dfrac{1}{\sqrt{1-x^{2}}}, (\arccos x)^{\prime}=-\dfrac{1}{\sqrt{1-x^{2}}}, (\arctan x)^{\prime}=\dfrac{1}{1+x^{2}}, (\operatorname{arccot} x)^{\prime}=-\dfrac{1}{1+x^{2}}$
    6. $(\operatorname{sinh} x)^{\prime}=\operatorname{cosh} x, (\operatorname{cosh} x)^{\prime}=\operatorname{sinh} x ,(\operatorname{tanh} x)^{\prime}=\dfrac{1}{\operatorname{cosh}^{2} x} ,(\operatorname{coth} x)^{\prime}=-\dfrac{1}{\operatorname{sinh}^{2} x}$
    7. $(\operatorname{sinh}^{-1} x)^{\prime}=\dfrac{1}{\sqrt{1+x^2}}, (\operatorname{cosh}^{-1} x)^{\prime}=\dfrac{1}{\sqrt{x^2-1}},(\operatorname{tanh}^{-1} x)^{\prime}=\dfrac{1}{1-x^2} ,(\operatorname{coth}^{-1} x)^{\prime}=\dfrac{1}{1-x^2}$
4. 高阶导数：递归定义 $n$ 阶导数 $y^{(n)} = f^{(n)}(x)$

    $$
    \begin{aligned}
    & \dfrac{\mathrm{d} y}{\mathrm{d} x} = f^{(1)}(x) = f'(x) \\
    & \dfrac{\mathrm{d}^2 y}{\mathrm{d} x^2} = f^{(2)}(x) = f''(x) \\
    & \cdots \\
    & \dfrac{\mathrm{d}^n y}{\mathrm{d} x^n} = f^{(n)}(x) = (f^{(n-1)}(x))'
    \end{aligned}
    $$

    1. $[u(x) \pm v(x)]^{(n)}=u^{(n)}(x) \pm v^{(n)}(x)$
    2. $\text{Leibniz}$ 公式：${\displaystyle [u(x) v(x)]^{(n)}=\sum_{k=0}^{n} \mathrm{C}_{n}^{k} u^{(n-k)} v^{(k)}}$

### 2.3.2 微分
1. 可微性：若 $y=f(x)$ 是定义在某一区间上的函数，设 $\Delta y=f(x+\Delta x)-f(x)=A \Delta x+o(\Delta x) \ (\Delta x \rightarrow 0)$，其中 $A$ 是 $x$ 的函数, 而与 $\Delta x$ 无关，则称 $f(x)$ 在点 $x$ 是可微的，且称 $A \Delta x$ 为 $f(x)$ 在点 $x$ 的微分，记为 $\mathrm{d} y$ 或 $\mathrm{d} f(x)$．易知函数的可微性与可导性是等价的
    1. 由于 $A \Delta x$ 是 $\Delta x$ 的线性函数，且当 $\Delta x$ 充分小时 $\Delta y \sim A \Delta x$，则称 $\mathrm{d} y$ 是 $\Delta y$ 的线性主部
    2. 高阶微分：定义 $n$ 阶微分 $\mathrm{d}^n y = f^{(n)}(x) \mathrm{d} x^n$
2. 微分的运算法则
    1. $\mathrm{d}[f(x) \pm g(x)]=\mathrm{d} f(x) \pm \mathrm{d} g(x)$
    2. $\mathrm{d}[f(x) \cdot g(x)]=g(x) \mathrm{d} f(x)+f(x) \mathrm{d} g(x)$
    3. $\mathrm{d}\left[\dfrac{f(x)}{g(x)}\right]=\dfrac{g(x) \mathrm{d} f(x)-f(x) \mathrm{d} g(x)}{g^{2}(x)} \ (g(x) \neq 0)$
    4. 复合函数的微分：设有复合函数 $y=f(u), u=g(x)$，则

        $$
        \mathrm{d} y = f^{\prime}(u) \mathrm{d} u = f^{\prime}(g(x)) g^{\prime}(x) \mathrm{d} x
        $$

        这种性质称为一阶微分的形式不变性，而高阶微分通常不具有形式不变性

### 2.3.3 微分学基本定理
1. 中值定理
    1. $\text{Fermat}$ 定理：若函数 $f(x)$ 有
        1. 在 $x_{0}$ 点的某一邻域 $B\left(x_{0}, \delta\right)$ 内有定义且在此邻域内恒有 $f(x) \leqslant f\left(x_{0}\right)$ 或者 $f(x) \geqslant f\left(x_{0}\right)$
        2. 在 $x_{0}$ 点可导

        则有 $f^{\prime}\left(x_{0}\right)=0$

    2. $\text{Lagrange}$ 中值定理：若函数 $f(x)$ 在 $[a, b]$ 连续且在 $(a, b)$ 可导，则在 $(a, b)$ 内至少存在一点 $\xi$，使 $f^{\prime}(\xi)=\dfrac{f(b)-f(a)}{b-a}$
        1. 若 $f(x)$ 对 $(a, b)$ 内每一点 $x$ 都有 $f^{\prime}(x)=0$，则在区间 $(a, b)$ 内 $f(x)$ 为常数
        2. 若两函数 $f(x)$ 及 $g(x)$ 在 $(a, b)$ 内满足 $f^{\prime}(x)=g^{\prime}(x)$，则在 $(a, b)$ 内 $f(x)=g(x)+C$（$C$ 为常数）
        3. 若 $f(x)$ 在 $[a, b]$ 上存在有界导数，则 $f(x)$ 在 $[a, b]$ 满足 $\text{Lipschitz}$ 条件，即存在常数 $L$，对 $[a, b]$ 上任意两点 $x^{\prime}, x^{\prime \prime}$ 有 $\left|f\left(x^{\prime}\right)-f\left(x^{\prime \prime}\right)\right| \leqslant L\left|x^{\prime}-x^{\prime \prime}\right|$
    3. $\text{Cauchy}$ 中值定理：若 $f(x)$ 与 $g(x)$ 在闭区间 $[a, b]$ 上连续，在开区间 $(a, b)$ 内可导，且 $g^{\prime}(x) \neq 0$．则在 $(a, b)$ 内至少存在一点 $\xi$，使 $\dfrac{f(b)-f(a)}{g(b)-g(a)}=\dfrac{f^{\prime}(\xi)}{g^{\prime}(\xi)}$

2. $\text{Taylor}$ 公式：若 $f(x)$ 在 $x=0$ 点的某个邻域内有直到 $n+1$ 阶连续导数，则在此邻域内有

    $$
    f(x)=f(0)+f^{\prime}(0) x+\dfrac{f^{\prime \prime}(0)}{2 !} x^{2}+\cdots+\dfrac{f^{(n)}(0)}{n !} x^{n}+R_{n}(x)
    $$

    是函数 $f(x)$ 在 $x=0$ 点附近关于 $x$ 的幂函数展开式，也称作 $\text{Taylor}$ 公式

    1. $R_{n}(x)=\dfrac{f^{(n+1)}(\xi)}{(n+1) !} x^{n+1}$，$\xi \in (0, x)$．称 $R_n(x)$ 为 $\text{Lagrange}$ 余项
    2. 当 $x \rightarrow 0$ 时，$R_{n}(x)$ 是关于 $x^{n}$ 的高阶无穷小，因此当 $|x|$ 充分小时，余项 $R_{n}(x)=o\left(x^{n}\right)$，称为 $\text{Peano}$ 余项

## 2.3 多元微分法
### 2.3.1 偏导数
1. 二元函数的偏导数
    1. 偏导数：设 $D \subset \mathbf{R}^{2}$ 为开集，$z=f(x, y) \ ((x, y) \in D)$ 是定义在 $D$ 上的二元函数，$\left(x_{0}, y_{0}\right) \in D$ 为一定点．如果存在极限 ${\displaystyle \lim _{\Delta x \rightarrow 0} \frac{f\left(x_{0}+\Delta x, y_{0}\right)-f\left(x_{0}, y_{0}\right)}{\Delta x}}$，则称函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 可偏导，并称此极限为 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 的偏导数，记为 $\dfrac{\partial z}{\partial x}\left(x_{0}, y_{0}\right)$ 或 $f_{x}\left(x_{0}, y_{0}\right)$ 或 $\dfrac{\partial f}{\partial x}\left(x_{0}, y_{0}\right)$．若 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 和 $y$ 均可偏导，则简称 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 可偏导
    2. 偏导函数：如果函数 $f$ 在 $D$ 中每一点都关于 $x$ 可偏导，则 $D$ 中每一点 $(x, y)$ 与其相应的 $f$ 关于 $x$ 的偏导数 $f_{x}(x, y)$ 构成了一种对应关系即二元函数关系，称为 $f$ 关于 $x$ 的偏导函数（也称为偏导数），记为 $\dfrac{\partial z}{\partial x}$ 或 $f_{x}(x, y)$ 或 $\dfrac{\partial f}{\partial x}$
    3. 方向导数：设 $D \subset \mathbf{R}^{2}$ 为开集，$z=f(x, y) \ ((x, y) \in D)$ 是定义在 $D$ 上的二元函数，$\left(x_{0}, y_{0}\right) \in D$ 为一定点，$\boldsymbol{v}=(\cos \alpha, \sin \alpha)$ 为一个方向．如果极限 ${\displaystyle \lim _{t \rightarrow 0+} \dfrac{f\left(x_{0}+t \cos \alpha, y_{0}+t \sin \alpha\right)-f\left(x_{0}, y_{0}\right)}{t}}$ 存在，则称此极限为函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 的沿方向 $\boldsymbol{v}$ 的方向导数，记为 $\dfrac{\partial f}{\partial \boldsymbol{v}}\left(x_{0}, y_{0}\right)$
2. $n$ 元函数的偏导数：设 $\boldsymbol{x}^{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 为开集 $D \subset \mathbf{R}^{n}$ 中一定点，定义 $n$ 元函数

    $$
    u=f\left(x_{1}, x_{2}, \cdots, x_{n}\right),\left(x_{1}, x_{2}, \cdots, x_{n}\right) \in D
    $$

    在 $x^{0}$ 点关于 $x_{i}(i=1,2, \cdots, n)$ 的偏导数为

    $$
    \dfrac{\partial f}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right)=\dfrac{\partial f}{\partial x_{i}}\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)=\lim _{\Delta x_{i} \rightarrow 0} \dfrac{f\left(x_{1}^{0}, \cdots, x_{i-1}^{0}, x_{i}^{0}+\Delta x_{i}, x_{i+1}^{0}, \cdots, x_{n}^{0}\right)-f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)}{\Delta x_{i}}
    $$

    如果函数 $f$ 在开集（或区域）$D$ 上每一点关于每个 $x_{i}$ 都可偏导，则称 $f$ 在 $D$ 上可偏导

### 2.3.2 全微分

### 2.3.3 微分学基本定理

### 2.3.4 极值
