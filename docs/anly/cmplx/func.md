# 1 复函数

## 1.1 多值函数
1. 辐角函数：$\operatorname{Arg} z=\arg z+2 k \pi, k \in \mathbf Z$
2. 对数函数：使 $z=e^{w}$ 的复数 $w$ 称为 $z$ 的（自然）对数，记作 $\operatorname{Ln} z$
    1. 对于每一个 $z \neq 0$，都有 $w=\operatorname{Ln} z=\ln |z|+\mathrm i \operatorname{arg}$．记 $\ln z = \ln |z| + \mathrm i \arg z$ 为对数 $\operatorname{Ln} z$ 的主值
    2. 对于 $z_1, z_2 \neq 0$ 都有 $\operatorname{Ln}\left(z_{1} z_{2}\right)=\operatorname{Ln} z_{1}+\operatorname{Ln} z_{2}$ 与 $\operatorname{Ln} \dfrac{z_{1}}{z_{2}}=\operatorname{Ln} z_{1}-\operatorname{Ln} z_{2}$
    3. 设复数 $z \neq 0, \alpha \in \mathbf R$，定义 $z$ 的 $\alpha$ 次幂函数 $z^{\alpha} = e^{\alpha \operatorname{Ln} z}$
3. 根式函数：满足 $z=w^{n}$ 的函数 $w=\sqrt[n]{z}=\sqrt[n]{|z|} e^{i \frac{\mathrm{Arg} \ z}{n} z}$，其中整数 $n > 1$．定义主值 $(\sqrt[n]{z})_{0}=\sqrt[n]{|z|} e^{i \frac{\arg z}{n}}$

## 1.2 极限论
### 1.2.1 复数列的极限
1. 设 $z_{1}, z_{2}, \cdots, z_{n} \cdots$ 是一复数序列（简称为复数列），$z_{0}$ 是一给定的复数．若对于任给的 $\varepsilon>0$，存在正整数 $N$，当 $n>N$ 时总有 $\left|z_{n}-z_{0}\right|<\varepsilon$，则称复数列 $\left\{z_{n}\right\}$ 收敛于 $z_{0}$，或称 $z_{0}$ 是复数列 $\left\{z_{n}\right\}$ 的极限，记为 ${\displaystyle \lim _{n \rightarrow \infty} z_{n}=z_{0}}$ 或 ${\displaystyle z_{n} \rightarrow z_{0} \ (n \rightarrow \infty)}$
    1. 设 $r>0$，称点集 $B\left(z_{0}, r\right)=\left\{z \in \mathbf{C}:\left|z-z_{0}\right|<r\right\}$ 为以 $z_{0}$ 为中心、以 $r$ 为半径的球形邻域或 $z_{0}$ 的一个 $r-$邻域
    2. 复数列收敛的充要条件
        1. ${\displaystyle \lim _{n \rightarrow \infty} z_{n}=z_{0} \leftrightarrow \lim _{n \rightarrow \infty} x_{n}=x_{0} \wedge  \lim _{n \rightarrow \infty} y_{n}=y_{0}}$
        2. ${\displaystyle \lim _{n \rightarrow \infty} z_{n}=z_{0} \leftrightarrow \lim _{n \rightarrow \infty}\left|z_{n}\right|=\left|z_{0}\right| \wedge \lim _{n \rightarrow \infty} \arg z_{n}=\arg z_{0}}$
        3. $\text{Cauchy}$ 收敛准则：$z_{n} \rightarrow z_{0}$ 的充要条件是对任给的 $\varepsilon>0$，存在正整数 $N$，当 $m, n>N$ 时有 $\left|z_{m}-z_{n}\right|<\varepsilon$
2. 若对任意 $M>0$，存在自然数 $N$ 使得当 $n>N$ 时 $\left|z_{n}\right|>M$，则称数列 $\left\{z_{n}\right\}$ 的极限是 $\infty$
    1. 记 $B(\infty, R)=\{z \in \mathbf{C}:|z|>R\}$，是以原点为圆心，半径为 $R$ 的圆外部
    2. 广义复数集 $\mathbf{C}_{\infty}$，即 $\mathbf{C}_{\infty}=\mathbf{C} \cup\{\infty\}$，也称作扩充复平面或闭复平面
        1. $z \pm \infty=\infty \pm z=\infty, \dfrac{z}{\infty} = 0, \dfrac{\infty}{z} = \infty$
        2. $z \neq 0 \to z \cdot \infty = \infty \cdot z = \infty, \dfrac{z}{0} = \infty$
        3. $|\infty| = +\infty$，且 $\infty$ 的实部、虚部及辐角均无意义，$\infty \cdot 0, \infty \pm \infty, \dfrac{\infty}{\infty}$ 无意义

