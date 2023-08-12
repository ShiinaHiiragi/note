# 5 曲面方程与曲面论

## 5.1 二次曲面一般理论
### 5.1.1 符号与记法
在空间，由三元二次方程 $a_{11} x^{2}+a_{22} y^{2}+a_{33} z^{2}+2 a_{12} x y+2 a_{13} x z+2 a_{23} y z+2 a_{14} x+2 a_{24} y+2 a_{34} z+a_{44}=0$ 所表示的曲面称作二次曲面

1. 引进如下记号：

    $$
    \begin{aligned}
    F(x, y, z) & \equiv  a_{11} x^{2}+a_{22} y^{2}+a_{33} z^{2}+2 a_{12} x y+2 a_{13} x z+2 a_{23} y z+2 a_{14} x+2 a_{24} y+2 a_{34} z+a_{44} \\
    F_{1}(x, y, z) & \equiv a_{11} x+a_{12} y+a_{13} z+a_{14} \\
    F_{2}(x, y, z) & \equiv a_{12} x+a_{22} y+a_{23} z+a_{24} \\
    F_{3}(x, y, z) & \equiv a_{13} x+a_{23} y+a_{33} z+a_{34} \\
    F_{4}(x, y, z) & \equiv a_{14} x+a_{24} y+a_{34} z+a_{44} \\
    \Phi(x, y, z) & \equiv a_{11} x^{2}+a_{22} y^{2}+a_{33} z^{2}+2 a_{12} x y+2 a_{13} x z+2 a_{23} y z \\
    \Phi_{1}(x, y, z) & \equiv a_{11} x+a_{12} y+a_{13} z \\
    \Phi_{2}(x, y, z) & \equiv a_{12} x+a_{22} y+a_{23} z \\
    \Phi_{3}(x, y, z) & \equiv a_{13} x+a_{23} y+x_{33} z \\
    \Phi_{4}(x, y, z) & \equiv a_{14} x+a_{24} y+a_{34} z
    \end{aligned}
    $$

    则二次曲面方程写作 $F(x, y, z) \equiv x F_{1}(x, y, z)+y F_{2}(x, y, z)+z F_{3}(x, y, z)+F_{4}(x, y, z) = 0$

2. 将 $F(x, y, z)$ 的系数排成的矩阵

    $$
    \boldsymbol{A}=\left[\begin{array}{llll}
    a_{11} & a_{12} & a_{13} & a_{14} \\
    a_{12} & a_{22} & a_{23} & a_{24} \\
    a_{13} & a_{23} & a_{33} & a_{34} \\
    a_{14} & a_{24} & a_{34} & a_{44}
    \end{array}\right]
    $$

    称作 $F(x, y, z)$ 的矩阵，用 $\Phi(x, y, z)$ 的系数所排成的矩阵

    $$
    \boldsymbol{A}^{*}=\left[\begin{array}{lll}
    a_{11} & a_{12} & a_{13} \\
    a_{12} & a_{22} & a_{23} \\
    a_{13} & a_{23} & a_{33}
    \end{array}\right]
    $$

    称作 $\Phi(x, y, z)$ 的矩阵，并定义如下符号：

    $$
    \begin{aligned}
    & I_{1}=a_{11}+a_{22}+a_{33} \\
    & I_{2}=\left|\begin{array}{ll}a_{11} & a_{12} \\a_{12} & a_{22}\end{array}\right|+\left|\begin{array}{ll}a_{11} & a_{13} \\a_{13} & a_{33}\end{array}\right|+\left|\begin{array}{ll}a_{22} & a_{23} \\a_{23} & a_{33}\end{array}\right| \\
    & I_{3}=\left|\begin{array}{lll}a_{11} & a_{12} & a_{13} \\a_{12} & a_{22} & a_{23} \\a_{13} & a_{23} & a_{33}\end{array}\right| \\
    & I_{4}=\left|\begin{array}{llll}a_{11} & a_{12} & a_{13} & a_{14} \\a_{12} & a_{22} & a_{23} & a_{24} \\a_{13} & a_{23} & a_{33} & a_{34} \\a_{14} & a_{24} & a_{34} & a_{44}\end{array}\right| \\
    & K_{1}=\left|\begin{array}{ll}a_{11} & a_{14} \\a_{14} & a_{44}\end{array}\right|+\left|\begin{array}{ll}a_{22} & a_{24} \\a_{24} & a_{44}\end{array}\right|+\left|\begin{array}{ll}a_{33} & a_{34} \\a_{34} & a_{44}\end{array}\right| \\
    & K_{2}=\left|\begin{array}{lll}a_{11} & a_{12} & a_{14} \\a_{12} & a_{22} & a_{24} \\a_{14} & a_{24} & a_{44}\end{array}\right|+\left|\begin{array}{lll}a_{11} & a_{13} & a_{14} \\a_{13} & a_{33} & a_{34} \\a_{14} & a_{34} & a_{44}\end{array}\right|+\left|\begin{array}{lll}a_{22} & a_{23} & a_{24} \\a_{23} & a_{33} & a_{34} \\a_{24} & a_{34} & a_{44}\end{array}\right|
    \end{aligned}
    $$

