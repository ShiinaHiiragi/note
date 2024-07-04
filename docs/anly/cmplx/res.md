# 3 留数理论

## 3.1 留数理论
### 3.1.1 留数定理
1. 设 $a$ 为函数 $f(z)$ 的孤立奇点，则$f(z)$ 在孤立奇点 $a$ 的留数定义为 ${\displaystyle \operatorname{Res}[f(z), a]=\dfrac{1}{2 \pi \mathrm i} \oint_{|z-a|=r} f(z) \mathrm d z}$，其中 $0<r<R$
    1. 设 $a \neq \infty$ 是 $f(z)$ 的 $m(\geqslant 1)$ 阶极点，则 ${\displaystyle \operatorname{Res}[f(z), a]=c_{-1}=\dfrac{1}{(m-1)!} \lim _{z \rightarrow a} \dfrac{\mathrm d^{m-1}}{\mathrm d z^{m-1}}\left[(z-a)^{m} f(z)\right]}$
    2. 若 $a$ 是 $f(z)$ 的一阶极点，则 ${\displaystyle \operatorname{Res}[f(z), a]=\lim _{z \rightarrow a}(z-a) f(z)}$
    3. 设 $f(z)=\dfrac{p(z)}{q(z)}$，$p(z)$ 和 $q(z)$ 都在 $a$ 点处解析且 $p(a) \neq 0, q(a)=0, q^{\prime}(a) \neq 0$，则 $\operatorname{Res}[f(z), a]=\dfrac{p(a)}{q^{\prime}(a)}$
2. 设函数 $f(z)$ 在闭路 $\gamma$ 及其内部 $D$ 中除去 $n$ 个孤立奇点 $z_{1}, z_{2}, \cdots, z_{n}$ 外解析，则 ${\displaystyle \oint_{\gamma} f(z) \mathrm d z=2 \pi \mathrm i \sum_{k=1}^{n} \operatorname{Res}\left[f(z), z_{k}\right]}$
3. 若函数 $f(z)$ 在 $C$ 上除去点 $z_{1}, z_{2}, \cdots, z_{n}$ 外解析，则 $f(z)$ 在所有孤立奇点（包括 $z=\infty$ 在内）的留数之和为零，即 ${\displaystyle \sum_{k=1}^{n} \operatorname{Res}\left[f(z), z_{k}\right]+\operatorname{Res}[f(z), \infty]=0}$

### 3.1.2 留数与积分
1. 为求实函数在实轴或实轴上的某一段 $I$ 上的积分，在 $I$ 上适当附加某一曲线使其构成一闭路 $\Gamma$，其内部为 $D$，同时选取适当函数 $F(z)$，在 $\overline{D}$ 上对 $F(z)$ 应用留数定理，将实轴上 $f(x)$ 的积分转化为计算 $F(z)$
    1. 若函数 $f(z)$ 在域 $D: 0<|z-a| \leqslant r, \theta_{1} \leqslant \arg (z-a) \leqslant \theta_{2}$ 上连续，且 ${\displaystyle \lim _{\substack{z \rightarrow a \\ z \in D}}(z-a) f(z)=A}$，则

        $$
        \lim _{\rho \rightarrow 0} \int_{\Gamma_{\rho}} f(z) \mathrm d z=i\left(\theta_{2}-\theta_{1}\right) A
        $$

        其中 $\Gamma_{\rho}: z=a+\rho e^{i \theta}, \theta_{1} \leqslant \theta \leqslant \theta_{2}, 0<\rho<r$

    2. 若函数 $f(z)$ 在域 $D: R \leqslant|z-a| \leqslant+\infty, \theta_{1} \leqslant \arg (z-a) \leqslant \theta_{2}$ 上连续，且 ${\displaystyle \lim _{\substack{z \rightarrow+\infty \\ z \in D}}(z-a) f(z)=A}$，则

        $$
        \lim _{\rho \rightarrow \infty} \int_{\Gamma_{\rho}} f(z) \mathrm d z=A \mathrm i\left(\theta_{2}-\theta_{1}\right)
        $$

        其中 $\Gamma_{\rho}: z=a+\rho e^{i \theta}, \theta_{1} \leqslant \theta \leqslant \theta_{2}, \rho>R$

    3. $\text{Jordan}$ 引理：若函数 $f(z)$ 在 $R_{0} \leqslant |z|<\infty, \operatorname{Im} (z) \geqslant-a(a>0)$ 上连续，且 ${\displaystyle \lim _{\substack{z \rightarrow \infty \\ \operatorname{Im} (z) \geqslant-a}} f(z)=0}$，则对任意正的常数 $\lambda$ 都有

        $$
        \lim _{R \rightarrow+\infty} \int_{\Gamma_{R}} e^{i \lambda z} f(z) \mathrm d z=0
        $$

        其中 $\Gamma_{R}: z=R e^{i \varphi}, \operatorname{Im} (z) \geqslant-a, R>R_{0}$

