# 独立反应场

### 5.4.2 曲面与曲率
1. 曲面：从平面区域 $D=\{(u, v)\}$ 到 $\mathbf{R}^{3}$ 的映射 $\boldsymbol{r}(u, v)=(x(u, v), y(u, v), z(u, v))$ 若满足
    1. 每个分量函数无限阶连续可微
    2. 向量 $\boldsymbol{r}_{u}=\left(\dfrac{\partial x}{\partial u}, \dfrac{\partial y}{\partial u}, \dfrac{\partial z}{\partial u}\right)$ 与 $\boldsymbol{r}_{v}=\left(\dfrac{\partial x}{\partial v}, \dfrac{\partial y}{\partial v}, \dfrac{\partial z}{\partial v}\right)$ 线性无关，即 $\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v} \neq \mathbf{0}$

    则称 $\boldsymbol{r}$ 是 $\mathbf{R}^{3}$ 的一个曲面（片），$(u, v)$ 为曲面的（坐标）参数

    1. 曲面有两类特殊情形
        1. 函数 $f$ 的图：由函数 $z=f(x, y)$ 描述的曲面 $\boldsymbol r(x, y)= (x, y, f(x, y))$
        2. 考虑满足 $F(x, y, z)=0$ 的点全体 $S$，当 $F_{z}\left(x_{0}, y_{0}, z_{0}\right) \neq 0$ 时，在 $\left(x_{0}, y_{0}\right)$ 的小邻域 $D$ 内，$F(x, y, z)=0$ 有显式表示 $z=f(x, y), (x, y) \in D, z_{0}=f\left(x_{0}, y_{0}\right)$，因此在 $\left(x_{0}, y_{0}, z_{0}\right)$ 一个邻域内 $S$ 可表示为曲面（片）$\boldsymbol{r}(x, y)=(x, y, f(x, y))$
    2. 曲面 $\boldsymbol{r}$ 可以有不同的参数表示：考虑曲面 $\boldsymbol r(u, v): \  D \rightarrow \mathbf{R}^{3}$ 与参数变换 $\sigma:(\overline{u}, \overline{v}) \in \overline{D} \rightarrow(u, v) \in D$，即对应 $\sigma: \overline{D} \rightarrow D$ 是一一对应且变换的 $\text{Jacobi}$ 行列式

        $$
        \dfrac{\partial(u, v)}{\partial(\overline{u}, \overline{v})}=\left|\begin{array}{cc}
        \dfrac{\partial u(\overline{u}, \overline{v})}{\partial \overline{u}} & \dfrac{\partial v(\overline{u}, \overline{v})}{\partial \overline{u}} \\
        \dfrac{\partial u(\overline{u}, \overline{v})}{\partial \overline{v}} & \dfrac{\partial v(\overline{u}, \overline{v})}{\partial \overline{v}}
        \end{array}\right| \neq 0
        $$

        1. 曲面 $\boldsymbol{r}$ 的新参数表示：$\boldsymbol{r}(\overline{u}, \overline{v})=\boldsymbol{r} \circ \sigma(\overline{u}, \overline{v})=\boldsymbol{r}(u(\overline{u}, \overline{v}), v(\overline{u}, \overline{v})): \  \overline{D} \rightarrow \mathbf{R}^{3}$
        2. 给定两个曲面 $\boldsymbol{r}(u, v)((u, v) \in D)$ 和 $\overline{\boldsymbol{r}}(\overline{u}, \overline{v})((\overline{u}, \overline{v}) \in \overline{D})$，若有参数变换 $\sigma: \overline{D} \rightarrow D$ 使得曲面

            $$
            \boldsymbol{r}(\overline{u}, \overline{v})=\boldsymbol{r} \circ \sigma(\overline{u}, \overline{v})=\boldsymbol{r}(u(\overline{u}, \overline{v}), v(\overline{u}, \overline{v})): \overline{D} \rightarrow \mathbf{R}^{3}
            $$

            与曲面 $\overline{\boldsymbol{r}}(\overline{u}, \overline{v})$ 相同，则认为 $\boldsymbol{r}$ 和 $\overline{\boldsymbol{r}}$ 是同一个曲面的两个不同参数表示