### 5.1.2 二次曲面的渐进方向
1. 二次曲面 $F(x, y, z) = 0$ 与直线 $\left\{\begin{array}{l} x=x_{0}+X t \\ y=y_{0}+Y t \\ z=z_{0}+Z t \end{array}\right.$ 联立得到方程

    $$
    \begin{aligned}
    \Phi & (X, Y, Z) t^{2}+2\left[X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right)\right] t+F\left(x_{0}, y_{0}, z_{0}\right)=0
    \end{aligned}
    $$

    1. $\Phi(X, Y, Z) \neq 0$ 时，判别式 $\Delta={\left[X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right)\right]^{2} }-\Phi(X, Y, Z) F\left(x_{0}, y_{0}, z_{0}\right)$
        1. $\Delta>0$，此时方程有两个不同的实根，因此直线与二次曲面有两个不同的实交点
        2. $\Delta=0$，方程有二重根，此时直线与二次曲面有两个相互重合的实交点
        3. $\Delta<0$，方程有一对共轭的虚根，因此直线与二次曲面没有实交点，而有一对共轭的虚交点

        此时将由这两点决定的线段称作二次曲面的弦

    2. $\Phi(X, Y, Z)=0$ 时
        1. $X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right) \neq 0$，此时方程是关于 $t$ 的一次方程，直线与二次曲面有惟一交点
        2. $X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right)=0$，而 $F\left(x_{0}, y_{0}, z_{0}\right) \neq 0$，此时方程无解，两者无交点
        3. $X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right)=$ $F\left(x_{0}, y_{0}, z_{0}\right)=0$，此时方程为恒等式，直线上的任何点都在二次曲面上

