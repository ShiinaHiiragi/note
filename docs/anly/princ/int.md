# 3 积分法

## 3.1 常积分
### 3.1.1 不定积分
1. 不定积分：若在某一区间上 $F^{\prime}(x)=f(x)$，则在该区间上函数 $F(x)$ 称为函数 $f(x)$ 的原函数．将函数 $f(x)$ 的原函数的一般表达式称为 $f(x)$ 的不定积分，记为 ${\displaystyle \int f(x) \mathrm{d} x}$，即 ${\displaystyle \int f(x) \mathrm{d} x=F(x)+C}$
    1. 不定积分的运算法则
        1. ${\displaystyle \int[f(x) \pm g(x)] \mathrm{d} x=\int f(x) \mathrm{d} x \pm \int g(x) \mathrm{d} x}$
        2. ${\displaystyle \int k f(x) \mathrm{d} x=k \int f(x) \mathrm{d} x}$
    2. 换元积分：设 $f(x)$ 连续，$x=\varphi(t)$ 与 $\varphi^{\prime}(t)$ 都连续，反函数 $t=\varphi^{-1}(x)$ 存在且连续，${\displaystyle \int f(\varphi(t)) \varphi^{\prime}(t) \mathrm{d} t=F(t)+C}$，则 ${\displaystyle \int f(x) \mathrm{d} x=F\left(\varphi^{-1}(x)\right)+C}$
    3. 分部积分公式：${\displaystyle \int u \mathrm{d} v=u v - \int v \mathrm{d} u}$
2. 基本积分表
    1. ${\displaystyle \int x^\alpha \mathrm{d} x= \left\{\begin{aligned}&\dfrac{1}{\alpha+1} x^{\alpha+1}+C, & \alpha \neq-1 \\ &\ln |x|+C, & \alpha=-1 \end{aligned}\right.}$
    2. ${\displaystyle \int a^x \mathrm{d} x=\dfrac{a^x}{\ln a}+C}$．特别地，${\displaystyle \int \mathrm{e}^x \mathrm{d} x=\mathrm{e}^x+C}$
    3. ${\displaystyle \int \sin x \mathrm{d} x=-\cos x+C, \int \cos x \mathrm{d} x=\sin x+C}$

        ${\displaystyle \int \tan x \mathrm{d} x=-\ln |\cos x|+C, \int \cot x \mathrm{d} x=\ln |\sin x|+C}$

        ${\displaystyle \int \sec x \mathrm{d} x=\ln |\sec x+\tan x|+C, \int \csc x \mathrm{d} x=\ln |\csc x-\cot x|+C}$

    4. ${\displaystyle \int \operatorname{sinh} x \mathrm{d} x=\operatorname{cosh} x+C, \int \operatorname{cosh} x \mathrm{d} x=\operatorname{sinh} x+C}$
    5. ${\displaystyle \int \dfrac{\mathrm{d} x}{x^2-a^2}=\dfrac{1}{2 a} \ln \left|\dfrac{x-a}{x+a}\right|+C, \int \dfrac{\mathrm{d} x}{x^2+a^2}=\dfrac{1}{a} \arctan \dfrac{x}{a}+C}$

        ${\displaystyle \int \dfrac{\mathrm{d} x}{\sqrt{a^2-x^2}}=\arcsin \dfrac{x}{a}+C, \int \dfrac{\mathrm{d} x}{\sqrt{x^2 \pm a^2}}=\ln \left|x+\sqrt{x^2 \pm a^2}\right|+C}$

    6. ${\displaystyle \int \sqrt{a^2-x^2} \mathrm{d} x=\dfrac{1}{2} x \sqrt{a^2-x^2}+\dfrac{a^2}{2} \arcsin \dfrac{x}{a}+C}$

        ${\displaystyle \int \sqrt{x^2 \pm a^2} \mathrm{d} x=\dfrac{1}{2}\left(x \sqrt{x^2 \pm a^2} \pm a^2 \ln \left|x+\sqrt{x^2 \pm a^2}\right|\right)+C}$

### 3.1.2 定积分
1. 定积分：设函数 $f(x)$ 是定义在 $[a, b]$ 上，在 $(a, b)$ 中任意插入若干分点 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b$ 划分区间 $[a, b]$，在每一个部分区间 $\left[x_{i-1}, x_{i}\right]$ 中任取一点 $\xi_{i}$，作和式 ${\displaystyle \sigma=\sum_{i=1}^{n} f\left(\xi_{i}\right) \Delta x_{i}}$，其中 $\Delta x_{i}=x_{i}-x_{i-1}$．设 ${\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}}$，当 $\lambda \rightarrow 0$ 时，若 ${\displaystyle I=\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(\xi_{i}\right) \Delta x_{i}}$，且此极限值不依赖于 $\xi_{i}$ 的选择，也不依赖于对 $[a, b]$ 的分法，则称此极限值为 $f(x)$ 在 $[a, b]$ 上的定积分，记为 ${\displaystyle I=\int_{a}^{b} f(x) \mathrm{d} x}$，数 $a$ 和 $b$ 分别称为积分下限和积分上限，和式 $\sigma$ 称为 $f(x)$ 的积分和，上述定义被称为 $\text{Riemann}$ 积分
    1. 若 $f(x)$ 在 $[a, b]$ 可积，则 $f(x)$ 在 $[a, b]$ 必定有界
    2. 设 $f(x)$ 在 $[a, b]$ 上可积，作函数 $F(x)={\displaystyle \int_{a}^{x} f(t)} \mathrm{d} t \ (a \leqslant x \leqslant b)$，则 $F(x)$ 是 $[a, b]$ 上的连续函数
    3. 可积函数类
        1. $[a, b]$ 上的连续函数在 $[a, b]$ 上必可积
        2. 只有有限个第一类不连续点的函数是可积的，即分段连续函数是可积的
        3. 单调有界函数必定可积

        !!! note "$\text{Riemann}$ 函数"
            $$
            f(x)= \left\{\begin{aligned}
            & \dfrac{1}{q}, & x=\dfrac{p}{q} \in \mathbf Q, q, p \textsf{ 为互质的整数且 } q > 0 \\ 
            & 0, & x \in \mathbf R - \mathbf Q
            \end{aligned}\right.
            $$

            上述 $f(x)$ 具有无穷多个不连续点，但在 $[0,1]$ 上可积

2. $\text{Darboux}$ 和：设函数 $f(x)$ 在 $[a, b]$ 有界，在 $[a, b]$ 插入分点 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b$，将 $[a, b]$ 分成 $n$ 个小区间 $\left[x_{i-1}, x_{i}\right](i=1,2, \cdots, n)$，记

    $$
    \begin{aligned}
    &M_{i}=\sup \left\{f(x) \mid x \in\left[x_{i-1}, x_{i}\right]\right\} \\
    &m_{i}=\inf \left\{f(x) \mid x \in\left[x_{i-1}, x_{i}\right]\right\}
    \end{aligned}
    \quad (i=1,2, \cdots, n)
    $$

    $\Delta x_{i}=x_{i}-x_{i-1}$，作和式 ${\displaystyle \overline{S}=\sum_{i=1}^{n} M_{i} \Delta x_{i}, \underline{S}=\sum_{i=1}^{n} m_{i} \Delta x_{i}}$ 分别称为对于这一分法的  $\text{Darboux}$ 上和与  $\text{Darboux}$ 下和

    1. 如果在原有的分点中加入新的分点，对应的上和与下和分别记为 $\overline{S}^{\prime}$ 及 $\underline{S}^{\prime}$，则 $\overline{S}{ }^{\prime} \leqslant \overline{S}, \underline{S}^{\prime} \geqslant \underline{S}$
    2. 分别用 $M$ 及 $m$ 记 $f(x)$ 在 $[a, b]$ 的上确界及下确界，则对于一切分法，上和的集合 $\{\overline{S}\}$ 有下界 $m(b-a)$，下和的集合 $\{\underline{S}\}$ 有上界 $M(b-a)$
    3. 任一个下和 $\underline{S}$ 总不超过任一个上和 $\overline{S}$
    4. $\text{Darboux}$ 定理：对任何在 $[a, b]$ 有界的函数 $f(x)$，必有 ${\displaystyle \lim _{\lambda \rightarrow 0} \overline{S}=L, \lim _{\lambda \rightarrow 0} \underline{S}=l}$，其中 $\lambda$ 规定为对任意的分法 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b, {\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}}$

