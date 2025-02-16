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
    3. 一致连续：设函数 $f(x)$ 在区间 $X$ 内满足对任意的 $\varepsilon>0$，可找到只与 $\varepsilon$ 有关而与 $X$ 内的点 $x$ 无关的 $\eta>0$，使得对 $X$ 内任意两点 $x_{1}$ 和 $x_{2}$，当 $\left|x_{1}-x_{2}\right|<\eta$ 时，总有 $\left|f\left(x_{1}\right)-f\left(x_{2}\right)\right|<\varepsilon$，则称 $f(x)$ 在 $X$ 内一致连续
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
    4. 介值定理：设 $f(x)$ 在 $[a, b]$ 上最小值为 $m$，最大值为 $M$，则对任意 $c \ (m<c<M)$，$[a, b]$ 内至少存在一个 $\xi$ 使得 $f(\xi)=c$
    5. $\text{Cantor}$ 定理：$f(x)$ 在 $[a, b]$ 上一致连续
    6. $\text{Weierstrass}$ 逼近定理：存在多项式函数列 $\{f_{n}(x)\}$ 使得 $f_{n}(x)$ 一致收敛于 $f(x)$

### 2.1.2 多元连续函数
1. 连续性的定义
    1. 多元函数的连续性：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$z=f(\boldsymbol{x})$ 是定义在 $D$ 上的函数，$\boldsymbol{x}_{0} \in D$ 为定点．如果 ${\displaystyle \lim _{x \rightarrow x_{0}} f(x)=f\left(x_{0}\right)}$，则称函数 $f$ 在点 $x_{0}$ 连续
    2. 向量值函数的连续性：设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$x_{0} \in D$ 为定点，$\boldsymbol f: D \rightarrow \mathbf{R}^{m}$ 是向量值函数．如果 $\boldsymbol f$ 满足 ${\displaystyle \lim _{x \rightarrow x_{0}} \boldsymbol f(x)=\boldsymbol f\left(x_{0}\right)}$，则称 $\boldsymbol f$ 在 $x_{0}$ 点连续
        1. 设点集 $K \subseteq \mathbf{R}^{n}, \boldsymbol{f}: K \rightarrow \mathbf{R}^{m}$ 为向量值函数，$\boldsymbol{x}_{0} \in K$．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$ 使得当 $\boldsymbol{x} \in O\left(\boldsymbol{x}_{0}, \delta\right) \cap K$ 时有 $\left|\boldsymbol{f}(\boldsymbol{x})-\boldsymbol{f}\left(\boldsymbol{x}_{0}\right)\right|<\varepsilon$，则称 $\boldsymbol{f}$ 在点 $\boldsymbol{x}_{0}$ 连续．如果映射 $\boldsymbol{f}$ 在 $K$ 上每一点连续，则称 $\boldsymbol{f}$ 在 $K$ 上连续，或称映射 $\boldsymbol{f}$ 为 $K$ 上的连续映射
        2. 设 $D$ 是 $\mathbf{R}^{n}$ 上的开集，$\boldsymbol{x}_{0} \in D$ 为定点，则映射 $\boldsymbol f: D \rightarrow \mathbf{R}^{m}$ 在 $\boldsymbol{x}_{0}$ 点连续当且仅当函数 $f_{1}, f_{2}, \cdots, f_{m}$ 在 $x_{0}$ 点连续
        3. 如果 $\boldsymbol g$ 在 $D$ 上连续，$\boldsymbol f$ 在 $\Omega$ 上连续，那么复合映射 $\boldsymbol f \circ \boldsymbol g$ 在 $D$ 上连续
    3. 一致连续：设 $K$ 是 $\mathbf{R}^{n}$ 中点集，$\boldsymbol f: K \rightarrow \mathbf{R}^{m}$ 为映射．如果对于任意给定的 $\varepsilon>0$，存在 $\delta>0$ 使得 $\left|f\left(x^{\prime}\right)-f\left(x^{\prime \prime}\right)\right|<\varepsilon$ 对于 $K$ 中所有满足 $\left|\boldsymbol{x}^{\prime}-\boldsymbol{x}^{\prime \prime}\right|<\delta$ 的 $\boldsymbol{x}^{\prime}, \boldsymbol{x}^{\prime \prime}$ 成立，则称 $\boldsymbol{f}$ 在 $K$ 上一致连续
2. 连续函数的性质
    1. 紧集上的连续映射：设 $S$ 为 $\mathbf R^n$ 上的点集，如果 $S$ 的任意一个开覆盖 $\{U_n\}$ 中总存在一个有限子覆盖，则称 $S$ 为紧集
        1. 连续映射将紧集映射成紧集
        2. 有界性定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 在 $K$ 上有界
        3. 最值定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 在 $K$ 上必能取到最大值和最小值．即存在 $\xi_{1}, \boldsymbol{\xi}_{2} \in K$，使得对于一切 $x \in K$ 成立
        4. 一致连续性定理：设 $K$ 是 $\mathbf{R}^{n}$ 中紧集，$\boldsymbol f: K \rightarrow \mathbf{R}^{m}$ 为连续映射，则 $\boldsymbol f$ 在 $K$ 上一致连续
    2. 连通集上的连续映射：连通的开集称为（开）区域，（开）区域的闭包称为闭区域
        1. 连续映射将连通集映射成连通集，将连通的紧集映射成闭区间
        2. 介值定理：设 $K$ 为 $\mathbf{R}^{n}$ 中连通的紧集，$f$ 是 $K$ 上的连续函数，则 $f$ 的值域是闭区间 $[m, M]$

        !!! note "凸区域"
            设 $D \subseteq \mathbf{R}^{n}$ 是区域，若对于任意两点 $x_{0}, x_{1} \in D$ 和一切 $\lambda \in[0,1]$ 恒有 $\boldsymbol{x}_{0}+\lambda\left(\boldsymbol{x}_{1}-\boldsymbol{x}_{0}\right) \in D$，则称 $D$ 为凸区域

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

2. $\text{Euclid}$ 空间基本定理：以下四个定理相互等价
    1. $\text{Cantor}$ 闭区域套定理：设 $\left\{S_{k}\right\}$ 是 $\mathbf{R}^{n}$ 上的非空闭集序列，满足 $S_{1} \supset S_{2} \supset \cdots \supset S_{k} \supset S_{k+1} \supset \cdots$ 及 ${\displaystyle \lim _{k \rightarrow \infty} \operatorname{diam} S_{k}=0}$，则存在惟一点属于 ${\displaystyle \bigcap_{k=1}^{\infty} S_{k}}$．这里 $\operatorname{diam} S=\sup \{|x-y| \mid x, y \in S\}$
    2. $\text{Weierstrass}$ 定理：$\mathbf{R}^{n}$ 上的有界点列 $\left\{\boldsymbol{x}_{k}\right\}$ 中必有收敛子列
    3. $\text{Heine}-\text{Borel}$ 定理：$\mathbf{R}^{n}$ 上的点集 $S$ 是紧集当且仅当其是有界闭集
    4. $\text{Cauchy}$ 收敛原理：$\mathbf{R}^{n}$ 上的点列 $\left\{\boldsymbol{x}_{k}\right\}$ 收敛当且仅当对任意给定 $\varepsilon>0$，存在 $K \in \mathbf Z_+$ 使得对任意 $k, l>K$ 有 $\left|\boldsymbol{x}_{l}-\boldsymbol{x}_{k}\right|<\varepsilon$