2. 设曲面 $S$ 参数表示为 $\boldsymbol{r}(u, v)=(x(u, v), y(u, v), z(u, v)), \ (u, v) \in D$，记曲面上参数是 $(u, v)$ 的点为 $P=P(u, v)$ 或 $\boldsymbol{r}(u, v)$
    1. 空间曲线 $\boldsymbol{r}(a, v)$ 在 $v=b$ 点的切向量是 $\boldsymbol{r}_{v}(a, b)=\dfrac{\mathrm d \boldsymbol{r}}{\mathrm d v}(a, b)$，空间曲线 $\boldsymbol{r}(u, b)$ 在 $u=a$ 点的切向量是 $\boldsymbol{r}_{u}(a, b)$
        1. 两个不共线向量张成与曲面 $S$ 相切于 $P_{0} = P(a, b)$ 点的一张平面，称为曲面 $S$ 在 $P_{0}$ 点的切平面，记为 $T_{P_{0}} S$
        2. $\boldsymbol{r}_{u}(a, b)$ 和 $\boldsymbol{r}_{v}(a, b)$ 称为曲面在 $P_{0}$ 点的坐标切向量
        3. 过 $P_{0}$ 点与切平面 $T_{P_{0}} S$ 垂直的直线称之为曲面在该点的法线

        $\left\{P_{0} ; \boldsymbol{r}_{u}, \boldsymbol{r}_{v}, \boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}\right\}$ 构成了 $\mathbf{R}^{3}$ 的一个自然定向标架

    2. 对于曲面上任意一点 $P$，$T_{P} S$ 等于曲面上过 $P$ 点的曲线在 $P$ 点的切向量的全体
    3. 曲面的切平面和法线与参数选取无关

3. 法曲率：设曲面 $S$ 的参数表示是 $\boldsymbol{r}(u, v)$，$P_{0}=P\left(u_{0}, v_{0}\right)$ 是曲面 $S$ 上与 $\left(u_{0}, v_{0}\right)$ 对应的点，$s$ 是曲线 $\boldsymbol{r}(s)$ 的弧长参数．称

    $$
    k_{n}=\left\langle\dfrac{\mathrm d^{2} \boldsymbol r}{\mathrm d s^{2}}, \boldsymbol{n}\right\rangle = k_{n}=\left\langle\boldsymbol{r}_{u u}, \boldsymbol{n}\right\rangle\left(\dfrac{\mathrm d u}{\mathrm d s}\right)^{2}+2\left\langle\boldsymbol{r}_{u v}, \boldsymbol{n}\right\rangle \dfrac{\mathrm d u}{\mathrm d s} \dfrac{\mathrm d v}{\mathrm d s}+\left\langle\boldsymbol{r}_{v v}, \boldsymbol{n}\right\rangle\left(\dfrac{\mathrm d v}{\mathrm d s}\right)^{2}
    $$

    为曲面在点 $P_{0}$ 处沿单位切向量 $\left.\left(\dfrac{\mathrm d u}{\mathrm d s}, \dfrac{\mathrm d v}{\mathrm d s}\right)\right|_{s=0}$ 的法曲率

    1. 曲面的法曲率 $k_{n}$ 是曲面在一点处关于单位切向量的二次型：在一点 $P$，曲面沿一个单位切向量 $v=\lambda \boldsymbol{r}_{u}+\mu \boldsymbol{r}_{v} \in T_{P} S$ 的法曲率为 $k_{n}(\boldsymbol{v})=L \lambda^{2}+2 M \lambda \mu+N \mu^{2}$，且 $k_{n}(\boldsymbol{v})=k_{n}(-\boldsymbol{v})$
        1. 当 $L N-M^{2}>0$ 时，沿 $P$ 点任何切向的法曲率同时为正或为负，称这样的点为曲面的椭圆点
        2. 当 $L N-M^{2}<0$ 时，$k_{n}(v)=0$ 关于 $v$ 恰好有两个线性无关的解，这两个方向称为曲面在该点的渐近方向；这两个渐近方向将切平面分割为四个区域，在相对的两个区域上，法曲率的符号相等，这样的点称为曲面的双曲点
        3. 当 $L N-M^{2}=0$ 时，这样的点称为曲面的抛物点
            - 当 $L 、 M 、 N$ 不全为零时，仅有一个切方向使法曲率 $k_{n}$ 为零，这个方向亦称作曲面在该点的渐近方向；这个渐近方向将切平面分割为两个区域，在这两个区域内法曲率均不为 $0$ 且符号相等
            - 当 $L=M=N=0$ 时，法曲率 $k_{n}$ 沿任何方向均为零，这样的点又称作平点
    2. 曲面 $S$ 沿非零切向量 $\boldsymbol{w}=\xi \boldsymbol{r}_{u}+\eta \boldsymbol{r}_{v}$ 的法曲率定义为 $k_{n}(\boldsymbol{w})=\dfrac{\mathrm{II}(\boldsymbol{w}, \boldsymbol{w})}{\mathrm{I}(\boldsymbol{w}, \boldsymbol{w})}=\dfrac{L \xi^{2}+2 M \xi \eta+N \eta^{2}}{E \xi^{2}+2 F \xi \eta+G \eta^{2}}$，其中

        $$
        \begin{aligned}
        & L=\left\langle\boldsymbol{r}_{u u}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{u}, \boldsymbol{n}_{u}\right\rangle \\
        & M=\left\langle\boldsymbol{r}_{u v}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{u}, \boldsymbol{n}_{v}\right\rangle=-\left\langle\boldsymbol{r}_{v}, \boldsymbol{n}_{u}\right\rangle \\
        & N=\left\langle\boldsymbol{r}_{v v}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{v}, \boldsymbol{n}_{v}\right\rangle
        \end{aligned}
        $$

