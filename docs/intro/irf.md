# 独立反应场

## 5.5 曲面的内蕴理论
### 5.5.1 曲面的协变微分
1. 等距变换与保角变换：设 $S$ 和 $\widetilde{S}$ 是 $\mathbf{R}^{3}$ 的两张曲面，$\sigma$ 为 $S$ 到 $\widetilde{S}$ 的一个 $1: 1$ 对应．如果在对应 $\sigma$ 下，曲面 $S$ 上的任意曲线 $C$ 与 $C$ 在 $\widetilde{S}$ 对应的曲线 $\widetilde{C}=\sigma(C)$ 长度相等，则称 $\sigma$ 为 $S$ 到 $\widetilde{S}$ 的等距变换．等距变换保持曲面上二条相交曲线在交点处的夹角不变，如果仅保持任意两条相交曲线在交点处的夹角不变，称其为曲面的保角变换
    1. 设曲面 $S$ 和 $\widetilde{S}$ 的参数表示分别为 $\boldsymbol{r}=\boldsymbol{r}(u, v)$ 和 $\widetilde{\boldsymbol{r}}=\widetilde{\boldsymbol{r}}(\widetilde{u}, \widetilde{v})$，则 $S$ 与 $\widetilde{S}$ 之间的 $1: 1$ 对应 $\sigma(u, v)=(\widetilde{u}, \widetilde{v})$ 是等距对应的充要条件是在对应 $\sigma$ 下，其第一基本形式满足

        $$
        \left[\begin{array}{cc}
        E & F \\
        F & G
        \end{array}\right]=\boldsymbol{J}_{\sigma}\left[\begin{array}{cc}
        \widetilde{E} & \widetilde{F} \\
        \widetilde{F} & \widetilde{G}
        \end{array}\right] \boldsymbol{J}_{\sigma}^{\mathrm{T}}, \ \boldsymbol{J}_{\sigma}=\left[\begin{array}{cc}
        \dfrac{\partial \widetilde{u}}{\partial u} & \dfrac{\partial \widetilde{v}}{\partial u} \\
        \dfrac{\partial \widetilde{u}}{\partial v} & \dfrac{\partial \widetilde{v}}{\partial v}
        \end{array}\right]
        $$

    2. 设 $\sigma$ 是曲面 $S$ 和 $\widetilde{S}$ 间的 $1: 1$ 对应，$\sigma$ 为等距变换的充要条件是可以选取适当的正交标架 $\left\{\boldsymbol{e}_{1}, \boldsymbol{e}_{2}, \boldsymbol{e}_{3}\right\}$ 和 $\left\{\widetilde{\boldsymbol{e}}_{1}, \widetilde{\boldsymbol{e}}_{2}, \widetilde{\boldsymbol{e}}_{3}\right\}$ 使得在对应点有 $\omega_{1}=\widetilde{\omega}_{1}, \omega_{2}=\widetilde{\omega}_{2}$