## 2.2 一元微分法
### 2.3.1 导数
1. 导数的定义：设函数 $y=f(x)$ 在 $x_{0}$ 附近有定义，对应于自变量的任一改变量 $\Delta x \ (\Delta x>0$ 或 $\Delta x<0)$，函数的改变量为 $\Delta y=f\left(x_{0}+\Delta x\right)-f\left(x_{0}\right)$．若极限

    $$
    \lim _{\Delta x \rightarrow 0} \dfrac{\Delta y}{\Delta x}=\lim _{\Delta x \rightarrow 0} \dfrac{f\left(x_{0}+\Delta x\right)-f\left(x_{0}\right)}{\Delta x}
    $$

    存在，则称此极限值为函数 $f(x)$ 在点 $x_{0}$ 的导数（微商），记作 $f^{\prime}\left(x_{0}\right)$ 或 $y^{\prime}\left(x_{0}\right), \dfrac{\mathrm{d} y}{\mathrm{d} x}\left(x_{0}\right), \dfrac{\mathrm{d} f}{\mathrm{d} x}\left(x_{0}\right)$，此时称 $f(x)$ 在点 $x_{0}$ 的导数存在，或称 $f(x)$ 在点 $x_{0}$ 可导

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
        \dfrac{\mathrm{d} y}{\mathrm{d} x}=\dfrac{\mathrm{d} y}{\mathrm{d} u} \cdot \dfrac{\mathrm{d} u}{\mathrm{d} x}=f^{\prime}(g(x)) g^{\prime}(x)
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
1. 可微性：若 $y=f(x)$ 是定义在某一区间上的函数，设 $\Delta y=f(x+\Delta x)-f(x)=A \Delta x+o(\Delta x) \ (\Delta x \rightarrow 0)$，其中 $A$ 是 $x$ 的函数, 而与 $\Delta x$ 无关，则称 $f(x)$ 在点 $x$ 是可微的，且称 $A \Delta x$ 为 $f(x)$ 在点 $x$ 的微分，记为 $\mathrm{d} y$ 或 $\mathrm{d} f(x)$
    1. 函数的可微性与可导性等价
    2. 由于 $A \Delta x$ 是 $\Delta x$ 的线性函数，且当 $\Delta x$ 充分小时 $\Delta y \sim A \Delta x$，则称 $\mathrm{d} y$ 是 $\Delta y$ 的线性主部
    3. 高阶微分：定义 $n$ 阶微分 $\mathrm{d}^n y = f^{(n)}(x) \mathrm{d} x^n$
2. 微分的运算法则
    1. $\mathrm{d}[f(x) \pm g(x)]=\mathrm{d} f(x) \pm \mathrm{d} g(x)$
    2. $\mathrm{d}[f(x) \cdot g(x)]=g(x) \mathrm{d} f(x)+f(x) \mathrm{d} g(x)$
    3. $\mathrm{d}\left[\dfrac{f(x)}{g(x)}\right]=\dfrac{g(x) \mathrm{d} f(x)-f(x) \mathrm{d} g(x)}{g^{2}(x)} \ (g(x) \neq 0)$
    4. 复合函数的微分：设有复合函数 $y=f(u), u=g(x)$，则

        $$
        \mathrm{d} y = f^{\prime}(u) \mathrm{d} u = f^{\prime}(g(x)) g^{\prime}(x) \mathrm{d} x
        $$

        这种性质称为一阶微分的形式不变性，而高阶微分通常不具有形式不变性

## 2.3 多元微分法
### 2.3.1 偏导数
1. 二元函数的偏导数：设 $D \subseteq \mathbf{R}^{2}$ 为开集，$z=f(x, y) \ ((x, y) \in D)$ 是定义在 $D$ 上的二元函数，$\left(x_{0}, y_{0}\right) \in D$ 为一定点．如果存在极限 ${\displaystyle \lim _{\Delta x \rightarrow 0} \frac{f\left(x_{0}+\Delta x, y_{0}\right)-f\left(x_{0}, y_{0}\right)}{\Delta x}}$，则称函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 可偏导，并称此极限为 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 的偏导数，记为 $\dfrac{\partial z}{\partial x}\left(x_{0}, y_{0}\right)$ 或 $f_{x}\left(x_{0}, y_{0}\right)$ 或 $\dfrac{\partial f}{\partial x}\left(x_{0}, y_{0}\right)$．若 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 关于 $x$ 和 $y$ 均可偏导，则简称 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 可偏导
    1. 偏导函数：如果函数 $f$ 在 $D$ 中每一点都关于 $x$ 可偏导，则 $D$ 中每一点 $(x, y)$ 与其相应的 $f$ 关于 $x$ 的偏导数 $f_{x}(x, y)$ 构成了一种对应关系即二元函数关系，称为 $f$ 关于 $x$ 的偏导函数（也称为偏导数），记为 $\dfrac{\partial z}{\partial x}$ 或 $f_{x}(x, y)$ 或 $\dfrac{\partial f}{\partial x}$
    2. 方向导数：设 $D \subseteq \mathbf{R}^{2}$ 为开集，$z=f(x, y) \ ((x, y) \in D)$ 是定义在 $D$ 上的二元函数，$\left(x_{0}, y_{0}\right) \in D$ 为一定点，$\boldsymbol{v}=(\cos \alpha, \sin \alpha)$ 为一个方向．如果极限 ${\displaystyle \lim _{t \rightarrow 0+} \dfrac{f\left(x_{0}+t \cos \alpha, y_{0}+t \sin \alpha\right)-f\left(x_{0}, y_{0}\right)}{t}}$ 存在，则称此极限为函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 的沿方向 $\boldsymbol{v}$ 的方向导数，记为 $\dfrac{\partial f}{\partial \boldsymbol{v}}\left(x_{0}, y_{0}\right)$
    3. 高阶偏导数：设 $z=f(x, y)$ 在区域 $D \subseteq \mathbf{R}^{2}$ 上具有偏导函数 $\dfrac{\partial z}{\partial x}=f_{x}(x, y)$ 与 $\dfrac{\partial z}{\partial y}=f_{y}(x, y)$，那么在 $D$ 上，$f_{x}(x, y)$ 与 $f_{y}(x, y)$ 都是 $x, y$ 的二元函数．如果这两个偏导函数的偏导数也存在，则称它们是 $f(x, y)$ 的二阶偏导数，二阶及二阶以上的偏导数统称为高阶偏导数
        1. 二阶偏导数：
            1. $\dfrac{\partial^{2} z}{\partial x^{2}}=\dfrac{\partial}{\partial x}\left(\dfrac{\partial z}{\partial x}\right)=\dfrac{\partial}{\partial x}\left(f_{x}(x, y)\right)=f_{x x}(x, y)$
            2. $\dfrac{\partial^{2} z}{\partial x \partial y}=\dfrac{\partial}{\partial x}\left(\dfrac{\partial z}{\partial y}\right)=\dfrac{\partial}{\partial x}\left(f_{y}(x, y)\right)=f_{y x}(x, y)$
            3. $\dfrac{\partial^{2} z}{\partial y \partial x}=\dfrac{\partial}{\partial y}\left(\dfrac{\partial z}{\partial x}\right)=\dfrac{\partial}{\partial y}\left(f_{x}(x, y)\right)=f_{x y}(x, y)$
            4. $\dfrac{\partial^{2} z}{\partial y^{2}}=\dfrac{\partial}{\partial y}\left(\dfrac{\partial z}{\partial y}\right)=\dfrac{\partial}{\partial y}\left(f_{y}(x, y)\right)=f_{y y}(x, y)$
        2. 如果函数 $z=f(x, y)$ 的两个混合偏导数 $f_{x y}$ 和 $f_{y x}$ 在点 $\left(x_{0}, y_{0}\right)$ 连续，那么等式 $f_{x y}\left(x_{0}, y_{0}\right)=f_{y x}\left(x_{0}, y_{0}\right)$ 成立
    4. 链式法则：设 $z=f(x, y) \ ((x, y) \in D_{f})$ 是区域 $D_{f} \subseteq \mathbf{R}^{2}$ 上的二元函数，而 $\boldsymbol{g}: D_{g} \rightarrow \mathbf{R}^{2}$ 是区域 $D_{g} \subseteq \mathbf{R}^{2}$ 上的二元二维向量值函数．如果 $g$ 的值域 $g\left(D_{g}\right) \subseteq D_{f}$，那么可以构造复合函数 $z=f \circ g=f[x(u, v), y(u, v)] \ ((u, v) \in D_{g})$．设 $g$ 在 $\left(u_{0}, v_{0}\right) \in D_{g}$ 点可导，即 $x=x(u, v), y=y(u, v)$ 在 $\left(u_{0}, v_{0}\right)$ 点可偏导．记 $x_{0}=x\left(u_{0}, v_{0}\right), y_{0}=y\left(u_{0}, v_{0}\right)$，如果 $f$ 在 $\left(x_{0}, y_{0}\right)$ 点可微，那么

        $$
        \begin{aligned}
        \dfrac{\partial z}{\partial u}\left(u_{0}, v_{0}\right)&=\dfrac{\partial z}{\partial x}\left(x_{0}, y_{0}\right) \dfrac{\partial x}{\partial u}\left(u_{0}, v_{0}\right)+\dfrac{\partial z}{\partial y}\left(x_{0}, y_{0}\right) \dfrac{\partial y}{\partial u}\left(u_{0}, v_{0}\right) \\
        \dfrac{\partial z}{\partial v}\left(u_{0}, v_{0}\right)&=\dfrac{\partial z}{\partial x}\left(x_{0}, y_{0}\right) \dfrac{\partial x}{\partial v}\left(u_{0}, v_{0}\right)+\dfrac{\partial z}{\partial y}\left(x_{0}, y_{0}\right) \dfrac{\partial y}{\partial v}\left(u_{0}, v_{0}\right)
        \end{aligned}
        $$