3. 有界函数 $f(x)$ 在区间 $[a, b]$ 上 $\text{Riemann}$ 可积的充要条件是函数 $f(x)$ 在 $[a, b]$ 上所有不连续点组成的点集是一个零测度集
    1. 有界函数 $f(x)$ 在 $[a, b]$ 可积的充要条件是 ${\displaystyle \lim _{\lambda \rightarrow 0} \overline{S}=\lim _{\lambda \rightarrow 0} \underline{S}}$
    2. 有界函数 $f(x)$ 在 $[a, b]$ 上可积的充要条件是对任意给定的两个正数 $\varepsilon>0$ 及 $\sigma>0$，存在 $\delta>0$，当对 $[a, b]$ 的任一分法 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b$ 满足 ${\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}<\delta}$ 时，对应于幅度 $\omega_{i^{\prime}} \geqslant \varepsilon$ 的那些部分区间 $\left[x_{i^{\prime}-1}, x_{i^{\prime}}\right]$ 的长度之和 ${\displaystyle \sum_{i^{\prime}} \Delta x_{i^{\prime}}<\sigma}$
4. 定积分的性质
    1. 若 $f(x)$ 在 $[a, b]$ 上可积，$k$ 为一实数，则 $k f(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b} k f(x) \mathrm{d} x=k \int_{a}^{b} f(x) \mathrm{d} x}$
    2. 若 $f(x), g(x)$ 在 $[a, b]$ 上可积，则 $f(x) \pm g(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b}[f(x) \pm g(x)] \mathrm{d} x=\int_{a}^{b} f(x) \mathrm{d} x \pm \int_{a}^{b} g(x) \mathrm{d} x}$
    3. 若 $f(x), g(x)$ 在 $[a, b]$ 上可积，则 $f(x) \cdot g(x)$ 与 $|f(x)|$ 在 $[a, b]$ 上也可积
    4. 若 $a<c<b$ 且 $f(x)$ 在 $[a, c],[c, b]$ 上可积，则 $f(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\int_{a}^{c} f(x) \mathrm{d} x+\int_{c}^{b} f(x) \mathrm{d} x}$；反之若 $f(x)$ 在 $[a, b]$ 上可积，则 $f(x)$ 在 $[a, c]$ 与 $[c, b]$ 上也同时可积，且上述等式成立
    5. 若可积函数 $f(x) \geqslant 0$，则 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x \geqslant 0}$，其中 $a < b$
    6. 若 $f(x)$ 在 $[a, b]$ 上可积，则 ${\displaystyle \left|\int_{a}^{b} f(x) \mathrm{d} x\right| \leqslant \int_{a}^{b}|f(x)| \mathrm{d} x}$
5. 中值定理
    1. 积分第一中值定理：若 $f(x)$ 在 $[a, b]$ 上连续，$g(x)$ 在 $[a, b]$ 上不变号且在 $[a, b]$ 上可积，则在 $[a, b]$ 中存在一点 $\xi$，使

        $$
        \int_{a}^{b} f(x) g(x) \mathrm{d} x=f(\xi) \int_{a}^{b} g(x) \mathrm{d} x
        $$

    2. 积分第二中值定理：设 $f(x)$ 在 $[a, b]$ 上可积，$g(x)$ 在 $[a, b]$ 上单调，则存在 $\xi \in[a, b]$，使得

        $$
        \int_a^b f(x) g(x) d x=g(a) \int_a^{\xi} f(x) d x+g(b) \int_{\xi}^b f(x) d x
        $$

        特别地，如果 $g(x)$ 单调递增且 $g(a) \geqslant 0$，则存在 $\xi$ 使得 ${\displaystyle \int_{a}^{b} f(x) g(x) \mathrm{d} x=g(b) \int_{\xi}^{b} f(x) \mathrm{d} x}$；如果 $g(x)$ 单调递减且 $g(b) \geqslant 0$，则存在 $\xi$ 使得 ${\displaystyle \int_{a}^{b} f(x) g(x) \mathrm{d} x=g(a) \int_{a}^{\xi} f(x) \mathrm{d} x}$

6. 微积分基本定理：设 $f(x)$ 在 $[a, b]$ 上连续，$F^{\prime}(x)=$ $f(x)$，则 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=F(b)-F(a)=F(x)\bigg|_{a} ^{b}}$．该公式也被称为 $\text{Newton}-\text{Leibniz}$ 公式
    1. 变限积分：若 $f(x)$ 在 $[a, b]$ 上连续，则函数 ${\displaystyle G(x)=\int_{a}^{t} f(t) \mathrm{d} t}$ 在 $[a, b]$ 上可导且 $G^{\prime}(x)=f(x)$
    2. 定积分的还原：设 $f(x)$ 在 $[a, b]$ 上连续，作代换 $x=\varphi(t)$，其中 $\varphi(t)$ 在闭区间 $[\alpha, \beta]$ 上有连续导数 $\varphi^{\prime}(t)$．当 $\alpha \leqslant t \leqslant \beta$ 时，$a \leqslant \varphi(t) \leqslant b$ 且 $\varphi(\alpha)=a, \varphi(\beta)=b$，则 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\int_{\alpha}^{\beta} f[\varphi(t)] \varphi^{\prime}(t) \mathrm{d} t}$
    3. 定积分的分部积分公式：若 $u^{\prime}(x), v^{\prime}(x)$ 在 $[a, b]$ 上连续，则 ${\displaystyle \int_{a}^{b} u v^{\prime} \mathrm{d} x=(u v)\bigg|_{a} ^{b}-\int_{a}^{b} u^{\prime} v \mathrm{d} x}$