2. 用留数计算实积分
    1. 积分 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm d x}$ 的计算：若函数 $f(z)$ 在上半平面除去有穷孤立奇点 $z_{1}, z_{2}, \cdots, z_{n}$ 外及实轴上解析且 ${\displaystyle \lim _{\substack{z \rightarrow \infty \\ \operatorname{Im} (z) \geqslant 0}} z f(z)=0}$，则 ${\displaystyle \int_{-\infty}^{+\infty} f(x) \mathrm d x=2 \pi \mathrm i \sum_{k=1}^{n} \operatorname{Res}\left[f(z), z_{k}\right]}$．特别地，若 $f(z)$ 是有理函数 $\dfrac{P(z)}{Q(z)}$ 且 $Q(z)$ 在实轴上无零点，且 $Q(z)$ 的次数比 $P(z)$ 至少大 $2$，则前式成立
    2. 积分 ${\displaystyle \int_{0}^{2 \pi} R(\cos \theta, \sin \theta) d \theta}$ 的计算：$R(x, y)$ 是关于 $x$ 与 $y$ 两个变量的有理函数
        1. 把原积分化为有理函数的积分 ${\displaystyle \int_{0}^{2 \pi} R(\cos \theta, \sin \theta) \mathrm d \theta=\int_{-\infty}^{\infty} R\left(\dfrac{1-u^{2}}{1+u^{2}}, \dfrac{2 u}{1+u^{2}}\right) \dfrac{2}{1+u^{2}} \mathrm d u}$
        2. 令 $z=e^{\mathrm i \theta}$，则 ${\displaystyle \int_{0}^{2 \pi} R(\cos \theta, \sin \theta) \mathrm d \theta=\oint_{|z|=1} R\left(\dfrac{1}{2}\left(z+\dfrac{1}{z}\right), \dfrac{1}{2 \mathrm i}\left(z-\dfrac{1}{z}\right)\right) \dfrac{1}{i z} \mathrm d z}$．若 $z_{1}, z_{2}, \cdots, z_{n}$ 是 $z$ 的有理函数 $F(z)=\dfrac{1}{\mathrm i z} R\left\{\dfrac{1}{2}\left(z+\dfrac{1}{z}\right), \dfrac{1}{2 \mathrm i}\left(z-\dfrac{1}{z}\right)\right\}$ 在圆 $|z|<1$ 内的极点，则 ${\displaystyle \int_{0}^{2 \pi} R(\cos \theta, \sin \theta) d \theta=2 \pi \mathrm i \sum_{k=1}^{n} \operatorname{Res}\left[F(z), z_{k}\right]}$
