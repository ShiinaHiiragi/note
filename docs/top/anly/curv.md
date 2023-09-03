# 4 曲线理论

## 4.1 二次曲线仿射理论
### 4.1.1 符号与记法
在平面上，由二元二次方程 $a_{11} x^{2}+2 a_{12} x y+a_{22} y^{2}+2 a_{13} x+2 a_{23} y+a_{33}=0$ 所表示的曲线称作二次曲线

1. 引进如下记号：

    $$
    \begin{aligned}
    F(x, y) & \equiv a_{11} x^{2}+2 a_{12} x y+a_{22} y^{2}+2 a_{13} x+2 a_{23} y+a_{33} \\
    F_{1}(x, y) & \equiv a_{11} x+a_{12} y+a_{13} \\
    F_{2}(x, y) & \equiv a_{12} x+a_{22} y+a_{23} \\
    F_{3}(x, y) & \equiv a_{13} x+a_{23} y+a_{33} \\
    \Phi(x, y) & \equiv a_{11} x^{2}+2 a_{12} x y+a_{22} y^{2}
    \end{aligned}
    $$

    则二次曲线方程写作 $F(x, y) \equiv x F_{1}(x, y)+y F_{2}(x, y)+F_{3}(x, y)=0$

2. 将 $F(x, y)$ 的系数所排成的矩阵

    $$
    \boldsymbol{A}=\left[\begin{array}{lll}
    a_{11} & a_{12} & a_{13} \\
    a_{12} & a_{22} & a_{23} \\
    a_{13} & a_{23} & a_{33}
    \end{array}\right]
    $$

    称作二次曲线 $F(x, y) = 0$ 的矩阵，用 $\Phi(x, y)$ 的系数所排成的矩阵

    $$
    \boldsymbol{A}^{*}=\left[\begin{array}{ll}
    a_{11} & a_{12} \\
    a_{12} & a_{22}
    \end{array}\right]
    $$

    称作 $\Phi(x, y)$ 的矩阵，并定义如下符号：

    $$
    I_{1}=a_{11}+a_{22}, \ I_{2}=\left|\begin{array}{ll}
    a_{11} & a_{12} \\
    a_{12} & a_{22}
    \end{array}\right|, \ I_{3}=\left|\begin{array}{lll}
    a_{11} & a_{12} & a_{13} \\
    a_{12} & a_{22} & a_{23} \\
    a_{13} & a_{23} & a_{33}
    \end{array}\right|, K_{1}=\left|\begin{array}{ll}
    a_{11} & a_{13} \\
    a_{13} & a_{33}
    \end{array}\right|+\left|\begin{array}{cc}
    a_{22} & a_{23} \\
    a_{23} & a_{33}
    \end{array}\right|
    $$