### 3.1.3 重积分
1. 二重积分：设 $D$ 为 $\mathbf{R}^{2}$ 上的零边界闭区域，函数 $z=f(x, y)$ 在 $D$ 上有界．将 $D$ 用曲线网分成 $n$ 个小区域 $\Delta D_{1}, \Delta D_{2}, \cdots, \Delta D_{n}$（它称为 $D$ 的一个划分），并记所有的小区域 $\Delta D_{i}$ 的最大直径为 $\lambda$，即

    $$
    \lambda=\max _{1 \leqslant i \leqslant n}\left\{\operatorname{diam} \Delta D_{i}\right\}
    $$

    在每个 $\Delta D_{i}$ 上任取一点 $\left(\xi_{i}, \eta_{i}\right)$，记 $\Delta \sigma_{i}$ 为 $\Delta D_{i}$ 的面积，若 $\lambda$ 趋于零时，和式 ${\displaystyle \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}\right) \Delta \sigma_{i}}$ 的极限存在且与区域的分法和点 $\left(\xi_{i}, \eta_{i}\right)$ 的取法无关，则称 $f(x, y)$ 在 $D$ 上可积，并称此极限为 $f(x, y)$ 在 $D$ 上的二重积分，记为

    $$
    \iint_{D} f(x, y) \mathrm{d} \sigma =\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}\right) \Delta \sigma_{i}
    $$

    $f(x, y)$ 称为被积函数，$D$ 称为积分区域，$x$ 和 $y$ 称为积分变量，$\mathrm{d} \sigma$ 称为面积元素，${\displaystyle \iint_{D} f(x, y) \mathrm{d} \sigma}$ 也称为积分值

    1. 面积与划分
        1. 划分：设 $D$ 为 $\mathbf{R}^{2}$ 上的有界子集，$U=[a, b] \times[c, d]$ 为包含 $D$ 的一个闭矩形．在 $[a, b]$ 中插入分点 $a=x_{0}<x_{1}<\cdots<x_{n}=b$ 在 $[c, d]$ 中插入分点 $c=y_{0}<y_{1}<\cdots<y_{m}=d$，过这些分点作平行于坐标轴的直线，将 $U$ 分成许多小矩形 $U_{i, j}=\left[x_{i-1}, x_{i}\right] \times\left[y_{j-1}, y_{j}\right] \ (i=1,2, \cdots, n ; j=1,2, \cdots, m)$，称为 $U$ 的一个划分
        2. 若在原有划分的基础上，在 $[a, b]$ 和 $[c, d]$ 中再增加有限个分点（所得的新划分称为原来划分的加细），则 $m B$ 不增，$m A$ 不减；且任意一种划分所得到的 $m A$ 不大于任意一种划分所得到的 $m B$，这些 $m A$ 有一个上确界 $m D$，$m B$ 有一个下确界 $m D^{*}$，并且 $m D \leqslant m D^{*}$．若 $m D=m D^{*}$，则称这个值为 $D$ 的面积，记为 $m D$，此时称 $D$ 是可求面积的
        3. 记与 $\partial(D)$ 的交集非空的那些小矩形的面积之和为 $m B_{\partial(D)}$，若所有 $m B_{\partial p}$ 的下确界 $m \partial(D^{*})=0$，则称 $\partial(D)$ 的面积为零．边界的面积为零的有界区域称为零边界区域
        4. 有界点集 $D$ 是可求面积的充分必要条件是其边界 $\partial(D)$ 的面积为 $0$．因此零边界区域是可求面积的\

    2. $\text{Darboux}$ 和：设 $M_{i}$ 和 $m_{i}$ 分别为 $f(x, y)$ 在 $\Delta D_{i}$ 上的上确界与下确界，定义 $\text{Darboux}$ 大和为 ${\displaystyle S=\sum_{i=1}^{n} M_{i} \Delta \sigma_{i}}$，$\text{Darboux}$ 小和为 ${\displaystyle s=\sum_{i=1}^{n} m_{i} \Delta \sigma_{i}}$
        1. 若在已有的划分上添加有限条曲线作进一步划分，则 $\text{Darboux}$ 大和不增，$\text{Darboux}$ 小和不减
        2. 任何一个 $\text{Darboux}$ 小和都不大于任何一个 $\text{Darboux}$ 大和．因此若记 $I^{*}=$ $\inf \{S\}, I_{*}=\sup \{s\}$（这里上、下确界是对所有划分来取的），则有 $s \leqslant I_{*} \leqslant I^{*} \leqslant S$
        3. $f(x, y)$ 在 $D$ 上可积的充分必要条件是 ${\displaystyle \lim _{\lambda \rightarrow 0}(S-s)=0}$
        4. 若 $f(x, y)$ 在零边界闭区琙 $D$ 上连续，那么它在 $D$ 上可积