2. $n$ 元函数的偏导数：设 $\boldsymbol{x}^{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 为开集 $D \subseteq \mathbf{R}^{n}$ 中一定点，定义 $n$ 元函数

    $$
    u=f\left(x_{1}, x_{2}, \cdots, x_{n}\right),\left(x_{1}, x_{2}, \cdots, x_{n}\right) \in D
    $$

    在 $x^{0}$ 点关于 $x_{i}(i=1,2, \cdots, n)$ 的偏导数为

    $$
    \dfrac{\partial f}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right)=\dfrac{\partial f}{\partial x_{i}}\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)=\lim _{\Delta x_{i} \rightarrow 0} \dfrac{f\left(x_{1}^{0}, \cdots, x_{i-1}^{0}, x_{i}^{0}+\Delta x_{i}, x_{i+1}^{0}, \cdots, x_{n}^{0}\right)-f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)}{\Delta x_{i}}
    $$

    1. 如果函数 $f$ 在开集（或区域）$D$ 上每一点关于每个 $x_{i}$ 都可偏导，则称 $f$ 在 $D$ 上可偏导
    2. 链式法则：设 $z=f\left(y_{1}, y_{2}, \cdots, y_{m}\right) \ (\left(y_{1}, y_{2}, \cdots, y_{m}\right) \in D_{f})$ 为区域 $D_{f} \subseteq \mathbf{R}^{m}$ 上的 $m$ 元函数．又设 $\boldsymbol g: D_{g} \rightarrow \mathbf{R}^{m}$，为区域 $D_{g} \subseteq \mathbf{R}^{n}$ 上的 $n$ 元 $m$ 维向量值函数．如果 $\boldsymbol{g}$ 的值域 $\boldsymbol g\left(D_{g}\right) \subseteq D_{f}$，那么可以构造复合函数

        $$
        z=f \circ \boldsymbol g=f\left[y_{1}\left(x_{1}, x_{2}, \cdots, x_{n}\right), y_{2}\left(x_{1}, x_{2}, \cdots, x_{n}\right), \cdots, y_{m}\left(x_{1}, x_{2}, \cdots, x_{n}\right)\right], \left(x_{1}, x_{2}, \cdots, x_{n}\right) \in D_{g}
        $$

        设 $\boldsymbol g$ 在 $\boldsymbol x^{0} \in D_{g}$ 点可导，即 $y_{1}, y_{2}, \cdots, y_{m}$ 在 $\boldsymbol x^{0}$ 点可偏导，且 $f$ 在 $\boldsymbol{y}^{0}=\boldsymbol{g}\left(\boldsymbol{x}^{0}\right)$ 点可微，则

        $$
        \dfrac{\partial z}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right)=\dfrac{\partial z}{\partial y_{1}}\left(\boldsymbol{y}^{0}\right) \dfrac{\partial y_{1}}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right)+\dfrac{\partial z}{\partial y_{2}}\left(\boldsymbol{y}^{0}\right) \dfrac{\partial y_{2}}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right)+\cdots+\dfrac{\partial z}{\partial y_{m}}\left(\boldsymbol{y}^{0}\right) \dfrac{\partial y_{m}}{\partial x_{i}}\left(\boldsymbol{x}^{0}\right), i=1,2, \cdots, n
        $$

        上式可以用矩阵表示为

        $$
        \begin{bmatrix} \dfrac{\partial z}{\partial x_{1}} & \dfrac{\partial z}{\partial x_{2}} & \cdots & \dfrac{\partial z}{\partial x_{n}} \\ \end{bmatrix}_{\boldsymbol x=\boldsymbol x^{0}}=\begin{bmatrix} \dfrac{\partial z}{\partial y_{1}} & \dfrac{\partial z}{\partial y_{2}} & \cdots & \dfrac{\partial z}{\partial y_{m}} \\ \end{bmatrix}_{\boldsymbol y=\boldsymbol y^{0}}\left[\begin{array}{cccc}
        \dfrac{\partial y_{1}}{\partial x_{1}} & \dfrac{\partial y_{1}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{1}}{\partial x_{n}} \\
        \dfrac{\partial y_{2}}{\partial x_{1}} & \dfrac{\partial y_{2}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{2}}{\partial x_{n}} \\
        \vdots & \vdots & \ddots & \vdots \\
        \dfrac{\partial y_{m}}{\partial x_{1}} & \dfrac{\partial y_{m}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{m}}{\partial x_{n}}
        \end{array}\right]_{\boldsymbol x=\boldsymbol x^{0}}
        $$

        或用向量值函数的导数记号表为 $(f \circ \boldsymbol g)^{\prime}\left(\boldsymbol{x}_{0}\right)=f^{\prime}\left(\boldsymbol{y}_{0}\right) \boldsymbol{g}^{\prime}\left(\boldsymbol{x}_{0}\right)$