### 1.2.2 复函数的极限
1. 复函数 $w=f(z)$ 对应两个二元实函数：$w=f(z)=f(x+y \mathrm i)=u(x, y)+\mathrm i v(x, y)$
2. 设函数 $w=f(z)$ 在 $z_{0}$ 的去心邻域 $0<\left|z-z_{0}\right|<R \ (R>0)$ 内有定义，$w_{0}$ 是给定的复数．若对任意的 $\varepsilon>0$，存在 $\delta>0$ 使得当 $0< \left|z-z_{0}\right|<\delta$ 时恒有 $\left|f(z)-w_{0}\right|<\varepsilon$，则称当 $z$ 趋于 $z_{0}$ 时 $f(z)$ 以 $w_{0}$ 为极限，记作 ${\displaystyle \lim _{z \rightarrow z_{0}} f(z)=w_{0}}$
    1. 若极限存在则必唯一
    2. 若 $f(z)$ 与 $g(z)$ 在点 $z_{0}$ 处有极限，则二函数的和、差、积、商（分母极限不为零）在点 $z_{0}$ 仍然都有极限，且极限值分别等于 $f(z)$ 与 $g(z)$ 在点 $z_{0}$ 的极限值的和、差、积、商
    3. 设 $f(z)=u(x, y)+\mathrm i v(x, y), A=a+\mathrm i b, z_{0}=x_{0}+\mathrm i y_{0}$，则 ${\displaystyle \lim _{z \rightarrow z_{0}} f(z)=A \  \leftrightarrow \  \lim _{\substack{\left(x \rightarrow x_{0}\right) \\ \left(y \rightarrow y_{0}\right)}} u(x, y)=a, \  \lim _{\substack{\left(x \rightarrow x_{0}\right) \\\left(y \rightarrow y_{0}\right)}} v(x, y)=b}$
3. 设 $w=f(z)$ 在点 $z_{0}$ 及其附近有定义，若 ${\displaystyle \lim _{z \rightarrow z_{0}} f(z)=f\left(z_{0}\right)}$，则称 $f(z)$ 在点 $z_{0}$ 连续．若 $f(z)$ 在集合 $E$ 中每点都连续，则称 $f(z)$ 在集合 $E$ 上连续
    1. $f(z)=u(x, y)+\mathrm i v(x, y)$ 在 $z_{0}=x_{0}+\mathrm i y_{0}$ 处连续的充要条件是 $u(x, y)$ 与 $v(x, y)$ 在 $\left(x_{0}, y_{0}\right)$ 处均连续
    2. 连续函数的和、差、积、商（分母不为零）与复合函数仍然是同一点或同一区域内的连续函数
    3. 有界闭区域 $D$ 上的连续函数 $f(z)$ 在 $D$ 上必有界，且 $|f(z)|$ 在 $D$ 上必有最大值与最小值

