# 2 微分与积分

## 2.1 微分与解析函数
### 2.1.1 导数与微分
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

### 2.1.2 解析函数
1. 若复函数 $f(z)$ 在区域 $D$ 内可导，则称 $f(z)$ 为区域 $D$ 内的解析函数，或称 $f(z)$ 在区域 $D$ 内解析
    1. 函数在某点解析指函数在该点的某一邻域内处处可导
    2. 函数在闭区域上解析指函数在包含该区域的某个更大区域内解析
    3. 若解析函数在区域 $D$ 内是单射，则称函数为 $D$ 内的单叶函数，区域 $D$ 为该函数的单叶性区域
2. $f(z)=u(x, y)+\mathrm i v(x, y)$ 在点 $z=x+\mathrm i y$ 可导当且仅当 $u(x, y), v(x, y)$ 在点 $(x, y)$ 可微并在该点满足 $\text{Cauchy}-\text{Riemann}$ 方程

    $$
    \dfrac{\partial u}{\partial x}=\dfrac{\partial v}{\partial y}, \dfrac{\partial u}{\partial y}=-\dfrac{\partial v}{\partial x}
    $$

    简称为 $\text{C}-\text{R}$ 方程

    1. $f(z)=u(x, y)+\mathrm i v(x, y)$ 在区域 $D$ 内解析的充要条件是 $u(x, y)$ 与 $v(x, y)$ 在区域 $D$ 内可微且满足 $\text{C}-\text{R}$ 方程
    2. 设 $f(z)$ 在区域 $D$ 解析且在 $D$ 内 $f^{\prime}(z) \equiv 0$，则 $f(z)$ 在 $D$ 内恒为常数
    3. 设 $f(z)=u+\mathrm i v$ 在区域 $D$ 内解析，且 $f^{\prime}(z) \neq 0, z \in D$，则对于任意实常数 $c_1, c_2$，曲线族 $u(x, y)=c_{1}$ 与 $v(x, y)=c_{2}$ 在 $D$ 内必相互正交

## 2.2 复积分
### 2.2.1 基本定理
1. 设曲线 $\gamma$ 起点是 $A$，终点是 $B$，$w=f(z)$ 是定义在曲线 $\gamma$ 上的一个连续函数．在 $\gamma$ 上任取分点 $z_{0}=A, z_{1}, z_{2}, \cdots, z_{n}=B$ 并在 $\gamma$ 的每段弧 $z_{k-1} z_{k}$ 上任取点 $\zeta_{k}$ 作和式 ${\displaystyle S_{n}=\sum_{k=1}^{n} f\left(\zeta_{k}\right) \Delta z_{k}}$，其中 $\Delta z_{k}=z_{k}-z_{k-1}$．令 $\lambda=\max \left\{\left|\Delta z_{1}\right|,\left|\Delta z_{2}\right|, \cdots,\left|\Delta z_{n}\right|\right\}$，当 $\lambda \rightarrow 0$ 时，若不论各分点及各段弧上点 $\zeta_{k}$ 如何选取，和式总有确定的极限，则称此极限为 $f(z)$ 沿曲线 $\gamma$ 自 $A$ 到 $B$ 的积分，记作 ${\displaystyle \int_{\gamma} f(z) \mathrm d z=\lim _{\lambda \rightarrow 0} \sum_{k=1}^{n} f\left(\zeta_{k}\right) \Delta z_{k}}$．若 $\gamma$ 为闭路，则（逆时针）沿 $\gamma$ 的积分记作 ${\displaystyle \oint_{\gamma} f(z) \mathrm d z}$
    1. 复积分实质上是两个第二类曲线积分的线性组合
        1. ${\displaystyle \int_{\gamma}\left[c_{1} f(z) \pm c_{2} g(z)\right] \mathrm d z=c_{1} \int_{\gamma} f(z) \mathrm d z \pm c_{2} \int_{\gamma} g(z) \mathrm d z}$，其中 $c_{1}, c_{2}$ 是任意复常数
        2. ${\displaystyle \int_{\gamma^{-1}} f(z) \mathrm d z=-\int_{\gamma} f(z) \mathrm d z}$，其中 $\gamma^{-1}$ 是 $\gamma$ 的反方向曲线：$\gamma^{-1}(t)=\gamma(\alpha+\beta-t), \alpha \leqslant t \leqslant \beta$
        3. ${\displaystyle \int_{\gamma} f(z) \mathrm d z=\int_{\gamma_{1}} f(z) \mathrm d z+\int_{\gamma_{2}} f(z) d z+\cdots+\int_{\gamma_{m}} f(z) \mathrm d z}$，其中曲线 $\gamma$ 由曲线 $\gamma_{1}, \gamma_{2}, \cdots, \gamma_{m}$ 组成
        4. ${\displaystyle \left|\int_{\gamma} f(z) \mathrm d z\right| \leqslant \int_{\gamma}|f(z)| \mathrm d s \leqslant M L}$，其中 $s$ 是 $\gamma$ 的弧长，${\displaystyle M=\max _{z \in \gamma}|f(z)|}$，$L$ 是 $\gamma$ 的长度
    2. 小圆弧引理：当 $\rho$ 充分小时，设 $f(z)$ 在圆弧 $C_{\rho}: z=a+\rho e^{i \theta}, \alpha \leqslant \theta \leqslant \beta, \rho>0$ 上连续，且 ${\displaystyle \lim _{z \rightarrow a}(z-a) f(z)=A}$，则 ${\displaystyle \lim _{\rho \rightarrow 0^{+}} \int_{C_{\rho}} f(z) d z=\mathrm i(\beta-\alpha) A}$