2. 渐近方向：满足条件 $\Phi(X, Y, Z)=0$ 的方向 $X: Y: Z$ 称作二次曲面的渐近方向，否则称作非渐近方向
3. 中心：若点 $C$ 是二次曲面的通过它的所有弦的中点，则点 $C$ 称作二次曲面的中心
    1. 点 $C\left(x_{0}, y_{0}, z_{0}\right)$ 是二次曲面的中心当且仅当

        $$
        \left\{\begin{array}{l}
        F_{1}\left(x_{0}, y_{0}, z_{0}\right) \equiv a_{11} x_{0}+a_{12} y_{0}+a_{13} z_{0}+a_{14}=0 \\
        F_{2}\left(x_{0}, y_{0}, z_{0}\right) \equiv a_{12} x_{0}+a_{22} y_{0}+a_{23} z_{0}+a_{24}=0 \\
        F_{3}\left(x_{0}, y_{0}, z_{0}\right) \equiv a_{13} x_{0}+a_{23} y_{0}+a_{33} z_{0}+a_{34}=0
        \end{array}\right.
        $$

    2. 二次曲面根据其中心可以分为如下种类
        1. 中心二次曲面：有惟一中心的二次曲面，此时 $I_3 \neq 0$
        2. 非中心二次曲面：无心曲面、线心曲面与面心曲面的统称，此时 $I_3 = 0$
            - 无心二次曲面：没有中心的二次曲面
            - 线心二次曲面：有无数中心且构成一条直线的二次曲面
            - 面心二次曲面：有无数中心且构成一个平面的二次曲面

4. 切线与切平面
    1. 切线：若直线与二次曲面相交于两个相互重合的点，则这条直线称作二次曲面的切线，重合的交点称作切点．如果直线全部在二次曲面上，则这条直线也称作二次曲面的切线，直线上的每一点都是切点
        1. 二次曲面的直母线也是切线
        2. 通过曲面上的点 $\left(x_{0}, y_{0}, z_{0}\right)$ 的直线成为曲面在该点处切线当且仅当

            $$
            X F_{1}\left(x_{0}, y_{0}, z_{0}\right)+Y F_{2}\left(x_{0}, y_{0}, z_{0}\right)+Z F_{3}\left(x_{0}, y_{0}, z_{0}\right)=0
            $$

    2. 切平面：二次曲面在一点处的一切切线上的点构成的平面称作二次曲面的切平面，这一点称作切点
        1. 奇异点：二次曲面上满足条件 $F_{1}\left(x_{0}, y_{0}, z_{0}\right)=F_{2}\left(x_{0}, y_{0}, z_{0}\right)=F_{3}\left(x_{0}, y_{0}, z_{0}\right)=0$ 的点 $\left(x_{0}, y_{0}, z_{0}\right)$ 称作二次曲面的奇异点，简称奇点．二次曲面的非奇异点称作二次曲面的正则点
        2. 若 $\left(x_{0}, y_{0}, z_{0}\right)$ 是二次曲面的正则点，则曲面在点 $\left(x_{0}, y_{0}, z_{0}\right)$ 处存在惟一的切平面，其方程为

            $$
            (x-x_{0}) F_{1}\left(x_{0}, y_{0}, z_{0}\right)+\left(y-y_{0}\right) F_{2}\left(x_{0}, y_{0}, z_{0}\right)+\left(z-z_{0}\right) F_{3}\left(x_{0}, y_{0}, z_{0}\right)=0
            $$

### 5.1.3 二次曲面的径面
1. 径面：二次曲面的平行弦的中点轨迹称作共轭于平行弦的径面，而平行弦称作径面的共轭弦，平行弦的方向称作径面的共轭方向
    1. 二次曲面一族平行弦的中点轨迹是一个平面
    2. 二次曲面的任何径面一定通过其中心（假如曲面的中心存在）
        1. 线心二次曲面的任何径面通过其中心线
        2. 面心二次曲面的径面与其中心平面重合
2. 奇异方向：满足条件

    $$
    \left\{\begin{array}{l}
    \Phi_{1}(X, Y, Z) \equiv a_{11} X+a_{12} Y+a_{13} Z=0 \\
    \Phi_{2}(X, Y, Z) \equiv a_{12} X+a_{22} Y+a_{23} Z=0 \\
    \Phi_{3}(X, Y, Z) \equiv a_{13} X+a_{23} Y+a_{33} Z=0
    \end{array}\right.
    $$

    的渐近方向 $X: Y: Z$ 称作二次曲面的奇异方向，简称奇向

    1. 二次曲面有奇向的充要条件是 $I_{3}=0$，有且仅有中心二次曲面没有奇向
    2. 二次曲面的奇向平行于它的任意径面

3. 主径面：若二次曲面的径面垂直于其所共轭的方向，则该径面就称作二次曲面的主径面．二次曲面主径面的共轭方向称作二次曲面的主方向，否则称为非奇主方向
    1. 二次曲面至少有一个主径面
    2. $X: Y: Z$ 成为二次曲面主方向的条件是存在 $\lambda$，使得

        $$
        \left\{\begin{array}{l}
        a_{11} X+a_{12} Y+a_{13} Z=\lambda X \\
        a_{12} X+a_{22} Y+a_{23} Z=\lambda Y \\
        a_{13} X+a_{23} Y+a_{33} Z=\lambda Z
        \end{array}\right.
        $$

        成立．称

        $$
        \left|\begin{array}{ccc}
        a_{11}-\lambda & a_{12} & a_{13} \\
        a_{12} & a_{22}-\lambda & a_{23} \\
        a_{13} & a_{23} & a_{33}-\lambda
        \end{array}\right|=0
        $$

        或 $-\lambda^{3}+I_{1} \lambda^{2}-I_{2} \lambda+I_{3}=0$ 为二次曲面的特征方程，特征方程的根称作二次曲面的特征根

        1. 当 $\lambda=0$ 时，与其相应的主方向为二次曲面的奇向；当 $\lambda \neq 0$ 时，与其相应的主方向为非奇主方向
        2. 二次曲面的特征根都是实数
        3. 特征方程的三个根至少有一个不为零，因而二次曲面总有一个非奇主方向

### 5.1.4 二次曲面的分类
1. 适当选取坐标系，则二次曲面的方程总可以写成下面十七种标准方程的一种形式
    1. 椭球面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}+\dfrac{z^{2}}{c^{2}}=1$
    2. 虚椭球面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}+\dfrac{z^{2}}{c^{2}}=-1$
    3. 点（或称虚母线二次锥面）：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}+\dfrac{z^{2}}{c^{2}}=0$
    4. 单叶双曲面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=1$
    5. 双叶双曲面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=-1$
    6. 二次锥面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}-\dfrac{z^{2}}{c^{2}}=0$
    7. 椭圆抛物面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=2 z$
    8. 双曲抛物面：$\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=2 z$
    9. 椭圆柱面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=1$
    10. 虚椭圆柱面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=-1$
    11. 交于一条实直线的一对共轭虚平面：$\dfrac{x^{2}}{a^{2}}+\dfrac{y^{2}}{b^{2}}=0$
    12. 双曲柱面$\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=1$
    13. 一对相交平面：$\dfrac{x^{2}}{a^{2}}-\dfrac{y^{2}}{b^{2}}=0$
    14. 拋物柱面：$x^{2}=2 p y$
    15. 一对平行平面：$x^{2}=a^{2}$
    16. 一对平行的共轭虚平面：$x^{2}=-a^{2}$
    17. 一对重合平面：$x^{2}=0$

