# 3 方程与图形

## 3.1 曲线方程
1. 平面曲线的一般方程：在平面直角坐标系中，若方程 $F(x, y) = 0$ 与曲线 $L$ 有关系「点 $P(x, y)$ 在曲线 $L$ 上当且仅当 $(x, y)$ 满足该方程」，则称该方程为 $L$ 的曲线方程
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

        1. 若 $t_1 \neq t_2$ 蕴含 $\boldsymbol r(t_1) \neq \boldsymbol r(t_2)$，则称 $\boldsymbol r(t)$ 为简单曲线；若简单曲线有 $\boldsymbol r(a) = \boldsymbol r(b)$，则称其为简单闭曲线
        2. 若简单闭曲线 $\boldsymbol r(t)$ 光滑或逐段光滑，则称其为闭路或回路

    3. 普通方程：如果从曲线的坐标式参数方程中消去参数 $t$，则能得出曲线的普通方程 $F(x, y) = 0$

2. 空间曲线的一般方程：空间曲线 $L$ 可以看成两个曲面的交线，设

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

### 3.1.1 平面直线
1. 平面直线的一般方程：$Ax + By + C = 0 \ (A^2 + B^2 \neq 0)$
    1. 斜率与倾角：当 $B \neq 0$ 时，称 $k = -\dfrac{A}{B}$ 为直线的斜率，称 $\arctan k$ 为直线的倾角 $\theta$，后者是 $l$ 上方向向量与基 $\boldsymbol e_1$ 的夹角，且其取值范围为 $\left[\left. 0, \dfrac{\pi}{2}\right)\right. \cup \left( \dfrac{\pi}{2}, \pi\right)$；当 $B = 0$ 时，称直线 $l$ 的斜率不存在，倾角为 $\dfrac{\pi}{2}$
    2. 法线与法距：称过点 $O$ 且与直线 $l$ 垂直于点 $N$ 的直线为 $l$ 的法线．定义法线的辐角为 $x$ 轴对应的基 $\boldsymbol e_1$ 逆时针旋转到法向量 $\overrightarrow{ON}$ 经过的角度，并定义法距为 $|\overrightarrow{ON}| = \dfrac{\left|C\right|}{\sqrt{A^2+B^2}}$
    3. 直线的截距：称直线与坐标轴的交点（如果存在）对应的实数为直线的截距

    !!! note "一般方程的变形"
        1. 点斜式：通过点 $P_0\left(x_0, y_0\right)$，斜率 $k=\tan \theta$ 的直线方程为 $y-y_0=k\left(x-x_0\right)$
        2. 斜截式：斜率 $k=\tan \theta$，在 $y$ 轴上的截距为 $c$ 的直线方程为 $y=kx+c$
        3. 截距式：在 $x$ 轴与 $y$ 轴上的截距分别为 $a, b$ 的直线方程为 $\dfrac{x}{a}+\dfrac{y}{b}=1$
        4. 两点式：通过点 $P_1\left(x_1, y_1\right), P_2\left(x_2, y_2\right)$ 的直线方程为 $\dfrac{y-y_1}{y_2-y_1}=\dfrac{x-x_1}{x_2-x_1}$
        5. 法线式：法距为 $p$，法线辐角为 $\alpha$ 的直线 $l$ 方程为 $x \cos \alpha+y \sin \alpha=p$

