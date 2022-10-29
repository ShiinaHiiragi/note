# 3 曲线方程与曲线论

## 3.1 平面曲线方程
1. 平面曲线方程：在平面直角坐标系中，若方程 $F(x, y) = 0$ 与曲线 $L$ 有关系：点 $P(x, y)$ 在曲线 $L$ 上当且仅当 $(x, y)$ 满足该方程，则称该方程为 $L$ 的曲线方程
    1. 向量式参数方程：若取 $t \in [a, b]$ 的一切可能取的值，由 $\boldsymbol r(t) = x(t) \boldsymbol e_1 + y(t) \boldsymbol e_2 \ (a \leqslant t \leqslant b)$ 表示的径向量 $\boldsymbol r(t)$ 的终点总在一条曲线上；反之在这条曲线上的任意点总对应着以它为终点的径向量，且该径向量可由 $t$ 的某一值 $t_0\ \left(a \leqslant t_0 \leqslant b\right)$ 完全决定，则称 $\boldsymbol r(t) = x(t) \boldsymbol e_1 + y(t)$ 为曲线的向量式参数方程
    2. 坐标式参数方程：若 $\boldsymbol r(t) = x(t) \boldsymbol e_1 + y(t) \boldsymbol e_2$ 为曲线的向量式参数方程，则称

        $$
        \left\{\begin{aligned}
        & x = x(t) \\
        & y = y(t) \\
        \end{aligned}\right.
        \ (a \leqslant t \leqslant b)
        $$

        为曲线的坐标式参数方程

    3. 普通方程：如果从曲线的坐标式参数方程中消去参数 $t$，则能得出曲线的普通方程 $F(x, y) = 0$

### 3.1.1 平面直线
1. 平面直线的一般方程：$Ax + By + C = 0 \ (A^2 + B^2 \neq 0)$
    1. 直线与向量：设 $l$ 上相异两点为 $P(x_1, y_1), Q(x_2, y_2)$，则 $\overrightarrow{PQ} = (x_2 - x_1, y_2 - y_1)$ 称为直线 $l$ 的方向向量；任意与 $\overrightarrow{PQ}$ 垂直的向量称为直线 $l$ 的法向量，并称以 $l$ 的法向量为方向向量的直线为 $l$ 的法线
    2. 斜率与倾角：当 $B \neq 0$ 时，称 $k = -\dfrac{A}{B}$ 为直线的斜率，称 $\arctan k$ 为直线的倾角 $\theta$，后者是 $l$ 上方向向量与基 $\boldsymbol e_1$ 的夹角，且其取值范围为 $[0, \pi)$；当 $B = 0$ 时，称直线 $l$ 的斜率不存在
    3. 直线的截距与法距：称直线与坐标轴的交点对应的实数为直线的截距；称原点 $O$ 到直线的距离 $\dfrac{\left|C\right|}{\sqrt{A^2+B^2}}$ 为直线的法距

    !!! note "一般方程的变形"
        1. 点斜式：通过点 $P_0\left(x_0, y_0\right)$，斜率 $k=\tan \theta$ 的直线方程为 $y-y_0=k\left(x-x_0\right)$
        2. 斜截式：斜率 $k=\tan \theta$，在 $y$ 轴上的截距为 $c$ 的直线方程为 $y=kx+c$
        3. 截距式：在 $x$ 轴与 $y$ 轴上的截距分别为 $a, b$ 的直线方程为 $\dfrac{x}{a}+\dfrac{y}{b}=1$
        4. 两点式：通过点 $P_1\left(x_1, y_1\right), P_2\left(x_2, y_2\right)$ 的直线方程为 $\dfrac{y-y_1}{y_2-y_1}=\dfrac{x-x_1}{x_2-x_1}$
        5. 法线式：法距为 $p$，与该直线垂直的直线倾斜角 $\theta$, 则直线 $l$ 的方程为 $x \cos \theta+y \sin \theta-p=0$

2. 平面直线方程的其他表示
    1. 极坐标方程：设 $P(\rho_0, \theta_0)$ 是直线 $l$ 上任一点的极坐标
        1. 过原点的直线：$\theta = \theta_0$
        2. 不过原点的直线：$p > 0$ 为直线 $l$ 的法距，则 $\rho=\dfrac{p}{\cos (\alpha-\theta)}$，其中 $\alpha$ 是与 $l$ 垂直直线的倾斜角
    2. 参数式方程：设 $P(x_0, y_0)$ 是倾角为 $\varphi$ 的直线 $l$ 上任一点，则直线 $l$ 的参数方程为 $\left\{\begin{array}{l} x=x_0+t \cos \varphi \\ y=y_0+t \sin \varphi \end{array}\right. \ (t \in \mathbf R)$
3. 平面直线与点的关系：设 $l: Ax + By + C = 0 \ (A^2 + B^2 \neq 0)$ 为一条直线，点 $P$ 的坐标为 $(x_1, y_1)$，点 $Q(x_2, y_2)$ 在直线 $l$ 上．则点到直线的距离 $d$ 定义为 $\min |\overrightarrow{PQ}| = \dfrac{\left|A x_1+B y_1+C\right|}{\sqrt{A^2+B^2}}$
4. 平面直线间关系：设两直线 $l_1, l_2$ 方程为

    $$
    \begin{aligned}
    &l_1: A_1 x + B_1 y + C_1 = 0 \\
    &l_2: A_2 x + B_2 y + C_2 = 0
    \end{aligned}
    $$

    定义两直线的夹角 $\theta = \arccos \left|\dfrac{A_1 A_2 + B_1 B_2}{\sqrt{A_1^2 + B_1^2} \sqrt{A_2^2 + B_2^2}}\right| \ (0 \leqslant \theta \leqslant \dfrac{\pi}{2})$

    1. 两直线重合当且仅当 $\dfrac{A_1}{A_2}=\dfrac{B_1}{B_2}=\dfrac{C_1}{C_2}$
    2. 两直线不重合时
        1. 定义两直线平行为方向向量共线且直线不重合，此时 $\dfrac{A_1}{A_2}=\dfrac{B_1}{B_2}\neq\dfrac{C_1}{C_2}$

            !!! note "两平面间的距离"
                设 $l_1: A x + B y + C_1 = 0$ 与 $l_2: Ax + By + C_2 = 0$ 是两条平行直线，则两直线距离为 $d = \dfrac{|C_1 - C_2|}{\sqrt{A^2+B^2}}$

        2. 定义两直线相交为方向向量不共线，此时 $\dfrac{A_1}{A_2}\neq\dfrac{B_1}{B_2}$；特别地，定义两直线垂直为方向向量正交，此时 $A_1 A_2 + B_1 B_2 = 0$

### 3.1.2 平面二次曲线

### 3.1.3 平面其他曲线

## 3.2 空间曲线方程
- 空间曲线的一般方程：空间曲线 $L$ 可以看成两个曲面的交线，设

    $$
    \left\{\begin{aligned}
    F_1(x, y, z) & = 0 \\
    F_2(x, y, z) & = 0
    \end{aligned}\right.
    $$

    是两个曲面方程且相交于曲线 $L$．若点 $P(x, y, z)$ 在曲线 $L$ 上当且仅当 $(x, y, z)$ 满足该方程组，则称方程组为空间曲线 $L$ 的一般方程

    1. 向量式参数方程：设向量函数 $r(t)=x(t) \boldsymbol{e}_1+y(t) \boldsymbol{e}_2+z(t) \boldsymbol{e}_3$，当 $t \in [a, b]$ 时, $\boldsymbol{r}(t)$ 的终点全部都在空间曲线 $L$ 上，反之空间曲线 $L$ 上的任意点的径向量都可由 $t$ 的某个值表示（$a \leqslant t \leqslant b$），则称该方程为空间曲线 $L$ 的向量式参数方程
    2. 坐标式参数方程：设 $r(t)=x(t) \boldsymbol{e}_1+y(t) \boldsymbol{e}_2+z(t) \boldsymbol{e}_3$ 为曲线的向量式参数方程，则称

        $$
        \left\{\begin{aligned}
        & x = x(t) \\
        & y = y(t) \\
        & z = z(t)
        \end{aligned}\right.
        \ (a \leqslant t \leqslant b)
        $$

        为曲线的坐标式参数方程

### 3.2.1 空间直线
1. 空间直线的一般方程：设有两个平面 $\pi_1$ 和 $\pi_2$ 的方程为

    $$
    \left\{\begin{aligned}
    & \pi_1: A_1 x+B_1 y+C_1 z+D_1=0 \\
    & \pi_2: A_2 x+B_2 y+C_2 z+D_2=0
    \end{aligned}\right.
    $$

    且相交，则记其交线为直线 $l$，上述方程组称为直线的一般方程

    1. 在空间给定了一点 $M(x_0, y_0, z_0)$ 与一个非零向量 $\boldsymbol v = \begin{bmatrix} X & Y & Z \\ \end{bmatrix}^{\mathrm T}$，则通过点 $M$ 且与向量 $\boldsymbol v$ 平行的直线 $l$ 惟一确定．向量 $\boldsymbol v$ 称作直线 $l$ 的方向向量
        1. 向量式参数方程：$\boldsymbol r = \boldsymbol r_0 + t\boldsymbol v$，其中 $\boldsymbol r_0 = \overrightarrow{OM}$
        2. 坐标式参数方程：

            $$
            \left\{\begin{array}{l}
            x=x_0+X t \\
            y=y_0+Y t \\
            z=z_0+Z t
            \end{array}\right.
            $$

        3. 标准方程：$\dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}$，也称作直线的对称式方程

            !!! note "方向向量与方向数"
                在直角坐标系下，方向向量常取单位向量 $\boldsymbol v_0 = \begin{bmatrix} \cos \alpha & \cos \beta & \cos \gamma \\ \end{bmatrix}^{\mathrm T}$，称 $\alpha, \beta, \gamma$ 为直线的方向角，$\cos \alpha, \cos \beta, \cos \gamma$ 为直线的方向余弦，与直线的方向向量成比例的一组数 $l, m, n \ (l:m:n=\cos \alpha:\cos \beta:\cos \gamma)$ 为直线的方向数，且有如下关系成立

                $$
                \begin{gathered}
                \cos \alpha=\pm\dfrac{l}{\sqrt{l^2+m^2+n^2}}\\
                \cos \beta=\pm\dfrac{m}{\sqrt{l^2+m^2+n^2}} \\
                \cos \gamma=\pm\dfrac{n}{\sqrt{l^2+m^2+n^2}}
                \end{gathered}
                $$

    2. 两点式方程：通过空间两点 $M_1(x_1, y_1, z_1)$ 与 $M_2(x_2, y_2, z_2)$ 的直线 $l$ 唯一确定
        1. 向量式参数方程：$\boldsymbol{r}=\boldsymbol{r}_1+t\left(\boldsymbol{r}_2-\boldsymbol{r}_1\right)$，其中 $\boldsymbol r_i = \overrightarrow{OM}_i$
        2. 坐标式参数方程：

            $$
            \left\{\begin{array}{l}
            x=x_1+t\left(x_2-x_1\right) \\
            y=y_1+t\left(y_2-y_1\right) \\
            z=z_1+t\left(z_2-z_1\right)
            \end{array}\right.
            $$

        3. 标准方程：$\dfrac{x-x_1}{x_2-x_1}=\dfrac{y-y_1}{y_2-y_1}=\dfrac{z-z_1}{z_2-z_1}$

    3. 射影式方程：设直线 $l$ 的标准式方程为 $\dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}$，则有

        $$
        \left\{\begin{aligned}
        & x = \dfrac XZ (z - z_0) + x_0 \\
        & y = \dfrac YZ (z - z_0) + y_0
        \end{aligned}\right.
        $$

2. 空间直线与点的关系：设 $l: \dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}$ 为一条直线，点 $P$ 的坐标为 $(x_1, y_1, z_1)$，点 $Q(x_2, y_2, z_2)$ 在直线 $l$ 上．则点到直线的距离 $d$ 定义为

    $$
    \min |\overrightarrow{PQ}| = \dfrac{\sqrt{\left|\begin{array}{cc}
    y_1-y_0 & z_1-z_0 \\
    Y & Z
    \end{array}\right|^2+\left|\begin{array}{cc}
    z_1-z_0 & x_1-x_0 \\
    Z & X
    \end{array}\right|^2+\left|\begin{array}{cc}
    x_1-x_0 & y_1-y_0 \\
    X & Y
    \end{array}\right|^2}}{\sqrt{X^2+Y^2+Z^2}}
    $$

3. 空间直线间关系：设两直线 $l_1, l_2$ 方程为

    $$
    \begin{aligned}
    &l_1: \dfrac{x-x_1}{X_1}=\dfrac{y-y_1}{Y_1}=\dfrac{z-z_1}{Z_1} \\
    &l_2: \dfrac{x-x_2}{X_2}=\dfrac{y-y_2}{Y_2}=\dfrac{z-z_2}{Z_2}
    \end{aligned}
    $$

    定义两直线的夹角 $\theta = \arccos \left|\dfrac{X_1 X_2+Y_1 Y_2+Z_1 Z_2}{\sqrt{X_1^2+Y_1^2+Z_1^2} \cdot \sqrt{X_2^2+Y_2^2+Z_2^2}}\right| \ (0 \leqslant \theta \leqslant \dfrac{\pi}{2})$

    1. 两直线异面当且仅当

        $$
        \Delta=\left|\begin{array}{ccc}
        x_2-x_1 & y_2-y_1 & z_2-z_1 \\
        X_1 & Y_1 & Z_1 \\
        X_2 & Y_2 & Z_2
        \end{array}\right| \neq 0
        $$

    2. 两直线共面时
        1. 两直线重合当且仅当

            $$
            X_1: Y_1: Z_1=X_2: Y_2: Z_2=\left(x_2-x_1\right):\left(y_2-y_1\right):\left(z_2-z_1\right)
            $$

        2. 定义两直线平行为方向向量共线且直线不重合，此时

            $$
            X_1: Y_1: Z_1=X_2: Y_2: Z_2\neq\left(x_2-x_1\right):\left(y_2-y_1\right):\left(z_2-z_1\right)
            $$

        3. 定义两直线相交为方向向量不共线，此时 $\Delta=0$ 且 $X_1: Y_1: Z_1\neq X_2: Y_2: Z_2$；特别地，定义两直线垂直为方向向量正交，此时 $X_1 X_2+Y_1 Y_2+Z_1 Z_2=0$

    !!! note "空间直线间的距离"
        设两直线 $l_1, l_2$ 方程为

        $$
        \begin{aligned}
        &l_1: \dfrac{x-x_1}{X_1}=\dfrac{y-y_1}{Y_1}=\dfrac{z-z_1}{Z_1} \\
        &l_2: \dfrac{x-x_2}{X_2}=\dfrac{y-y_2}{Y_2}=\dfrac{z-z_2}{Z_2}
        \end{aligned}
        $$

        定义空间两直线上的点之间的最短距离为两直线之间的距离

        1. 当直线共面时，两相交直线或两重合直线间的距离为 $0$；两平行直线间的距离等于其中一直线上的任意点到另一直线的距离
        2. 当直线异面时，两直线间距离等于其公垂线之长：

            $$
            d=\left|\frac{\left|\begin{array}{ccc}
            x_2-x_1 & y_2-y_1 & z_2-z_1 \\
            X_1 & Y_1 & Z_1 \\
            X_2 & Y_2 & Z_2
            \end{array}\right|}{\sqrt{\left|\begin{array}{c}
            Y_1 & Z_1 \\
            Y_2 & Z_2
            \end{array}\right|^2+\left|\begin{array}{c}
            Z_1 & X_1 \\
            Z_2 & X_2
            \end{array}\right|^2+\left|\begin{array}{c}
            X_1 & Y_1 \\
            X_2 & Y_2
            \end{array}\right|} \mid}\right|
            $$

### 3.2.2 空间曲线

## 3.3 二次曲线一般理论

## 3.4 二次曲线射影理论

## 3.5 曲线的局部理论
