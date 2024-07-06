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
1. 辐角原理：设 $f(z)$ 是域 $D$ 中的亚纯函数，$\gamma$ 是 $D$ 内闭路，其内部也属于 $D$．$a_{k}$ 是 $f(z)$ 在 $\gamma$ 内部的零点，其阶数为 $\alpha_{k} \ (k=1,2, \cdots, n)$；$b_{j}$ 是 $f(z)$ 在 $\gamma$ 内部的极点，其阶数为 $\beta_{j} \ (j=1,2, \cdots, m)$．如果 $f(z)$ 在 $\gamma$ 上没有零点和极点，则

    $$
    \dfrac{1}{2 \pi \mathrm i} \oint_{\gamma} \dfrac{f^{\prime}(z)}{f(z)} \mathrm d z=\sum_{k=1}^{n} \alpha_{k}-\sum_{j=1}^{m} \beta_{j}=N-P
    $$

    其中 $N$ 为 $f(z)$ 在 $\gamma$ 内部的零点个数 ${\displaystyle \sum_{k=1}^{n} \alpha_{k}}$，$P$ 是 $f(z)$ 在 $\gamma$ 内部的极点个数 ${\displaystyle \sum_{j=1}^{m} \beta_{j}}$

    1. 映射 $w=f(z)$ 把闭路 $\gamma$ 映为 $w$ 平面上逐段光滑闭曲线 $\Gamma: w=\Gamma(t)=f[\gamma(t)], \alpha \leqslant t \leqslant \beta$．由于 $f(z) \neq 0, z \in \gamma$，所以 $\Gamma$ 不过原点，于是 ${\displaystyle \dfrac{1}{2 \pi \mathrm i} \oint_{\gamma} \dfrac{f^{\prime}(z)}{f(z)} \mathrm d z=\dfrac{1}{2 \pi \mathrm i} \oint_{\Gamma} \dfrac{d w}{w}}$
    2. 若函数 $f(z)$ 在 $D$ 内解析，则 $f(z)$ 在 $\gamma$ 内部的零点个数 ${\displaystyle N=\dfrac{1}{2 \pi \mathrm i} \oint_{\gamma} \dfrac{f^{\prime}(z)}{f(z)} \mathrm d z=\dfrac{1}{2 \pi} \Delta_{\gamma} \operatorname{arg} f(z)}$

2. $\text{Rouch}\acute{\mathrm e}$ 定理：设 $\gamma$ 是域 $D$ 内的闭路，其内部属于 $D$．若函数 $f(z)$ 及 $g(z)$ 在域 $D$ 内解析，在 $\gamma$ 上有 $|f(z)-g(z)|<|f(z)|$，则 $f(z)$ 和 $g(z)$ 在 $\gamma$ 内部有相同的零点个数
    1. 设函数 $f(z)$ 在域 $D$ 内解析，$z_{0} \in D$．记 $w_{0}=f\left(z_{0}\right)$，如果 $z_{0}$ 是 $f(z)-w_{0}$ 的 $m$ 阶零点，则对于充分小的 $\rho>0$，必存在 $\delta>0$，使得对于圆 $\left|w-w_{0}\right|<\delta$ 内的每一点 $A$，函数 $f(z)-A$ 在 $\left|z-z_{0}\right|<\rho$ 内恰有 $m$ 个零点
    2. 代数基本定理: $n$ 次代数方程 $p(z)=a_{n} z^{n}+a_{n-1} z^{n-1}+\cdots+a_{1} z+a_{0}=0 \ (a_{n} \neq 0)$ 恰有 $n$ 个根