3. 向量值函数的导数：设 $D \subseteq \mathbf R^n, f: \mathbf R^n \to \mathbf R^m$，并设点 $\boldsymbol x^0 = (x^0_1, x^0_2, \cdots, x^0_n) \in D$．若 $\boldsymbol{f}$ 的每一个分量函数 $f_{i}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \ (i=1,2, \cdots, m)$ 都在 $\boldsymbol{x}^{0}$ 点可偏导，则称向量值函数 $f$ 在 $x^{0}$ 点可导，并称矩阵

    $$
    \left(\dfrac{\partial f_{i}}{\partial x_{j}}\left(\boldsymbol{x}^{0}\right)\right)_{m \times n}=\left[\begin{array}{cccc}
    \dfrac{\partial f_{1}}{\partial x_{1}}\left(\boldsymbol{x}^{0}\right) & \dfrac{\partial f_{1}}{\partial x_{2}}\left(\boldsymbol{x}^{0}\right) & \cdots & \dfrac{\partial f_{1}}{\partial x_{n}}\left(\boldsymbol{x}^{0}\right) \\
    \dfrac{\partial f_{2}}{\partial x_{1}}\left(\boldsymbol{x}^{0}\right) & \dfrac{\partial f_{2}}{\partial x_{2}}\left(\boldsymbol{x}^{0}\right) & \cdots & \dfrac{\partial f_{2}}{\partial x_{n}}\left(\boldsymbol{x}^{0}\right) \\
    \vdots & \vdots & \ddots & \vdots \\
    \dfrac{\partial f_{m}}{\partial x_{1}}\left(\boldsymbol{x}^{0}\right) & \dfrac{\partial f_{m}}{\partial x_{2}}\left(\boldsymbol{x}^{0}\right) & \cdots & \dfrac{\partial f_{m}}{\partial x_{n}}\left(\boldsymbol{x}^{0}\right)
    \end{array}\right]
    $$

    为向量值函数 $\boldsymbol f$ 在 $x^{0}$ 点的导数或 $\text{Jacobi}$ 矩阵，记为 $\boldsymbol f^{\prime}\left(x^{0}\right), \mathrm{D} \boldsymbol f\left(x^{0}\right)$ 或 $J_{\boldsymbol f}\left(x^{0}\right)$．如果向量值函数 $\boldsymbol{f}$ 在 $D$ 上每一点可导，则称 $\boldsymbol{f}$ 在 $D$ 上可导．此时对应关系 $x \in D \mapsto \boldsymbol f^{\prime}(x)=J_{\boldsymbol f}(x)$ 称为 $f$ 在 $D$ 上的导数, 记为 $\boldsymbol f^{\prime}\left(x\right), \mathrm{D} \boldsymbol f\left(x\right)$ 或 $J_{\boldsymbol f}\left(x\right)$

    1. 向量值函数 $\boldsymbol{f}$ 连续、可导和可微就是它的每一个坐标分量函数 $f_{i}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \ (i=1,2, \cdots, m)$ 连续、可导和可微
        1. 若 $\boldsymbol{f}$ 的每一个分量函数 $f_{i}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \ (i=1,2, \cdots, m)$ 的偏导数都在 $\boldsymbol{x}^{0}$ 点连续，即 $f$ 的 $\text{Jacobi}$ 矩阵的每个元素都在 $x^{0}$ 点连续，则称向量值函数 $f$ 的导数在 $x^{0}$ 点连续．若 $\boldsymbol f$ 的导数在 $D$ 上每一点连续，则称 $\boldsymbol f$ 的导数在 $D$ 上连续
        2. 若存在只与 $\boldsymbol{x}^{0}$ 有关，与 $\Delta \boldsymbol{x}$ 无关的矩阵 $\boldsymbol{A}$ 使得在 $\boldsymbol{x}^{0}$ 点附近有 $\Delta y=f\left(x^{0}+\Delta x\right)-f\left(x^{0}\right)=A \Delta x+o(\Delta x)$ （其中 $\Delta x=\left(\Delta x_{1}, \Delta x_{2}, \cdots, \Delta x_{n}\right)$，$o(\Delta x)$ 是列向量，其模是 $\|\Delta x\|$ 的高阶无穷小量），则称向量值函数 $f$ 在 $x^{0}$ 点可微，并称 $\boldsymbol{A} \Delta x$ 为 $f$ 在 $\boldsymbol{x}^{0}$ 点的微分，记为 $\mathrm{d} \boldsymbol{y}$
            1. 若将 $\Delta \boldsymbol{x}$ 记为 $\mathrm{d} \boldsymbol{x}=\left(\mathrm{d} x_{1}, \mathrm{d} x_{2}, \cdots, \mathrm{d} x_{n}\right)$，那么有 $\mathrm{d} \boldsymbol{y}=\boldsymbol{A} \mathrm{d} \boldsymbol{x}$
            2. 如果向量值函数 $\boldsymbol{f}$ 在 $D$ 上每一点可微，则称 $\boldsymbol{f}$ 在 $D$ 上可微
        3. 向量值函数 $\boldsymbol{f}$ 在 $x^{0}$ 点可微的充分必要条件是它的坐标分量函数 $f_{i}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \ (i=1,2, \cdots, m)$ 都在 $x^{0}$ 点可微．此时成立微分公式 $\mathrm{d} \boldsymbol{y}=\boldsymbol{f}^{\prime}\left(\boldsymbol{x}^{0}\right) \mathrm{d} \boldsymbol{x}$
    2. 链式法则：设 $\boldsymbol f: D_{f}\left(\subseteq \mathbf{R}^{k}\right) \rightarrow \mathbf{R}^{m}$ 与 $\boldsymbol g: D_{g}\left(\subseteq \mathbf{R}^{n}\right) \rightarrow \mathbf{R}^{k}$ 分别是多元向量值函数，且分别在 $D_{f}$ 与 $D_{g}$ 上具有连续导数．如果 $\boldsymbol g$ 的值域 $\boldsymbol g\left(D_{g}\right) \subseteq D_{f}$，并记 $\boldsymbol{u}=\boldsymbol{g}(\boldsymbol{x})$，那么复合向量值函数 $\boldsymbol f \circ \boldsymbol g$ 在 $D_{g}$ 上也具有连续的导数，并且成立等式

        $$
        (\boldsymbol f \circ \boldsymbol g)^{\prime}(\boldsymbol x)=\boldsymbol f^{\prime}(\boldsymbol u) \cdot \boldsymbol g^{\prime}(\boldsymbol x)=\boldsymbol f^{\prime}[\boldsymbol g(x)] \cdot \boldsymbol g^{\prime}(\boldsymbol x)
        $$

        其中 $\boldsymbol f^{\prime}(\boldsymbol u), \boldsymbol g^{\prime}(\boldsymbol x)$ 和 $(\boldsymbol f \circ \boldsymbol g)^{\prime}(\boldsymbol x)$ 是相应的导数，即 $\text{Jacobi}$ 矩阵