3. 多值函数的积分
    1. 若函数 $f(z)$ 在 $\mathbf{C}_{\infty}$ 上除去点 $z_{1}, z_{2}, \cdots, z_{n}$ 外是解析的，$z_{1}, z_{2}, \cdots, z_{n}$ 不在包括原点的正实轴上，$z=\infty$ 是 $f(z)$ 的零点（其级数 $m \geqslant 1$），则 ${\displaystyle \int_{0}^{+\infty} f(x) x^{p-1} \mathrm d x=\dfrac{2 \pi \mathrm i}{1-e^{2 \pi p \mathrm i}} \sum_{k=1}^{n} \operatorname{Res}\left[z^{p-1} f(z), z_{k}\right]}$，其中 $0<\operatorname{Im} (\ln z)=\arg z<2 \pi$ 且 $z^{p-1}=e^{(p-1) \ln z}$．特别地，若 $f(z)$ 是有理函数 $\dfrac{P(z)}{Q(z)}$ 且 $Q(z)$ 在包括原点的正实轴上没有零点，其次数比 $P(z)$ 至少大 $1$，则前式成立
    2. 设函数 $f(z)$ 在 $\mathbf{C}_{\infty}$ 上除去点 $z_{1}, z_{2}, \cdots, z_{n}$ 外是解析的（$z=\infty$ 是 $f(z)$ 的可去奇点），且 $z_{1}, z_{2}, \cdots, z_{n}$ 不在线段 $[0,1]$ 上，则 ${\displaystyle \int_{0}^{1} x^{a-1}(1-x)^{-a} f(x) \mathrm d x=\dfrac{C_{0} \pi}{\sin \pi a}-\dfrac{\pi}{e^{a \pi \mathrm i} \sin \pi a} \sum_{k=1}^{n} \operatorname{Res}\left[F(z), z_{k}\right]}$，其中 $C_{0}=f(\infty), F(z)=z^{a-1}(1-z)^{-a} f(z)$．特别地，如果 $f(z)$ 是有理函数 $\dfrac{P(z)}{Q(z)}$ 且 $Q(z)$ 的次数至少不比 $P(z)$ 的次数低，且当 $0 \leqslant x \leqslant 1$ 时$Q(x)$ 不为零，则前式成立
    3. 若函数 $f(z)$ 在 $\mathbf{C}_{\infty}$ 上只有有穷个孤立奇点 $z_{1}, z_{2}, \cdots, z_{n}$，且这些孤立奇点不在包括原点的正实轴上，$f(z)$ 在实轴上取实值，此外 $z=\infty$ 是 $f(z)$ 的 $m$ 阶零点，$m \geqslant 2$，则

        $$
        \begin{align*}
        \int_{0}^{+\infty} f(x) d x&=-\dfrac{1}{2 \pi} \operatorname{Im}\left\{\sum_{k=1}^{n} \operatorname{Res}\left[f(z) \ln ^{2} z, z_{k}\right]\right\}\\
        \int_{0}^{+\infty} f(x) \ln x d x&=-\dfrac{1}{2 \pi} \operatorname{Re}\left\{\sum_{k=1}^{n} \operatorname{Res}\left[f(z) \ln ^{2} z, z_{k}\right]\right\}
        \end{align*}
        $$

        其中 $\ln z$ 满足 $0<\operatorname{Im} (\ln z)<2 \pi$．特别地，若 $f(z)$ 是实系数的有理函数 $\dfrac{P(z)}{Q(z)}$ 且 $Q(z)$ 的零点不在包括原点的正实轴上，且 $Q(z)$ 的次数至少比 $P(z)$ 的次数大 $2$，则前式成立

    4. 若 $f(x)$ 是 $x$ 的偶函数，$f(z)$ 在上半平面 $\operatorname{Im} (z)>0$ 除去点 $z_{1}, z_{2}, \cdots, z_{n}$ 外是解析的，在 $\operatorname{Im} (z) \geqslant 0$ 上除去 $z_{1}, z_{2}, \cdots, z_{n}$ 外是连续的，并且当 $z$ 的模充分大时，$|f(z)| \leqslant M /|z|^{m}, m \geqslant 2, M$ 是常数，则

        $$
        \begin{align*}
        \int_{0}^{+\infty} f(x) \ln (x) d x&=-\pi \operatorname{Im} \sum_{k=1}^{n} \operatorname{Res}\left[f(z) \ln z, z_{k}\right] \\
        \int_{0}^{+\infty} f(x) d x&=2 \operatorname{Re}\left\{\sum_{k=1}^{n} \operatorname{Res}\left[f(z) \ln z, z_{k}\right]\right\}
        \end{align*}
        $$

        其中 $\ln z$ 满足 $0<\operatorname{Im} (\ln z)<2 \pi$

4. 特殊积分
    1. ${\displaystyle \int_{0}^{+\infty} e^{-x^{2}} \mathrm d x=\dfrac{\sqrt{\pi}}{2}}$
    2. $\text{Fresnel}$ 积分：${\displaystyle \int_{0}^{+\infty} \cos x^{2} \mathrm d x=\int_{0}^{+\infty} \sin x^{2} \mathrm d x=\dfrac{\sqrt{2 \pi}}{4}}$
    3. $\text{Poisson}$ 积分：${\displaystyle \int_{0}^{+\infty} e^{-a x^{2}} \cos b x \mathrm d x=\dfrac{1}{2} \sqrt{\dfrac{\pi}{a}} e^{-\frac{b^{2}}{4 a}}}$

### 3.1.3 辐角原理

## 3.2 共形映射
### 3.2.1 共形映射

### 3.2.2 分式线性变换

## 3.3 Laplace 变换
