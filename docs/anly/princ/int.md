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
    5. ${\displaystyle \int \frac{\mathrm{d} x}{x^2-a^2}=\frac{1}{2 a} \ln \left|\frac{x-a}{x+a}\right|+C, \int \frac{\mathrm{d} x}{x^2+a^2}=\frac{1}{a} \arctan \frac{x}{a}+C}$

        ${\displaystyle \int \frac{\mathrm{d} x}{\sqrt{a^2-x^2}}=\arcsin \frac{x}{a}+C, \int \frac{\mathrm{d} x}{\sqrt{x^2 \pm a^2}}=\ln \left|x+\sqrt{x^2 \pm a^2}\right|+C}$

    6. ${\displaystyle \int \sqrt{a^2-x^2} \mathrm{~d} x=\frac{1}{2} x \sqrt{a^2-x^2}+\frac{a^2}{2} \arcsin \frac{x}{a}+C}$

        ${\displaystyle \int \sqrt{x^2 \pm a^2} \mathrm{~d} x=\frac{1}{2}\left(x \sqrt{x^2 \pm a^2} \pm a^2 \ln \left|x+\sqrt{x^2 \pm a^2}\right|\right)+C}$

## 3.2 定积分

## 3.3 反常积分

## 3.4 重积分