2. $n$ 重积分：设 $\Omega$ 为 $\mathbf{R}^{n}$ 上的零边界闭区域，函数 $u=f(\boldsymbol{x})$ 在 $\Omega$ 上有界．将 $\Omega$ 用曲面网分成 $n$ 个小区域 $\Delta \Omega_{1}, \Delta \Omega_{2}, \cdots, \Delta \Omega_{n}$（称为 $\Omega$ 的一个划分），记 $\Delta V_{i}$ 为 $\Delta \Omega_{i}$ 的体积，并记所有的小区域 $\Delta \Omega_{i}$ 的最大直径为 $\lambda$．在每个 $\Delta \Omega_{i}$ 上任取一点 $\boldsymbol{x}_{i}$，若 $\lambda$ 趋于零时，和式 ${\displaystyle \sum_{i=1}^{n} f\left(x_{i}\right) \Delta V_{i}}$ 的极限存在且与区域的分法和点 $x_{i}$ 的取法无关，则称 $f(x)$ 在 $\Omega$ 上可积，并称此极限为 $f(x)$ 在有界闭区域 $\Omega$ 上的 $n$ 重积分，记为

    $$
    \int_{\Omega} f \mathrm{d} V=\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(x_{i}\right) \Delta V_{i}
    $$

    $f(x)$ 称为被积函数，$\Omega$ 称为积分区域，$x$ 称为积分变量，$\mathrm{d} V$ 称为体积元素，$\int_{\Omega} f \mathrm{d} V$ 也称为积分值

    1. 在 $\mathbf{R}^{2}$ 中，$f(x, y)$ 在 $D$ 上的二重积分记为 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$

        在 $\mathbf{R}^{3}$ 中，$f(x, y, z)$ 在 $\Omega$ 上的三重积分记为 ${\displaystyle \iiint_{\Omega} f(x, y, z) \mathrm{d} x \mathrm{d} y \mathrm{d} z}$ 或 ${\displaystyle \iiint_{\Omega} f(x, y, z) \mathrm{d} V}$

        而在 $\mathbf{R}^{n}$ 中，$f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在 $\Omega$ 上的 $n$ 重积分记为 ${\displaystyle \iint \mathop{\cdots} \limits_{\Omega} \int f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{1} \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}}$ 或 ${\displaystyle \int_{\Omega} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{1} \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}}$

    2. 重积分的性质：假定考虑的区域是 $\mathbf{R}^{n} \ (n \geqslant 2)$ 中的零边界闭区域
        1. 线性性：设 $f$ 和 $g$ 都在区域 $\Omega$ 上可积，$\alpha, \beta$ 为常数，则 $\alpha f+\beta g$ 在 $\Omega$ 上也可积，并且

            $$
            \int_{\Omega}(\alpha f+\beta g) \mathrm{d} V=\alpha \int_{\Omega} f \mathrm{d} V+\beta \int_{\Omega} g \mathrm{d} V
            $$

        2. 区域可加性：设区域 $\Omega$ 被分成两个内点不相交的区域 $\Omega_{1}$ 和 $\Omega_{2}$，如果 $f$ 在 $\Omega$ 上可积，则 $f$ 在 $\Omega_{1}$ 和 $\Omega_{2}$ 上都可积；反之，如果 $f$ 在 $\Omega_{1}$ 和 $\Omega_{2}$ 上可积，则 $f$ 也在 $\Omega$ 上可积．此时有 ${\displaystyle \int_{\Omega} f \mathrm{d} V=\int_{\Omega_{1}} f \mathrm{d} V+\int_{\Omega_{2}} f \mathrm{d} V}$
        3. 设被积函数 $f \equiv 1$．当 $n=2$ 时，$\Omega$ 的面积为 ${\displaystyle \iint_{\Omega} \mathrm{d} x \mathrm{d} y}$；当 $n \geqslant 3$ 时，$\Omega$ 的体积为 ${\displaystyle \int_{\Omega} \mathrm{d} V}$
        4. 保序型：设 $f$ 和 $g$ 都在区域 $\Omega$ 上可积，且满足 $f \leqslant g$，则有 ${\displaystyle \int_{\Omega} f \mathrm{d} V \leqslant \int_{\Omega} g \mathrm{d} V}$
        5. 设 $f$ 在区域 $\Omega$ 上可积，$M$ 与 $m$ 分别为 $f$ 在 $\Omega$ 上的上确界和下确界，则有 ${\displaystyle m V \leqslant \int_{\Omega} f \mathrm{d} V \leqslant M V}$，其中 $V$ 当 $n=2$ 时为 $\Omega$ 的面积，当 $n>2$ 时为 $\Omega$ 的体积
        6. 绝对可积性：设 $f$ 在区域 $\Omega$ 上可积，则 $|f|$ 也在 $\Omega$ 上可积，且有 ${\displaystyle \left|\int_{\Omega} f \mathrm{d} V\right| \leqslant \int_{\Omega}|f| \mathrm{d} V}$
        7. 乘积可积性：设 $f$ 和 $g$ 都在区域 $\Omega$ 上可积，则 $f \cdot g$ 也在 $\Omega$ 上可积
        8. 积分中值定理：设 $f$ 和 $g$ 都在区域 $\Omega$ 上可积，且 $g$ 在 $\Omega$ 上不变号．设 $M$ 与 $m$ 分别为 $f$ 在 $\Omega$ 上的上确界和下确界，则存在常数 $\mu \in[m, M]$，使得 ${\displaystyle \int_{\Omega} f \cdot g \mathrm{d} V=\mu \int_{\Omega} g \mathrm{d} V}$．特别地，如果 $f$ 在 $\Omega$ 上连续，则存在 $\xi \in \Omega$，使得 ${\displaystyle \int_{\Omega} f \cdot g \mathrm{d} V=f(\xi) \int_{\Omega} g \mathrm{d} V}$

    3. 重积分的计算
        1. 设 $f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在 $n$ 维闭矩形 $\Omega=\left[a_{1}, b_{1}\right] \times\left[a_{2}, b_{2}\right] \times \cdots \times\left[a_{n}, b_{n}\right]$ 上可积．记 $\Omega_{*}=\left[a_{2}, b_{2}\right] \times \cdots \times\left[a_{n}, b_{n}\right]$．若积分 ${\displaystyle h\left(x_{1}\right)=\int_{\Omega_{2}} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}}$ 对于每个 $x_{1} \in\left[a_{1}, b_{1}\right]$ 存在，则 $h\left(x_{1}\right)$ 在 $\left[a_{1}, b_{1}\right]$ 上可积，并有

            $$
            \int_{\Omega} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{1} \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}=\int_{a_{1}}^{h_{1}} h\left(x_{1}\right) \mathrm{d} x_{1}=\int_{a_{1}}^{b_{1}} \mathrm{d} x_{1} \int_{\Omega_{0}} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}
            $$

        2. 累次积分：设 $f\left(x_{1}, x_{2}, \cdots, x_{n}\right)$ 在 $n$ 维闭矩形 $\Omega=\left[a_{1}, b_{1}\right] \times\left[a_{2}, b_{2}\right] \times \cdots \times\left[a_{n}, b_{n}\right]$ 上连续，则有

            $$
            \int_{\Omega} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{1} \mathrm{d} x_{2} \cdots \mathrm{d} x_{n}=\int_{a_{1}}^{b_{1}} \mathrm{d} x_{1} \int_{a_{2}}^{b_{2}} \mathrm{d} x_{2} \cdots \int_{a_{n-1}}^{b_{n-1}} \mathrm{d} x_{n-1} \int_{a_{n}}^{b_{n}} f\left(x_{1}, x_{2}, \cdots, x_{n}\right) \mathrm{d} x_{n}
            $$

    4. 重积分的变量代换：设 $\Omega$ 为 $U$ 中具有分片光滑边界的有界闭域，$U$ 为 $\mathbf{R}^{n} \ (n>2)$ 上的开集，映射

        $$
        T: y_{1}=y_{1}\left(x_{1}, x_{2}, \cdots, x_{n}\right), y_{2}=y_{2}\left(x_{1}, x_{2}, \cdots, x_{n}\right), \cdots, y_{n}=y_{n}\left(x_{1}, x_{2}, \cdots, x_{n}\right)
        $$

        将 $U$ 一一对应地映到 $V \subset \mathbf{R}^{n}$ 上，因此其有逆变换 $T^{-1}$．进一步假设 $y_1, y_2, \cdots, y_n$ 都具有连续偏导数，且这个映射的 $\text{Jacobi}$ 行列式不等于零．如果 $f\left(y_{1}, y_{2}, \cdots, y_{n}\right)$ 是 $T(\Omega)$ 上的连续函数，那么变量代换公式

        $$
        \int_{T(\Omega)} f\left(y_{1}, y_{2}, \cdots, y_{n}\right) \mathrm{d} y_{1} \mathrm{d} y_{2} \cdots \mathrm{d} y_{n}=\int_{\Omega} f\left(y_{1}(\boldsymbol{x}), y_{2}(\boldsymbol{x}), \cdots, y_{n}(\boldsymbol{x})\right)\left|\frac{\partial\left(y_{1}, y_{2}, \cdots, y_{n}\right)}{\partial\left(x_{1}, x_{2}, \cdots, x_{n}\right)}\right| \mathrm{d} x_{1} \mathrm{d} x_{2} \cdots \mathrm{d} x
        $$

        成立，其中 $\boldsymbol{x}=\left(x_{1}, x_{2}, \cdots, x_{n}\right)$

        1. 对于柱面坐标变换

            $$
            \left\{\begin{array}{l}
            x=r \cos \theta \\
            y=r \sin \theta \\
            z=z
            \end{array}\right.
            $$

            变换的 $\text{Jacobi}$ 行列式为 $\dfrac{\partial(x, y, z)}{\partial(r, \theta, z)}=r$

        2. 对于球面坐标变换

            $$
            \left\{\begin{array}{l}
            x=r \sin \varphi \cos \theta \\
            y=r \sin \varphi \sin \theta \\
            z=r \cos \varphi
            \end{array}\right.
            $$

            变换的 $\text{Jacobi}$ 行列式为 $\dfrac{\partial(x, y, z)}{\partial(r, \varphi, \theta)}=r^{2} \sin \varphi$

## 3.2 反常积分
### 3.2.1 无穷限反常积分
1. 设函数 $f(x)$ 在 $[a, \infty), (-\infty, a]$ 或 $(-\infty,+\infty)$ 有定义，称 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x, \int_{-\infty}^{a} f(x) \mathrm{d} x}$ 或 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{d} x}$ 为无穷限反常积分
    1. 设函数 $f(x)$ 在 $[a,+\infty)$ 有定义，且对任意的 $A \ (A>a)$ 在区间 $[a, A]$ 上可积．当极限 ${\displaystyle \lim _{A \rightarrow+\infty} \int_{a}^{A} f(x) \mathrm{d} x}$ 存在时，称极限值为 $f(x)$ 在区间 $[a,+\infty)$ 上（或是从 $a$ 到 $+\infty$）的反常积分的积分值，记作 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x=\lim _{A \rightarrow+\infty} \int_{a}^{A} f(x) \mathrm{d} x}$．类似地可定义反常积分 ${\displaystyle \int_{-\infty}^{b} f(x) \mathrm{d} x}$ 的收敛和发散
    2. 对反常积分 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{d} x}$，当 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{-\infty}^{a} f(x) \mathrm{d} x}$ 都收敛时（$a$ 是一个任意固定的数），则称 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{d} x}$ 收敛，且有 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{d} x=\int_{-\infty}^{a} f(x) \mathrm{d} x+\int_{a}^{+\infty} f(x) \mathrm{d} x}$

    无穷限反常积分具有如下性质：

    1. 设 $f(x)$ 在 $[a,+\infty)$ 可积，$k$ 是常数，则 $k f(x)$ 也可积且 ${\displaystyle \int_{a}^{+\infty} k f(x) \mathrm{d} x=k \int_{a}^{+\infty} f(x) \mathrm{d} x}$
    2. 设 $f(x), g(x)$ 在 $[a,+\infty)$ 可积，则 $f(x) \pm g(x)$ 也可积且 ${\displaystyle \int_{a}^{+\infty}(f(x) \pm g(x)) \mathrm{d} x=\int_{a}^{+\infty} f(x) \mathrm{d} x \pm \int_{a}^{+\infty} g(x) \mathrm{d} x}$
    3. 设 $u(x), v(x), u^{\prime}(x), v^{\prime}(x)$ 在 $[a,+\infty)$ 连续，又如果下面的等式中有两项存在，则第三项也存在且有

        $$
        \int_{a}^{+\infty} u \mathrm{d} v=u v\bigg|_{a} ^{+\infty}-\int_{a}^{+\infty} v \mathrm{d} u
        $$

    4. $\text{Cauchy}$ 收敛原理：${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x}$ 收敛的充要条件是对任意给定的 $\varepsilon>0$，存在 $A>0$，当 $A^{\prime}, A^{\prime \prime}>A$ 时总有

        $$
        \left|\int_{A^{\prime}}^{A^{\prime \prime}} f(x) \mathrm{d} x\right|<\varepsilon
        $$

    5. 绝对收敛与条件收敛：设对任何 $A>a$，$f(x)$ 在 $[a, A]$ 可积且 ${\displaystyle \int_{a}^{+\infty}|f(x)| \mathrm{d} x}$ 收敛，则称 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x}$ 绝对收敛．收敛但不绝对收敛的反常积分称为条件收敛．易知绝对收敛的反常积分必收敛，反之不然