## 1.3 级数展开
1. 复数的无穷级数：设 $\left\{z_{n}\right\}$ 为复数列，称 ${\displaystyle \sum_{n=1}^{\infty} z_{n}=z_{1}+z_{2}+\cdots+z_{n}+\cdots}$ 是一个无穷级数
    1. 无穷级数的前 $n$ 项和 ${\displaystyle S_{n}=\sum_{k=1}^{n} z_{k}}$ 称为该级数的第 $n$ 个部分和．如果这些部分和构成的复数列 $\left\{S_{n}\right\}$ 收敛，即存在 $S \in \mathbf{C}$，使得 ${\displaystyle \lim _{n \rightarrow \infty} S_{n}=S}$，则称级数 (1) 是收敛的，其和为 $S$，记作 ${\displaystyle \sum_{n=1}^{\infty} z_{n}=z_{1}+z_{2}+\cdots+z_{n}+\cdots=S}$
        1. 设 ${\displaystyle \sum_{n=0}^{\infty} z_{n}}$ 为复级数，$z_{n}=a_{n}+\mathrm i b_{n}, a_{n} \in \mathbf{R}, b_{n} \in \mathbf{R}$，则 ${\displaystyle \sum_{n=0}^{\infty} z_{n}}$ 收敛的充要条件是实级数 ${\displaystyle \sum_{n=0}^{\infty} a_{n}, \sum_{n=0}^{\infty} b_{n}}$ 都收敛；且当 ${\displaystyle \sum_{n=0}^{\infty} z_{n}}$ 收敛时，有 ${\displaystyle \sum_{n=0}^{\infty} z_{n}=\sum_{n=0}^{\infty} a_{n}+\mathrm i \sum_{n=0}^{\infty} b_{n}}$
        2. 级数的 $\text{Cauchy}$ 收敛准则：级数 ${\displaystyle \sum_{n=1}^{\infty} z_{n}=z_{1}+z_{2}+\cdots+z_{n}+\cdots}$ 收敛的充要条件是对于任给 $\varepsilon>0$，存在正整数 $N$，使得当 $n \geqslant N, p \geqslant$ 1 时 $\left|z_{n+1}+z_{n+2}+\cdots+z_{n+p}\right|<\varepsilon$．特别地，若级数 ${\displaystyle \sum_{n=0}^{\infty} z_{n}}$ 收敛，则 ${\displaystyle \lim _{n \rightarrow \infty} z_{n}=0}$
        3. 若实级数 ${\displaystyle \sum_{n=1}^{\infty}\left|z_{n}\right|}$ 收敛，则称级数 ${\displaystyle \sum_{n=1}^{\infty} z_{n}}$ 绝对收敛．绝对收敛的级数一定收敛，反之不一定成立
    2. 设在集合 $D \subseteq \mathbf{C}$ 上给定函数列 $\left\{f_{n}(z)\right\}$．若对于每一点 $z \in D$，级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)=f_{1}(z)+f_{2}(z)+\cdots+f_{n}(z)+\cdots}$ 收敛，则称函数项级数在 $D$ 上收敛．此时对于 $D$ 上每一点 $z$，级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 都有一个确定的和，记为 $f(z)$，即 ${\displaystyle f(z)=\sum_{n=1}^{\infty} f_{n}(z)}$ 是确定在 $D$ 上的一个函数，称为和函数
    3. 函数项级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在集合 $D$ 上一致收敛到 $f(z)$，指对任意的 $\varepsilon>0$，一定存在一个只依赖于 $\varepsilon$，而不依赖于 $z$ 的 $N$，使得对所有的 $n \geqslant N$ 和所有的 $z \in D$，都有 $\left|S_{n}(z)-f(z)\right|<\varepsilon$，其中 ${\displaystyle S_{n}(z)=\sum_{k=1}^{n} f_{k}(z)}$，是级数的部分和

2. $\text{Weierstrass}$ 判别法：设 $\left\{f_{n}(z)\right\}$ 是定义在 $D$ 上的函数列，并且 $\left|f_{n}(z)\right| \leqslant M_{n} \ (n=1,2, \cdots)$，而正项级数 ${\displaystyle \sum_{n=1}^{\infty} M_{n}}$ 收敛，则级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在 $D$ 上一致收敛
    1. 若 $f_{n}(z) \ (n=1,2, \cdots)$ 在集合 $D$ 上连续，级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在 $D$ 上一致收敛到 $f(z)$，则 $f(z)$ 在 $D$ 上连续
    2. 若 $f_{n}(z) \ (n=1,2, \cdots)$ 在曲线 $\gamma$ 上连续，级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在 $\gamma$ 上一致收敛到 $f(z)$，则 ${\displaystyle \int_{\gamma} f(z) \mathrm d z=\sum_{n=1}^{\infty} \int_{\gamma} f_{n}(z) \mathrm d z}$
    3. $\text{Weierstrass}$ 定理：若 $f_{n}(z) \ (n=1,2, \cdots)$ 在域 $D$ 中解析且 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在 $D$ 中一致收敛到函数 $f(z)$，则 $f(z)$ 在 $D$ 中解析，并且可以逐项求导到任意多阶，即有 ${\displaystyle f^{(k)}(z)=\sum_{n=1}^{\infty} f_{n}^{(k)}(z) \ (k=1,2, \cdots)}$；若 $f_{n}(z) \ (n=1,2, \cdots)$ 在域 $D$ 中解析且 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(z)}$ 在 $D$ 中内闭一致收敛到函数 $f(z)$，则 $f(z)$ 在 $D$ 中解析，且 ${\displaystyle \sum_{n=1}^{\infty} f_{n}^{(k)}(z)}$ 在 $D$ 中内闭一致收敛到 $f^{(k)}(z)$