2. 平面直线方程的其他表示
    1. 向量参数方程：设 $M(x_0, y_0)$ 是方向向量为 $\boldsymbol v$ 的直线 $l$ 上一点，则直线方程为 $\boldsymbol r = \boldsymbol r_0 + t\boldsymbol v$，其中 $\boldsymbol r_0 = \overrightarrow{OM}$
    2. 极坐标方程：设 $M(\rho_0, \theta_0)$ 是直线 $l$ 上任一点的极坐标
        1. 过原点的直线：$\theta = \theta_0$
        2. 不过原点的直线：设法距为 $p$，法线辐角为 $\alpha$，则直线方程为 $\rho=\dfrac{p}{\cos (\alpha-\theta)}$
    3. 参数式方程：设 $M(x_0, y_0)$ 是倾角为 $\theta$ 的直线 $l$ 上任一点，则直线 $l$ 的参数方程为 $\left\{\begin{array}{l} x=x_0+t \cos \theta \\ y=y_0+t \sin \theta \end{array}\right. \ (t \in \mathbf R)$
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
    2. 定义两直线平行为方向向量共线且直线不重合，此时 $\dfrac{A_1}{A_2}=\dfrac{B_1}{B_2}\neq\dfrac{C_1}{C_2}$

        !!! note "两平面间的距离"
            设 $l_1: A x + B y + C_1 = 0$ 与 $l_2: Ax + By + C_2 = 0$ 是两条平行直线，则两直线距离为 $d = \dfrac{|C_1 - C_2|}{\sqrt{A^2+B^2}}$

    3. 定义两直线相交为方向向量不共线，此时 $\dfrac{A_1}{A_2}\neq\dfrac{B_1}{B_2}$；特别地，定义两直线垂直为方向向量正交，此时 $A_1 A_2 + B_1 B_2 = 0$

5. 直线系：具有某种共同特征的直线的集合，表示这个直线系的方程称作直线系方程
    1. 有共同斜率 $k_0$ 的直线系方程：$y = k_0x + b$，其中 $b$ 为参数
    2. 在 $y$ 轴上共截距 $b_0$ 的直线系方程：$y = kx + b_0$，其中 $k$ 为参数
    3. 与直线 $A_0 x+B_0 y+C_0=0$ 平行的直线系方程：$A_0 x+B_0 y+C=0$，其中 $C$ 参数）
    4. 与直线 $A_0 x+B_0 y+C_0=0$ 垂直的直线系方程： $B_0 x-A_0 y+C=0$，其中 $C$为参数）
    5. 过已知点 $P\left(x_0, y_0\right)$ 的直线系方程：$\left(y-y_0\right)=k\left(x-x_0\right)$，其中 $k$ 为参数且不含直线 $x=x_0$
    6. 过两直线 $A_1 x+B_1 y+C_1=0$ 及 $A_2 x+B_2 y+C_2=0$ 交点的直线系方程：$\lambda\left(A_1 x+B_1 y+C_1\right)+\mu\left(A_2 x+B_2 y+C_2\right)=0$，其中 $\lambda, \mu$ 是不全为零的参数
    7. 在两轴上截距之和为定值 $p_0$ 的直线系方程: $\dfrac{x}{a}+\dfrac{y}{p_0-a}=1 \ (a \neq 0, p_0)$，其中 $a$ 为参数

### 3.1.2 空间直线
1. 空间直线的一般方程：设有两个平面 $\pi_1$ 和 $\pi_2$ 的方程为

    $$
    \left\{\begin{aligned}
    & \pi_1: A_1 x+B_1 y+C_1 z+D_1=0 \\
    & \pi_2: A_2 x+B_2 y+C_2 z+D_2=0
    \end{aligned}\right.
    $$

    且相交，则记其交线为直线 $l$，上述方程组称为直线的一般方程

    1. 在空间给定了一点 $M(x_0, y_0, z_0)$ 与一个非零方向向量 $\boldsymbol v = \begin{bmatrix} X & Y & Z \\ \end{bmatrix}^{\mathrm T}$，则通过点 $M$ 且与向量 $\boldsymbol v$ 平行的直线 $l$ 惟一确定
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
            d=\left|\dfrac{\left|\begin{array}{ccc}
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

### 3.1.3 椭圆与圆
1. 椭圆的定义：设 $F_1, F_2$ 为两点，则到两点的距离之和为定长的点集称为椭圆．称点 $F_1, F_2$ 为焦点，$|\overrightarrow{F_1 F_2}|$ 为焦距，焦距的一半称为半焦距
    1. 标准方程：设定长为 $a$，令 $b = \sqrt{a^2 - c^2} > 0$

        <div class="text-table">

        | 标准方程 | $\dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$ | $\dfrac{y^2}{a^2} + \dfrac{x^2}{b^2} = 1$ |
        | :------: | :---------------------------------------: | :---------------------------------------: |
        |   焦点   |          $F_1(-c, 0), F_2(c, 0)$          |          $F_1(0, c), F_2(0, -c)$          |
        |   准线   |         $x = \pm \dfrac{a^2}{c}$          |         $y = \pm \dfrac{a^2}{c}$          |

        </div>

    2. 一般方程：$E: A x^2+B xy+C y^2+D x+E y+F=0$
        1. 定义椭圆的中心为使 $\overrightarrow{MF}_1 + \overrightarrow{MF}_2 = \boldsymbol 0$ 的点 $M$，此时坐标为 $\left(\dfrac{B E-2 C D}{4 A C-B^2}, \dfrac{B D-2 A E}{4 A C-B^2}\right)$
        2. 长轴倾角 $\theta = \dfrac 12 \arctan \dfrac{B}{A - C}$，长短半轴分别为为

            $$
            \begin{aligned}
            & a = \sqrt{\dfrac{2\left(A X_c{ }^2+C Y_c{ }^2+B X_c Y_c-1\right)}{A+C+\sqrt{(A-C)^2+B^2}}} \\
            & b = \sqrt{\dfrac{2\left(A X_c^2+C Y_c^2+B X_c Y_c-1\right)}{A+C-\sqrt{(A-C)^2+B^2}}}
            \end{aligned}
            $$

            其中 $(X_c, Y_c)$ 为椭圆中心坐标

    3. 参数方程：椭圆 $E: \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$ 的参数方程为 $\left\{\begin{aligned} & x = a\cos \varphi \\ & y = b\sin \varphi \end{aligned}\right.$，椭圆 $E: \dfrac{y^2}{a^2} + \dfrac{x^2}{b^2} = 1$ 的参数方程为 $\left\{\begin{aligned} & x = b\cos \varphi \\ & y = a\sin \varphi \end{aligned}\right.$，其中 $\varphi$ 是参数，称作离心角

2. 椭圆的性质：设 $E: \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1 \ (a > b > 0)$ 为一个椭圆
    1. 对称性：设 $P(x_0, y_0)$ 是一个点
        1. 椭圆 $E$ 关于 $x$ 轴与 $y$ 轴对称：$\dfrac{x_0^2}{a^2} + \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{(-x_0)^2}{a^2} + \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{x_0^2}{a^2} + \dfrac{(-y_0)^2}{b^2} = 1$
        2. 椭圆 $E$ 关于中心 $O(0, 0)$ 中心对称：$\dfrac{x_0^2}{a^2} + \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{(-x_0)^2}{a^2} + \dfrac{(-y_0)^2}{b^2} = 1$
    2. 截距：椭圆与坐标轴的交点对应的实数，称四个交点 $A_1(-a, 0), A_2(a, 0), B_1(0, b), B_2(0, -b)$ 为椭圆 $E$ 的顶点
        1. 称线段 $\overline{A_1A_2}$ 为椭圆的长轴，其长度为 $2a$，并称 $a$ 为椭圆 $E$ 的半长轴长
        2. 称线段 $\overline{B_1B_2}$ 为椭圆的短轴，其长度为 $2b$，并称 $b$ 为椭圆 $E$ 的半短轴长
    3. 离心率：设半焦距 $c = \sqrt{a^2 - b^2}$，定义椭圆 $E$ 的离心率为椭圆上的点到焦点的距离与到准线的距离之比 $e = \dfrac ca \in (0, 1)$．取 $e = 0$，则椭圆退化为圆
3. 圆的定义：到顶点距离为定长的点集，称该定长为圆的半径
    1. 标准方程：圆心坐标为 $(a, b)$，半径为 $r$ 的圆方程为 $(x - a)^2 + (y - b)^2 = r^2$
    2. 一般方程：$C: x^2 + y^2 + Dx + Ey + F = 0$，设 $\Delta = D^2 + E^2 - 4F$
        1. 若 $\Delta > 0$，方程的轨迹是一个圆，且圆心坐标为 $\left(-\dfrac D2, - \dfrac E2\right)$，半径为 $\dfrac{\sqrt{D^2 + E^2 - 4F}}{2}$
        2. 若 $\Delta = 0$，则方程退化为点 $\left(-\dfrac D2, - \dfrac E2\right)$，称之为点圆
        3. 若 $\Delta < 0$，则方程没有实数解，此时称之为虚圆
    3. 极坐标方程：圆心坐标为 $(\rho_0, \theta_0)$，半径为 $r$ 的圆的极坐标方程为 $\rho^2 - 2\rho_0\rho \cos(\theta - \theta_0) + \rho_0^2 = r^2$
    4. 参数方程：圆心坐标为 $(a, b)$，半径为 $r$ 的圆的参数方程为 $C: \left\{\begin{aligned} & x = a + r\cos \theta \\ & y = b + r\sin\theta \end{aligned}\right.$
4. 圆的性质：设 $C: (x - a)^2 + (y - b)^2 = r^2$ 是一个圆
    1. 圆与点的关系：设 $M(x_0, y_0)$ 是一个点，$(x - a)^2 + (y - b)^2 = r^2$ 是一个圆
        1. 点在圆外当且仅当 $(x_0 - a)^2 + (y_0 - b)^2 > r^2$
        2. 点在圆上当且仅当 $(x_0 - a)^2 + (y_0 - b)^2 = r^2$
        3. 点在圆内当且仅当 $(x_0 - a)^2 + (y_0 - b)^2 < r^2$
    2. 圆系：特定条件的某些圆构成的集合，一个圆系所具有的共同形式的方程称为圆系方程
        1. 圆心坐标为 $(a_0, b_0)$ 的同心圆系方程：$(x - a_0)^2 + (y - b_0)^2 = r^2$，其中 $r$ 为参数
        2. 经过直线 $l: Ax + By + C = 0$ 与圆 $C: x^2 + y^2 + Dx + Ey + F = 0$ 的交点圆系方程：$x^2 + y^2 + Dx + Ey + F + \lambda(Ax + By + C) = 0$，其中 $\lambda$ 为参数
        3. 经过圆 $C_1: x^2 + y^2 + D_1x + E_1y + F_1 = 0$ 与圆 $C_2: x^2 + y^2 + D_2x + E_2y + F_2 = 0$ 的两交点 $A, B$ 的共轴圆系：$\lambda(x^2 + y^2 + D_1x + E_1y + F_1) + \mu(C_2: x^2 + y^2 + D_2x + E_2y + F_2 = 0)$，其中 $\lambda, \mu$ 是不全为零的参数．由 $A, B$ 确定的直线称为两圆的根轴

### 3.1.4 双曲线
1. 双曲线：设 $F_1, F_2$ 为两点，则到两点的距离之差的绝对值为定长的点集称为双曲线．称点 $F_1, F_2$ 为焦点，$|\overrightarrow{F_1 F_2}|$ 为焦距，焦距的一半称为半焦距
    1. 标准方程

        <div class="text-table">

        | 标准方程 | $\dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 1$ | $\dfrac{y^2}{a^2} - \dfrac{x^2}{b^2} = 1$ |
        | :------: | :---------------------------------------: | :---------------------------------------: |
        |   焦点   |          $F_1(-c, 0), F_2(c, 0)$          |          $F_1(0, c), F_2(0, -c)$          |
        |   准线   |         $x = \pm \dfrac{a^2}{c}$          |         $y = \pm \dfrac{a^2}{c}$          |

        </div>

    2. 一般方程：$H: A x^2+B xy+C y^2+D x+E y+F=0$
        1. 定义双曲线的中心为使 $\overrightarrow{MF}_1 + \overrightarrow{MF}_2 = \boldsymbol 0$ 的点 $M$，此时坐标为 $\left(\dfrac{B E-2 C D}{4 A C-B^2}, \dfrac{B D-2 A E}{4 A C-B^2}\right)$
        2. 实轴倾角 $\theta = \dfrac 12 \arctan \dfrac{B}{A - C}$，长短半轴分别为为

            $$
            \begin{aligned}
            & a = \sqrt{\dfrac{2\left(A X_c{ }^2+C Y_c{ }^2+B X_c Y_c-1\right)}{A+C+\sqrt{(A-C)^2+B^2}}} \\
            & b = \sqrt{\dfrac{2\left(A X_c^2+C Y_c^2+B X_c Y_c-1\right)}{A+C-\sqrt{(A-C)^2+B^2}}}
            \end{aligned}
            $$

            其中 $(X_c, Y_c)$ 为双曲线中心坐标

    3. 参数方程：双曲线 $H: \dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 1$ 的参数方程为 $\left\{\begin{aligned} & x = a\sec \varphi \\ & y = b\tan \varphi \end{aligned}\right.$，双曲线 $H: \dfrac{y^2}{a^2} - \dfrac{x^2}{b^2} = 1$ 的参数方程为 $\left\{\begin{aligned} & x = b\sec \varphi \\ & y = a\tan \varphi \end{aligned}\right.$，其中 $\varphi$ 是参数

2. 双曲线的性质：设 $H: \dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 1 \ (a, b > 0)$ 为一个双曲线
    1. 对称性：设 $P(x_0, y_0)$ 是一个点
        1. 双曲线 $H$ 关于 $x$ 轴与 $y$ 轴对称：$\dfrac{x_0^2}{a^2} - \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{(-x_0)^2}{a^2} - \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{x_0^2}{a^2} - \dfrac{(-y_0)^2}{b^2} = 1$
        2. 双曲线 $H$ 关于中心 $O(0, 0)$ 中心对称：$\dfrac{x_0^2}{a^2} - \dfrac{y_0^2}{b^2} = 1 \leftrightarrow \dfrac{(-x_0)^2}{a^2} - \dfrac{(-y_0)^2}{b^2} = 1$
    2. 截距：双曲线与坐标轴的交点对应的实数，称两个交点 $A_1(-a, 0), A_2(a, 0)$ 为双曲线 $H$ 的顶点，设 $B_1(0, b), B_2(0, -b)$ 为两个点
        1. 称线段 $\overline{A_1A_2}$ 为双曲线的实轴，其长度为 $2a$，并称 $a$ 为双曲线 $H$ 的实半轴长
        2. 称线段 $\overline{B_1B_2}$ 为双曲线的虚轴，其长度为 $2b$，并称 $b$ 为双曲线 $H$ 的虚半轴长
    3. 渐近线：$\dfrac{x^2}{a^2} - \dfrac{y^2}{b^2} = 0$，即 $y = \pm \dfrac ba x$．设 $P(x_0, y_0)$ 在双曲线上，则 $P$ 到渐近线的距离 $d$ 趋近于 $0$
    4. 离心率：设半焦距 $c = \sqrt{a^2 + b^2}$，定义双曲线 $H$ 的离心率为双曲线上的点到焦点的距离与到准线的距离之比 $e = \dfrac ca \in (1, +\infty)$

### 3.1.5 抛物线
1. 抛物线：设 $F$ 是一个点，$l$ 为一条直线．则到点 $F$ 的距离等于到直线 $l$ 距离的点集称为抛物线．称点 $F$ 为焦点，直线 $l$ 为准线
    1. 标准方程

        <div class="text-table">

        | 标准方程 |          $y^2 = 2px$           |           $y^2 = 2px$           |          $y^2 = 2px$           |           $y^2 = 2px$           |
        | :------: | :----------------------------: | :-----------------------------: | :----------------------------: | :-----------------------------: |
        |   焦点   | $\left(\dfrac{p}{2}, 0\right)$ | $\left(-\dfrac{p}{2}, 0\right)$ | $\left(0, \dfrac{p}{2}\right)$ | $\left(0, -\dfrac{p}{2}\right)$ |
        |   准线   |      $x = -\dfrac{p}{2}$       |       $x = \dfrac{p}{2}$        |      $y = -\dfrac{p}{2}$       |       $y = -\dfrac{p}{2}$       |

        </div>

    2. 参数方程：抛物线 $P: y^2 = 2px$ 的参数方程为 $\left\{\begin{aligned} & x=2pt^2 \\ & y=2pt \end{aligned}\right.$

2. 抛物线的性质：设 $P_1: y^2 = 2px, P_2: x^2 = 2py \ (p > 0)$ 为两个抛物线
    1. 对称性：设 $M(x_0, y_0)$ 是一个点
        1. $P_1$ 与 $x$ 轴对称：$y_0^2 = 2px_0 \leftrightarrow (-y_0)^2 = 2px_0$
        2. $P_2$ 与 $y$ 轴对称：$x_0^2 = 2py_0 \leftrightarrow (-x_0)^2 = 2py_0$
    2. 截距：抛物线与坐标轴的交点对应的实数，称交点 $O(0, 0)$ 为抛物线的顶点
    3. 离心率：定义抛物线 $P_1, P_2$ 的离心率为抛物线上的点到焦点的距离与到准线的距离之比 $e = 1$

### 3.1.6 其他平面曲线
1. 包络线：对于一个虑依赖于一个实参数 $c$ 的曲线族 $F(x, y, c) = 0$，其包络线是从方程 $F_x(x, y, c) = 0, F(x, y, c) = 0$ 中消去 $c$ 得到的
2. 渐屈线与渐伸线：如果 $E$ 是 $C$ 的渐屈线，则 $C$ 为 $E$ 的渐伸线
    1. 渐屈线：称曲线 $C$ 的所有曲率中心的几何轨迹为 $C$ 的渐屈线 $E$．如果曲线 $C$ 形如 $y=f(x)$，则可得出参数形式的渐屈线为

        $$
        \left\{\begin{aligned}
        & x=t-\dfrac{f^{\prime}(t)\left(1+f^{\prime}(t)^2\right)}{f^{\prime \prime}(t)} \\
        & y=f(t)+\dfrac{1+f^{\prime}(t)^2}{f^{\prime \prime}(t)}
        \end{aligned}\right.
        $$

    2. 渐伸线：已知曲线 $E$，则由包围或展开具定长的（切）弦得到的曲线 $C$ 称为渐伸线
    3. 星形线：椭圆 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=1 \ (a > b > 0)$ 的渐屈线 $\left(\dfrac{a x}{c^2}\right)^2+\left(\dfrac{b y}{c^2}\right)^2=1$，其中 $c^2 = a^2 - b^2$

3. 曳物线与悬链线：悬链线是曳物线的渐屈线
    1. 曳物线：$x=\pm\left(a \operatorname{arcosh} \dfrac{a}{y}-\sqrt{a^2-y^2}\right)$．绕 $x$ 轴旋转曳物线得到一个曲常负曲率的曲面，称其为伪球面
    2. 悬链线：$y=a \cosh \dfrac{x}{a}$．绕 $x$ 轴旋转悬链线得到一个其平均曲率为零的曲面，称其为悬链面
4. 螺线
    1. $\text{Archimedes}$ 螺线：$r = a\theta, a > 0, \theta > 0$
    2. 对数螺线：$r=ae^{b\theta}, a, b > 0$
    3. 双曲螺线：$r = \dfrac{a}{\theta}, a > 0, \theta > 0$
5. 蚌线：若曲线的极坐标方程形如 $r = f(\theta)$，则 $C$ 的蚌线是方程 $r = f(\theta) + b$ 的曲线
    1. $\text{Nicomedes}$ 蚌线：$r = \dfrac{a}{\cos \theta} \pm b, \theta \in \left(-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right)$，即直线的蚌线
    2. $\text{Pascal}$ 蜗线：$r = a\cos \theta + b, \theta \in (-\pi, \pi]$，即圆的蚌线．若令 $a = b$，则得到心形线 $r = a(1 + \cos \theta), \theta \in (-\pi, \pi]$
6. 旋轮线
    1. 直线的旋轮线

        $$
        \left\{\begin{aligned}
        & x=a(\theta-\mu \sin \theta) \\
        & y=a(\theta-\mu \cos \theta)
        \end{aligned}\right.
        $$

        其中 $a$ 为半径，$\theta$ 是旋轮的相对角．当 $\mu = 1$ 时，称其为旋轮线，当 $0 < \mu < 1$ 时，称其为短辐旋轮线，当 $\mu > 1$ 时，称其为长辐旋轮线，后两种情形也称作摆线

    2. 圆的外摆线

        $$
        \left\{\begin{aligned}
        &x=(A+a) \cos \theta-\mu a \cos \dfrac{A+a}{a} \theta \\
        &y=(A+a) \sin \theta-\mu a \sin \dfrac{A+a}{a} \theta
        \end{aligned}\right.
        $$

        其中半径为 $a$ 的圆在半径为 $A$ 的圆上旋转，点 $P$ 的极坐标为 $(r, \theta)$．当 $\mu = 1$ 时，称其为外摆线，当 $0 < \mu < 1$ 时，称其为短程外摆线，当 $\mu > 1$ 时，称其为长程外摆线

    3. 圆的内摆线

        $$
        \left\{\begin{aligned}
        & x=(A-a) \cos \theta-\mu a \cos \dfrac{A-a}{a} \theta \\
        & y=(A-a) \sin \theta-\mu a \sin \dfrac{A-a}{a} \theta
        \end{aligned}\right.
        $$

        其中半径为 $a$ 的圆在半径为 $A$ 的圆内旋转，点 $P$ 的极坐标为 $(r, \theta)$．当 $\mu = 1$ 时，称其为内摆线，当 $0 < \mu < 1$ 时，称其为短程内摆线，当 $\mu > 1$ 时，称其为长程内摆线

    4. $\text{Hipparchus}$ 周转圆

        $$
        \left\{\begin{aligned}
        & x=A \cos \omega t+a \cos \omega^{\prime} t \\
        & y=A \sin \omega t+a \sin \omega^{\prime} t
        \end{aligned}\right.
        $$

7. $\text{Cassini}$ 卵形线：所有到两点 $F_1(a, 0)$ 与 $F_2(-a, 0)$ 的距离乘积等于 $c^2$ 的点集，称 $F_1, F_2$ 为卵形线的焦点
    1. 方程：在平面直角坐标系下的方程为 $\left(x^2+y^2\right)^2-2 a^2\left(x^2-y^2\right)=c^4-a^4$，在极坐标下的方程为 $r^4-2 a^2 r^2 \cos 2 \theta=c^4-a^4$
    2. $\text{Bernoulli}$ 双纽线：所有到两点 $F_1(a, 0)$ 与 $F_2(-a, 0)$ 的距离乘积等于 $a^2$ 的点集，其方程为 $\left(x^2+y^2\right)^2-2 a^2\left(x^2-y^2\right)=0$．双纽线是 $\text{Cassini}$ 卵形线的特殊情况
8.  $\text{Lissajou}$ 图形

    $$
    \left\{\begin{aligned}
    & x=a \sin \omega t \\
    & y=b \sin \left(\omega^{\prime} t+\alpha\right)
    \end{aligned}\right.
    $$

## 3.2 曲面方程
- 空间曲面方程：在空间直角坐标系中，若方程 $F(x, y, z) = 0$ 或 $z = f(x, y)$ 与曲面 $\Sigma$ 有点 $P(x, y, z)$ 在曲面 $\Sigma$ 上当且仅当 $(x, y, z)$ 满足该方程，则称该方程为 $\Sigma$ 的曲面方程．特别地，若方程 $F(x, y, z) = 0$ 没有实点满足，则称该曲面为虚曲面
    1. 向量式参数方程：若取 $u \in [a, b], v \in [c, d]$ 的一切可能取的值，由 $\boldsymbol r(u, v) = x(u, v) \boldsymbol e_1 + y(u, v) \boldsymbol e_2 + z(u, v) \boldsymbol e_3$（其中 $a \leqslant t \leqslant b, c \leqslant v \leqslant d$）表示的径向量 $\boldsymbol r(u, v)$ 的终点总在一条曲面上；反之在这条曲面上的任意点总对应着以它为终点的径向量，且该径向量可由 $t$ 的某一值 $u_0, v_0\ \left(a \leqslant u_0 \leqslant b, c \leqslant v_0 \leqslant d \right)$ 完全决定，则称该方程为曲面的向量式参数方程
    2. 坐标式参数方程：若 $\boldsymbol r(u, v) = x(u, v) \boldsymbol e_1 + y(u, v) \boldsymbol e_2 + z(u, v) \boldsymbol e_3$ 为曲面的向量式参数方程，则称

        $$
        \left\{\begin{aligned}
        & x = x(u, v) \\
        & y = y(u, v) \\
        & z = z(u, v) \\
        \end{aligned}\right.
        \ (a \leqslant t \leqslant b, c \leqslant v \leqslant d)
        $$

        为曲面的坐标式参数方程

    3. 普通方程：如果从曲面的坐标式参数方程中消去参数 $u, v$，则能得出曲面的普通方程 $F(x, y, z) = 0$

### 3.2.1 空间平面
1. 空间的一般方程：$Ax + By + Cz + D = 0 \ (A^2 + B^2 + C^2 \neq 0)$．空间中任一平面的方程都可表示成一个关于变量 $x, y, z$ 的一次方程；每一个关于变量 $x, y, z$ 的一次方程都表示一个平面
    1. 平面的点位式方程：在空间给定了一点 $M$ 与不共线的向量 $\boldsymbol{a}, \boldsymbol{b}$，则通过点 $M$ 且与向量 $\boldsymbol{a}, \boldsymbol{b}$ 平行的平面 $\pi$ 惟一确定，称向量 $\boldsymbol{a}, \boldsymbol{b}$ 为平面 $\pi$ 的方向向量
        1. 向量式参数方程：$\boldsymbol r = \boldsymbol r_0 + u\boldsymbol a + v\boldsymbol b$，其中 $\boldsymbol r_0 = \overrightarrow{OM}$．消去参数得到 $V(\boldsymbol r - \boldsymbol r_0, \boldsymbol a, \boldsymbol b) = 0$
        2. 坐标式参数方程：

            $$
            \left\{\begin{array}{l}
            x=x_0+X_1 u+X_2 v \\
            y=y_0+Y_1 u+Y_2 v \\
            z=z_0+Z_1 u+Z_2 v
            \end{array}\right.
            $$

            消去参数得到

            $$
            \left|\begin{array}{ccc}
            x-x_0 & y-y_0 & z-z_0 \\
            X_1 & Y_1 & Z_1 \\
            X_2 & Y_2 & Z_2
            \end{array}\right|=0
            $$

    2. 平面的三点式方程：设 $M_1\left(x_1, y_1, z_1\right), M_2\left(x_2, y_2, z_2\right), M_3\left(x_3, y_3, z_3\right)$，则通过 $M_1, M_2, M_3$ 三点的平面 $\pi$ 唯一确定
        1. 向量式参数方程：令 $\boldsymbol r_i = \overrightarrow{OM}_i$，则有 $\boldsymbol{r}=\boldsymbol{r}_1+u\left(\boldsymbol{r}_2-\boldsymbol{r}_1\right)+v\left(\boldsymbol{r}_3-\boldsymbol{r}_1\right)$．消去参数得到 $V(\boldsymbol r - \boldsymbol r_1, \boldsymbol r_2 - \boldsymbol r_1, \boldsymbol r_3 - \boldsymbol r_1) = 0$
        2. 坐标式参数方程：

            $$
            \left\{\begin{array}{l}
            x=x_1+u\left(x_2-x_1\right)+v\left(x_3-x_1\right) \\
            y=y_1+u\left(y_2-y_1\right)+v\left(y_3-y_1\right) \\
            z=z_1+u\left(z_2-z_1\right)+v\left(z_3-z_1\right)
            \end{array}\right.
            $$

            消去参数得到

            $$
            \left|\begin{array}{ccc}
            x-x_1 & y-y_1 & z-z_1 \\
            x_2-x_1 & y_2-y_1 & z_2-z_1 \\
            x_3-x_1 & y_3-y_1 & z_3-z_1
            \end{array}\right|
            =\left|\begin{array}{cccc}
            x & y & z & 1 \\
            x_1 & y_1 & z_1 & 1 \\
            x_2 & y_2 & z_2 & 1 \\
            x_3 & y_3 & z_3 & 1
            \end{array}\right|
            =0
            $$

        3. 平面的截距式方程：如果平面上三点为平面与三坐标轴的交点 $M_1(a,0,0), M_2(0, b, 0), M_3(0,0, c)$（其中 $a b c \neq 0$），则方程化为 $\dfrac xa + \dfrac yb + \dfrac zc = 1$，称 $a, b, c$ 为平面在三坐标轴上的截距

    3. 平面的法式方程：如果在空间中给定一点 $M$ 与一个非零向量 $\boldsymbol n = \begin{bmatrix} A & B & C \\ \end{bmatrix}^{\mathrm T}$，则通过点 $M$ 且与向量 $\boldsymbol n$ 垂直的平面唯一确定，称 $\boldsymbol n$ 为平面的法向量
        1. 点法式方程：$\boldsymbol{n} \cdot\left(\boldsymbol{r}-\boldsymbol{r}_0\right)=0$，其中 $\boldsymbol r_0 = \overrightarrow{OM}$，或写成 $A\left(x-x_0\right)+B\left(y-y_0\right)+C\left(z-z_0\right)=0$
        2. 向量式法式方程：设 $p$ 为原点 $O$ 到平面 $\pi$ 的距离，则有 $\left<\dfrac{\boldsymbol n}{|\boldsymbol n|}, \boldsymbol r\right> = p$，称 $p$ 为平面 $\pi$ 的法距
        3. 坐标式法式方程：设平面 $\pi$ 的法距为 $p$，则有 $x \cos \alpha+y \cos \beta+z \cos \gamma-p=0$

        !!! note "平面的法式化"
            平面的法式方程是具有下列两个特征的一种一般方程

            1. 一次项的系数是单位法向量的坐标，其平方和为 $1$
            2. 因为 $p$ 是原点 $O$ 到平面 $\pi$ 的距离，所以常数项 $-p \leqslant 0$

            对于平面的一般方程 $Ax + By + Cz + D = 0$，可化为法式方程

            $$
            \dfrac{A x}{\pm \sqrt{A^2+B^2+C^2}}+\dfrac{B y}{\pm \sqrt{A^2+B^2+C^2}}+\dfrac{C z}{\pm \sqrt{A^2+B^2+C^2}}+\dfrac{D}{\pm \sqrt{A^2+B^2+C^2}}=0
            $$

            并称取定符号后的 $\lambda=\dfrac{1}{\pm \sqrt{A^2+B^2+C^2}}$ 为法式化因子

2. 空间平面与点的关系：设 $\pi: Ax + By + Cz + D = 0 \ (A^2 + B^2 + C^2 \neq 0)$ 为一个平面，点 $P$ 的坐标为 $(x_1, y_1, z_1)$，点 $Q(x_2, y_2, z_2)$ 在平面 $\pi$ 上．则点到平面的距离 $d$ 定义为 $\min |\overrightarrow{PQ}| = \dfrac{\left|A x_1+B y_1+C z_1 + D\right|}{\sqrt{A^2+B^2+C^2}}$
3. 空间平面与空间直线的关系：设直线 $l$ 方程为 $\dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}$，平面 $\pi$ 方程为 $Ax+By+Cz+D=0$．设 $l$ 与 $\pi$ 的夹角为 $\theta \ (0 \leqslant \theta \leqslant \dfrac{\pi}{2})$，则 $\theta = \arcsin \dfrac{|A X+B Y+C Z|}{\sqrt{A^2+B^2+C^2} \cdot \sqrt{X^2+Y^2+Z^2}}$
    1. 直线在平面上当且仅当 $AX+BY+CZ=0$ 且 $A x_0+B y_0+C z_0+D=0$；直线与平面平行当且仅当 $AX+BY+CZ=0$ 且 $A x_0+B y_0+C z_0+D\neq 0$
    2. 直线与平面相交当且仅当 $AX+BY+CZ\neq 0$；直线与平面垂直当且仅当 $\dfrac{A}{X}=\dfrac{B}{Y}=\dfrac{C}{Z}$
4. 空间平面间关系：设 $\pi_1, \pi_2$ 是两个平面

    $$
    \begin{aligned}
    & \pi_1: A_1 x + B_1 y + C_1z + D_1 = 0 \\
    & \pi_2: A_2 x + B_2 y + C_2z + D_2 = 0
    \end{aligned}
    $$

    定义两平面的夹角 $\theta = \arccos \left|\dfrac{A_1 A_2 + B_1 B_2 + C_1 C_2}{\sqrt{A_1^2 + B_1^2 + C_1^2} \sqrt{A_2^2 + B_2^2 + C_2^2}}\right| \ (0 \leqslant \theta \leqslant \dfrac{\pi}{2})$

    1. 两平面重合当且仅当 $\dfrac{A_1}{A_2}=\dfrac{B_1}{B_2}=\dfrac{C_1}{C_2}=\dfrac{D_1}{D_2}$
    2. 定义两平面平行为方向向量共线且两平面不重合，此时 $\dfrac{A_1}{A_2}=\dfrac{B_1}{B_2}=\dfrac{C_1}{C_2}\neq\dfrac{D_1}{D_2}$

        !!! note "两平面间的距离"
            设 $\pi_1: A x + B y + Cz + D_1 = 0$ 与 $\pi_2: Ax + By + Cz + D_2 = 0$ 是两个平行平面，则两平面距离为 $d = \dfrac{|D_1 - D_2|}{\sqrt{A^2+B^2+C^2}}$

    3. 定义两平面相交为方向向量不共线，此时 $A_1:B_1:C_1\neq A_2:B_2:C_2$；特别地，定义两平面垂直为方向向量正交，此时 $A_1 A_2 + B_1 B_2 + C_1 C_2 = 0$

5. 平面系：设 $\pi_1, \pi_2$ 是两个平面

    $$
    \begin{aligned}
    & \pi_1: A_1 x + B_1 y + C_1z + D_1 = 0 \\
    & \pi_2: A_2 x + B_2 y + C_2z + D_2 = 0
    \end{aligned}
    $$

    1. 若两个平面交于一条直线 $l$，则通过 $l$ 所有平面的方程 $l\left(A_1 x+B_1 y+C_1 z+D_1\right)+m\left(A_2 x+B_2 y+C_2 z+D_2\right)=0$（其中 $l, m$ 为不全为零的任意实数）称为有轴平面系，称 $l$ 为平面系的轴
    2. 若两个平面平行，则称平行于 $\pi_i$ 所有平面的方程 $l\left(A_1 x+B_1 y+C_1 z+D_1\right)+m\left(A_2 x+B_2 y+C_2 z+D_2\right)=0$ 为平行平面系，且有 $-m: l \neq A_1: A_2=B_1: B_2=C_1: C_2$．特别地，由平面 $\pi: A x+B y+C z+D=0$ 决定的平行平面系的方程是 $A x+B y+C z+\lambda=0$，其中 $\lambda$ 是任意实数

### 3.2.2 空间曲面
1. 柱面：空间中由平行于定方向且与一条定曲线相交的一族平行直线所生成的曲面．称定方向为柱面的方向，定曲线为柱面的准线，平行直线中的每一条直线称作柱面的母线
    1. 柱面的方程：设柱面的准线方程为 $\left\{\begin{array}{l}F_1(x, y, z)=0 \\F_2(x, y, z)=0\end{array}\right.$，母线的方向数为 $X, Y, Z$．如果 $M_0\left(x_0, y_0, z_0\right)$ 为准线上的任意点，则过点 $M_0$ 的母线方程为

        $$
        \dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}
        $$

        且有 $F_1\left(x_0, y_0, z_0\right)=0, F_2\left(x_0, y_0, z_0\right)=0$

    2. 柱面的判定：在空间仿射坐标系中，只含两个元（坐标）的三元方程所表示的曲面是一个柱面，其母线平行于所缺元（坐标）的同名坐标轴
    3. 空间曲线的射影柱面：设空间曲线为 $L:\left\{\begin{array}{l}F(x, y, z)=0, \\G(x, y, z)=0 .\end{array}\right.$，依次消元得到

        $$
        \begin{aligned}
        & F_1(x, y)=0 \\
        & F_2(x, z)=0 \\
        & F_3(y, z)=0
        \end{aligned}
        $$

        称曲面 $F_1(x, y) = 0, F_2(x, z)=0, F_3(y, z)=0$ 为空间曲线 $L$ 对 $xOy, xOz, yOz$ 坐标面射影的射影柱面，曲线

        $$
        \left\{\begin{aligned} & F_1(x, y)=0 \\ & z=0 \end{aligned}\right. ,
        \left\{\begin{aligned} & F_2(x, z)=0 \\ & y=0 \end{aligned}\right. \textsf{ 与 }
        \left\{\begin{aligned} & F_3(y, z)=0 \\ & x=0 \end{aligned}\right.
        $$

        称作空间曲线 $L$ 在 $xOy, xOz, yOz$ 坐标面上的射影曲线

2. 锥面：空间中通过一定点且与定曲线相交的一族直线所生成的曲面，称这些直线为锥面的母线，定点为锥面的顶点，定曲线为锥面的准线
    1. 锥面的方程：设锥面的准线为 $\left\{\begin{array}{l}F_1(x, y, z)=0 \\F_2(x, y, z)=0\end{array}\right.$，顶点为 $A\left(x_0, y_0, z_0\right)$．若 $M_1\left(x_1, y_1, z_1\right)$ 为准线上的任意点，则锥面过点 $M_1$ 的母线为 $\dfrac{x-x_0}{x_1-x_0}=\dfrac{y-y_0}{y_1-y_0}=\dfrac{z-z_0}{z_1-z_0}$，且有 $F_1\left(x_1, y_1, z_1\right)=0, F_2\left(x_1, y_1, z_1\right)=0$
    2. 锥面的判定：关于 $x, y, z$ 的齐次方程总表示顶点在坐标原点的锥面
        1. 在特殊的情况下，关于 $x, y, z$ 的齐次方程可能只表示一个原点，称其为具有实顶点的虚锥面
        2. 关于 $x-x_0, y-y_0, z-z_0$ 的齐次方程表示顶点在 $\left(x_0, y_0, z_0\right)$ 的锥面

3. 旋转曲面：空间中一条曲线 $\Gamma$ 绕着定直线 $l$ 旋转一周所生成的曲面，也称作回转曲面．曲线 $\Gamma$ 称作旋转曲面的母线，定直线 $l$ 称作旋转曲面的旋转轴，简称为轴
    1. 纬圆：在空间直角坐标系下，设旋转曲面的母线为 $\Gamma:\left\{\begin{array}{l}F_1(x, y, z)=0 \\F_2(x, y, z)=0 \end{array}\right.$，旋转轴为 $l: \dfrac{x-x_0}{X}=\dfrac{y-y_0}{Y}=\dfrac{z-z_0}{Z}$，其中 $P_0\left(x_0, y_0, z_0\right)$ 为轴 $l$ 上的一个定点．设 $M_1\left(x_1, y_1, z_1\right)$ 是母线 $\Gamma$ 上的任意点，称过 $M_1$ 且垂直于旋转轴 $l$ 的平面与以 $P_0\left(x_0, y_0, z_0\right)$ 为球心，$|\overrightarrow{P_0 M_1}|$ 为半径的球面的交线

        $$
        \left\{\begin{array}{l}
        X\left(x-x_1\right)+Y\left(y-y_1\right)+Z\left(z-z_1\right)=0 \\
        \left(x-x_0\right)^2+\left(y-y_0\right)^2+\left(z-z_0\right)^2=\left(x_1-x_0\right)^2+\left(y_1-y_0\right)^2+\left(z_1-z_0\right)^2
        \end{array}\right.
        $$

        为过 $M_1$ 的纬圆

    2. 椭球面与球面：将椭圆 $\Gamma:\left\{\begin{array}{l}\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}=1 \ (a>b) \\z=0\end{array}\right.$ 绕长轴旋转的曲面方程为 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{b^2}=1$，称作长形旋转椭球面；绕短轴旋转的曲面方程为 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{a^2}=1$，称作扁形旋转椭球面．将圆 $\Gamma:\left\{\begin{array}{l}x^2+y^2=a^2\\z=0\end{array}\right.$ 绕坐标轴旋转的曲面方程为 $x^2+y^2+z^2=a^2$，称作球面
    3. 旋转双曲面：将双曲线 $\Gamma:\left\{\begin{array}{l}\dfrac{y^2}{b^2}-\dfrac{z^2}{c^2}=1 \\x=0\end{array}\right.$ 绕虚轴旋转的曲面方程为 $\dfrac{x^2}{b^2}+\dfrac{y^2}{b^2}-\dfrac{z^2}{c^2}=1$，称作单叶旋转双曲面；绕实轴旋转的曲面方程为 $\dfrac{y^2}{b^2}-\dfrac{x^2}{c^2}-\dfrac{z^2}{c^2}=1$，称作单叶旋转双曲面

4. 椭球面：在直角坐标系下，由方程 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1$ 所表示的曲面称作椭球面．称该方程为椭球面的标准方程，其中 $a, b, c$ 为任意正常数．特别地，任何两轴相等的椭球面是旋转椭球面，三轴相等的椭球面是球面，三轴不等的椭球面称作三轴椭球面
    1. 椭球面的概念
        1. 顶点：椭球面与坐标轴的六个交点坐标为 $(\pm a, 0,0),(0, \pm b, 0),(0,0, \pm c)$
        2. 轴与半轴：称同一条对称轴上的两顶点间的线段以及其长度 $2 a, 2 b$ 与 $2 c$ 为椭球面的轴；称轴的一半为椭球面的半轴．当 $a>b>c$ 时，$2 a, 2 b$ 与 $2 c$ 分别称作椭球面的长轴、中轴与短轴；$a, b$ 与 $c$ 分别称作椭球面的长半轴、中半轴与短半轴
        3. 主截线：用坐标面 $z=0, y=0, x=0$ 分别来截割椭球面，则所得截口都是椭圆，称作椭球面的主截线或主椭圆
    2. 椭球面的性质
        1. 对称性：椭球面关于三坐标平面、三坐标轴与坐标原点都对称，称椭球面的对称平面、对称轴与对称中心为其主平面、主轴与中心
        2. 有界性：椭球面上的任何一点的坐标 $(x, y, z)$ 总有 $|x| \leqslant a,|y| \leqslant b,|z| \leqslant c$
5. 双曲面：单叶双曲面与双叶双曲面的统称
    1. 单叶双曲面：在直角坐标系下，由方程 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=1$ 所表示的曲面称作单叶双曲面．方程称作单叶双曲面的标准方程，其中 $a, b, c$ 是任意的正常数．方程 $\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}+\dfrac{z^{2}}{c^{2}}=1$ 与 $-\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}+\dfrac{z^{2}}{c^{2}}=1$ 所表示的图形也都是单叶双曲面
        1. 双曲面与 $z$ 轴不相交，与 $x$ 轴与 $y$ 轴的交点坐标为 $(\pm a, 0,0)$ 与 $(0, \pm b, 0)$，这四点称作单叶双曲面的顶点
        2. 用三个坐标平面 $z=0, y=0, x=0$ 分别截割曲面，所得的截线 $\left\{\begin{array}{l}\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=1 \\z=0 \end{array}\right.$ 为 $x O y$ 面上的椭圆；$\left\{\begin{array}{l}\dfrac{x^{2}}{a^{2}}-\dfrac{z^{2}}{c^{2}}=1 \\y=0 \end{array}\right.$ 与 $\left\{\begin{array}{l}\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=1 \\x=0\end{array}\right.$ 分别为 $x O z$ 面与 $y O z$ 面上的双曲线，这两条双曲线有着共同的虚轴与虚轴长
    2. 双叶双曲面：在直角坐标系下，由方程 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=-1$ 所表示的图形称作双叶双曲面．方程称作双叶双曲面的标准方程，其中 $a, b, c$ 是任意的正常数
        1. 曲面上的点恒有 $z^{2} \geqslant c^{2}$，因此曲面分成两叶 $z \geqslant c$ 与 $z \leqslant-c$
        2. 坐标平面 $z=0$ 与曲面不相交，而与其他两个坐标平面 $y=0$ 与 $x=0$ 分别交曲面于两条双曲线 $\left\{\begin{array}{l}\dfrac{z^{2}}{c^{2}}-\dfrac{x^{2}}{a^{2}}=1 \\y=0\end{array}\right.$ 与 $\left\{\begin{array}{l}\dfrac{z^{2}}{c^{2}}-\dfrac{y^{2}}{b^{2}}=1 \\x=0\end{array}\right.$
6. 抛物面：椭圆抛物面与双曲抛物面的统称，它们都没有对称中心，因此也称作无心二次曲面
    1. 椭圆抛物面：在直角坐标系下，由方程 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=2 z$ 所表示的曲面称作椭圆拋物面．方程称作椭圆拋物面的标准方程，其中 $a, b$ 是任意的正常数
        1. 椭圆抛物面对称于 $x O z$ 与 $y O z$ 坐标面，也对称于 $z$ 轴．但其没有对称中心，与对称轴交于点 $O(0,0,0)$，称作椭圆抛物面的顶点
        2. 用坐标面 $y=0$ 及 $x=0$ 截割曲面，分别得抛物线 $\left\{\begin{array}{l}x^{2}=2 a^{2} z \\y=0\end{array}\right.$ 与 $\left\{\begin{array}{l}y^{2}=2 b^{2} z \\x=0\end{array}\right.$，这两条拋物线称作椭圆拋物面的主拋物线，开口方向都与 $z$ 轴的正向一致
        3. 若 $a=b$，则方程变为 $x^{2}+y^{2}=2 a^{2} z$，此时曲面成为旋转抛物面
    2. 双曲抛物面：在直角坐标系下，由方程 $\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=2 z$ 所表示的曲面称作双曲拋物面，也称作马鞍面．方程称作双曲拋物面的标准方程，其中 $a, b$ 为任意的正常数
        1. 双曲抛物面关于 $x O z$ 面，$y O z$ 面与 $z$ 轴对称，但是它没有对称中心
        2. 用坐标平面 $z=0$ 截割双曲抛物面，得到 $\left\{\begin{array}{l}\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=0 \\z=0 .\end{array}\right.$，这是一对相交于原点的直线；用坐标平面 $y=0$ 与 $x=0$ 截割双曲抛物面，分别得两抛物线 $\left\{\begin{array}{l}x^{2}=2 a^{2} z \\y=0\end{array}\right.$ 与 $\left\{\begin{array}{l}y^{2}=-2 b^{2} z \\x=0\end{array}\right.$，称作双曲抛物面的主拋物线，其所在的平面相互垂直，有相同的顶点与对称轴，但两抛物线的开口方向不同

    !!! note "直纹曲面与直母线"
        由一族直线所生成的曲面称作直纹曲面，例如柱面或锥面；生成曲面的那族直线称作这曲面的一族直母线

        1. 单叶双曲面 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=1$ 是直纹曲面

            1. 直线 $\left\{\begin{array}{l}\dfrac{x}{a}+\dfrac{z}{c}=u\left(1+\dfrac{y}{b}\right) \\\dfrac{x}{a}-\dfrac{z}{c}=\dfrac{1}{u}\left(1-\dfrac{y}{b}\right)\end{array}\right.$ 与直线 $\left\{\begin{array}{l}\dfrac{x}{a}+\dfrac{z}{c}=0 \\1-\dfrac{y}{b}=0\end{array}\right.$ 和 $\left\{\begin{array}{l}\dfrac{x}{a}-\dfrac{z}{c}=0 \\1+\dfrac{y}{b}=0 \end{array}\right.$ 组成的直线族是单叶双曲面的一族直母线，称作 $u$ 族直母线，也写作

                $$
                \left\{\begin{array}{l}
                w\left(\dfrac{x}{a}+\dfrac{z}{c}\right)=u\left(1+\dfrac{y}{b}\right) \\
                u\left(\dfrac{x}{a}-\dfrac{z}{c}\right)=w\left(1-\dfrac{y}{b}\right)
                \end{array}\right.
                $$

            2. 直线 $\left\{\begin{array}{l}\dfrac{x}{a}+\dfrac{z}{c}=v\left(1-\dfrac{y}{b}\right) \\\dfrac{x}{a}-\dfrac{z}{c}=\dfrac{1}{v}\left(1+\dfrac{y}{b}\right)\end{array}\right.$ 与直线 $\left\{\begin{array}{l}\dfrac{x}{a}+\dfrac{z}{c}=0 \\1+\dfrac{y}{b}=0\end{array}\right.$ 和 $\left\{\begin{array}{l}\dfrac{x}{a}-\dfrac{z}{c}=0 \\1-\dfrac{y}{b}=0\end{array}\right.$ 组成的直线族是单叶双曲面的一族直母线，称作 $v$ 族直母线，也写作

                $$
                \left\{\begin{array}{l}
                t\left(\dfrac{x}{a}+\dfrac{z}{c}\right)=v\left(1-\dfrac{y}{b}\right) \\
                v\left(\dfrac{x}{a}-\dfrac{z}{c}\right)=t\left(1+\dfrac{y}{b}\right)
                \end{array}\right.
                $$

        2. 双曲抛物面 $\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=2 z$ 是直纹曲面，其有两族直母线 $\left\{\begin{array}{l}\dfrac{x}{a}+\dfrac{y}{b}=2 u \\u\left(\dfrac{x}{a}-\dfrac{y}{b}\right)=z\end{array}\right.$ 与 $\left\{\begin{array}{l}w\left(\dfrac{x}{a}+\dfrac{y}{b}\right)=2 u \\u\left(\dfrac{x}{a}-\dfrac{y}{b}\right)=w z\end{array}\right.$

        单叶双曲面与双曲抛物面的具有如下性质：

        1. 对于单叶双曲面上的点，两族直母线中各有一条直母线通过该点；对于双曲抛物面上的点，两族直母线中各有一条直母线通过这一点
        2. 单叶双曲面上异族的任意两直母线必共面，双曲抛物面上异族的任意两直母线必相交
        3. 单叶双曲面或双曲抛物面上同族的任意两直母线总是异面直线，双曲抛物面同族的全体直母线平行于同一平面