2. $\text{Cauchy}$ 积分定理：设 $D$ 是由闭路 $C$ 围成的单连通域，$f(z)$ 在闭区域 $C+D$ 解析，则 ${\displaystyle \oint_{c} f(z) \mathrm d z=0}$
    1. 设 $f(z)$ 在单连通域 $D$ 内解析，$C$ 是 $D$ 内的闭曲线，则 ${\displaystyle \int_{c} f(z) \mathrm d z=0}$
    2. 设 $f(z)$ 在单连通域 $D$ 内解析，$C$ 是 $D$ 内一条起于点 $z_{0}$ 而终于点 $z$ 的曲线，则积分 ${\displaystyle \int_{C} f(\zeta) \mathrm d \zeta}$ 不依赖于积分路径 $C$，而只由 $z_{0}, z$ 确定，此时该积分可记为 ${\displaystyle \int_{z_{0}}^{z} f(\zeta) \mathrm d \zeta}$ 或 ${\displaystyle \int_{z_{0}}^{z} f(z) \mathrm d z}$
    3. 复合闭路定理：设 $f(z)$ 在复合闭路 $C=C_{0}+C_{1}^{-}+C_{2}^{-}+\cdots+C_{n}^{-}$ 及其所围的多连通区域 $D$ 解析，则 ${\displaystyle \oint_{C} f(z) \mathrm d z=0}$，即 ${\displaystyle \oint_{C_{0}} f(z) \mathrm d z=\sum_{k=1}^{n} \oint_{C_{k}} f(z) \mathrm d z}$
3. 设函数 $f$ 在域 $D$ 内连续，其在 $D$ 内的积分与路径无关且 $z_{0} \in D$，则变限积分 ${\displaystyle F(z)=\int_{z_{0}}^{z} f(z) \mathrm d z \ (z \in D)}$ 在 $D$ 内解析，且 $F$ 是 $f$ 的原函数．于是 $\text{Newton}-\text{Leibniz}$ 公式的复形式 ${\displaystyle \int_{z_{0}}^{z} f(z) \mathrm d z=F(z)-F\left(z_{0}\right)}$ 成立
4. $\text{Cauchy}$ 积分公式

### 2.2.2 调和函数