2. 切映射：设 $\boldsymbol v=a \boldsymbol r_{u}+b \boldsymbol r_{v} \in T_{P} S$ 是曲面 $S$ 上点 $P$ 处的一个切向量，取 $S$ 上的曲线 $\gamma(t)=\boldsymbol{r}(u(t), v(t))$ 满足

    $$
    \gamma(0)=P,\left.\  \dfrac{\mathrm d \gamma}{\mathrm d t}\right|_{t=0}=\boldsymbol{r}_{u} \dfrac{\mathrm d u}{\mathrm d t}(0)+\boldsymbol{r}_{v} \dfrac{\mathrm d v}{\mathrm d t}(0)=a \boldsymbol{r}_{u}+b \boldsymbol{r}_{v}=\boldsymbol{v}
    $$

    则 $\widetilde{\gamma}(t)=\sigma \circ \gamma(t)$ 是曲面 $\widetilde{S}$ 上的曲线，其切向量与曲线 $\gamma$ 的选取无关．称曲面 $S$ 和 $\widetilde{S}$ 间的对应 $\sigma$ 诱导出切平面之间的一个映射 $\sigma_{*}: T_{P} S \to T_{\sigma(P)} \widetilde{S}$ 为映射 $\sigma$ 的切映射

    1. 曲面 $S$ 和 $\widetilde{S}$ 之间的 $1: 1$ 对应 $\sigma$ 是等距变换当且仅当对 $S$ 的任意两个切向量 $\boldsymbol{v}, \boldsymbol{w}$ 都有 $\left\langle\sigma_{*}(\boldsymbol{v}), \sigma_{*}(\boldsymbol{w})\right\rangle=\langle\boldsymbol{v}, \boldsymbol{w}\rangle$
    2. 设 $\sigma$ 是曲面 $S$ 和 $\widetilde{S}$ 之间的 $1: 1$ 对应，则 $\sigma$ 是保角变换当且仅当存在正函数 $\lambda$ 使得在对应点，曲面 $S$ 和 $\widetilde{S}$ 的第一基本形式满足 $\widetilde{\mathrm{I}}=\lambda^{2} \cdot \mathrm{I}$
    3. 任意曲面上每一点都有一个邻域可与 $\text{Euclid}$ 平面的一个区域间建立保角变换

        !!! note "等温参数"
            若在 $\text{Euclid}$ 平面 $\mathbf{R}^{2}$ 取坐标 $(u, v)$，其度量为 $\mathrm d u \mathrm d u+ \mathrm d v \mathrm d v$．则对曲面上任一点，存在一个邻域以 $(u, v)$ 为参数，使得曲面的第一基本形式为 $\mathrm{I}=\lambda^{2}(u, v)(\mathrm d u \mathrm d u+\mathrm d v \mathrm d v), \lambda \neq 0$，称参数 $(u, v)$ 为曲面的等温参数

