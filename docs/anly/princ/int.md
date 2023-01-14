# 3 积分法

## 3.1 不定积分
1. 不定积分：若在某一区间上 $F^{\prime}(x)=f(x)$，则在该区间上函数 $F(x)$ 称为函数 $f(x)$ 的原函数．将函数 $f(x)$ 的原函数的一般表达式称为 $f(x)$ 的不定积分，记为 ${\displaystyle \int f(x) \mathrm{d} x}$，即 ${\displaystyle \int f(x) \mathrm{d} x=F(x)+C}$
    1. 不定积分的运算法则
        1. ${\displaystyle \int[f(x) \pm g(x)] \mathrm{d} x=\int f(x) \mathrm{d} x \pm \int g(x) \mathrm{d} x}$
        2. ${\displaystyle \int k f(x) \mathrm{d} x=k \int f(x) \mathrm{d} x}$
    2. 换元积分：设 $f(x)$ 连续，$x=\varphi(t)$ 与 $\varphi^{\prime}(t)$ 都连续，反函数 $t=\varphi^{-1}(x)$ 存在且连续，${\displaystyle \int f(\varphi(t)) \varphi^{\prime}(t) \mathrm{d} t=F(t)+C}$，则 ${\displaystyle \int f(x) \mathrm{d} x=F\left(\varphi^{-1}(x)\right)+C}$
    3. 分部积分公式：${\displaystyle \int u \mathrm{~d} v=u v - \int v \mathrm{~d} u}$
2. 基本积分表
    1. ${\displaystyle \int x^\alpha \mathrm{d} x= \begin{cases}\dfrac{1}{\alpha+1} x^{\alpha+1}+C, & \alpha \neq-1 \\ \ln |x|+C, & \alpha=-1 \end{cases}}$
    2. ${\displaystyle \int a^x \mathrm{~d} x=\dfrac{a^x}{\ln a}+C}$．特别地，${\displaystyle \int \mathrm{e}^x \mathrm{~d} x=\mathrm{e}^x+C}$
    3. ${\displaystyle \int \sin x \mathrm{~d} x=-\cos x+C, \int \cos x \mathrm{~d} x=\sin x+C}$

        ${\displaystyle \int \tan x \mathrm{~d} x=-\ln |\cos x|+C, \int \cot x \mathrm{~d} x=\ln |\sin x|+C}$

        ${\displaystyle \int \sec x \mathrm{~d} x=\ln |\sec x+\tan x|+C, \int \csc x \mathrm{~d} x=\ln |\csc x-\cot x|+C}$

    4. ${\displaystyle \int \operatorname{sinh} x \mathrm{~d} x=\operatorname{cosh} x+C, \int \operatorname{cosh} x \mathrm{~d} x=\operatorname{sinh} x+C}$
    5. ${\displaystyle \int \dfrac{\mathrm{d} x}{x^2-a^2}=\dfrac{1}{2 a} \ln \left|\dfrac{x-a}{x+a}\right|+C, \int \dfrac{\mathrm{d} x}{x^2+a^2}=\dfrac{1}{a} \arctan \dfrac{x}{a}+C}$

        ${\displaystyle \int \dfrac{\mathrm{d} x}{\sqrt{a^2-x^2}}=\arcsin \dfrac{x}{a}+C, \int \dfrac{\mathrm{d} x}{\sqrt{x^2 \pm a^2}}=\ln \left|x+\sqrt{x^2 \pm a^2}\right|+C}$

    6. ${\displaystyle \int \sqrt{a^2-x^2} \mathrm{~d} x=\dfrac{1}{2} x \sqrt{a^2-x^2}+\dfrac{a^2}{2} \arcsin \dfrac{x}{a}+C}$

        ${\displaystyle \int \sqrt{x^2 \pm a^2} \mathrm{~d} x=\dfrac{1}{2}\left(x \sqrt{x^2 \pm a^2} \pm a^2 \ln \left|x+\sqrt{x^2 \pm a^2}\right|\right)+C}$