### 1.3.1 幂级数
1. 设 $z_{0} \in \mathbf{C}$，形如 ${\displaystyle \sum_{n=0}^{\infty} c_{n}\left(z-z_{0}\right)^{n}=c_{0}+c_{1}\left(z-z_{0}\right)+\cdots+c_{n}\left(z-z_{0}\right)+\cdots}$ 的函数项级数称为中心在 $z_{0}$ 的幂级数，这里 $c_{n} \in \mathbf{C}, z \in \mathbf{C}$．假定 $z_{0}=0$ 时幂级数为 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}=c_{0}+c_{1} z+\cdots+c_{n} z^{n}+\cdots}$
    1. $\text{Abel}$ 定理：若幂级数 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}}$ 在 $z_{0} \ (\neq 0)$ 处收敛，则 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}}$ 在 $|z|< \left|z_{0}\right|$ 中内闭绝对一致收敛；若 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}}$ 在 $z_{0} \ (\neq 0)$ 处发散，则 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}}$ 在 $|z|>\left|z_{0}\right|$ 发散
    2. 若 ${\displaystyle L=\lim _{n \rightarrow \infty}\left|\dfrac{c_{n+1}}{c_{n}}\right|}$ 或 ${\displaystyle L=\lim _{n \rightarrow \infty} \sqrt[n]{\left|c_{n}\right|}}$ 存在，则幂级数 ${\displaystyle \sum_{n=0}^{\infty} c_{n} z^{n}=c_{0}+c_{1} z+\cdots+c_{n} z^{n}+\cdots}$ 的收敛半径为 $R=\dfrac{1}{L}$
2. 设幂级数 ${\displaystyle \sum_{n=0}^{\infty} c_{n}\left(z-z_{0}\right)^{n}=c_{0}+c_{1}\left(z-z_{0}\right)+\cdots+c_{n}\left(z-z_{0}\right)+\cdots}$ 的收敛半径为 $R$，则其和函数 $f(z)$ 在它的收敛圆内解析，且 $f^{(k)}(z)=k!c_{k}+(k+1) k \cdots 2 c_{k+1}\left(z-z_{0}\right)+\cdots$ 在收敛圆内成立，即在收敛圆内可逐次微商
3. 若函数 $f(z)$ 在圆 $\Gamma:|z-a|<R$ 内解析，则 $f(z)$ 在 $\Gamma$ 内可以展为幂级数 ${\displaystyle f(z)=\sum_{n=0}^{\infty} \dfrac{f^{(n)}(a)}{n!}(z-a)^{n}}$，这个幂级数称为 $f(z)$ 在点 $z=a$ 的 $\text{Taylor}$ 级数
    1. 指数函数 $f(z)=e^{z}$ 在 $\mathbf{C}$ 上解析且 $f^{(n)}(z)=e^{z} \ (n=0,1,2, \cdots), f^{(n)}(0)=1$，则 ${\displaystyle e^{z}=1+z+\dfrac{z^{2}}{2!}+\cdots+\dfrac{z^{n}}{n!}+\cdots}$
    2. 对数函数 $f(z)=\ln (1+z)$：${\displaystyle \ln (1+z)=\sum_{n=1}^{\infty} \dfrac{(-1)^{n-1}}{n} z^{n}, \ |z|<1, -\pi<\arg (1-z)<\pi}$
    3. 幂函数 $f(z)=z^{\alpha}$（$\alpha$ 不是整数）：${\displaystyle (1+z)^{\alpha}=1+\binom{\alpha}{1} z+\binom{\alpha}{2} z^{2}+\cdots+\binom{\alpha}{n} z^{n}+\cdots(|z|<1)}$
    4. 三角函数 $\sin z, \cos z$

        $$
        \begin{aligned}
        \sin z&=\dfrac{1}{2 \mathrm i}\left(e^{i z}-e^{-i z}\right)=\sum_{n=0}^{\infty} \dfrac{(-1)^{n}}{(2 n+1)!} z^{2 n+1} \\
        \cos z&=\dfrac{1}{2}\left(e^{i z}+e^{-i z}\right)=\sum_{n=0}^{\infty} \dfrac{(-1)^{n}}{(2 n)!} z^{2 n}
        \end{aligned}
        $$

### 1.3.3 Laurent 级数

### 1.3.4 Γ 函数