3. 设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，在 $S$ 上取正交标架 $\left\{r ; e_{1}, e_{2}, e_{3}\right\}$，其中 $e_{3}$ 是曲面的法向量．标架运动方程的系数是五个一阶微分形式 $\left\{\omega_{1}, \omega_{2}, \omega_{12}, \omega_{13}, \omega_{23}\right\}$，其中 $\left\{\omega_{1}, \omega_{2}, \omega_{12}\right\}$ 所满足的结构方程式为

    $$
    \left\{\begin{aligned}
    & \mathrm d\omega_1 = \omega_{12} \wedge \omega_{2}  \\
    & \mathrm d\omega_2 = \omega_{21} \wedge \omega_{1}
    \end{aligned}\right.
    \quad
    \omega_{12} + \omega_{21} = 0
    $$

    以及 $\mathrm d \omega_{12}=-K \omega_{1} \wedge \omega_{2}$，其中 $K$ 是曲面的 $\text{Gauss}$ 曲率，称 $\omega_{12}$ 为曲面关于标架 $\left\{\boldsymbol{e}_{1}, \boldsymbol{e}_{2}\right\}$ 的联络形式

    1. 联络形式由上式（关于 $\mathrm d\omega_1$ 与 $\mathrm d\omega_2$）唯一确定
    2. 设 $\overline{\boldsymbol{e}}_{1}=\cos \theta \boldsymbol{e}_{1}+\sin \theta \boldsymbol{e}_{2}, \overline{\boldsymbol{e}}_{2}=-\sin \theta \boldsymbol{e}_{1}+\cos \theta \boldsymbol{e}_{2}$ 是曲面的另一组正交标架，则曲面关于标架 $\left\{\overline{\boldsymbol e}_{1}, \overline{\boldsymbol e}_{2}\right\}$ 的联络形式 $\overline{\omega}_{12}=\omega_{12}+\mathrm d \theta$
    3. $\text{Gauss}$ 绝妙定理：曲面的 $\text{Gauss}$ 曲率 $K$ 只与曲面的第一基本形式有关

4. 协变微分：称标架切向量微分在曲面切平面的投影为标架的协变微分，记作 $\mathrm{D} \boldsymbol{e}_{\alpha} \ (\alpha=1,2)$，即 $\mathrm{D} \boldsymbol{e}_{1}=\omega_{12} \boldsymbol{e}_{2}, \mathrm{D} \boldsymbol{e}_{2}=\omega_{21} \boldsymbol{e}_{1}$．设 $\boldsymbol{v}=f_{1} \boldsymbol{e}_{1}+f_{2} \boldsymbol{e}_{2}$ 是曲面上的切向量场，其中 $f_{1}, f_{2}$ 都是曲面上的函数，$\boldsymbol v$ 的协变微分 $\mathrm{D} \boldsymbol v$ 定义为

    $$
    \mathrm{D} \boldsymbol{v}=\left(\mathrm d f_{1}+f_{2} \omega_{21}\right) \boldsymbol{e}_{1}+\left(\mathrm d f_{2}+f_{1} \omega_{12}\right) \boldsymbol{e}_{2}
    $$

    1. 设 $\boldsymbol v$ 是曲面 $S$ 上的切向量场，它的协变微分 $\mathrm{D} \boldsymbol{v}$ 为 $\mathrm d \boldsymbol{v}$ 在切平面的投影，即 $\mathrm{D} \boldsymbol{v}=\left\langle \mathrm d \boldsymbol{v}, \boldsymbol{e}_{1}\right\rangle \boldsymbol{e}_{1}+\left\langle \mathrm d \boldsymbol{v}, \boldsymbol{e}_{2}\right\rangle \boldsymbol{e}_{2}$．特别地，切向量场的协变微分与标架的选取无关
    2. 协变微分的性质与普通微分一致
        1. $\mathrm{D}(\boldsymbol{v}+\boldsymbol{w})=\mathrm{D} \boldsymbol{v}+\mathrm{D} \boldsymbol{w}$
        2. $\mathrm{D}(f \boldsymbol v)=\mathrm d f \boldsymbol v+f \mathrm{D} \boldsymbol v$
        3. $\mathrm{D}\langle\boldsymbol{v}, \boldsymbol{w}\rangle=\langle \mathrm{D} \boldsymbol{v}, \boldsymbol{w}\rangle+\langle\boldsymbol{v}, \mathrm{D} \boldsymbol{w}\rangle$

5. 设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，$\boldsymbol{r}=\boldsymbol{r}(u, v)$ 是它的参数表示，$P, Q$ 为 $S$ 上两点，$\gamma: u=u(t), v=v(t)$ 为曲面 $S$ 上联结 $P$ 和 $Q$ 的曲线．设 $\boldsymbol{v}=\boldsymbol{v}(t)$ 是沿曲线 $\gamma$ 的切向量场．如果 $\dfrac{\mathrm{D} v}{\mathrm d t}=0$，则称 $\boldsymbol{v}(t)$ 沿 $\gamma$（在 $\text{Levi-Civita}$ 意义下）平行
    1. 设 $\boldsymbol{r}(t)=\boldsymbol{r}(u(t), v(t))$ 是曲面 $S$ 上的参数曲线，$t \in[a, b]$, $\boldsymbol{r}(a)=P, \boldsymbol{r}(b)=Q$．对任何的切向量 $\boldsymbol{v}_{0}=\lambda e_{1}+\mu e_{2} \in T_{P} S$，存在惟一沿曲线 $\boldsymbol{r}(t)$ 的平行切向量场 $\boldsymbol{v}(t)$ 使得 $\boldsymbol{v}(a)=\boldsymbol{v}_{0}$
    2. 设 $\boldsymbol{v}(t), \boldsymbol{w}(t)$ 是曲面 $S$ 上沿曲线 $\gamma$ 的平行切向量场，则 $\langle\boldsymbol{v}, \boldsymbol{w}\rangle$ 为一常数
    3. 曲面上的平行移动保持切向量的长度不变，两个切向量的夹角不变

### 5.5.2 测地坐标系
设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，$\boldsymbol{r}=\boldsymbol{r}\left(u^{1}, u^{2}\right)$ 是 $S$ 的参数表示，$C: \boldsymbol{r}(s)= \boldsymbol{r}\left(u^{1}(s), u^{2}(s)\right)$ 是曲面上的一条弧长参数曲线．沿曲线 $C$ 取曲面的正交标架 $\left\{\boldsymbol{e}_{1}, \boldsymbol{e}_{2}, \boldsymbol{e}_{3}\right\}$，其中 $\boldsymbol{e}_{1}=\dfrac{\mathrm d \boldsymbol{r}}{\mathrm d s}, \boldsymbol{e}_{3}=\boldsymbol{n}$，且 $\boldsymbol{e}_{1}, \boldsymbol{e}_{2}, \boldsymbol{e}_{3}$ 是正定向的

1. 曲面 $S$ 上的弧长参数曲线 $\boldsymbol{r}=\boldsymbol{r}(s)$ 的测地曲率 $k_{g}$ 定义为 $k_{g}=\left\langle\dfrac{\mathrm{D} \boldsymbol{e}_{1}}{\mathrm d s}, \boldsymbol{e}_{2}\right\rangle$，也称 $\boldsymbol{k}_{g}=k_{g} \boldsymbol{e}_{2}=\dfrac{\mathrm{D} \boldsymbol{e}_{1}}{\mathrm d s}$ 为曲线的测地曲率向量
    1. $\text{Liouville}$ 公式：设 $(u, v)$ 是曲面 $S$ 的正交参数，$\mathrm{I}=E \mathrm{d} u \mathrm{d} u+ G \mathrm{d} v \mathrm{d} v ; C: u=u(s), v=v(s)$ 是曲面上一条弧长参数曲线．设 $C$ 与 $u$ 线的夹角为 $\theta$，则 $C$ 的测地曲率为 $k_{g}=\dfrac{\mathrm{d} \theta}{\mathrm{d} s}-\dfrac{1}{2 \sqrt{G}} \dfrac{\partial \ln E}{\partial v} \cos \theta+\dfrac{1}{2 \sqrt{E}} \dfrac{\partial \ln G}{\partial u} \sin \theta$
    2. 曲面上测地曲率等于 $0$ 的曲线称为曲面的测地线
        1. 曲线是测地线等价于其测地曲率向量等于 $0$
        2. 测地线方程：曲面上的弧长参数曲线 $\boldsymbol{r}=\boldsymbol{r}\left(u^{1}(s), u^{2}(s)\right)$ 是测地线当且仅当 $\left(u^{1}(s), u^{2}(s)\right)$ 满足方程组

            $$
            \left\{\begin{array}{l}
            \dfrac{\mathrm{d}^{2} u^{1}}{\mathrm{d} s^{2}}+\Gamma_{\alpha \beta}^{1} \dfrac{\mathrm{d} u^{\alpha}}{\mathrm{d} s} \dfrac{\mathrm{d} u^{\beta}}{\mathrm{d} s}=0 \\
            \dfrac{\mathrm{d}^{2} u^{2}}{\mathrm{d} s^{2}}+\Gamma_{\alpha \beta}^{2} \dfrac{\mathrm{d} u^{\alpha}}{\mathrm{d} s} \dfrac{\mathrm{d} u^{\beta}}{\mathrm{d} s}=0
            \end{array}\right.
            $$

        3. 测地线是平面直线在曲面的推广：设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，$P$ 是曲面 $S$ 上的一个点，$\boldsymbol v$ 是 $P$ 点的一个单位切向量，则曲面 $S$ 上存在惟一一条过 $P$ 点的测地线与 $\boldsymbol v$ 相切
        4. 设 $\sigma$ 是曲面 $S$ 与曲面 $\widetilde{S}$ 之间的一个等距变换，$\gamma$ 是曲面 $S$ 的测地线，则 $\sigma \circ \gamma$ 是曲面 $\widetilde{S}$ 的测地线
        5. 曲面上的正则曲线 $C$ 是测地线当且仅当沿着 $C$，曲线的主法向量与曲面的法向量平行

2. 测地平行坐标系

### 5.5.3 Gauss—Bonnet 公式

### 5.5.4 曲面的 Laplace 算子

### 5.5.5 Riemann 度量