4. 隐函数存在定理
    1. 一元隐函数存在定理：若二元函数 $F(x, y)$ 满足条件
        1. $F\left(x_{0}, y_{0}\right)=0$
        2. 在闭矩形 $D=\left\{(x, y)|| x-x_{0}|\leqslant a| y-,y_{0} \mid \leqslant b\right\}$ 上，$F(x, y)$ 连续且具有连续偏导数
        3. $F_{y}\left(x_{0}, y_{0}\right) \neq 0$

        那么

        1. 点 $\left(x_{0}, y_{0}\right)$ 附近可从方程 $F(x, y)=0$ 惟一确定隐函数 $y=f(x) \ (x \in O\left(x_{0}, \rho\right))$ 满足 $F(x, f(x))=0$ 以及 $y_{0}=f\left(x_{0}\right)$
        2. 隐函数 $y=f(x)$ 在 $x \in O\left(x_{0}, \rho\right)$ 上连续
        3. 急函数 $y=f(x)$ 在 $x \in O\left(x_{0}, \rho\right)$ 上具有连续的导数，且 $\dfrac{\mathrm{d} y}{\mathrm{d} x}=-\dfrac{F_{x}(x, y)}{F_{y}(x, y)}$

    2. 多元隐函数存在定理：若 $n+1$ 元函数 $F\left(x_{1}, x_{2}, \cdots, x_{n}, y\right)$ 满足条件
        1. $F\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y^{0}\right)=0$
        2. 在闭长方体 $D=\left\{(x, y)|| y-y^{0}|\leqslant b,| x_{i}-x_{i}^{0} \mid \leqslant a_{i}, i=1,2, \cdots, n\right\}$ 上，函数 $F$ 连续且具有连续偏导数 $F_{y}, F_{x_{i}}$
        3. $F_{y}\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y^{0}\right) \neq 0$

        那么

        1. 在点 $\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y^{0}\right)$ 附近可以从函数方程 $F\left(x_{1}, x_{2}, \cdots, x_{n}, y\right)=0$ 惟一确定隐函数

            $$
            y=f\left(x_{1}, x_{2}, \cdots, x_{n}\right), \left(x_{1}, x_{2}, \cdots, x_{n}\right) \in O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)
            $$

            满足 $F\left(x_{1}, x_{2}, \cdots, x_{n}, f\left(x_{1}, x_{2}, \cdots, x_{n}\right)\right)=0$ 以及 $y^{0}=f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$

        2. 隐函数 $y=f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在 $O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)$ 上连续
        3. 隐函数 $y=f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在 $O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)$ 上具有连续的偏导数且

            $$
            \dfrac{\partial y}{\partial x_{i}}=-\dfrac{F_{x_{i}}\left(x_{1}, x_{2}, \cdots, x_{n}, y\right)}{F_{,}\left(x_{1}, x_{2}, \cdots, x_{n}, y\right)}, i=1,2, \cdots, n
            $$

    3. 多元向量值隐函数存在定理：设 $m$ 个 $n+m$ 元函数 $F_{i}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)(i=1,2, \cdots, m)$ 满足以下条件
        1. $F_{i}\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y_{1}^{0}, y_{2}^{0}, \cdots, y_{m}^{0}\right)=0 \ (i=1,2, \cdots, m)$
        2. 在闭长方体

            $$
            D=\left\{\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right) \mid \left|x_{i}-x_{i}^{0}\right| \leqslant a_{i},\left|y_{j}-y_{j}^{0}\right| \leqslant b_{j}, i=1,2, \cdots, n ; j=1, 2, \cdots, m\right\}
            $$

            上函数 $F_{i} \ (i=1,2, \cdots, m)$ 连续且具有连续偏导数

        3. 在 $\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y_{1}^{0}, y_{2}^{0}, \cdots, y_{m}^{0}\right)$ 点处，$\text{Jacobi}$ 行列式 $\dfrac{\partial\left(F_{1}, F_{2}, \cdots, F_{m}\right)}{\partial\left(y_{1}, y_{2}, \cdots, y_{m}\right)} \neq 0$

        那么

        1. 在点 $\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}, y_{1}^{0}, y_{2}^{0}, \cdots, y_{m}^{0}\right)$ 的某个邻域上，可以从函数方程组

            $$
            \left\{\begin{array}{l}
            F_{1}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0 \\
            F_{2}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0 \\
            \cdots \\
            F_{m}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0
            \end{array}\right.
            $$

            惟一确定向量值隐函数

            $$
            \left[\begin{array}{c}
            y_{1} \\
            y_{2} \\
            \vdots \\
            y_{m}
            \end{array}\right]=\left[\begin{array}{c}
            f_{1}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \\
            f_{2}\left(x_{1}, x_{2}, \cdots, x_{n}\right) \\
            \vdots \\
            f_{m}\left(x_{1}, x_{2}, \cdots, x_{n}\right)
            \end{array}\right], \left(x_{1}, x_{2}, \cdots, x_{n}\right) \in O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)
            $$

            满足方程 $F_{i}\left(x_{1}, x_{2}, \cdots, x_{n}, f_{1}\left(x_{1}, x_{2}, \cdots, x_{n}\right), f_{2}\left(x_{1}, x_{2}, \cdots, x_{n}\right), \cdots, f_{m}\left(x_{1}, x_{2}, \cdots, x_{n}\right)\right)=0$ 以及 $y_{i}^{0}=f_{i}\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right) \ (i=1,2, \cdots, m)$

        2. 这个向量值隐函数在 $O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)$ 上连续
        3. 这个向量值隐函数在 $O\left(\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right), \rho\right)$ 上具有连续的导数，且

            $$
            \left[\begin{array}{cccc}
            \dfrac{\partial y_{1}}{\partial x_{1}} & \dfrac{\partial y_{1}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{1}}{\partial x_{n}} \\
            \dfrac{\partial y_{2}}{\partial x_{1}} & \dfrac{\partial y_{2}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{2}}{\partial x_{n}} \\
            \vdots & \vdots & \ddots & \vdots \\
            \dfrac{\partial y_{m}}{\partial x_{1}} & \dfrac{\partial y_{m}}{\partial x_{2}} & \cdots & \dfrac{\partial y_{m}}{\partial x_{n}}
            \end{array}\right]=-\left[\begin{array}{cccc}
            \dfrac{\partial F_{1}}{\partial y_{1}} & \dfrac{\partial F_{1}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{1}}{\partial y_{m}} \\
            \dfrac{\partial F_{2}}{\partial y_{1}} & \dfrac{\partial F_{2}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{2}}{\partial y_{m}} \\
            \vdots & \vdots & \ddots & \vdots \\
            \dfrac{\partial F_{m}}{\partial y_{1}} & \dfrac{\partial F_{m}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{m}}{\partial y_{m}}
            \end{array}\right]^{-1}\left[\begin{array}{cccc}
            \dfrac{\partial F_{1}}{\partial x_{1}} & \dfrac{\partial F_{1}}{\partial x_{2}} & \cdots & \dfrac{\partial F_{1}}{\partial x_{n}} \\
            \dfrac{\partial F_{2}}{\partial x_{1}} & \dfrac{\partial F_{2}}{\partial x_{2}} & \cdots & \dfrac{\partial F_{2}}{\partial x_{n}} \\
            \vdots & \vdots & \ddots & \vdots \\
            \dfrac{\partial F_{m}}{\partial x_{1}} & \dfrac{\partial F_{m}}{\partial x_{2}} & \cdots & \dfrac{\partial F_{m}}{\partial x_{n}}
            \end{array}\right]
            $$

            在具体计算向量值隐函数的导数时，通常分别对 $F_{i}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0 \ (i=1,2, \cdots, m)$ 求偏导，得到 ${\displaystyle \dfrac{\partial F_{i}}{\partial x_{j}}+\sum_{k=1}^{m} \dfrac{\partial F_{i}}{\partial y_{k}} \dfrac{\partial y_{k}}{\partial x_{j}}=0 \ (i=1,2, \cdots, m)}$，解方程得到

            $$
            \dfrac{\partial y_{k}}{\partial x_{j}}=-\dfrac{\dfrac{\partial\left(F_{1}, \cdots, F_{k-1}, F_{k}, F_{k+1}, \cdots, F_{m}\right)}{\partial\left(y_{1}, \cdots, y_{k-1}, x_{j}, y_{k+1}, \cdots, y_{m}\right)}}{\dfrac{\partial\left(F_{1}, F_{2}, \cdots, F_{m}\right)}{\partial\left(y_{1}, y_{2}, \cdots, y_{m}\right)}}, k=1,2, \cdots, m ; j=1,2, \cdots, n
            $$

        !!! note "$\text{Jacobi}$ 行列式"
            对于一般的 $m$ 个 $n+m$ 元函数组成的方程组

            $$
            \left\{\begin{array}{l}
            F_{1}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0 \\
            F_{2}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0 \\
            \cdots  \\
            F_{m}\left(x_{1}, x_{2}, \cdots, x_{n}, y_{1}, y_{2}, \cdots, y_{m}\right)=0
            \end{array}\right.
            $$

            称

            $$
            \dfrac{\partial\left(F_{1}, F_{2}, \cdots, F_{m}\right)}{\partial\left(y_{1}, y_{2}, \cdots, y_{m}\right)}=\left|\begin{array}{cccc}
            \dfrac{\partial F_{1}}{\partial y_{1}} & \dfrac{\partial F_{1}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{1}}{\partial y_{m}} \\
            \dfrac{\partial F_{2}}{\partial y_{1}} & \dfrac{\partial F_{2}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{2}}{\partial y_{m}} \\
            \vdots & \vdots & & \vdots \\
            \dfrac{\partial F_{m}}{\partial y_{1}} & \dfrac{\partial F_{m}}{\partial y_{2}} & \cdots & \dfrac{\partial F_{m}}{\partial y_{m}}
            \end{array}\right|
            $$

            为函数 $F_{1}, F_{2}, \cdots, F_{m}$ 关于变量 $y_{1}, y_{2}, \cdots, y_{m}$ 的 $\text{Jacobi}$ 行列式

5. 逆映射定理：设 $\boldsymbol{P}_{0}=\left(u_{0}, v_{0}\right) \in D, x_{0}=x\left(u_{0}, v_{0}\right), y_{0}=y\left(u_{0}, v_{0}\right), \boldsymbol{P}_{0}^{\prime}=\left(x_{0}, y_{0}\right)$，且 $\boldsymbol{f}$ 在 $D$ 上具有连续导数．如果在 $\boldsymbol{P}_{0}$ 点处 $\boldsymbol{f}$ 的 $\text{Jacobi}$ 行列式 $\dfrac{\partial(x, y)}{\partial(u, v)} \neq 0$，那么存在 $\boldsymbol{P}_{0}^{\prime}$ 的一个邻域 $O\left(\boldsymbol{P}_{0}^{\prime}, \rho\right)$，在这个邻域上存在 $\boldsymbol f$ 的具有连续导数的逆映射 $\boldsymbol g$

    $$
    \left\{\begin{array}{l}
    u=u(x, y) \\
    v=v(x, y)
    \end{array}
    \quad (x, y) \in O\left(\boldsymbol{P}_{0}^{\prime}, \rho\right)
    \right.
    $$

    1. $u_{0}=u\left(x_{0}, y_{0}\right), v_{0}=v\left(x_{0}, y_{0}\right)$
    2. $\dfrac{\partial u}{\partial x}=\dfrac{\partial y}{\partial v} / \dfrac{\partial(x, y)}{\partial(u, v)}, \dfrac{\partial u}{\partial y}=-\dfrac{\partial x}{\partial v} / \dfrac{\partial(x, y)}{\partial(u, v)}, \dfrac{\partial v}{\partial x}=-\dfrac{\partial y}{\partial u} / \dfrac{\partial(x, y)}{\partial(u, v)}, \dfrac{\partial v}{\partial y}=\dfrac{\partial x}{\partial u} / \dfrac{\partial(x, y)}{\partial(u, v)}$

### 2.3.2 全微分
1. 全微分：设 $D \subseteq \mathbf{R}^{2}$ 为开集，$z=f(x, y) \ ((x, y) \in D)$ 是定义在 $D$ 上的二元函数，$\left(x_{0}, y_{0}\right) \in D$ 为一定点．若存在只与点 $\left(x_{0}, y_{0}\right)$ 有关而与 $\Delta x, \Delta y$ 无关的常数 $A$ 和 $B$，使得 $\Delta z=A \Delta x+B \Delta y+o\left(\sqrt{\Delta x^{2}+\Delta y^{2}}\right)$，这里 $o\left(\sqrt{\Delta x^{2}+\Delta y^{2}}\right)$ 表示在 $\sqrt{\Delta x^{2}+\Delta y^{2}} \rightarrow 0$ 时比 $\sqrt{\Delta x^{2}+\Delta y^{2}}$ 高阶的无穷小量．则称函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 处是可微的，并称其线性主要部分 $A \Delta x+B \Delta y$ 为 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 处的全微分，记为 $\mathrm{d} z\left(x_{0}, y_{0}\right)$ 或 $\mathrm{d} f\left(x_{0}, y_{0}\right)$
    1. 全微分公式：$\mathrm{d} f\left(x_{0}, y_{0}\right)=\dfrac{\partial f}{\partial x}\left(x_{0}, y_{0}\right) \mathrm{d} x+\dfrac{\partial f}{\partial y}\left(x_{0}, y_{0}\right) \mathrm{d} y$
    2. 方向导数：设 $D \subseteq \mathbf{R}^{2}$ 为开集，$\left(x_{0}, y_{0}\right) \in D$ 为一定点．如果函数 $z=f(x, y) \ ((x, y) \in D)$ 在 $\left(x_{0}, y_{0}\right)$ 可微，那么对于任一方向 $\boldsymbol{v}=(\cos \alpha, \sin \alpha)$，$f$ 在 $\left(x_{0}, y_{0}\right)$ 点沿方向 $\boldsymbol{v}$ 的方向导数存在，且

        $$
        \dfrac{\partial f}{\partial \boldsymbol v}\left(x_{0}, y_{0}\right)=\dfrac{\partial f}{\partial x}\left(x_{0}, y_{0}\right) \cos \alpha+\dfrac{\partial f}{\partial y}\left(x_{0}, y_{0}\right) \sin \alpha
        $$

    3. 可微性的性质
        1. 可微必连续：如果函数 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 处可微，则 $f$ 在点 $\left(x_{0}, y_{0}\right)$ 处连续
        2. 设函数 $z=f(x, y)$ 在 $\left(x_{0}, y_{0}\right)$ 点的某个邻域上存在偏导数，并且偏导数在 $\left(x_{0}, y_{0}\right)$ 点连续，那么 $f$ 在 $\left(x_{0}, y_{0}\right)$ 点可微

2. 高阶微分：在 $z$ 的 $k$ 阶微分 $\mathrm{d}^{k} z$ 的基础上定义它的 $k+1$ 阶微分为（如果存在）$\mathrm{d}^{k+1} z=\mathrm{d}\left(\mathrm{d}^{k} z\right) \ (k=1,2, \cdots)$
    1. 对于二元函数，约定

        $$
        \left(\dfrac{\partial}{\partial x}\right)^{p}=\dfrac{\partial^{p}}{\partial x^{p}}, \left(\dfrac{\partial}{\partial x}\right)^{p}\left(\dfrac{\partial}{\partial y}\right)^{q}=\dfrac{\partial^{p+q}}{\partial x^{p} \partial y^{q}}, \left(\dfrac{\partial}{\partial y}\right)^{q}=\dfrac{\partial^{q}}{\partial y^{q}} \ (p, q=1,2, \cdots)
        $$

        则有

        $$
        \mathrm{d}^{k} z=\left(\mathrm{d} x \dfrac{\partial}{\partial x}+\mathrm{d} y \dfrac{\partial}{\partial y}\right)^{k} z \ (k=1,2, \cdots)
        $$

    2. 对 $n$ 元函数 $u=f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 可同样定义各阶微分，并且有

        $$
        \mathrm{d}^{k} u=\left(\mathrm{d} x_{1} \dfrac{\partial}{\partial x_{1}}+\mathrm{d} x_{2} \dfrac{\partial}{\partial x_{2}}+\cdots+\mathrm{d} x_{n} \dfrac{\partial}{\partial x_{n}}\right)^{k} u \ (k=1,2, \cdots)
        $$

    3. 一阶微分形式不变性：对于多元函数 $z=f(\boldsymbol{y})$，其中 $\boldsymbol{y}=\left(y_{1}, y_{2}, \cdots, y_{m}\right)$
        1. 当 $\boldsymbol{y}$ 为自变量时，一阶全微分形式为 $\mathrm{d} z=f^{\prime}(\boldsymbol{y}) \mathrm{d} y$
        2. 当 $\boldsymbol{y}$ 为中间变量 $\boldsymbol{y}=\boldsymbol{g}(\boldsymbol{x}) \ \left(\boldsymbol{x}=\left(x_{1}, x_{2}, \cdots, x_{n}\right)\right)$ 时，$\mathrm{d} z=f^{\prime}(\boldsymbol{y}) \boldsymbol{g}^{\prime}(\boldsymbol{x}) \mathrm{d} \boldsymbol{x}=f^{\prime}(\boldsymbol{y}) \mathrm{d} \boldsymbol{y}$

        全微分的形式不变性在高阶微分时不成立

### 2.3.3 极值
1. 多元函数的极值：设 $D \in \mathbf{R}^{n}$ 为开区域，$f(\boldsymbol{x})$ 为定义在 $D$ 上的函数，$\boldsymbol{x}_{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right) \in D$．若存在 $\boldsymbol{x}_{0}$ 的邻域 $O\left(x_{0}, r\right)$ 使得 $f\left(\boldsymbol{x}_{0}\right) \geqslant f(\boldsymbol{x})$ 或 $f\left(\boldsymbol{x}_{0}\right) \leqslant f(\boldsymbol{x}) \ (\boldsymbol{x} \in O\left(\boldsymbol{x}_{0}, r\right))$，则称 $x_{0}$ 为 $f$ 的极大值点或极小值点，称 $f\left(x_{0}\right)$ 为相应的极大值或极小值
    1. 极大值点与极小值点统称为极值点；极大值与极小值统称为极值
    2. 极值点的必要条件：设 $x_{0}$ 为函数 $f$ 的极值点，且 $f$ 在 $\boldsymbol{x}_{0}$ 点可偏导，则 $f$ 在 $\boldsymbol{x}_{0}$ 点的各个一阶偏导数都为零，即

        $$
        f_{x_{1}}\left(\boldsymbol{x}_{0}\right)=f_{x_{2}}\left(\boldsymbol{x}_{0}\right)=\cdots=f_{x_{n}}\left(\boldsymbol{x}_{0}\right)=0
        $$

        使函数 $f$ 的各个一阶偏导数同时为零的点称为 $f$ 的驻点，驻点不一定是极值点

2. 无条件极值：设 $n$ 元函数 $f(\boldsymbol{x})$ 在 $\boldsymbol{x}_{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 附近具有二阶连续偏导数，且 $\boldsymbol{x}_{0}$ 为 $f(\boldsymbol{x})$ 的驻点．那么当二次型 $g(\zeta)=\sum_{i, j=1}^{n} f_{x_{i} x_{j}}\left(x_{0}\right) \zeta_{i} \zeta_{j}$ 正定时，$f\left(\boldsymbol{x}_{0}\right)$ 为极小值；当 $g(\zeta)$ 负定时，$f\left(\boldsymbol{x}_{0}\right)$ 为极大值；当 $g(\zeta)$ 不定时，$f\left(x_{0}\right)$ 不是极值
    1. 记 $a_{i j}=f_{x_{i} x_{j}}\left(\boldsymbol{x}_{0}\right)$，并记

        $$
        \boldsymbol{A}_{k}=\left[\begin{array}{cccc}
        a_{11} & a_{12} & \cdots & a_{1 n} \\
        a_{21} & a_{22} & \cdots & a_{2 n} \\
        \vdots & \vdots & \ddots & \vdots \\
        a_{k 1} & a_{k 2} & \cdots & a_{k k}
        \end{array}\right]
        $$

        称为 $f$ 的 $k$ 阶 $\text{Hessian}$ 矩阵

    2. 若 $\operatorname{det} \boldsymbol{A}_{k}>0$，则二次型 $g(\xi)$ 是正定的，此时 $f\left(\boldsymbol{x}_{0}\right)$ 为极小值；若 $(-1)^{k} \operatorname{det} \boldsymbol{A}_{k}>0$，则二次型 $g(\xi)$ 是负定的，此时 $f\left(\boldsymbol{x}_{0}\right)$ 为极大值（$k=1,2, \cdots, n$）

3. 条件极值：求目标函数 $f(x_1, x_2, \cdots, x_n)$ 在约束条件

    $$
    \left\{\begin{aligned}
    & g_1(x_1, x_2, \cdots, x_n) = 0 \\
    & g_2(x_1, x_2, \cdots, x_n) = 0 \\
    & \cdots \\
    & g_m(x_1, x_2, \cdots, x_n) = 0
    \end{aligned}\right.
    $$

    下的极值．构造 $\text{Lagrange}$ 函数

    $$
    L\left(x_{1}, x_{2}, \cdots, x_{n}, \lambda_{1}, \lambda_{2}, \cdots, \lambda_{m}\right)=f\left(x_{1}, x_{2}, \cdots, x_{n}\right)-\sum_{i=1}^{m} \lambda_{i} g_{i}\left(x_{1}, x_{2}, \cdots, x_{n}\right)
    $$

    则条件极值点在方程组

    $$
    \left\{\begin{aligned}
    & \dfrac{\partial L}{\partial x_k} = \dfrac{\partial f}{\partial x_k} - \sum_{i=1}^m \lambda_i \dfrac{\partial g_i}{\partial x_k} = 0 \\
    & g_l = 0
    \end{aligned}\right. \quad (k = 1, 2, \cdots, n; l = 1, 2, \cdots, m)
    $$

    1. 若点 $\boldsymbol{x}_{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 为函数 $f(\boldsymbol{x})$ 满足约束条件的条件极值点，则必存在 $m$ 个常数 $\lambda_{1}, \lambda_{2}, \cdots, \lambda_{m}$，使得在 $x_{0}$ 点有

        $$
        \operatorname{\mathbf{grad}} f=\lambda_{1} \operatorname{\mathbf{grad}} g_{1}+\lambda_{2} \operatorname{\mathbf{grad}} g_{2}+\cdots+\lambda_{m} \operatorname{\mathbf{grad}} g_{m}
        $$

    2. 设点 $x_{0}=\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 及 $m$ 个常数 $\lambda_{1}, \lambda_{2}, \cdots, \lambda_{m}$ 满足方程组

        $$
        \left\{\begin{aligned}
        & \dfrac{\partial L}{\partial x_k} = \dfrac{\partial f}{\partial x_k} - \sum_{i=1}^m \lambda_i \dfrac{\partial g_i}{\partial x_k} = 0 \\
        & g_l = 0
        \end{aligned}\right. \quad (k = 1, 2, \cdots, n; l = 1, 2, \cdots, m)
        $$

        则当方阵 $\left[\dfrac{\partial^{2} L}{\partial x_{k} \partial x_{1}}\left(x_{0}, \lambda_{1}, \lambda_{2}, \cdots, \lambda_{m}\right)\right]_{n \times n}$ 为正定（负定）矩阵时，$x_{0}$ 为满足约束条件的条件极小（大）值点，因此 $f\left(x_{0}\right)$ 为满足约束条件的条件极小（大）值

## 2.4 微分学基本定理
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
    4. 多元函数中值定理：设 $n$ 元函数 $f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在凸区域 $D \subseteq \mathbf{R}^{n}$ 上可微，则对于 $D$ 内任意两点 $\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 和 $\left(x_{1}^{0}+\Delta x_{1}, x_{2}^{0}+\Delta x_{2}, \cdots, x_{n}^{0}+\Delta x_{n}\right)$，至少存在一个 $\theta \ (0<\theta<1)$，使得

        $$
        \begin{aligned}
        & f\left(x_{1}^{0}+\Delta x_{1}, x_{2}^{0}+\Delta x_{2}, \cdots, x_{n}^{0}+\Delta x_{n}\right)-f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right) \\
        = & \sum_{i=1}^{n} f_{x_{i}}\left(x_{1}^{0}+\theta \Delta x_{1}, x_{2}^{0}+\theta \Delta x_{2}, \cdots, x_{n}^{0}+\theta \Delta x_{n}\right) \Delta x_{i}
        \end{aligned}
        $$

2. $\text{Taylor}$ 公式
    1. 一元函数：若 $f(x)$ 在 $x=0$ 点的某个邻域内有直到 $n+1$ 阶连续导数，则在此邻域内有

        $$
        f(x)=f(0)+f^{\prime}(0) x+\dfrac{f^{\prime \prime}(0)}{2 !} x^{2}+\cdots+\dfrac{f^{(n)}(0)}{n !} x^{n}+R_{n}(x)
        $$

        是函数 $f(x)$ 在 $x=0$ 点附近关于 $x$ 的幂函数展开式，也称作 $\text{Taylor}$ 公式

        1. $R_{n}(x)=\dfrac{f^{(n+1)}(\xi)}{(n+1) !} x^{n+1}$，$\xi \in (0, x)$．称 $R_n(x)$ 为 $\text{Lagrange}$ 余项
        2. 当 $x \rightarrow 0$ 时，$R_{n}(x)$ 是关于 $x^{n}$ 的高阶无穷小，因此当 $|x|$ 充分小时，余项 $R_{n}(x)=o\left(x^{n}\right)$，称为 $\text{Peano}$ 余项

    2. 多元函数：设 $n$ 元函数 $f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在点 $\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)$ 附近具有 $k+1$ 阶的连续偏导数，那么在这点附近有

        $$
        \begin{aligned}
        & f\left(x_{1}^{0}+\Delta x_{1}, x_{2}^{0}+\Delta x_{2}, \cdots, x_{n}^{0}+\Delta x_{n}\right) \\
        = & f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)+\left(\sum_{i=1}^{n} \Delta x_{i} \dfrac{\partial}{\partial x_{i}}\right) f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right) \\ 
        & + \dfrac{1}{2 !}\left(\sum_{i=1}^{n} \Delta x_{i} \dfrac{\partial}{\partial x_{i}}\right)^{2} f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)+\cdots \\ 
        & + \dfrac{1}{k !}\left(\sum_{i=1}^{n} \Delta x_{i} \dfrac{\partial}{\partial x_{i}}\right)^{k} f\left(x_{1}^{0}, x_{2}^{0}, \cdots, x_{n}^{0}\right)+R_{k}
        \end{aligned}
        $$

        其中 $R_{k}=\dfrac{1}{(k+1) !}\left(\sum_{i=1}^{n} \Delta x_{i} \dfrac{\partial}{\partial x_{i}}\right)^{k+1} f\left(x_{1}^{0}+\theta \Delta x_{1}, x_{2}^{0}+\theta \Delta x_{2}, \cdots, x_{n}^{0}+\theta \Delta x_{n}\right) \ (0<\theta<1)$ 为 $\text{Lagrange}$ 余项