2. 二次曲面方程与不变量：由 $F(x, y, z)$ 的系数组成的一个非常数函数 $f$，若经过刚体变换

    $$
    \left\{\begin{array}{l}
    x=x^{\prime} \cos \alpha_{1}+y^{\prime} \cos \alpha_{2}+z^{\prime} \cos \alpha_{3}+x_{0} \\
    y=x^{\prime} \cos \beta_{1}+y^{\prime} \cos \beta_{2}+z^{\prime} \cos \beta_{3}+y_{0} \\
    z=x^{\prime} \cos \gamma_{1}+y^{\prime} \cos \gamma_{2}+z^{\prime} \cos \gamma_{3}+z_{0}
    \end{array}\right.
    $$

    时有 $f\left(a_{11}, a_{12}, \cdots, a_{44}\right)=f\left(a_{11}^{\prime}, a_{12}^{\prime}, \cdots, a_{44}^{\prime}\right)$，则这个函数 $f$ 称作二次曲面在刚体变换下的不变量；若函数 $f$ 的值只是经过旋转变换

    $$
    \left\{\begin{array}{l}
    x=x^{\prime} \cos \alpha_{1}+y^{\prime} \cos \alpha_{2}+z^{\prime} \cos \alpha_{3} \\
    y=x^{\prime} \cos \beta_{1}+y^{\prime} \cos \beta_{2}+z^{\prime} \cos \beta_{3} \\
    z=x^{\prime} \cos \gamma_{1}+y^{\prime} \cos \gamma_{2}+z^{\prime} \cos \gamma_{3}
    \end{array}\right.
    $$

    不变，则这个函数称作二次曲面在刚体变换下的半不变量

    1. 二次曲面在空间直角坐标变换下有四个不变量 $I_{1}, I_{2}, I_{3}, I_{4}$ 与两个半不变量 $K_{1}, K_{2}$
    2. 适当选取坐标系，则二次曲面的方程总可化为下列五个简化方程中的一个：
        1. $a_{11} x^{2}+a_{22} y^{2}+a_{33} z^{2}+a_{44}=0, a_{11} a_{22} a_{33} \neq 0$，此时 $I_{3} \neq 0$
        2. $a_{11} x^{2}+a_{22} y^{2}+2 a_{34} z=0, a_{11} a_{22} a_{34} \neq 0$，此时 $I_{3}=0, I_{4} \neq 0$
        3. $a_{11} x^{2}+a_{22} y^{2}+a_{44}=0, a_{11} a_{22} \neq 0$，此时 $I_{3}=0, I_{4}^{\prime}=0, I_{2} \neq 0$
        4. $a_{11} x^{2}+2 a_{24} y=0, a_{11} a_{24} \neq 0$，此时 $I_{3}=0, I_{4}=0, I_{2}=0, K_{2} \neq 0$
        5. $a_{11} x^{2}+a_{44}=0, a_{11} \neq 0$，此时 $I_{3}=0, I_{4}=0, I_{2}=0, K_{2}=0$
    3. 若给出了二次曲面，则用其不变量来判断已知曲面为何种曲面的条件为
        1. 椭球面：$I_{2}>0, I_{1} I_{3}>0, I_{4}<0$
        2. 虚椭球面：$I_{2}>0, I_{1} I_{3}>0, I_{4}>0$
        3. 点（或称虚母线二次锥面）：$I_{2}>0, I_{1} I_{3}>0, I_{4}=0$
        4. 单叶双曲面：$I_{3} \neq 0, I_{2} \leqslant 0 \ (\textsf{或 } I_{1} I_{3} \leqslant 0), I_{4}>0$
        5. 双叶双曲面：$I_{3} \neq 0, I_{2} \leqslant 0 \ (\textsf{或 } I_{1} I_{3} \leqslant 0), I_{4}<0$
        6. 二次雉面：$I_{3} \neq 0, I_{2} \leqslant 0 \ (\textsf{或 } I_{1} I_{3} \leqslant 0), I_{4}=0$
        7. 椭圆抛物面：$I_{3}=0, I_{4}<0$
        8. 双曲抛物面 ：$I_{3}=0, I_{4}>0$
        9. 椭圆柱面：$I_{3}=I_{4}=0, I_{2}>0, I_{1} K_{2}<0$
        10. 虚椭圆柱面：$I_{3}=I_{4}=0, I_{2}>0, I_{1} K_{2}>0$
        11. 交于一条实直线的一对共轭虚平面：$I_{3}=I_{4}=K_{2}=0, I_{2}>0$
        12. 双曲柱面：$I_{3}=I_{4}=0, I_{2}<0, K_{2} \neq 0$
        13. 一对相交平面：$I_{3}=I_{4}=K_{2}=0, I_{2}<0$
        14. 抛物柱面：$I_{3}=I_{4}=I_{2}=0, K_{2} \neq 0$
        15. 一对平行平面：$I_{3}=I_{4}=I_{2}=K_{2}=0, K_{1}<0$
        16. 一对平行的共轭虚平面：$I_{3}=I_{4}=I_{2}=K_{2}=0, K_{1}>0$
        17. 一对重合平面：$I_{3}=I_{4}=I_{2}=K_{2}=K_{1}=0$

## 5.2 二次曲面射影理论

## 5.3 二次超曲面
### 5.3.1 二次超曲面射影分类

### 5.3.2 二次超曲面仿射理论

### 5.3.3 Euclid 空间的二次超曲面

## 5.4 曲面的局部理论
### 5.4.1 曲面的微积分
1. 平面图形的面积：如果一块图形是由连续曲线 $y=f_{1}(x), y=f_{2}(x)$ 与 $x=a, x=b \ (a<b)$ 所围成，且在 $[a, b]$ 上有 $f_{1}(x) \leqslant f_{2}(x)$，则图形的面积为 ${\displaystyle \int_{a}^{b}\left[f_{2}(x)-f_{1}(x)\right] \mathrm{d} x}$
    1. 若曲线方程为参数形式 $\left\{\begin{array}{l}x=x(t) \\y=y(t)\end{array}\right.$，其中 $\alpha \leqslant t \leqslant \beta$．设 $x(t)$ 随 $t$ 的增加而增加且 $x(\alpha)=a, x(\beta)=b$．$x(t), y(t)$ 及 $x^{\prime}(t)$ 在 $[\alpha, \beta]$ 连续，则由曲线 $x=x(t), y=y(t)$ 与 $x$ 轴及直线 $x=a, x=b$ 所围成的图形面积为 ${\displaystyle \int_{\alpha}^{\beta}|y(t)| x^{\prime}(t) \mathrm{d} t}$
    2. 由射线 $\theta=\alpha, \theta=\beta \ (\alpha<\beta)$ 及两条连续曲线 $r=r_{1}(\theta), r=r_{2}(\theta)\left(r_{2} \ (\theta) \leqslant r_{1}(\theta)\right)$ 所围成的图形的面积为 ${\displaystyle \dfrac{1}{2} \int_{\alpha}^{\beta}\left[r_{1}^{2}(\theta)-r_{2}^{2}(\theta)\right] \mathrm{d} \theta}$
2. 光滑曲面：设曲面 $S: F(x, y, z) = 0 \ ((x, y, z) \in D)$ 具有连续变动的切平面，即切平面位置随切点在曲面上的位置变动而连续变动，则称曲面 $S$ 为光滑曲面．设 $P_0(x_0, y_0, z_0)$ 为 $S$ 上一点
    1. 切平面：$F_{x}\left(P_{0}\right)\left(x-x_{0}\right)+F_{y}\left(P_{0}\right)\left(y-y_{0}\right)+F_{z}\left(P_{0}\right)\left(z-z_{0}\right)=0$
    2. 法向量：$\boldsymbol{n}=\left(F_{x}\left(P_{0}\right), F_{y}\left(P_{0}\right), F_{z}\left(P_{0}\right)\right)$，因此曲面 $S$ 在 $P_{0}$ 点的法线方程为 $\dfrac{x-x_{0}}{F_{x}\left(P_{0}\right)}=\dfrac{y-y_{0}}{F_{x}\left(P_{0}\right)}=\dfrac{z-z_{0}}{F_{z}\left(P_{0}\right)}$
3. 第一类曲面积分：设曲面 $\Sigma$ 为有界光滑或分片光滑曲面，函数 $z=f(x, y, z)$ 在 $\Sigma$ 上有界．将曲面 $\Sigma$ 用一个光滑曲线网分成 $n$ 片小曲面 $\Delta \Sigma_{1}, \Delta \Sigma_{2}, \cdots, \Delta \Sigma_{n}$，并记 $\Delta \Sigma_{i}$ 的面积为 $\Delta S_{i}$．在每片 $\Delta \Sigma_{i}$ 上任取一点 $\left(\xi_{i}, \eta_{i}, \zeta_{i}\right)$，作和式 ${\displaystyle \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}, \zeta_{i}\right) \Delta S_{i}}$．如果当所有小曲面 $\Delta \Sigma_{i}$ 的最大直径 $\lambda$ 趋于零时，这个和式的极限存在，且极限值与小曲面的分法和点 $\left(\xi_{i}, \eta_{i}, \zeta_{i}\right)$ 的取法无关，则称此极限值为 $f(x, y, z)$ 在曲面 $\Sigma$ 上的第一类曲面积分，记为 ${\displaystyle \iint_{\Sigma} f(x, y, z) \mathrm{d} S}$，即

    $$
    \iint_{\Sigma} f(x, y, z) \mathrm{d} S=\lim _{\lambda \rightarrow 0} \sum_{i=1}^{n} f\left(\xi_{i}, \eta_{i}, \zeta_{i}\right) \Delta S_{i}
    $$

    其中 $f(x, y, z)$ 称为被积函数，$\Sigma$ 称为积分曲面

    1. 设 $\Sigma$ 的方程为

        $$
        \left\{\begin{aligned}
        & x=x(u, v) \\
        & y=y(u, v) \\
        & z=z(u, v)
        \end{aligned}\right. \quad (u, v) \in D
        $$

        此处 $D$ 为 $u v$ 平面上具有分段光滑边界的区域，进一步设这个映射是一一对应的，那么如果 $f(x, y, z)$ 在 $\Sigma$ 上连续，则它在 $\Sigma$ 上的第一类曲面积分存在，且有

        $$
        \iint_{\Sigma} f(x, y, z) \mathrm{d} S=\iint_{D} f(x(u, v), y(u, v), z(u, v)) \sqrt{E G-F^{2}} \mathrm{d} u \mathrm{d} v
        $$

        其中

        $$
        \begin{aligned}
        & E=\boldsymbol{r}_{u} \cdot \boldsymbol{r}_{u}=x_{u}^{2}+y_{u}^{2}+z_{u}^{2} \\
        & F=\boldsymbol{r}_{u} \cdot \boldsymbol{r}_{v}=x_{u} x_{v}+y_{u} y_{v}+z_{u} z_{v} \\
        & G=\boldsymbol{r}_{v} \cdot \boldsymbol{r}_{v}=x_{v}^{2}+y_{v}^{2}+z_{v}^{2}
        \end{aligned}
        $$

        称为曲面的 $\text{Gauss}$ 系数

    2. 当 $\Sigma$ 的方程为 $z=z(x, y) \ ((x, y) \in D)$ 时，有

        $$
        \iint_{\Sigma} f(x, y, z) \mathrm{d} S=\iint_{D} f(x, y, z(x, y)) \sqrt{1+z_{x}^{2}(x, y)+z_{y}^{2}(x, y)} \mathrm{d} x \mathrm{d} y
        $$

4. 第二类曲面积分：设 $\Sigma$ 为定向的光滑曲面，曲面上的每一点指定了单位法向量 $\boldsymbol{n}= (\cos \alpha, \cos \beta, \cos \gamma)$．如果 $\boldsymbol f(x, y, z)=P(x, y, z) \boldsymbol e_1+Q(x, y, z) \boldsymbol e_2+R(x, y, z) \boldsymbol e_3$ 是定义在 $\Sigma$ 上的向量值函数，则称

    $$
    \iint_{\Sigma} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S=\iint_{\Sigma}[P(x, y, z) \cos \alpha+Q(x, y, z) \cos \beta+R(x, y, z) \cos \gamma] \mathrm{d} S
    $$

    为 $f$ 在 $\Sigma$ 上的第二类曲面积分．记 $2-$形式 $\omega=P(x, y, z) \mathrm{d} y \wedge \mathrm{d} z+Q(x, y, z) \mathrm{d} z \wedge \mathrm{d} x+R(x, y, z) \mathrm{d} x \wedge \mathrm{d} y$，则第二类曲面积分也可记为

    $$
    \int_{\Sigma} \omega=\iint_{\Sigma} P(x, y, z) \mathrm{d} y \wedge \mathrm{d} z+Q(x, y, z) \mathrm{d} z \wedge \mathrm{d} x+R(x, y, z) \mathrm{d} x \wedge \mathrm{d} y=\iint_{\Sigma} f \cdot \mathrm{d} \boldsymbol S
    $$

    1. 双侧曲面：设 $\Sigma$ 是一张光滑曲面，$P$ 为 $\Sigma$ 上任一点，$\Gamma_{P}$ 是过 $P$ 点且不越过曲面边界的任意一条闭曲线．取定 $\Sigma$ 在 $P$ 点的一个单位法向量，让它沿 $\Gamma_{p}$ 连续移动，使它与所过之点处的一个单位法向量连续地相合．如果当它再回到 $P$ 点时，法向量的指向仍与原选的方向相同，则称 $\Sigma$ 为双侧曲面
    2. 第二类曲面积分的性质
        1. 方向性：设向量值函数 $\boldsymbol f$ 在定向的光滑曲面 $\Sigma$ 上的第二类曲面积分存在．记 $-\Sigma$ 为与 $\Sigma$ 取相反侧的曲面，则 $\boldsymbol f$ 在 $-\Sigma$ 上的第二类曲面积分也存在，且有 ${\displaystyle \iint_{-\Sigma} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S=-\iint_{\Sigma} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S}$
        2. 线性性：设 $\boldsymbol f$ 和 $\boldsymbol g$ 在定向的光滑曲面 $\Sigma$ 上的第二类曲面积分存在，则对任何常数 $\alpha, \beta, \alpha \boldsymbol{f}+\beta \boldsymbol{g}$ 在 $\Sigma$ 上的第二类曲面积分也存在，且有 ${\displaystyle \iint_{\Sigma}(\alpha f+\beta \boldsymbol{g}) \cdot \boldsymbol{n} \mathrm{d} S=\alpha \iint_{\Sigma} \boldsymbol{f} \cdot \boldsymbol{n} \mathrm{d} S+\beta \iint_{\Sigma} \boldsymbol{g} \cdot \boldsymbol{n} \mathrm{d} S}$
        3. 曲面可加性：设定向的光滑曲面 $\Sigma$ 分成了两片 $\Sigma_{1}$ 和 $\Sigma_{2}$，它们与 $\Sigma$ 的取向相同（记为 $\Sigma=\Sigma_{1}+\Sigma_{2}$），如果向量值函数 $\boldsymbol f$ 在 $\Sigma$ 上的第二类曲面积分存在，则它在 $\Sigma_{1}$ 和 $\Sigma_{2}$ 上的第二类曲面积分也存在．反之，如果 $\boldsymbol f$ 在 $\Sigma_{1}$ 和 $\Sigma_{2}$ 上的第二类曲面积分存在，则它在 $\Sigma$ 上的第二类曲面积分也存在．且有 ${\displaystyle \iint_{\Sigma} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S=\iint_{\Sigma_{1}} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S+\iint_{\Sigma_{2}} \boldsymbol f \cdot \boldsymbol n \mathrm{d} S}$
    3. 第二类曲面积分的计算
        1. 设定向光滑曲面 $\Sigma$ 的参数方程为

            $$
            \left\{\begin{aligned}
            & x=x(u, v) \\
            & y=y(u, v) \\
            & z=z(u, v)
            \end{aligned}\right. \quad (u, v) \in D
            $$

            其中 $D$ 为 $u v$ 平面上有分段光滑边界的有界区域．$P(x, y, z), Q(x, y, z), R(x, y, z)$ 为 $\Sigma$ 上的连续函数，则令

            $$
            \begin{aligned}
            & \iint_{\Sigma} P(x, y, z) \mathrm{d} y \mathrm{d} z+Q(x, y, z) \mathrm{d} z \mathrm{d} x+R(x, y, z) \mathrm{d} x \mathrm{d} y \\
            = & \pm \iint_{D}\left[P'(u, v)) \dfrac{\partial(y, z)}{\partial(u, v)}+Q'(u, v)) \dfrac{\partial(z, x)}{\partial(u, v)}+R'(u, v) \dfrac{\partial(x, y)}{\partial(u, v)}\right] \mathrm{d} u \mathrm{d} v
            \end{aligned}
            $$

            其中

            $$
            \begin{aligned}
            & P'(u, v) = P(x(u, v), y(u, v), z(u, v)) \\
            & Q'(u, v) = Q(x(u, v), y(u, v), z(u, v)) \\
            & R'(u, v) = R(x(u, v), y(u, v), z(u, v))
            \end{aligned}
            $$

            式中符号由曲面的侧，即方向余弦（或单位法向量）的计算公式中所取符号决定

        2. 如果定向的光滑曲面 $\Sigma$ 的方程为 $z=z(x, y) \ ((x, y) \in D)$ 时，有

            $$
            \iint_{\Sigma} R(x, y, z) \mathrm{d} x \mathrm{d} y=\pm \iint_{D_{x y}} R(x, y, z(x, y)) \mathrm{d} x \mathrm{d} y
            $$

            等式右端是二重积分．当曲面的定向为上侧时，积分号前取「$+$」；当曲面的定向为下侧 时，积分号前取「$-$」

5. $\text{Gauss}$ 公式：设 $\Omega$ 是 $\mathbf{R}^{3}$ 上由光滑（或分片光滑）的封闭曲面所围成的二维单连通闭区域，函数 $P(x, y, z), Q(x, y, z)$ 和 $R(x, y, z)$ 在 $\Omega$ 上具有连续偏导数，则有

    $$
    \iiint_{\Omega}\left(\dfrac{\partial P}{\partial x}+\dfrac{\partial Q}{\partial y}+\dfrac{\partial R}{\partial z}\right) \mathrm{d} x \mathrm{d} y \mathrm{d} z=\iint_{\partial \Omega} P \mathrm{d} y \mathrm{d} z+Q \mathrm{d} z \mathrm{d} x+R \mathrm{d} x \mathrm{d} y
    $$

    这里 $\partial \Omega$ 的定向为外侧，称为 $\Omega$ 的诱导定向

    1. 连通区域：设 $\Omega$ 为空间上的一个区域，如果 $\Omega$ 内的任何一张封闭曲面所围的立体仍属于 $\Omega$，那么称 $\Omega$ 为二维单连通区域，否则称 $\Omega$ 为二维复连通区域
    2. $\text{Gauss}$ 公式的可用沿区域 $\Omega$ 的边界的曲面积分来计算 $\Omega$ 的体积

        $$
        V=\iiint_{\Omega} \mathrm{d} x \mathrm{d} y \mathrm{d} z=\iint_{\partial \Omega} x \mathrm{d} y \mathrm{d} z=\iint_{\partial \Omega} y \mathrm{d} z \mathrm{d} x=\iint_{\nexists \Omega} z \mathrm{d} x \mathrm{d} y=\dfrac{1}{3} \iint_{\partial \Omega} x \mathrm{d} y \mathrm{d} z+y \mathrm{d} z \mathrm{d} x+z \mathrm{d} x \mathrm{d} y
        $$

6. $\text{Stokes}$ 公式：设 $\Sigma$ 为光滑曲面，其边界 $\partial \Sigma$ 为分段光滑闭曲线．若函数 $P(x, y, z), Q(x, y, z), R(x, y, z)$ 在 $\Sigma$ 及其边界 $\partial \Sigma$ 上具有连续偏导数，则

    $$
    \begin{aligned}
    & \int_{\partial \Sigma} P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d} z \\
    = & \iint_{\Sigma}\left(\dfrac{\partial R}{\partial y}-\dfrac{\partial Q}{\partial z}\right) \mathrm{d} y \mathrm{d} z+\left(\dfrac{\partial P}{\partial z}-\dfrac{\partial R}{\partial x}\right) \mathrm{d} z \mathrm{d} x+\left(\dfrac{\partial Q}{\partial x}-\dfrac{\partial P}{\partial y}\right) \mathrm{d} x \mathrm{d} y \\
    = & \iint_{\Sigma}\left[\left(\dfrac{\partial R}{\partial y}-\dfrac{\partial Q}{\partial z}\right) \cos \alpha+\left(\dfrac{\partial P}{\partial z}-\dfrac{\partial R}{\partial x}\right) \cos \beta+\left(\dfrac{\partial Q}{\partial x}-\dfrac{\partial P}{\partial y}\right) \cos \gamma\right] \mathrm{d} S,
    \end{aligned}
    $$

    其中 $\partial \Sigma$ 取诱导定向

    !!! note "$\text{Stokes}$ 公式的推广"
        高次的微分形式 $\mathrm{d} \omega$ 在给定区域上的积分等于低一次的微分形式 $\omega$ 在低一维的区域边界上的积分，写作 ${\displaystyle \int_{\partial M} \omega=\int_{M} \mathrm{d} \omega}$

### 5.4.2 曲面与曲率

### 5.4.3 曲面论基本定理

## 5.5 曲面的内蕴理论