2. 收敛性判别：设对于任意 $A>a$，都有 ${\displaystyle \int_{a}^{A} f(x) \mathrm{d} x}$ 存在
    1. 比较判别法
        1. 如果 ${\displaystyle \lim _{x \rightarrow+\infty} \dfrac{|f(x)|}{\varphi(x)}=l, 0 \leqslant l<+\infty}$ 且 ${\displaystyle \int_{a}^{+\infty} \varphi(x) \mathrm{d} x}$ 收敛，则积分 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x}$ 绝对收敛
        2. 如果 ${\displaystyle \lim _{x \rightarrow+\infty} \dfrac{|f(x)|}{\varphi(x)}=l, 0<l \leqslant+\infty}$ 且 ${\displaystyle \int_{a}^{+\infty} \varphi(x) \mathrm{d} x}$ 发散，则积分 ${\displaystyle \int_{a}^{+\infty}|f(x)| \mathrm{d} x}$ 发散
    2. $\text{Cauchy}$ 判别法
        1. 如果 ${\displaystyle \lim _{x \rightarrow+\infty} \dfrac{|f(x)|}{\dfrac{1}{x^{p}}}=\lim _{x \rightarrow+\infty} x^{p}|f(x)|=l \ (0 \leqslant l<+\infty, p>1)}$，则积分 ${\displaystyle \int_{a}^{+\infty} f(x) \mathrm{d} x}$ 绝对收敛
        2. 如果 ${\displaystyle \lim _{x \rightarrow+\infty} x^{p}|f(x)|=l}$，而 $0<l \leqslant+\infty, p \leqslant 1$，则 ${\displaystyle \int_{a}^{+\infty}|f(x)| \mathrm{d} x}$ 发散
    3. $\text{Abel}$ 判别法：如果 $f(x)$ 在 $[a,+\infty)$ 上可积，$g(x)$ 单调有界，则积分 ${\displaystyle \int_{a}^{+\infty} f(x) g(x) \mathrm{d} x}$ 收敛
    4. $\text{Dirichlet}$ 判别法：如果对任何 $A>a$，都有 ${\displaystyle \left|\int_{a}^{A} f(x) \mathrm{d} x\right| \leqslant K}$，$g(x)$ 单调且当 $x\rightarrow+\infty$ 时趋向于零，则积分 ${\displaystyle \int_{a}^{+\infty} f(x) g(x) \mathrm{d} x}$ 收敛
3. 主值：设 $f(x)$ 在 $(-\infty, +\infty)$ 内无界，如果 ${\displaystyle \lim _{A \rightarrow+\infty} \int_{-A}^{A} f(x) \mathrm{d} x}$ 存在，则称此极限是反常积分 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm{d} x}$ 的 $\text{Cauchy}$ 主值，记为 ${\displaystyle \text {P.V. } \int_{-\infty}^{+\infty} f(x) \mathrm{d} x=\lim _{A \rightarrow+\infty} \int_{-A}^{A} f(x) \mathrm{d} x}$