### 4.1.2 二次曲线的渐近方向
1. 二次曲线 $F(x, y) = 0$ 与过点 $\left(x_{0}, y_{0}\right)$ 且具有方向 $X : Y$ 的直线 $\left\{\begin{array}{l}x=x_{0}+X t \\y=y_{0}+Y t\end{array}\right.$ 的交点联立得到方程

    $$
    \Phi(X, Y) \cdot t^{2}+2\left[F_{1}\left(x_{0}, y_{0}\right) \cdot X+F_{2}\left(x_{0}, y_{0}\right) \cdot Y\right] t+F\left(x_{0}, y_{0}\right)=0
    $$

    1. $\Phi(X, Y) \neq 0$ 时，判别式 $\Delta=\left[F_{1}\left(x_{0}, y_{0}\right) \cdot X+F_{2}\left(x_{0}, y_{0}\right) \cdot Y\right]^{2}-\Phi(X, Y) \cdot F\left(x_{0}, y_{0}\right)$
        1. $\Delta>0$ 时，方程有两个不等的实根，代人即得直线与二次曲线的两个不同的实交点
        2. $\Delta=0$ 时，方程有两个相等的实根，此时直线与二次曲线有两个相互重合的实交点
        3. $\Delta<0$ 时，方程有两个共轭的虚根，此时直线与二次曲线交于两个共轭的虚点

        此时将由这两点决定的线段称作二次曲面的弦

    2. $\Phi(X, Y)=0$ 时
        1. $F_{1}\left(x_{0}, y_{0}\right) \cdot X+F_{2}\left(x_{0}, y_{0}\right) \cdot Y \neq 0$，此时方程是关于 $t$ 的一次方程，有惟一的一个实根，因此直线与二次曲线有惟一的实交点
        2. $F_{1}\left(x_{0}, y_{0}\right) \cdot X+F_{2}\left(x_{0}, y_{0}\right) \cdot Y=0$，而 $F\left(x_{0}, y_{0}\right) \neq 0$，此时方程无解，直线与二次曲线没有交点
        3. $F_{1}\left(x_{0}, y_{0}\right) \cdot X+F_{2}\left(x_{0}, y_{0}\right) \cdot Y=F\left(x_{0}, y_{0}\right)=0$，此时方程成为一个恒等式，它能被任何值的 $t$ 所满足，因此直线全部在二次曲线上

        !!! note "二次曲线的切线"
            若直线与二次曲线相交于相互重合的两个点，则这条直线称作二次曲线的切线，这个重合的交点叫做切点．若直线全部在二次曲线上，也称其为二次曲线的切线，此时直线上的每一个点都可以看作切点

            奇异点：二次曲线上满足 $F_{1}\left(x_{0}, y_{0}\right)=F_{2}\left(x_{0}, y_{0}\right)=0$ 的点 $\left(x_{0}, y_{0}\right)$ 称作二次曲线的奇异点，简称奇点．二次曲线的非奇异点称作二次曲线的正则点

            1. 若 $\left(x_{0}, y_{0}\right)$ 是二次曲线的正则点，则通过 $\left(x_{0}, y_{0}\right)$ 的切线方程是 $\left(x-x_{0}\right) F_{1}\left(x_{0}, y_{0}\right)+\left(y-y_{0}\right) F_{2}\left(x_{0}, y_{0}\right)=0$，其中 $\left(x_{0}, y_{0}\right)$ 是其切点．如果 $\left(x_{0}, y_{0}\right)$ 是二次曲线的奇异点，则通过点 $\left(x_{0}, y_{0}\right)$ 的每一条直线都是二次曲线的切线
            2. 若 $\left(x_{0}, y_{0}\right)$ 是二次曲线的正则点，则通过 $\left(x_{0}, y_{0}\right)$ 的切线方程为 $a_{11} x_{0} x+a_{12}\left(x_{0} y+x y_{0}\right)+a_{22} y_{0} y+a_{13}\left(x+x_{0}\right)+a_{23}\left(y+y_{0}\right)+a_{33}=0$

2. 渐进方向：满足条件 $\Phi(X, Y)=0$ 的方向 $X: Y$ 称作二次曲线 $F(x, y) = 0$ 的渐近方向，否则称作非渐近方向．二次曲线按其渐近方向可以分为三种类型
    1. 椭圆型曲线：$I_{2}>0$，此时曲线没有实渐近方向
    2. 抛物型曲线：$I_{2}=0$，此时曲线有一个实渐近方向
    3. 双曲型曲线：$I_{2}<0$，此时曲线有两个实渐近方向
3. 中心：若点 $C$ 是二次曲线的通过它的所有弦的中点，即 $C$ 是二次曲线的对称中心，则点 $C$ 称作二次曲线的中心
    1. 点 $C\left(x_{0}, y_{0}\right)$ 是二次曲线的中心，其充要条件是

        $$
        \left\{\begin{array}{l}
        F_{1}\left(x_{0}, y_{0}\right)=a_{11} x_{0}+a_{12} y_{0}+a_{13}=0 \\
        F_{2}\left(x_{0}, y_{0}\right) \equiv a_{12} x_{0}+a_{22} y_{0}+a_{23}=0
        \end{array}\right.
        $$

        特别地，坐标原点是二次曲线的中心当且仅当曲线方程里不含 $x$ 与 $y$ 的一次项

    2. 二次曲线按其中心的分类
        1. 中心曲线: $I_{2}=\left|\begin{array}{ll}a_{11} & a_{12} \\ a_{12} & a_{22}\end{array}\right| \neq 0$，此时曲线有惟一中心
        2. 非中心曲线：$I_{2}=\left|\begin{array}{ll}a_{11} & a_{12} \\ a_{12} & a_{22}\end{array}\right|=0$，即 $\dfrac{a_{11}}{a_{12}}=\dfrac{a_{12}}{a_{22}}$
            - 无心曲线: $\dfrac{a_{11}}{a_{12}}=\dfrac{a_{12}}{a_{22}} \neq \dfrac{a_{13}}{a_{23}}$，此时曲线没有中心
            - 线心曲线：$\dfrac{a_{11}}{a_{12}}=\dfrac{a_{12}}{a_{22}}=\dfrac{a_{13}}{a_{23}}$，此时曲线有一条中心直线

        椭圆型曲线与双曲型曲线都是中心曲线，它们各有唯一中心且为有穷远点；抛物型曲线是非中心曲线，其中心为无穷远点，包括无心曲线与线心曲线

4. 渐近线：通过二次曲线的中心且以渐近方向为方向的直线称作该二次曲线的渐近线
    1. 二次曲线的渐近线与该二次曲线或者没有交点，或者整条直线在该二次曲线上，成为二次曲线的组成部分
    2. 椭圆型曲线只有两条虚渐近线而无实渐近线，双曲型曲线有两条实渐近线，抛物型曲线中的无心曲线无渐近线．线心曲线有一条实渐近线，即其中心直线
    3. 二次曲线的渐近线相交于中心，而且调和分离任何一对共轭直径

    !!! note "中心与渐近线的仿射定义"
        - 中心：无穷远直线关于二次曲线的极点
        - 渐近线：二次曲线上的无穷远点的不是无穷远直线的切线

### 4.1.3 二次曲线的直径
1. 直径：二次曲线的平行弦中点的轨迹称作这个二次曲线的直径，其所对应的平行弦称作共轭于这条直径的共轭弦，而直径也称作共轭于平行弦方向的直径
    1. 二次曲线的一族平行弦的中点轨迹是一条直线
    2. 若二次曲线的一族平行弦的斜率为 $k$，则共轭于这族平行弦的直径方程是 $F_{1}(x, y)+k F_{2}(x, y)=0$
    3. 中心二次曲线的直径通过曲线的中心，无心二次曲线的直径平行于曲线的渐近方向，线心二次曲线的直径只有一条，即曲线的中心直线
2. 共轭方向与共轭直径
    1. 共轭方向：将二次曲线的与非渐近方向 $X: Y$ 共轭的直径方向 $X^{\prime}: Y^{\prime}=-\left(a_{12} X+a_{22} Y\right):\left(a_{11} X+a_{12} Y\right)$ 称作非渐近方向 $X: Y$ 的共轭方向
        1. 中心二次曲线的非渐近方向的共轭方向仍然是非渐进方向
        2. 非中心二次曲线的非渐近方向的共轭方向是渐进方向
    2. 共轭直径：中心曲线的一对具有相互共轭方向的直径
        1. 与有心二次曲线一直径平行的一组弦，被其共轭直径所平分
        2. 过一直径两端点的切线平行于该直径的共轭直径

    !!! note "直径与共轭直径的仿射定义"
        - 直径：无穷远点关于二次曲线的有穷极线
        - 共轭直径：二次曲线的一直径与无穷远直线交点的极线

3. 主直径与主方向：二次曲线的垂直于其共轭弦的直径称作二次曲线的主直径，主直径的方向与垂直于主直径的方向都称作二次曲线的主方向
    1. 主直径是二次曲线的对称轴，因此主直径也称作二次曲线的轴，轴与曲线的交点称作曲线的顶点
    2. 特征方程与特征根：方程 $\left|\begin{array}{cc}a_{11}-\lambda & a_{12} \\a_{12} & a_{22}-\lambda\end{array}\right|=0$ 或 $\lambda^{2}-I_{1} \lambda+I_{2}=0$ 称作二次曲线的特征方程，特征方程的根称作二次曲线的特征根
        1. 二次曲线的特征根都是实数且不能全为零
        2. 由二次曲线的特征根 $\lambda$ 确定的主方向 $X$ : $Y$，当 $\lambda \neq 0$ 时，为二次曲线的非䉼近主方向；当 $\lambda=0$ 时，为二次曲线的渐近主方向
    3. 由二次曲线的特征方程解得两特征根为 $\dfrac{I_{1} \pm \sqrt{I_{1}^{2}-4 I_{2}}}{2}$
        1. 当二次曲线为中心曲线时，若特征方程的判别式 $\Delta=0$，则中心曲线为圆（点圆和虚圆），此时任何实方向都是圆的非渐近主方向，从而通过圆心的任何直线不仅都是直径，而且都是圆的主直径；若判别式 $\Delta>0$，则特征根为两不等的非零实根 $\lambda_{1}, \lambda_{2}$，相应的两非渐近主方向为

            $$
            \begin{aligned}
            &X_{1}: Y_{1}=a_{12}:\left(\lambda_{1}-a_{11}\right)=\left(\lambda_{1}-a_{22}\right): a_{12} \\
            &X_{2}: Y_{2}=a_{12}:\left(\lambda_{2}-a_{11}\right)=\left(\lambda_{2}-a_{22}\right): a_{12}
            \end{aligned}
            $$

        2. 当二次曲线为非中心曲线时，两特征根为 $\lambda_{1}=a_{11}+a_{22}, \lambda_{2}=0$，它只有一个非渐近的主方向，从而非中心二次曲线只有一条主直径

### 4.1.4 二次曲线的分类
1. 二次曲线的方程化简：适当选取坐标系，二次曲线的方程总可以化成下列三个简化方程中的一个
    1. 中心曲线：$a_{11} x^{2}+a_{22} y^{2}+a_{33}=0, a_{11} a_{22} \neq 0$．当 $a_{33} \neq 0$ 时，方程可化为 $A x^{2}+B y^{2}=1$，其中 $A=-\dfrac{a_{11}}{a_{33}}, B=-\dfrac{a_{22}}{a_{33}}$
        1. 若 $A>0, B>0$，设 $A=\dfrac{1}{a^{2}}, B=\dfrac{1}{b^{2}}$，得到椭圆 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=1$
        2. 若 $A<0, B<0$，设 $A=-\dfrac{1}{a^{2}}, B=-\dfrac{1}{b^{2}}$，得到虚椭圆 $\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=-1$
        3. 若 $A$ 与 $B$ 异号，不妨设 $A>0, B<0$，令 $A=\dfrac{1}{a^{2}}, B=-\dfrac{1}{b^{2}}$，则得到双曲线 $\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=1$

        当 $a_{33} = 0$ 时

        4. 若 $a_{11}$ 与 $a_{22}$ 同号，得到点（或称两相交于实点的共轭虚直线）$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=0$
        5. 若 $a_{11}$ 与 $a_{22}$ 异号，类似地得到两相交直线 $\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=0$

    2. 无心曲线：$a_{22} y^{2}+2 a_{13} x=0, a_{22} a_{13} \neq 0$．设 $-\dfrac{a_{13}}{a_{22}}=p$，则得到抛物线 $y^{2}=2 p x$
    3. 线心曲线：$a_{22} y^{2}+a_{33}=0, a_{22} \neq 0$
        1. 若 $a_{33}$ 与 $a_{22}$ 异号，设 $-\dfrac{a_{33}}{a_{22}}=a^{2}$，则得到两平行直线 $y^{2}=a^{2}$
        2. 若 $a_{33}$ 与 $a_{22}$ 同号，设 $\dfrac{a_{33}}{a_{22}}=a^{2}$，则得到两平行共轭虚直线 $y^{2}=-a^{2}$
        3. 若 $a_{33}=0$，则得到两重合直线 $y^{2}=0$

2. 二次曲线方程与不变量：由 $F(x, y)$ 的系数组成的一个非常数函数 $f$，若经过刚体变换

    $$
    \left\{\begin{array}{l}
    x^{\prime}=x \cos \alpha-y \sin \alpha+x_{0} \\
    y^{\prime}=x \sin \alpha+y \cos \alpha+y_{0}
    \end{array}\right.
    $$

    时有 $f\left(a_{11}, a_{12}, \cdots, a_{33}\right)=f\left(a_{11}^{\prime}, a_{12}^{\prime}, \cdots, a_{33}^{\prime}\right)$，则这个函数 $f$ 称作二次曲线在刚体变换下的不变量；若函数 $f$ 的值只是经过旋转变换

    $$
    \left\{\begin{array}{l}
    x^{\prime}=x \cos \alpha-y \sin \alpha \\
    y^{\prime}=x \sin \alpha+y \cos \alpha
    \end{array}\right.
    $$

    不变，则这个函数称作二次曲线在刚体变换下的半不变量

    1. 二次曲线在直角坐标变换下有三个不变量 $I_{1}, I_{2}, I_{3}$ 与一个半不变量 $K_{1}$．特别地，线心曲线在直角坐标变换下 $K_{1}$ 是不变量
    2. 若给出了二次曲线，则可用其不变量判断已知曲线的种类
        1. 椭圆：$I_{2}>0, I_{1} I_{3}<0$
        2. 虚椭圆：$I_{2}>0, I_{1} I_{3}>0$
        3. 点（或称一对交于实点的共轭虚直线）：$I_{2}>0, I_{3}=0$
        4. 双曲线：$I_{2}<0, I_{3} \neq 0$
        5. 一对相交直线：$I_{2}<0, I_{3}=0$
        6. 抛物线：$I_{2}=0, I_{3} \neq 0$
        7. 一对平行直线：$I_{2}=I_{3}=0, K_{1}<0$
        8. 一对平行的虚直线：$I_{2}=I_{3}=0, K_{1}>0$
        9. 一对重合的直线：$I_{2}=I_{3}=K_{1}=0$

        特别地，二次曲线表示两条直线（实的或虚的、不同的或重合的）的充要条件为 $I_{3}=0$

### 4.1.5 二次曲线的度量性质

## 4.2 二次曲线射影理论
### 4.2.1 二次曲线的射影定义
1. 二次曲线：二阶曲线与二级曲线的统称
    1. 二阶曲线：射影平面上齐次坐标 $\left(x_{1}, x_{2}, x_{3}\right)$ 满足三元二次方程 ${\displaystyle \sum_{i, j=1}^{3} a_{i j} x_{i} x_{j}=0 \ \left(a_{i j}=a_{j i}\right)}$ 的点的集合称为二阶曲线．其中 $a_{i j}$ 为实数且至少有一个不为零，以上方程称为二阶曲线的方程
        1. 两个不同中心的射影对应线束对应直线的交点构成一条二阶曲线
        2. 设有一条二阶曲线，它是由两个成射影对应的线束对应直线的交点构成的，则以这曲线上任两点为中心向曲线上的点投射直线，则可得到两个成射影对应的线束
            - 平面内五个点，若其中任意三点都不共线，则这五个点可确定唯一一条二阶曲线
            - 若从二阶曲线上任一点向此二阶曲线上四定点连四直线，则此四直线的交比为常数
        3. 在射影平面上，成射影对应的两个线束对应直线的交点的集合称为二阶曲线
    2. 二级曲线：射影平面上齐次线坐标 $\left[u_{1}, u_{2}, u_{3}\right]$ 满足三元二次方程 ${\displaystyle \sum_{i, j=1}^{3} a_{i j}^{\prime} u_{i} u_{j}=0 \ \left(a_{i j}^{\prime}=a_{j i}^{\prime}\right)}$ 的直线的集合称作二级曲线
    3. 二阶曲线与二级曲线的关系：一条非退化的二阶曲线的切线的集合是一条非退化的二级曲线；反之，一条非退化的二级曲线的切点的集合是一条非退化的二阶曲线
2. 如果一个 $n$ 点形（简单或完全的）的 $n$ 个顶点都在一条非退化的二阶曲线上，则称作二阶曲线的内接 $n$ 点形（简单或完全的）
    1. $\text{Pascal}$ 定理：对于任意一个内接于非退化的二阶曲线的简单六点形，其三对对边的交点在一条直线上，称该直线为 $\text{Pascal}$ 线
    2. $\text{Brianchon}$ 定理：对于任意一个外切于非退化的二级曲线的简单六线形，其三对对顶点的连线通过一个点，称该点为 $\text{Brianchon}$ 点

### 4.2.2 极点与极线
1. 调和共轭与共轭点：给定二阶曲线 $(c)$，如果两点 $P, Q$（$P$ 不在 $(c)$ 上）的连线与二阶曲线 $(c)$ 交于两点 $M_{1}, M_{2}$，且 $\left(M_{1} M_{2}, P Q\right)=-1$，则称 $P, Q$ 关于二阶曲线（$c$）调和共轭，或点 $Q$ 与点 $P$ 关于二阶曲线 $(c)$ 互为共轭点
    1. 不在二阶曲线上的两个点 $P\left(p_{1}, p_{2}, p_{3}\right), Q\left(q_{1}, q_{2}, q_{3}\right)$ 关于二阶曲线 ${\displaystyle S \equiv \sum a_{i j} x_{i} x_{j}=0}$ 成共轭点的充要条件是 $S_{p q}=0$
    2. 不在二阶曲线上的一个定点关于一条二阶曲线的调和共轭点的轨迹是一条直线
2. 极限与极点：定点 $P$ 关于二阶曲线的共轭点的轨迹是一条直线，这条直线称作 $P$ 点关于此二阶曲线的极线，$P$ 点称作这条直线关于此二阶曲线的极点
    1. 如果 $P$ 点在二阶曲线上，则点 $P$ 的极线即为二阶曲线在 $P$ 点处的切线
    2. 每条直线对于二阶曲线总有确定的极点
3. 配极原则：如果 $P$ 点的极线通过 $Q$ 点，则 $Q$ 点的极线也通过 $P$ 点
    1. 两点连线的极点是此二点极线的交点，两直线交点的极线是此二直线极点的连线
    2. 共线点的极线必共点，共点线的极点必共线
    3. 设 $P A, P B$ 为二阶曲线的切线，若其中 $A, B$ 为切点，则 $A B$ 为 $P$ 点的极线
4. 配极变换：射影平面内一点与其关于一条非退化的二阶曲线的极线相对应
    1. 在射影平面上，对于已知的一条非退化的二阶曲线而言，极点与极线构成点与直线之间的一一对．在此对应之下，射影平面上的每一个由点与直线构成的平面形 $F$ 对应另一个由直线与点构成的平面形 $F^{\prime}, F$ 和 $F^{\prime}$ 这样的一对图形称为互相配极的图形．特别地，若一个图形与其配极图形重合，则此图形称为自配极的
    2. 配极变换是一般的点线变换的特殊情况，后者是形如 ${\displaystyle \rho u_{i}=\sum_{j=1}^{3} a_{i j} x_{j}(i=1,2,3), \operatorname{det}\left(a_{i j}\right) \neq 0}$ 的变换

### 4.2.3 二次曲线的射影分类
1. 奇点：给定二阶曲线 ${\displaystyle S \equiv \sum_{i, j=1}^{3} a_{i j} x_{i} x_{j}=0 \ \left(a_{i j}=a_{j i}\right)}$，则满足方程组

    $$
    \left\{\begin{array}{l}
    a_{11} x_{1}+a_{12} x_{2}+a_{13} x_{3}=0 \\
    a_{21} x_{1}+a_{22} x_{2}+a_{23} x_{3}=0 \\
    a_{31} x_{1}+a_{32} x_{2}+a_{33} x_{3}=0
    \end{array}\right.
    $$

    的点 $P\left(x_{1}, x_{2}, x_{3}\right)$ 称作 $S=0$ 的奇点

    1. 对于非退化的二阶曲线，其系数行列式 $\operatorname{det}\left(a_{i j}\right) \neq 0$，因而方程组无非零解．所以二阶曲线非退化当且仅当其上没有奇点
    2. 一个点是奇点的充要条件是它没有对应的极线
    3. 退化的二阶曲线可能有唯一的奇点，也可能有无穷多奇点，它们在一条直线上
        1. 当秩为 $2$ 时，方程组有无穷多组解，此时有唯一奇点
        2. 当秩为 $1$ 时，方程组有无穷多组解，这些解满足一个一次方程，此时奇点都在一条直线上
    4. 凡奇点一定在退化的二阶曲线上

2. 设在射影坐标系 $\left[A_{1}, A_{2}, A_{3} ; E\right]$ 之下二阶曲线的方程为 ${\displaystyle S \equiv \sum_{i, j=1}^{3} a_{i j} x_{i} x_{j}=0 \ \left(a_{i j}=a_{j i}\right)}$
    1. $\operatorname{det}\left(a_{i j}\right) \neq 0$，即 $\left(a_{i j}\right)$ 的秩是 $3$．此二阶曲线是非退化的，其上无奇点
    2. $\operatorname{det}\left(a_{i j}\right)=0$，且 $\left(a_{i j}\right)$ 的秩是 $2$．这时曲线是退化的，且只有一个奇点
    3. $\operatorname{det}\left(a_{i j}\right)=0$，且 $\left(a_{i j}\right)$ 的秩是 $1$．此时二阶曲线是退化的，且有一直线上的点都是奇点

## 4.3 曲线的局部理论
### 4.3.1 曲线的微积分
1. 平面曲线的微积分
    1. 平面曲线弧长的微分 $\mathrm{d} s$
        1. 若曲线方程为 $y=f(x)(a \leqslant x \leqslant b)$ 且 $f^{\prime}(x)$ 在 $[a, b]$ 连续，则 $\mathrm{d} s=\pm \sqrt{1+f^{\prime 2}(x)} \mathrm{d} x$
        2. 若曲线方程为 $\left\{\begin{array}{l}x=\varphi(t) \\y=\psi(t)\end{array} \ (\alpha \leqslant t \leqslant \beta),\right.$，且有 $\varphi^{\prime}(t), \psi^{\prime}(t)$ 在 $[\alpha, \beta]$ 连续且不全为 $0$，则

            $$
            \mathrm{d} s=\pm \sqrt{\mathrm{d} x^{2}+\mathrm{d} y^{2}}=\pm \sqrt{\varphi^{\prime 2}(t)+\psi^{\prime 2}(t)} \mathrm{d} t
            $$

        3. 若曲线极坐标方程为 $\rho=\rho(\theta) \ (\alpha \leqslant \theta \leqslant \beta)$ 且 $\rho^{\prime}(\theta)$ 在 $[\alpha, \beta]$ 连续，此时

            $$
            \mathrm{d} s =\pm \sqrt{\mathrm{d} x^{2}+\mathrm{d} y^{2}}=\pm \sqrt{\rho^{2}(\theta)+\rho^{\prime 2}(\theta)} \mathrm{d} \theta
            $$

    2. 平面曲线弧长的积分：设曲线 $l$ 的参数方程为 $\left\{\begin{array}{l}x=x(t) \\y=y(t)\end{array}\right.$，设当 $t=\alpha, t=\beta$ 时（$\alpha<\beta$）对应的点为 $A, B$ 点．假设 $x(t), y(t)$ 在 $[\alpha, \beta]$ 上都有连续导数，则曲线 $l$ 上以 $A, B$ 为端点的一段弧长为 ${\displaystyle \int_{\alpha}^{\beta} \sqrt{\left[x^{\prime}(t)\right]^{2}+\left[y^{\prime}(t)\right]^{2}} \mathrm{d} t}$
        1. 设 $f(x)$ 在 $[a, b]$ 上有连续导数，将 $x$ 作为参数，推导出的弧长公式为 ${\displaystyle \int_{a}^{b} \sqrt{1+\left[f^{\prime}(x)\right]^{2}} \mathrm{d} x}$
        2. 设曲线段的极坐标方程为 $r=r(\theta) \ (\alpha \leqslant \theta \leqslant \beta)$ 且 $r'(\theta)$ 在 $[\alpha, \beta]$ 上连续，则弧长公式为 ${\displaystyle \int_{\alpha}^{\beta} \sqrt{\left[r^{\prime}(\theta)\right]^{2}+[r(\theta)]^{2}} \mathrm{d} \theta}$

2. 光滑曲线：若 $\boldsymbol{r}^{\prime}(t)=x^{\prime}(t) \boldsymbol{e}_1+y^{\prime}(t) \boldsymbol{e}_2+z^{\prime}(t) \boldsymbol{e}_3$ 在 $[a, b]$ 上连续，并且 $\boldsymbol{r}^{\prime}(t) \neq \mathbf{0} \ (t \in[a, b])$，则称曲线

    $$
    \Gamma: \boldsymbol{r}(t)=x(t) \boldsymbol{e}_1+y(t) \boldsymbol{e}_2+z(t) \boldsymbol{e}_3, a \leqslant t \leqslant b
    $$

    所确定的空间曲线为光滑曲线

    1. 切向量：$\Gamma$ 在 $P_{0}$ 点的切线的一个方向向量为 $\boldsymbol{r}^{\prime}\left(t_{0}\right)=\left(x^{\prime}\left(t_{0}\right), y^{\prime}\left(t_{0}\right), z^{\prime}\left(t_{0}\right)\right)$
    2. 法平面：过 $P_{0}$ 点且与切线垂直的平面 $x^{\prime}\left(t_{0}\right)\left(x-x_{0}\right)+y^{\prime}\left(t_{0}\right)\left(y-y_{0}\right)+z^{\prime}\left(t_{0}\right)\left(z-z_{0}\right)=0$ 或 $\boldsymbol r^{\prime}\left(t_{0}\right) \cdot\left(\boldsymbol x-\boldsymbol x_{0}\right)=0$
    3. 曲线的弧长：${\displaystyle s=\int_{a}^{b} \sqrt{[x^{\prime}(t)]^2+[y^{\prime}(t)]^2+[z^{\prime}(t)]^2} \mathrm{d} t}$

3. 第一类曲线积分：设 $L$ 是空间 $\mathbf{R}^{3}$ 上一条可求长的连续曲线，端点为 $A, B$，函数 $f(x, y, z)$ 在 $L$ 上有界．令 $A=P_{0}, B=P_{n}$，在 $L$ 上从 $A$ 到 $B$ 顺序地插入分点 $P_{1}, P_{2}, \cdots, P_{n-1}$，再分别在每个小弧段 $P_{i-1} P_{i}$ 上任取一点 $\left(\xi_{i}, \eta_{i}, \zeta_{i}\right)$，并记第 $i$ 个小弧段 $P_{i-1} P_{i}$ 的长度为 $\Delta s_{i}(i=1,2, \cdots, n)$．作和式 ${\displaystyle \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}, \zeta_{i}\right) \Delta s_{i}}$，如果当所有小弧段的最大长度 $\lambda$ 趋于零时，这个和式的极限存在且与分点 $\left\{P_{i}\right\}$ 的取法及 $P_{i-1} P_{i}$ 上的点 $\left(\xi_{i}, \eta_{i}, \zeta_{i}\right)$ 的取法无关，则称这个极限值为 $f(x, y, z)$ 在曲线 $L$ 上的第一类曲线积分，记为 ${\displaystyle \int_{L} f(x, y, z) \mathrm{d} s}$ 或 ${\displaystyle \int_{L} f(P) \mathrm{d} s}$，即

    $$
    \int_{L} f(x, y, z) \mathrm{d} s=\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}, \zeta_{i}\right) \Delta s_{i}
    $$

    其中称 $f(x, y, z)$ 为被积函数，$L$ 为积分路径

    1. 在平面情形下函数 $f(x, y)$ 在平面曲线 $L$ 上的第一类曲线积分记为 ${\displaystyle \int_{L} f(x, y) \mathrm{d} s}$
    2. 第一类曲线积分的性质
        1. 线性性：如果函数 $f, g$ 在 $L$ 上的第一类曲线积分存在，则对于任何常数 $\alpha, \beta, \alpha f+\beta g$ 在 $L$ 上的第一类曲线积分也存在，且有 ${\displaystyle \int_{L}(\alpha f+\beta g) \mathrm{d} s=\alpha \int_{L} f \mathrm{d} s+\beta \int_{L} g \mathrm{d} s}$
        2. 路径可加性：设曲线 $L$ 分成了两段 $L_{1}, L_{2}$，如果函数 $f$ 在 $L$ 上的第一类曲线积分存在，则它在 $L_{1}$ 和 $L_{2}$ 上的第一类曲线积分也存在；反之如果函数 $f$ 在 $L_{1}$ 和 $L_{2}$ 上的第一类曲线积分存在，则它在 $L$ 上的第一类曲线积分也存在．并有 ${\displaystyle \int_{L} f \mathrm{d} s=\int_{L_{1}} f \mathrm{d} s+\int_{L_{2}} f \mathrm{d} s}$
    3. 第一类曲线积分的计算：设 $L$ 为光滑曲线，函数 $f(x, y, z)$ 在 $L$ 上连续，则 $f(x, y, z)$ 在 $L$ 上的第一类曲线积分存在且

        $$
        \int_{L} f(x, y, z) \mathrm{d} s=\int_{\alpha}^{\beta} f(x(t), y(t), z(t)) \sqrt{[x^{\prime}(t)]^2+[y^{\prime}(t)]^2+[z^{\prime}(t)]^2} \mathrm{d} t
        $$

4. 第二类曲线积分：设 $L$ 为一条定向的光滑曲线，起点为 $A$，终点为 $B$．在 $L$ 上每一点取单位切向量 $\boldsymbol{\tau}=(\cos \alpha, \cos \beta, \cos \gamma)$，使它与 $L$ 的定向相一致．设 $\boldsymbol{f}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3$ 是定义在 $L$ 上的向量值函数，则称

    $$
    \int_{L} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s=\int_{L}[P(x, y, z) \cos \alpha+Q(x, y, z) \cos \beta+R(x, y, z) \cos \gamma] \mathrm{d} s
    $$

    为 $\boldsymbol f$ 在 $L$ 上的第二类曲线积分．记 $1-$形式 $\omega=P(x, y, z) \mathrm{d} x+Q(x, y, z) \mathrm{d} y+R(x, y, z) \mathrm{d} z$，则第二类曲线积分也可记为

    $$
    \int_{L} \omega=\int_{L} P(x, y, z) \mathrm{d} x+Q(x, y, z) \mathrm{d} y+R(x, y, z) \mathrm{d} z=\int_{L} \boldsymbol f \cdot \mathrm{d} \boldsymbol s
    $$

    1. 如果 $L$ 为 $x y$ 平面上的定向光滑曲线段，则第二类曲线积分就简化为

        $$
        \begin{aligned}
        \int_{L} P(x, y) \mathrm{d} x+Q(x, y) \mathrm{d} y & =\int_{L}[P(x, y) \cos \alpha+Q(x, y) \cos \beta] \mathrm{d} s \\
        & =\int_{L}[P(x, y) \cos \alpha+Q(x, y) \sin \alpha] \mathrm{d} s
        \end{aligned}
        $$

        其中 $\alpha$ 为 $L$ 的沿 $L$ 方向的切向量与 $x$ 轴正向的夹角

    2. 第二类曲线积分的性质
        1. 方向性：设向量值函数 $\boldsymbol f$ 在定向的分段光滑曲线 $L$ 上的第二类曲线积分存在．记 $-L$ 是定向曲线 $L$ 的反向曲线，则 $\boldsymbol f$ 在 $-L$ 上的第二类曲线积分也存在，且有 ${\displaystyle \int_{L} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s=-\int_{-L} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s}$
        2. 线性性：设两个向量值函数 $\boldsymbol f, \boldsymbol g$ 在定向的分段光滑曲线 $L$ 上的第二类曲线积分存在，则对于任何常数 $\alpha, \beta, \alpha \boldsymbol f+\beta \boldsymbol g$ 在 $L$ 上的第二类曲线积分也存在，且有 ${\displaystyle \int_{L}(\alpha \boldsymbol f+\beta \boldsymbol g) \cdot \boldsymbol \tau \mathrm{d} s=\alpha \int_{L} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s+\beta \int_{L} \boldsymbol g \cdot \boldsymbol \tau \mathrm{d} s}$
        3. 路径可加性：设定向分段光滑曲线 $L$ 分成了两段 $L_{1}$ 和 $L_{2}$，它们与 $L$ 的取向相同（记为 $L=L_{1}+L_{2}$），如果向量值函数 $\boldsymbol{f}$ 在 $L$ 上的第二类曲线积分存在，则它在 $L_{1}$ 和 $L_{2}$ 上的第二类曲线积分也存在．反之如果 $\boldsymbol f$ 在 $L_{1}$ 和 $L_{2}$ 上的第二类曲线积分存在，则它在 $L$ 上的第二类曲线积分也存在，且有 ${\displaystyle \int_{L} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s=\int_{L_{1}} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s+\int_{L_{2}} \boldsymbol f \cdot \boldsymbol \tau \mathrm{d} s}$
    3. 第二类曲线积分的计算
        1. 设光滑曲线 $L$ 的方程为

            $$
            \left\{\begin{aligned}
            & x=x(t) \\
            & y=y(t) \\
            & z=z(t)
            \end{aligned}\right. \quad t: a \rightarrow b
            $$

            这里 $t: a \rightarrow b$ 表示参数 $t$ 从 $a$ 变化到 $b$，则有

            $$
            \int_{L} \omega=\int_{a}^{b}\left[P(x(t), y(t), z(t)) x^{\prime}(t)+Q(x(t), y(t), z(t)) y^{\prime}(t)+R(x(t), y(t), z(t)) z^{\prime}(t)\right] \mathrm{d} t
            $$

        2. 如果 $L$ 的方程是 $y=y(x), z=z(x) \ (x: a \rightarrow b)$，则

            $$
            \int_{L} \omega = \int_{a}^{b}\left[P(x, y(x), z(x))+Q(x, y(x), z(x)) y^{\prime}(x)+R(x, y(x), z(x)) z^{\prime}(x)\right] \mathrm{d} x
            $$

        3. 如果 $L$ 为 $x y$ 平面上光滑曲线，其方程为 $x=x(t), y=y(t) \ (t: a \rightarrow b)$，则

            $$
            \int_{L} P(x, y) \mathrm{d} x+Q(x, y) \mathrm{d} y=\int_{a}^{b}\left[P(x(t), y(t)) x^{\prime}(t)+Q(x(t), y(t)) y^{\prime}(t)\right] \mathrm{d} t
            $$

5. $\text{Green}$ 公式：设 $D$ 为平面上由光滑或分段光滑的简单闭曲线所围的单连通闭区域，如果函数 $P(x, y)$, $Q(x, y)$ 在 $D$ 上具有连续偏导数，那么

    $$
    \int_{\partial D} P \mathrm{d} x+Q \mathrm{d} y=\iint_{D}\left(\dfrac{\partial Q}{\partial x}-\dfrac{\partial P}{\partial y}\right) \mathrm{d} x \mathrm{d} y
    $$

    其中 $\partial D$ 取正向，即诱导定向

    1. 简单闭曲线：设 $L$ 为平面上的一条曲线，其方程是 $\boldsymbol{r}(t)=x(t) \boldsymbol e_1+y(t) \boldsymbol e_2 \ (\alpha \leqslant t \leqslant \beta)$．如果 $\boldsymbol{r}(\alpha)=$ $\boldsymbol{r}(\beta)$，而且当 $t_{1}, t_{2} \in(\alpha, \beta), t_{1} \neq t_{2}$ 时总有 $\boldsymbol{r}\left(t_{1}\right) \neq \boldsymbol{r}\left(t_{2}\right)$，则称 $L$ 为简单闭曲线或 $\text{Jordan}$ 曲线
        1. 连通区域：设 $D$ 为平面上的一个区域，如果 $D$ 内的任意一条封闭曲线都可以不经过 $D$ 外的点而连续地收缩成 $D$ 中一点，那么 $D$ 称为单连通区域，否则称为复连通区域
        2. 诱导方向：对于平面区域 $D$，如果沿 $\partial D$ 的某个方向行走时，$D$ 总是在左边，则称这个方向为 $D$ 的诱导定向，带有这样定向的 $\partial D$ 称为 $D$ 的正向边界
    2. $\text{Green}$ 公式说明了有界闭区域上的二重积分与沿区域边界的第二类曲线积分的关系
        1. 记取诱导定向的 $\partial D$ 上的单位切向量为 $\boldsymbol{\tau}$，单位外法向量为 $\boldsymbol{n}$，那么

            $$
            \iint_{D}\left(\dfrac{\partial F}{\partial x}+\dfrac{\partial G}{\partial y}\right) \mathrm{d} x \mathrm{d} y =\int_{\partial D}[F \cos (\boldsymbol{n}, x)+G \cos (\boldsymbol{n}, y)] \mathrm{d} s
            $$

        2. $\text{Green}$ 公式是 $\text{Newton}-\text{Leibniz}$ 公式的推广：设 $f(x)$ 在 $[a, b]$ 上具有连续导数，取 $D=[a, b] \times[0,1]$，在 $\text{Green}$ 公式中取 $P=0, Q=f(x)$，则有

            $$
            \iint_{D} f^{\prime}(x) \mathrm{d} x \mathrm{d} y=\int_{\partial D} f(x) \mathrm{d} y
            $$

        3. 设 $D$ 为平面上的有界闭区域，其边界为分段光滑的简单闭曲线，则其面积为

            $$
            S=\int_{\partial D} x \mathrm{d} y=-\int_{\partial D} y \mathrm{d} x=\dfrac{1}{2} \int_{\partial D} x \mathrm{d} y-y \mathrm{d} x
            $$

    3. $\text{Green}$ 定理：设 $D$ 为平面上的单连通区域，$P(x, y), Q(x, y)$ 在 $D$ 上具有连续偏导数．则下面四个命题等价
        1. 对于 $D$ 内的任意一条光滑（或分段光滑）闭曲线 $L$ 有 ${\displaystyle \int_{L} P \mathrm{d} x+Q \mathrm{d} y=0}$
        2. 曲线积分 ${\displaystyle \int_{L} P \mathrm{d} x+Q \mathrm{d} y}$ 与路径无关，即对于 $D$ 内任意两点 $A, B$，积分值 ${\displaystyle \int_{L} P \mathrm{d} x+Q \mathrm{d} y}$ 只与 $A, B$ 两点有关，而与从 $A$ 到 $B$ 的路径 $L$ 无关
        3. 存在 $D$ 上的可微函数 $U(x, y)$，使得 $\mathrm{d} U=P \mathrm{d} x+Q \mathrm{d} y$
        4. 在 $D$ 内有 $\dfrac{\partial P}{\partial y}=\dfrac{\partial Q}{\partial x}$
    4. 设 $D$ 为平面单连通区域，$P(x, y)$ 和 $Q(x, y)$ 为 $D$ 上的连续函数．那么曲线积分 $\int_{L} P \mathrm{d} x+Q \mathrm{d} y$ 与路径无关的充分必要条件是在 $D$ 上存在 $P \mathrm{d} x+Q \mathrm{d} y$ 的一个原函数 $U(x, y)$．这时，对于 $D$ 内任意两点 $A\left(x_{A}, y_{A}\right), B\left(x_{B}, y_{B}\right)$，计算公式

        $$
        \int_{\overset{\LARGE{\frown}}{AB}} P \mathrm{d} x+Q \mathrm{d} y=U\left(x_{B}, y_{B}\right)-U\left(x_{A}, y_{A}\right)
        $$

        成立，其中 $\overset{\LARGE{\frown}}{AB}$ 为任意从 $A$ 到 $B$ 的路径

### 4.3.2 曲线论基本定理