## 3.2 共形映射
### 3.2.1 共形映射
1. 设函数 $f(z)$ 在区域 $D$ 内解析，$z_{0} \in D$ 且 $f^{\prime}\left(z_{0}\right) \neq 0$．又设 $\gamma: z=\gamma(t)= x(t)+\mathrm i y(t),\left(t_{0} \leqslant t \leqslant t_{1}\right)$ 是域 $D$ 内过点 $z_{0}$ 的一条光滑曲线，且 $\gamma\left(t_{0}\right)=z_{0}$, $\gamma^{\prime}\left(t_{0}\right) \neq 0$
    1. $f(z)$ 把曲线 $\gamma$ 映为过点 $w_{0}=f\left(z_{0}\right)$ 的光滑曲线 $\Gamma: w=\sigma(t)=f(\gamma(t)), \  t_{0} \leqslant t \leqslant t_{1}$，$\Gamma$ 在点 $w_{0}$ 处的切向量的辐角与曲线 $\gamma$ 在点 $z_{0}$ 处切向量的辐角之差恒为 $\arg f^{\prime}\left(z_{0}\right)$，而与曲线 $\gamma$ 无关
    2. 设 $\gamma_{1}, \gamma_{2}$ 是 $D$ 内过点 $z_{0}$ 的任意两条光滑曲线，其方程分别为 $z=\gamma_{1}(t) \ \left(t_{0} \leqslant t \leqslant t_{1}\right)$ 与 $z=\gamma_{2}(t) \ \left(t_{0} \leqslant t \leqslant t_{1}\right)$，且有 $\gamma_{1}\left(t_{0}\right)=\gamma_{2}\left(t_{0}\right)=z_{0}$
        1. 在解析映射 $w=f(z)$ 下的像分别是通过点 $w_{0}=f\left(z_{0}\right)$ 的光滑曲线 $\Gamma_{1}: w=\sigma_{1}(t), \ \Gamma_{2}: w=\sigma_{2}(t)$
        2. 如果 $f^{\prime}\left(z_{0}\right) \neq 0$，那么在映射 $w=f(z)$ 的作用下，过点 $z_{0}$ 的任意两条光滑曲线的夹角（两条曲线在某点的夹角定义为这两条曲线在该点的切线的夹角）在大小与旋转方向上都保持不变，称 $f(z)$ 在点 $z_{0}$ 处是保角的
    3. 任取过点 $z_{0}$ 的曲线 $\gamma(t)$，其在映射 $f(z)$ 下像为 $\Gamma: w=\sigma(t)=f(\gamma(t))$，则 ${\displaystyle \lim _{\substack{z \rightarrow z_{0} \\ z \in \gamma}} \dfrac{\left|f(z)-f\left(z_{0}\right)\right|}{\left|z-z_{0}\right|}=\left|f^{\prime}\left(z_{0}\right)\right|}$，即像点之间的距离与原像之间的距离之比仅与 $z_{0}$ 有关，而与曲线 $\gamma$ 无关，称 $\left|f^{\prime}\left(z_{0}\right)\right|$ 为 $f$ 在 $z_{0}$ 处的伸缩率
2. 将导数不为零的映射称为共形映射
    1. 保域性：若 $f$ 是域 $D$ 上非常数的解析函数，则 $f(D)$ 是一个域
    2. 若 $f(z)$ 是域 $D$ 内的单叶函数（即一对一的解析函数），则对每一点 $z \in D$，有 $f^{\prime}(z) \neq 0$；反之若 $z_{0} \in D, f^{\prime}\left(z_{0}\right) \neq 0$，则 $f(z)$ 在 $z_{0}$ 的某个邻域内是单叶的
    3. 若函数 $f$ 在域 $D$ 上单叶，则其反函数 $g=f^{-1}$ 在 $G=f(D)$ 上也单叶，而且 $\left(f^{-1}\right)^{\prime}(w)=\dfrac{1}{f^{\prime}(z)}, \  w =f(z)\in G$
    4. 边界对应原理：设 $G$ 是一个域，$\gamma$ 是 $G$ 内的闭路，其内部 $D$ 属于 $G$．若函数 $f(z)$ 在 $G$ 内解析，把 $\gamma$ 一一对应地映射成闭路 $\Gamma$，则 $w=f(z)$ 在 $D$ 内单叶，把 $D$ 映为 $\Gamma$ 的内部 $\Omega$
    5. $\text{Riemann}$ 映射定理：设 $G$ 是单连通区域且 $G \neq \mathbf{C}$，则存在单叶函数 $w=f(z)$ 将 $G$ 共形映射为单位圆盘 $B_{0}:|w|<1$．对任一确定的点 $a \in G$，若进一步要求 $f(a)=0, \arg f^{\prime}(a)=\alpha$（$\alpha$ 是给定的实常数），那么共形映射 $w=f(z)$ 唯一确定