### 5.4.3 曲面的基本形式
设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，参数表示为 $\boldsymbol{r}=\boldsymbol{r}(u, v)$

1. 第一基本形式：记 $E=\left\langle\boldsymbol{r}_{u}, \boldsymbol{r}_{u}\right\rangle, F=\left\langle\boldsymbol{r}_{u}, \boldsymbol{r}_{v}\right\rangle, G=\left\langle\boldsymbol{r}_{v}, \boldsymbol{r}_{v}\right\rangle$，称 $I=\mathrm d s^{2}=E \mathrm d u \cdot \mathrm d u+2 F \mathrm d u \cdot \mathrm d v+G \mathrm d v \cdot \mathrm d v$ 为曲面 $S$ 的第一基本形式
    1. 曲面 $S$ 的第一基本形式与参数选取无关
    2. 曲面的第一基本形式在 $\mathbf{R}^{3}$ 的合同变换下不变，即若 $\mathbf{R}^{3}$ 的合同变换 $\mathcal{T}$ 将曲面 $S$ 变为曲面 $\widetilde{S}: \widetilde{\boldsymbol{r}}(u, v)=\mathcal{T} \circ \boldsymbol{r}(u, v)$，则曲面 $\widetilde{S}$ 的第一基本形式 $\widetilde{\mathrm{I}}(u, v)$ 与曲面 $S$ 的第一基本形式 $\mathrm{I}(u, v)$ 相同
2. 第二基本形式：设 $S$ 的单位法向量为 $\boldsymbol{n}=\dfrac{\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}}{\left|\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}\right|}$，则定义 $\mathrm{II}=-\langle \mathrm d r, \mathrm d n\rangle$ 为曲面 $S$ 的第二基本形式
    1. 定义 $L, M, N$ 如上，则 $\mathrm{II} = -\left\langle\boldsymbol{r}_{u} \mathrm d u+\boldsymbol{r}_{v} \mathrm d v, \boldsymbol{n}_{u} \mathrm d u+\boldsymbol{n}_{v} \mathrm d v\right\rangle = L \mathrm d u \mathrm d u+2 M \mathrm d u \mathrm d v+N \mathrm d v \mathrm d v$
    2. 曲面的第二基本形式是关于 $(\mathrm d u, \mathrm d v)$ 的二次型
        1. $L N-M^{2}>0$：此时 $\text{II}$ 正定或负定，这样的点附近，曲面的形状是凸的（或凹的，由法向选取决定）
        2. $L N-M^{2}<0$：此时 $\text{II}$ 不定，这样的点附近，曲面是马鞍型的
        3. $L N-M^{2}=0$：此时 $\text{II}$ 退化
3. $\text{Gauss}$ 映射

### 5.4.4 标架

### 5.4.5 曲面论基本定理

## 5.5 曲面的内蕴理论
