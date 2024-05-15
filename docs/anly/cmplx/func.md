# 1 复函数

## 1.1 多值函数
1. 辐角函数：$\operatorname{Arg} z=\arg z+2 k \pi, k \in \mathbf Z$
2. 对数函数：使 $z=e^{w}$ 的复数 $w$ 称为 $z$ 的（自然）对数，记作 $\operatorname{Ln} z$
    1. 对于每一个 $z \neq 0$，都有 $w=\operatorname{Ln} z=\ln |z|+\mathrm i \operatorname{arg}$．记 $\ln z = \ln |z| + \mathrm i \arg z$ 为对数 $\operatorname{Ln} z$ 的主值
    2. 对于 $z_1, z_2 \neq 0$ 都有 $\operatorname{Ln}\left(z_{1} z_{2}\right)=\operatorname{Ln} z_{1}+\operatorname{Ln} z_{2}$ 与 $\operatorname{Ln} \dfrac{z_{1}}{z_{2}}=\operatorname{Ln} z_{1}-\operatorname{Ln} z_{2}$
    3. 设复数 $z \neq 0, \alpha \in \mathbf R$，定义 $z$ 的 $\alpha$ 次幂函数 $z^{\alpha} = e^{\alpha \operatorname{Ln} z}$
3. 根式函数：满足 $z=w^{n}$ 的函数 $w=\sqrt[n]{z}=\sqrt[n]{|z|} e^{i \frac{\mathrm{Arg} \ z}{n} z}$，其中整数 $n > 1$．定义主值 $(\sqrt[n]{z})_{0}=\sqrt[n]{|z|} e^{i \frac{\arg z}{n}}$

## 1.2 极限与微分
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

### 1.2.3 复函数的微分
1. 设函数 $w=f(z)$ 定义在域 $D$ 上，$z_{0} \in D$．若极限 ${\displaystyle \lim _{\Delta z \rightarrow 0} \dfrac{f\left(z_{0}+\Delta z\right)-f\left(z_{0}\right)}{\Delta z}}$ 存在，则称 $f(z)$ 在点 $z_{0}$ 可导，称这个极限值为 $f(z)$ 在点 $z_{0}$ 的导数，记作 $f^{\prime}\left(z_{0}\right)$ 或 $\left.\dfrac{\mathrm d w}{\mathrm d z}\right|_{z=z_{0}}$．当 $f(z)$ 在区域 $D$ 内处处可导时，称 $f(z)$ 在区域 $D$ 内可导
    1. 若 $f(z), g(z)$ 都在点 $z$（或区域）可导，则其和、差、积、商（分母在该处不为零）也在该处可导
        1. $(f(z) \pm g(z))^{\prime}=f^{\prime}(z) \pm g^{\prime}(z)$
        2. $(f(z) g(z))^{\prime}=f^{\prime}(z) g(z)+f(z) g^{\prime}(z)$
        3. $\left(\dfrac{f(z)}{g(z)}\right)^{\prime}=\dfrac{f^{\prime}(z) g(z)-g^{\prime}(z) f(z)}{g^{2}(z)} \ (g(z) \neq 0)$
    2. 复合求导：若 $\xi=f(z)$ 在点 $z$ 可导，$w=g(\xi)$ 在点 $\xi$ 可导，则复合函数 $g(f(z))$ 在点 $z$ 可导且 $\dfrac{\mathrm d g(f(z))}{\mathrm d z}=\dfrac{\mathrm d g(\xi)}{\mathrm d \xi} \cdot \dfrac{\mathrm d f(z)}{\mathrm d z}$
    3. 反函数求导：设单射 $w=f(z)$ 在点 $z$ 可导，且 $f^{\prime}(z) \neq 0$，则 $\dfrac{d f^{-1}(w)}{d w}=\dfrac{1}{f^{\prime}(z)}$
2. 若函数 $w=f(z)$ 在点 $z_{0}$ 的增量 $\Delta w$ 可表示为 $\Delta w=A \Delta z+o(|\Delta z|)$，其中 $A$ 是只与 $z_{0}$ 有关的复常数，则称 $w=f(z)$ 在点 $z_{0}$ 可微，且称 $\Delta w$ 的线性主部 $A \Delta z$ 为 $w=f(z)$ 在点 $z_{0}$ 的微分，记作 $\mathrm d w=A \Delta z$
    1. 函数 $w=f(z)$ 在点 $z_{0}$ 可导与在点 $z_{0}$ 可微等价
    2. 若函数 $w=f(z)$ 在点 $z_{0}$ 可导（可微），则 $f(z)$ 必然在 $z_0$ 点连续

## 1.3 复积分

### 1.3.1 基本定理

### 1.3.2 调和函数