### 3.2.2 无界函数反常积分
1. 设函数 $f(x)$ 在 $x=b$ 点的任一左邻域无界（称 $b$ 点为 $f(x)$ 的奇点），但对于任意充分小的正数 $\eta$，$f(x)$ 在 $[a, b-\eta]$ 上可积，则称积分 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 是无界函数 $f(x)$ 在 $[a, b]$ 上的反常积分
    1. 令 ${\displaystyle \phi(\eta)=\int_{a}^{b-\eta} f(x) \mathrm{d} x}$，如果 ${\displaystyle \lim _{\eta \rightarrow 0} \phi(\eta)}$ 存在，则称此极限是反常积分的积分值，即 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\lim _{\eta \rightarrow 0} \int_{a}^{b-\eta} f(x) \mathrm{d} x}$，并称无界函数 $f(x)$ 在 $[a, b]$ 上可积，又称反常积分 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 收敛．如果上述的极限不存在，则称积分 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 发散．如果 $x=a$ 是 $f(x)$ 的奇点，可以相仿地给出定义
    2. 如果 $f(x)$ 在 $[a, b]$ 内部有一个奇点 $c \in (a, b)$，分别考察 ${\displaystyle \int_{a}^{c} f(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{c}^{b} f(x) \mathrm{d} x}$，若后两者都收敛，则称 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 收敛, 且 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\int_{a}^{c} f(x) \mathrm{d} x+\int_{c}^{b} f(x) \mathrm{d} x}$，即 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\lim _{\eta \rightarrow+0} \int_{a}^{c-\eta} f(x) \mathrm{d} x+\lim _{\eta^{\prime} \rightarrow+0} \int_{c+\eta^{\prime}}^{b} f(x) \mathrm{d} x}$

    无界函数反常积分具有如下性质：

    1. $\text{Cauchy}$ 收敛原理：若 $f(x)$ 在 $x=a$ 有奇点，${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 收敛的充要条件是对任意给定的 $\varepsilon>0$，存在 $\delta>0$，当 $0<\eta, \eta^{\prime}<\delta$ 时总有 ${\displaystyle \left|\int_{a+\eta}^{a+\eta^{\prime}} f(x) \mathrm{d} x\right|<\varepsilon}$
    2. 绝对收敛与条件收敛：设对任何 $\eta>0$，$f(x)$ 在 $[a, b-\eta]$ 上可积且 ${\displaystyle \int_{a}^{b}|f(x)| \mathrm{d} x}$ 收敛，则称 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 绝对收敛．收敛但不绝对收敛的反常积分称为条件收敛．易知绝对收敛的反常积分必收敛，反之不然
    3. 设 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 中的 $f(x)$ 有奇点 $a$，作变换 $y=\dfrac{1}{x-a}$，则有

        $$
        {\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\int_{\frac{1}{b-a}}^{+\infty} \dfrac{f\left(a+\dfrac{1}{y}\right)}{y^{2}} \mathrm{d} y}
        $$

        是无穷限反常积分

2. 收敛性判别
    1. $\text{Cauchy}$ 判别法：设 ${\displaystyle \lim _{x \rightarrow a}(x-a)^{p}|f(x)|=k}$
        1. 如果 $0 \leqslant k<\infty, p<1$，则 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 绝对收敛
        2. 如果 $0<k \leqslant \infty, p \geqslant 1$，则 ${\displaystyle \int_{a}^{b}|f(x)| \mathrm{d} x}$ 发散
    2. $\text{Abel}$ 判别法：设 $f(x)$ 在 $x=a$ 有奇点，${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 收敛，$g(x)$ 单调有界，则积分 ${\displaystyle \int_{a}^{b} f(x) g(x) \mathrm{d} x}$ 收敛
    3. $\text{Dirichlet}$ 判别法：设 $f(x)$ 在 $x=a$ 有奇点，${\displaystyle \int_{a+\eta}^{b} f(x) \mathrm{d} x}$ 是 $\eta$ 的有界函数，$g(x)$ 单调且当 $x \rightarrow a$ 时趋于零，则积分 ${\displaystyle \int_{a}^{b} f(x) g(x) \mathrm{d} x}$ 收敛
3. 主值：设 $f(x)$ 在 $[a, b]$ 内无界，$c$ 是唯一奇点且 $a<c<b$．如果 ${\displaystyle \lim _{\eta \rightarrow 0}\left[\int_{a}^{c-\eta} f(x) \mathrm{d} x+\int_{c+\eta}^{b} f(x) \mathrm{d} x\right]}$ 存在，则称此极限是反常积分 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x}$ 的 $\text{Cauchy}$ 主值，记为 ${\displaystyle \text {P.V. } \int_{a}^{b} f(x) \mathrm{d} x=\lim _{\eta \rightarrow 0}\left[\int_{a}^{c-\eta} f(x) \mathrm{d} x+\int_{c+\eta}^{b} f(x) \mathrm{d} x\right]}$

### 3.2.3 反常重积分
1. 无界区域上的反常二重积分：设 $D$ 为平面 $\mathbf{R}^{2}$ 上的无界区域，其边界是由有限条光滑曲线组成的．假设 $D$ 上的函数 $f(x, y)$ 具有下述性质：它在 $D$ 中有界、在可求面积的子区域上可积，并假设所取的割线 $\Gamma$ 为一条面积为零的曲线，它将 $D$ 割出一个有界子区域，记为 $D_{\Gamma}$．若当 $d(\Gamma)$ 趋于无穷大，即 $D_{\Gamma}$ 趋于 $D$ 时，${\displaystyle \iint f(x, y) \mathrm{d} x \mathrm{d} y}$ 的极限存在，就称 $f(x, y)$ 在 $D$ 上可积，并记 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y=\lim _{d(\Gamma) \rightarrow+\infty} \iint_{D_{\Gamma}} f(x, y) \mathrm{d} x \mathrm{d} y}$ 为 $f(x, y)$ 在 $D$ 上的反常二重积分，此时也称 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 收敛．如果右端的极限不存在，就称这一积分发散
    1. 设 $f(x, y)$ 为无界区域 $D$ 上的非负函数，如果 $\left\{\Gamma_{n}\right\}$ 是一列曲线，其割出的 $D$ 的有界子区域 $\left\{D_{n}\right\}$ 满足

        $$
        D_{1} \subset D_{2} \subset \cdots \subset D_{n} \subset \cdots, \lim _{n \rightarrow \infty} d\left(\Gamma_{n}\right)=+\infty
        $$

        则反常积分 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 在 $D$ 上收敛的充分必要条件是数列 ${\displaystyle \left\{\iint_{D_{n}} f(x, y) \mathrm{d} x \mathrm{d} y\right\}}$ 收敛，且在收敛时有

        $$
        \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y=\lim _{n \rightarrow \infty} \iint_{D_{n}} f(x, y) \mathrm{d} x \mathrm{d} y
        $$

        1. 设 $D$ 为 $\mathbf{R}^{2}$ 上具有分段光滑边界的无界区域，则 $f(x, y)$ 在 $D$ 上可积的充分必要条件是 $|f(x, y)|$ 在 $D$ 上可积
        2. 设 $f(x, y)$ 在 $D=[a,+\infty) \times[c,+\infty)$ 上连续，且 ${\displaystyle \int_{a}^{+\infty} \mathrm{d} x \int_{c}^{+\infty} f(x, y) \mathrm{d} y}$ 和 ${\displaystyle \int_{a}^{+\infty} \mathrm{d} x \int_{c}^{+\infty}|f(x, y)| \mathrm{d} y}$ 都存在，则 $f(x, y)$ 在 $D$ 上可积且

            $$
            \iint_{(a,+\infty \mid(\mid c,+\infty)} f(x, y) \mathrm{d} x \mathrm{d} y=\int_{a}^{+\infty} \mathrm{d} x \int_{c}^{+\infty} f(x, y) \mathrm{d} y
            $$

        3. 设一一对应映射 $T: D \rightarrow T(D)$

            $$
            \left\{\begin{array}{l}
            x=x(u, v) \\
            y=y(u, v)
            \end{array}\right.
            $$

            具有连续导数，且 $\text{Jacobi}$ 行列式 $\dfrac{\partial(x, y)}{\partial(u, v)}$ 在 $D$ 上不等于零，则变量代换公式

            $$
            \iint_{T(D)} f(x, y) \mathrm{d} x \mathrm{d} y=\iint_{D} f(x(u, v), y(u, v))\left|\dfrac{\partial(x, y)}{\partial(u, v)}\right| \mathrm{d} u \mathrm{d} v
            $$

            依然成立，并且等式某一边的积分收敛可以推出另一个积分收敛

    2. 比较判别法：设 $D$ 为 $\mathbf{R}^{2}$ 上具有分段光滑边界的无界区域，在 $D$ 上有 $0 \leqslant f(x, y) \leqslant g(x, y)$．则
        1. 当 ${\displaystyle \iint_{D} g(x, y) \mathrm{d} x \mathrm{d} y}$ 收敛时，${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 也收敛
        2. 当 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 发散时，${\displaystyle \iint_{D} g(x, y) \mathrm{d} x \mathrm{d} y}$ 也发散
    3. $\text{Cauchy}$ 判别法：设 $D$ 为用极坐标表示的区域

        $$
        D=\{(r, \theta) \mid a \leqslant r<+\infty, \alpha \leqslant \theta \leqslant \beta \ (\alpha, \beta \in[0,2 \pi])\} \ (a>0)
        $$

        其中 $r=\sqrt{x^{2}+y^{2}} \cdot f(x, y)$ 为定义在 $D$ 上的函数．则

        1. 如果存在正常数 $M$，使得在 $D$ 上有 $|f(x, y)| \leqslant \dfrac{M}{r^{p}}$，则当 $p>2$ 时，${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 收敛
        2. 如果存在正常数 $m$，使得在 $D$ 上有 $|f(x, y)| \geqslant \dfrac{m}{r^{p}}$，则当 $p \leqslant 2$ 时，${\displaystyle \iint_{j} f(x, y) \mathrm{d} x \mathrm{d} y}$ 发散

2. 无界函数的反常二重积分：设 $D$ 为 $\mathbf{R}^{2}$ 上的有界区域，点 $P_{0} \in D, f(x, y)$ 在 $D - \left\{P_{0}\right\}$ 上有定义，但在点 $P_{0}$ 的任何去心邻域内都无界，此时称 $P_{0}$ 为 $f$ 的奇点．设 $\gamma$ 为内部含有 $P_{0}$ 的、面积为零的闭曲线，记 $\sigma$ 为其所包围的区域．并设二重积分 ${\displaystyle \iint_{D-\sigma} f(x, y) \mathrm{d} x \mathrm{d} y}$ 总是存在．设 $\rho(\gamma)=\sup \left\{\left|P-P_{0}\right| \mid P \in \gamma\right\}$．若 $\rho(\gamma)$ 趋于零时，${\displaystyle \iint_{D - \sigma} f(x, y) \mathrm{d} x \mathrm{d} y}$ 的极限存在，则称 $f(x, y)$ 在 $D$ 上可积，并记

    $$
    \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y=\lim _{\rho(y) \rightarrow 0} \iint_{D -\sigma} f(x, y) \mathrm{d} x \mathrm{d} y,
    $$

    为无界函数 $f(x, y)$ 在 $D$ 上的反常二重积分，此时也称无界函数的反常二重积分 ${\displaystyle \iint_{D} f(x, y) \mathrm{d} x \mathrm{d} y}$ 收敛．如果右端的极限不存在，则称这一反常二重积分发散

## 3.3 含参变量积分
### 3.3.1 含参变量的常义积分
- 设函数 $f(x, y)$ 在矩形 $[a, b] \times [c, d]$ 上连续，称积分 ${\displaystyle \int_{a}^{b} f(x, y) \mathrm{d} x}$ 为含参变量的积分，参变量是 $y$
    1. 设 $f(x, y)$ 在矩形 $[a, b] \times [c, d]$ 上连续，则 ${\displaystyle I(y)=\int_{a}^{b} f(x, y) \mathrm{d} x}$ 是 $[c, d]$ 上的连续函数
    2. 设 $f(x, y)$ 及 $f_{y}(x, y)$ 都在闭矩形 $[a, b] \times [c, d]$ 上连续，则 ${\displaystyle \dfrac{\mathrm{d}}{\mathrm{d} y} \int_{a}^{b} f(x, y) \mathrm{d} x=\int_{a}^{b} f_{y}(x, y) \mathrm{d} x=\int_{a}^{b} \dfrac{\partial}{\partial y} f(x, y) \mathrm{d} x}$
    3. 若 $f(x, y)$ 在闭矩形 $[a, b] \times [c, d]$ 上连续，函数 $a(y)$ 及 $b(y)$ 都在 $[c, d]$ 上连续并且 $a \leqslant a(y) \leqslant b, a \leqslant b(y) \leqslant b$（其中 $c \leqslant y \leqslant d$），则 ${\displaystyle F(y)=\int_{a(y)}^{b(y)} f(x, y) \mathrm{d} x}$ 在 $[c, d]$ 上连续
    4. 若函数 $f(x, y)$ 及 $f_{y}(x, y)$ 都在 $[a, b] \times [c, d]$ 上连续，同时在 $[c, d]$ 上 $a^{\prime}(y)$ 及 $b^{\prime}(y)$ 皆存在，并且 $a \leqslant a(y) \leqslant b, a \leqslant b(y) \leqslant b \ (c \leqslant y \leqslant d)$，则

        $$
        F^{\prime}(y) =\dfrac{\mathrm{d}}{\mathrm{d} y} \int_{a(y)}^{b(y)} f(x, y) \mathrm{d} x =\int_{a(y)}^{b(y)} f_{y}(x, y) \mathrm{d} x+f[b(y), y] b^{\prime}(y)-f[a(y), y] a^{\prime}(y)
        $$

    5. 若 $f(x, y)$ 在矩形 $[a, b] \times [c, d]$ 上连续，则 ${\displaystyle \int_{c}^{d} \mathrm{d} y \int_{a}^{b} f(x, y) \mathrm{d} x=\int_{a}^{b} \mathrm{d} x \int_{c}^{d} f(x, y) \mathrm{d} y}$

### 3.3.2 含参变量的反常积分

形如 ${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 的积分称为含参变量 $y$ 的反常积分

1. 一致收敛积分
    1. 一致收敛积分的定义
        1. 无穷限积分的一致收敛：若对任意给定的 $\varepsilon>0$，存在 $A_{0}(\varepsilon)>a$（此 $A(\varepsilon)$ 仅与 $\varepsilon$ 有关），当 $A^{\prime}, A \geqslant A_{0}$ 时，对一切 $y \in[c, d]$ 有 ${\displaystyle \left|\int_{A}^{1} f(x, y) \mathrm{d} x\right|<\varepsilon}$ 或 ${\displaystyle \left|\int_{A}^{+\infty} f(x, y) \mathrm{d} x\right|<\varepsilon}$ 则称 ${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 关于 $y \in[c, d]$ 一致收敛
        2. 无界函数积分的一致收敛：设 ${\displaystyle \int_{a}^{b} f(x, y) \mathrm{d} x}$ 对于 $[c, d]$ 上的每一个 $y$ 值有一个奇点 $x=b$，又设对每一个 $y$，这个有奇点的反常积分存在．如果对于任何 $\varepsilon>0$，存在与 $[c, d]$ 上的 $y$ 无关的 $\delta_{0}(\varepsilon)$，使当 $0<\eta, \eta^{\prime}<\delta_{0}(\varepsilon)$ 时 ${\displaystyle \left|\int_{b-\eta}^{b-\eta^{\prime}} f(x, y) \mathrm{d} x\right|<\varepsilon}$ 或 ${\displaystyle \left|\int_{b-\eta}^{b} f(x, y) \mathrm{d} x\right|<\varepsilon}$ 成立，就称 ${\displaystyle \int_{a}^{b} f(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收敛
    2. 一致收敛积分的判别
        1. $\text{Weierstrass}$ 判别法：设有函数 $F(x)$，使 $|f(x, y)| \leqslant F(x), a \leqslant x<+\infty, c \leqslant y \leqslant d$．如果积分 ${\displaystyle \int_{a}^{+\infty} F(x) \mathrm{d} x}$ 收敛，那么 ${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收敛
        2. $\text{Abel}$ 判别法：设 ${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 关于 $y \in[c, d]$ 为一致收敛，$g(x, y)$ 对 $x$ 单调（即对每个固定的 $y \in[c, d]$，$g(x, y)$ 作为 $x$ 的函数是单调的），并且关于 $y$ 为一致有界，即存在正数 $L$，对所讨论范围内的一切 $x, y$ 成立 $|g(x, y)|<L$．那么积分 ${\displaystyle \int_{a}^{+\infty} f(x, y) g(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收敛
        3. $\text{Dirichlet}$ 判别法：设积分 ${\displaystyle \int_{a}^{A} f(x, y) \mathrm{d} x}$ 对于 $A \geqslant a$ 和 $y \in[c, d]$ 一致有界，即存在正数 $K$，使对上述的 $A, y$ 有 ${\displaystyle \left|\int_{a}^{A} f(x, y) \mathrm{d} x\right| \leqslant K}$．又 $g(x, y)$ 关于 $x$ 为单调，并且当 $x \rightarrow+\infty$ 时，$g(x, y)$ 关于 $[c, d]$ 上的 $y$ 一致趋于零，即对任意给定的正数 $\varepsilon$ 有 $A_{0}$，当 $x \geqslant A_{0}$ 时，对一切 $y \in[c, d]$ 有 $|g(x, y)|<\varepsilon$．那么积分 ${\displaystyle \int_{a}^{+\infty} f(x, y) g(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收敛

        !!! note "符号函数"
            定义符号函数 $\operatorname{sgn}(x)={\displaystyle \dfrac{2}{\pi} \int_{0}^{+\infty} \dfrac{\sin x t}{t} \mathrm{d} t}=\left\{\begin{aligned} & 1, & x > 0 \\ & 0, & x = 0 \\ & -1, & x < 0 \end{aligned}\right.$

    3. 一致收敛积分的性质
        1. 连续性定理：设 $f(x, y)$ 在 $[a,+\infty) \times [c, d]$ 上连续, ${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收敛, 那么 ${\displaystyle I(y)=\int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 是 $y$ 在 $[c, d]$ 上的连续函数
        2. 积分顺序交换定理：设函数 $f(x, y)$ 在 $[a,+\infty) \times [c, d]$ 上连续，${\displaystyle \int_{u}^{+\infty} f(x, y) \mathrm{d} x}$ 关于 $y \in[c, d]$ 一致收敛，那么 ${\displaystyle I(y)=\int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 在 $[c, d]$ 上的积分可以在积分号下进行

            $$
            \int_{c}^{d} \mathrm{d} y \int_{a}^{+\infty} f(x, y) \mathrm{d} x=\int_{a}^{+\infty} \mathrm{d} x \int_{c}^{d} f(x, y) \mathrm{d} y
            $$

        3. 积分号下求导的定理：设 $f(x, y), f_{y}(x, y)$ 在 $[a,+\infty) \times [c, d]$ 上连续，${\displaystyle \int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 存在，${\displaystyle \int_{a}^{+\infty} f_{y}(x, y) \mathrm{d} x}$ 关于 $y$ 在 $[c, d]$ 上一致收剑．那么 ${\displaystyle I(y)=\int_{a}^{+\infty} f(x, y) \mathrm{d} x}$ 的导数存在，且 ${\displaystyle \dfrac{\mathrm{d}}{\mathrm{d} y} \int_{a}^{+\infty} f(x, y) \mathrm{d} x=\int_{a}^{+\infty} \dfrac{\partial}{\partial y} f(x, y) \mathrm{d} x}$

2. $\text{Euler}$ 积分
    1. $\text{Beta}$ 函数（或称 $\mathrm{B}$ 函数、第一类 $\text{Euler}$ 积分）：${\displaystyle \mathrm{B}(p, q)=\int_{0}^{1} x^{p-1}(1-x)^{q-1} \mathrm{d} x}$
        1. 连续性：对任何 $p>0, q>0$，存在 $p_{0}, q_{0}$ 使 $p \geqslant p_{0}>0, q \geqslant q_{0}>0$．因为 $x^{p-1}(1-x)^{q-1} \leqslant x^{p_{0}-1}(1-x)^{q_{0}-1}$，而 ${\displaystyle \int_{0}^{1} x^{p_{0}-1}(1-x)^{q_{0}-1} \mathrm{d} x}$ 收敛，所以 $\mathrm{B}(p, q)$ 在 $\left[p_{0}, +\infty) \times [q_{0},+\infty\right)$ 上一致收敛，从而 $\mathrm{B}(p, q)$ 在 $p>0, q>0$ 时连续
        2. 第二表达式：$\mathrm{B}(p, q)={\displaystyle 2 \int_{0}^{\frac{\pi}{2}} \cos ^{2 p-1} \theta \sin ^{2 q-1} \theta \mathrm{d} \theta}$
    2. $\text{Gamma}$ 函数（或称 $\Gamma$ 函数、第二类 $\text{Euler}$ 积分）：${\displaystyle \Gamma(s)=\int_{0}^{+\infty} x^{s-1} \mathrm{e}^{-x} \mathrm{d} x}$
        1. 连续性：${\displaystyle \Gamma(s)=\int_{0}^{+\infty} x^{s-1} \mathrm{e}^{-x} \mathrm{d} x}$ 在任何 $\left[s_{0}, S_{0}\right] \ \left(0<s_{0}<S_{0}\right)$ 上一致收敛
        2. 递推公式：$\Gamma(s+1)=s \Gamma(s) \ (s>0)$．设 $s=n+1$ 为正整数，则 ${\displaystyle \Gamma(n+1)=n ! \int_{0}^{+\infty} \mathrm{e}^{-x} \mathrm{d} x=n !}$

    两类 $\text{Euler}$ 积分的关系：$\mathrm{B}(p, q)=\dfrac{\Gamma(p) \Gamma(q)}{\Gamma(p+q)} \ (p>0, q>0)$