## 3.2 定积分
1. 定积分：设函数 $f(x)$ 是定义在 $[a, b]$ 上，在 $(a, b)$ 中任意插入若干分点 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b$ 划分区间 $[a, b]$，在每一个部分区间 $\left[x_{i-1}, x_{i}\right]$ 中任取一点 $\xi_{i}$，作和式 ${\displaystyle \sigma=\sum_{i=1}^{n} f\left(\xi_{i}\right) \Delta x_{i}}$，其中 $\Delta x_{i}=x_{i}-x_{i-1}$．设 ${\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}}$，当 $\lambda \rightarrow 0$ 时，若 ${\displaystyle I=\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(\xi_{i}\right) \Delta x_{i}}$，且此极限值不依赖于 $\xi_{i}$ 的选择，也不依赖于对 $[a, b]$ 的分法，则称此极限值为 $f(x)$ 在 $[a, b]$ 上的定积分，记为 ${\displaystyle I=\int_{a}^{b} f(x) \mathrm{d} x}$，数 $a$ 和 $b$ 分别称为积分下限和积分上限，和式 $\sigma$ 称为 $f(x)$ 的积分和，上述定义被称为 $\text{Riemann}$ 积分
    1. 若 $f(x)$ 在 $[a, b]$ 可积，则 $f(x)$ 在 $[a, b]$ 必定有界
    2. 可积函数类
        1. $[a, b]$ 上的连续函数在 $[a, b]$ 上必可积
        2. 只有有限个第一类不连续点的函数是可积的，即分段连续函数是可积的
        3. 单调有界函数必定可积

        !!! note "$\text{Riemann}$ 函数"
            $$
            f(x)= \begin{cases}
            \dfrac{1}{q}, & x=\dfrac{p}{q} \in \mathbf Q, q, p \textsf{ 为互质的整数且 } q > 0 \\ 
            0, & x \in \mathbf R - \mathbf Q
            \end{cases}
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

    $\Delta x_{i}=x_{i}-x_{i-1}$，作和式 ${\displaystyle \bar{S}=\sum_{i=1}^{n} M_{i} \Delta x_{i}, \underline{S}=\sum_{i=1}^{n} m_{i} \Delta x_{i}}$ 分别称为对于这一分法的  $\text{Barboux}$ 上和与  $\text{Barboux}$ 下和

    1. 如果在原有的分点中加入新的分点，对应的上和与下和分别记为 $\bar{S}^{\prime}$ 及 $\underline{S}^{\prime}$，则 $\bar{S}{ }^{\prime} \leqslant \bar{S}, \underline{S}^{\prime} \geqslant \underline{S}$
    2. 分别用 $M$ 及 $m$ 记 $f(x)$ 在 $[a, b]$ 的上确界及下确界，则对于一切分法，上和的集合 $\{\bar{S}\}$ 有下界 $m(b-a)$，下和的集合 $\{\underline{S}\}$ 有上界 $M(b-a)$
    3. 任一个下和 $\underline{S}$ 总不超过任一个上和 $\bar{S}$
    4. $\text{Darboux}$ 定理：对任何在 $[a, b]$ 有界的函数 $f(x)$，必有 ${\displaystyle \lim _{\lambda \rightarrow 0} \bar{S}=L, \lim _{\lambda \rightarrow 0} \underline{S}=l}$，其中 $\lambda$ 规定为对任意的分法 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b, {\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}}$

3. 定积分存在的充要条件：有界函数 $f(x)$ 在区间 $[a, b]$ 上 $\text{Riemann}$ 可积的充要条件是函数 $f(x)$ 在 $[a, b]$ 上所有不连续点组成的点集是一个零测度集
    1. 有界函数 $f(x)$ 在 $[a, b]$ 可积的充要条件是 ${\displaystyle \lim _{\lambda \rightarrow 0} \bar{S}=\lim _{\lambda \rightarrow 0} \underline{S}}$
    2. 有界函数 $f(x)$ 在 $[a, b]$ 上可积的充要条件是对任意给定的两个正数 $\varepsilon>0$ 及 $\sigma>0$，存在 $\delta>0$，当对 $[a, b]$ 的任一分法 $a=x_{0}<x_{1}<\cdots<x_{n-1}<x_{n}=b$ 满足 ${\displaystyle \lambda=\max _{i=1,2, \cdots, n}\left\{\Delta x_{i}\right\}<\delta}$ 时，对应于幅度 $\omega_{i^{\prime}} \geqslant \varepsilon$ 的那些部分区间 $\left[x_{i^{\prime}-1}, x_{i^{\prime}}\right]$ 的长度之和 ${\displaystyle \sum_{i^{\prime}} \Delta x_{i^{\prime}}<\sigma}$
4. 定积分的性质
    1. 若 $f(x)$ 在 $[a, b]$ 上可积，$k$ 为一实数，则 $k f(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b} k f(x) \mathrm{d} x=k \int_{a}^{b} f(x) \mathrm{d} x}$
    2. 若 $f(x), g(x)$ 在 $[a, b]$ 上可积，则 $f(x) \pm g(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b}[f(x) \pm g(x)] \mathrm{d} x=\int_{a}^{b} f(x) \mathrm{d} x \pm \int_{a}^{b} g(x) \mathrm{d} x}$
    3. 若 $f(x), g(x)$ 在 $[a, b]$ 上可积，则 $f(x) \cdot g(x)$ 与 $|f(x)|$ 在 $[a, b]$ 上也可积
    4. 若 $a<c<b$ 且 $f(x)$ 在 $[a, c],[c, b]$ 上可积，则 $f(x)$ 在 $[a, b]$ 上也可积，且有 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x=\int_{a}^{c} f(x) \mathrm{d} x+\int_{c}^{b} f(x) \mathrm{d} x}$；反之若 $f(x)$ 在 $[a, b]$ 上可积，则 $f(x)$ 在 $[a, c]$ 与 $[c, b]$ 上也同时可积，且上述等式成立
    5. 若可积函数 $f(x) \geqslant 0$，则 ${\displaystyle \int_{a}^{b} f(x) \mathrm{d} x \geqslant 0}$，其中 $a < b$
    6. 若 $f(x)$ 在 $[a, b]$ 上可积，则 ${\displaystyle \left|\int_{a}^{b} f(x) \mathrm{d} x\right| \leqslant \int_{a}^{b}|f(x)| \mathrm{d} x}$
5. 中值定理

## 3.3 反常积分

## 3.4 重积分