3. $\text{Schwarz}-\text{Christoffel}$ 映射：如果函数 $w=f(z)$ 作出一个把上半平面 $\operatorname{Im} z>0$ 映成有界多边形内部的共形映射，此多边形在顶点 $w_{k}$ 处的内角为 $\beta_{k} \pi \ \left(0<\beta_{k}<2, k=1,2, \cdots, n, \beta_{1}+\beta_{2}+\cdots+\beta_{n}=n-2\right)$，并且实轴上对应于这多边形顶点的点 $a_{k}\left(-\infty<a_{1}<a_{2}<\cdots<a_{n}<+\infty\right)$ 均已知，则 ${\displaystyle f(z)=C \int_{z_{0}}^{z}\left(z-a_{1}\right)^{\beta_{1}-1}\left(z-a_{2}\right)^{\beta_{2}-1} \cdots\left(z-a_{n}\right)^{\beta_{n}-1} \mathrm d z+B}$，其中 $z_{0}\left(\operatorname{Im} z_{0} \geqslant 0\right)$ 是任意选定的点，$B$ 及 $C$ 是复常数，积分号下的各多值函数可取主值

### 3.2.2 分式线性变换
1. 形如 $w=T(z)=\dfrac{a z+b}{c z+d}$ 的函数称为分式线性变换，其中 $a, b, c, d$ 是复常数且 $\Delta=\left|\begin{array}{ll}a & b \\c & d\end{array}\right|=a d-b c \neq 0$．若 $c \neq 0$，规定 $T(-d / c)=\infty, T(\infty)=a / c$；若 $c=0$，规定 $T(\infty)=\infty$，于是分式线性变换 $w=T(z)$ 把扩充 $z$ 平面映为扩充 $w$ 平面
    1. 反函数 $z=T^{-1}(w)=\dfrac{-d w+b}{c w-a}$ 也是一个分式线性变换
    3. 设 $T(z)$ 是分式线性变换，若 $c \neq 0$，则其导数 $T^{\prime}(z)=\dfrac{a d-b c}{(c z+d)^{2}}$，所以在除去点 $z=-d / c$ 及 $z=\infty$ 外，分式线性变换保角；若 $c=0$，则 $T(z)= A z+B, T^{\prime}(z)=A$，所以 $T(z)$ 在有穷复平面上是保角的
2. 分式线性的几种简单特例：一般的分式线性变换可分解为下述 $4$ 种简单变换的复合
    1. 平移变换：$T: w=z+b \ (b \in \mathbf C)$
    2. 旋转变换：$R: w=e^{i \theta} z \ (\theta \in \mathbf R)$
    3. 相似变换：$S: w=r z \ (r \in \mathbf R \wedge R > 0)$
    4. 反演变换：$I: w=\dfrac{1}{z}$，这个变换可以分解为 $z_{1}=\dfrac{1}{\overline{z}}$ 与 $w=\overline{z_{1}}$
3. 设 $\gamma$ 是以 $z_{0}$ 为圆心，$R$ 为半径的圆周．若 $z_{1}, z_{2}$ 两点满足条件 $z_{2}-z_{0}=\dfrac{R^{2}}{\overline{z_{1}-z_{0}}}$，则称 $z_{1}, z_{2}$ 是关于圆周 $\gamma$ 的两个对称点．特别地，对于圆周 $\gamma$ 上的点，与其对称的点就是自身；圆心 $z=z_{0}$ 和无穷远点 $z=\infty$ 也看作关于 $\gamma$ 对称
    1. 任意一个圆周都可以表示为 $\left|\dfrac{z-z_{1}}{z-z_{2}}\right|=k, \ (k>0)$，其中 $z_{1}, z_{2}$ 是关于其两个对称点．当 $k \neq 1$ 时，圆周的圆心 $z_{0}$ 及半径 $R$ 分别为 $z_{0}=\dfrac{z_{1}-k^{2} z_{2}}{1-k^{2}}, \  R=\dfrac{k\left|z_{1}-z_{2}\right|}{\left|1-k^{2}\right|}$
    2. 扩充复平面上两点 $z_{1}$ 和 $z_{2}$ 关于圆周 $\gamma$ 对称的充要条件是过点 $z_{1}$ 和 $z_{2}$ 的任意圆周都与 $\gamma$ 正交
    3. 分式线性变换的保圆性：任意分式线性变换 $w=T(z)=\dfrac{a z+b}{c z+d} \ (a d-b c \neq 0)$ 将圆周 $K$ 映为圆周 $H$，并且将关于 $K$ 的两个对称点映为关于圆周 $H$ 的两个对称点
    4. 设 $z_{2}, z_{3}, z_{4}$ 是 $\mathbf{C}_{\infty}$ 上不同的点，$w=T(z)$ 是线性变换，则对于任意 $z_{1}$ 有 $\left(z_{1}, z_{2}, z_{3}, z_{4}\right)=\left(T\left(z_{1}\right), T\left(z_{2}\right), T\left(z_{3}\right), T\left(z_{4}\right)\right)$

## 3.3 Laplace 变换
