# 5 曲面理论

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
        6. 二次锥面：$I_{3} \neq 0, I_{2} \leqslant 0 \ (\textsf{或 } I_{1} I_{3} \leqslant 0), I_{4}=0$
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
1. 双线性形式：设 $V$ 是域 $F$ 上的 $n+1$ 维线性空间，$\sigma$ 是其上的二元函数 $\sigma: V \times V \rightarrow F, (x, y) \mapsto \sigma(x, y)$．如果它对每一个变元都是线性的，即

    $$
    \begin{aligned}
    \sigma\left(a x_1+b x_2, y\right) & =a \sigma\left(x_1, y\right)+b \sigma\left(x_2, y\right) \\
    \sigma\left(x, a y_1+b y_2\right) & =a \sigma\left(x, y_1\right)+b \sigma\left(x, y_2\right)
    \end{aligned}
    \quad \forall x_1, x_2, y_1, y_2 \in V
    $$

    则 $\sigma$ 称为 $V$ 上的双线性形式，定义了双线性形式 $\sigma$ 的线性空间 $V$ 记为 $(V, \sigma)$

    1. 设 $(V, \sigma),\left(V^{\prime}, \sigma^{\prime}\right)$ 是两个定义了双线性形式的线性空间，$f$ 是线性映射 $f: V \rightarrow V^{\prime}$．则 $f$ 诱导了线性空间 $V$ 上的双线性形式 $f^* \sigma^{\prime}$，使得 $\left(f^* \sigma^{\prime}\right)(x, y)=\sigma^{\prime}(f(x), f(y)), \forall x, y \in V$
    2. 设 $(V, \sigma),\left(V^{\prime}, \sigma^{\prime}\right)$ 是两个定义了双线性形式的线性空间，若存在同构 $f: V \rightarrow V^{\prime}$ 有 $\sigma(x, y)=\sigma^{\prime}(f(x), f(y))=f^* \sigma^{\prime}(x, y)$ 其中 $\forall x, y \in V$，则称 $(V, \sigma)$ 和 $\left(V^{\prime}, \sigma^{\prime}\right)$ 是同构的
        1. 设 $\sigma, \sigma^{\prime}$ 是向量 $V$ 上的两个双线性形式，若 $(V, \sigma)$ 和 $\left(V, \sigma^{\prime}\right)$ 是同构的，则称 $\sigma$ 和 $\sigma^{\prime}$ 是合同的
        2. 设 $\sigma, \sigma^{\prime}$ 是 $V$ 上的两个双线性形式，$\sigma$ 和 $\sigma^{\prime}$ 是合同的当且仅当存在自同构 $f: V \rightarrow V$，使得 $\sigma=f^* \sigma^{\prime}$ 或 $\sigma^{\prime}=\left(f^{-1}\right)^* \sigma$
        3. 设 $\left\{e_0, e_1, e_2, \cdots, e_n\right\}$ 是 $V$ 的一组基，则双线性形式 $\sigma$ 和 $\tau$ 是合同的当且仅当它们对于基 $\left\{e_i\right\}$ 的矩阵表示是合同的
    3. 双线性形式 $\sigma$ 的秩是其矩阵表示 $\left(\sigma ;\left\{e_i\right\}\right)$ 的秩
        1. 如果 $\sigma$ 的秩小于 $\operatorname{dim} V=n+1$，则 $\sigma$ 称为退化的；如果 $\sigma$ 的秩等于 $\operatorname{dim} V=n+1$，则 $\sigma$ 称为非退化的
        2. 设 $\sigma$ 是线性空间 $V$ 上的双线性形式，$\sigma$ 确定了一个 $V \rightarrow V^*$ 的线性变换

            $$
            \begin{gathered}
            \underset{\sim}{\sigma}: V \rightarrow V^* \\
            \underset{\sim}{\sigma}(x)(y)=\sigma(x, y), \forall x, y \in V
            \end{gathered}
            $$

    4. 对称双线性形式：设 $\sigma$ 是线性空间 $V$ 上的双线性形式，如果 $\sigma(x, y)=\sigma(y, x), \forall x, y \in V$，则称 $\sigma$ 为对称双线性形式．对于 $V$ 的一组基 $\left\{e_0, e_1, e_2, \cdots, e_n\right\}$，对称双线性形式 $\sigma$ 的表示矩阵 $S=\left(\sigma ;\left\{e_i\right\}\right)= \sigma\left(e_i, e_j\right)=\left(S_{i j}\right)$ 是对称矩阵

2. 内积空间：设 $(V, \sigma)$ 是定义了对称双线性形式的线性空间，$x \cdot y=\sigma(x, y)=\sigma(y, x)=y \cdot x, \forall x, y \in V$ 称为 $(V, \sigma)$ 上的内积，$(V, \sigma)$ 称为内积空间
    1. 设 $(V, \sigma)$ 是内积空间，向量 $x, y \in V$．若 $x \cdot y=0$ 或 $\sigma(x, y)={\displaystyle \sum_{i, j=0}^n S_{i j} x_i y_j=0}$，称 $x, y$ 为正交的或垂直的，记为 $x \perp y$
    2. 设 $M$ 是 $V$ 一个子空间，集合 $M^{\perp}$ 为

        $$
        M^{\perp}=\{x \in V: \sigma(x, y)=\sigma(y, x)=0, \forall y \in M\}=\{x \in V: \sigma(x, M)=\sigma(M, x)=0\}
        $$

        称为 $M$ 在 $V$ 中的正交补

        1. 设 $M, N$ 是线性空间 $V$ 的子空间，$M \subset N$，则 $M^{\perp} \supset N^{\perp}$
        2. 设 $(V, \sigma)$ 是内积空间，则 $\sigma$ 的秩等于 $\operatorname{dim} V-\operatorname{dim} V^{\perp}$
        3. 对称双线性形式 $\sigma$ 是非退化的，其充要条件是 $V^{\perp}=0$
        4. 设 $(V, \sigma)$ 是内积空间，$M$ 是 $(V, \sigma)$ 的子空间，则 $\operatorname{dim} M+\operatorname{dim} M^{\perp}=\operatorname{dim} V+\operatorname{dim}\left(M \cap V^{\perp}\right)$．特别地，如果 $\sigma$ 是非退化的双线性形式，即 $V^{\perp}=0$，则有 $\operatorname{dim} M+\operatorname{dim} M^{\perp}=\operatorname{dim} V$
        5. 设 $(V, \sigma)$ 是内积空间，其中对称双线性形式 $\sigma$ 是非退化的．定义 $V$ 中子空间之间的正交补映射 $M \rightarrow M^{\perp}$，则这个映射诱导了射影几何 $\boldsymbol{P}(V)$ 到自身的一一映射，并且具有如下性质
            - $\operatorname{dim} M^{\perp}=\operatorname{dim} V-\operatorname{dim} M$
            - $\left(M^{\perp}\right)^{\perp}=M$
            - $M \subset N \Rightarrow M^{\perp} \supset N^{\perp}$
            - $(M+N)^{\perp}=M^{\perp} \cap N^{\perp}$
            - $(M \cap N)^{\perp}=M^{\perp}+N^{\perp}$

    3. 设 $M$ 是线性空间 $V$ 的子空间，$\sigma_M$ 是 $\sigma$ 在 $M$ 上的限制．如果 $\sigma_M$ 是退化的，即 $\sigma_M$ 的秩小于 $\operatorname{dim} M$，则 $M$ 称为 $V$ 的退化子空间
        1. $M$ 是 $V$ 的非退化子空间，当且仅当 $\sigma_M$ 的秩等于 $\operatorname{dim} M$
        2. 设 $M$ 是 $V$ 中的非退化子空间，则 $V=M \oplus M^{\perp}$
    4. 内积空间结构定理：设 $(V, \sigma)$ 是内积空间，则 $V=A_0 \oplus A_1 \oplus A_2 \oplus \cdots \oplus A_r \oplus V^{\perp}$．其中 $\operatorname{dim} A_i=1, r+1=\sigma$ 的秩，$A_i \perp A_j\ (i, j=0,1,2, \cdots, r, i \neq j)$
        1. 对称矩阵合同于一个对角矩阵
        2. 设 $V$ 是复线性空间，则存在一组基使得 $\sigma$ 的矩阵表示是 $\left(\sigma ;\left\{a_i\right\}\right)=\left[\begin{array}{c c} I_{r+1} & 0 \\ 0 & 0 \end{array}\right]$
        3. 设 $V$ 是实线性空间，则存在一组基使得 $\sigma$ 的矩阵表示是 $\left(\sigma ;\left\{e_i\right\}\right)=\left[\begin{array}{ccc} I_p & 0 & 0 \\ 0 & -I_q & 0 \\ 0 & 0 & 0 \end{array}\right]$，其中 $p+q+1=r+1$
    5. 一个实值对称双线性形式 $\sigma$ 称为
        1. 半正定的，指 $\forall a \in V, a \neq 0, \sigma(a, a) \geqslant 0$
        2. 正定的，指 $\forall a \in V, a \neq 0, \sigma(a, a)>0$
        3. 半负定的，指 $\forall a \in V, a \neq 0, \sigma(a, a) \leqslant 0$
        4. 负定的，指 $\forall a \in V, a \neq 0, \sigma(a, a)<0$
    6. 设 $V$ 是实线性空间，$\sigma$ 的矩阵表示是 $\left[\begin{array}{ccc}I_p & 0 & 0 \\ 0 & -I_q & 0 \\ 0 & 0 & 0\end{array}\right]$，称 $p-q$ 为 $\sigma$ 的符号差
        1. 设 $V$ 是实线性空间，$\sigma$ 的矩阵表示是 $\left[\begin{array}{ccc}I_p & 0 & 0 \\ 0 & -I_q & 0 \\ 0 & 0 & 0\end{array}\right]$．当 $p=n+1$ 时，$\sigma$ 正定；当 $p<n+1$ 并且 $q=0$ 时，$\sigma$ 半正定；当 $q=n+1$ 时，$\sigma$ 负定；当 $q<n+1$ 且 $p=0$ 时，$\sigma$ 半负定
        2. 惯性定律：实线性空间 $V$ 上的两个双线性形式 $\sigma$ 和 $\tau$ 是合同的，当且仅当它们的秩相等，符号差相同

## 5.3 二阶超曲面与二次超曲面
### 5.3.1 二阶超曲面射影分类
1. 设 $(V, \sigma)$ 是内积空间，$\boldsymbol{P}(V)$ 是 $V$ 所确定的射影几何，$P(V)$ 中的点集 $Q(\sigma)=\{A=[a] \in \boldsymbol{P}(V): \sigma(a, a)=0\}$，称为 $\boldsymbol{P}(V)$ 中的射影二阶超曲面或二阶超曲面．$\sigma$ 的秩即为 $Q(\sigma)$ 的秩
    1. 二阶超曲面 $Q(\sigma)$ 是退化的，当且仅当 $\sigma$ 是退化的
    2. 射影变换把二阶超曲面映成二阶超曲面，且保持秩不变
2. 配极变换：设 $\boldsymbol{P}(V)$ 中的二阶超曲面 $Q(\sigma)$ 确定了内积空间 $(V, \sigma)$，配极变换 $\boldsymbol{P}(V) \rightarrow \boldsymbol{P}(V)$ 是把 $V$ 中的子空间 $M$ 映成其正交补空间的变换 $M \rightarrow M^{\perp} \cdot M^{\perp}$ 称为 $M$ 对于二阶超曲面 $Q(\sigma)$ 的极面
    1. 配极原则：如果子空间 $M \subset$ 子空间 $N$，则 $M$ 的极面 $M^{\perp} \supset N$ 的极面 $N^{\perp}$
        1. 子空间 $M$ 与子空间 $N$ 的和的极面 $(M+N)^{\perp}$ 是 $M$ 与 $N$ 的极面之交 $M^{\perp} \cap N^{\perp}$
        2. 子空间 $M$ 与子空间 $N$ 的交的极面 $(M \cap N)^{\perp}$ 是 $M$ 与 $N$ 的极面之和 $M^{\perp}+N^{\perp}$
    2. 共轭点：设 $Q(\sigma)$ 是 $\boldsymbol{P}(V)$ 中的二阶超曲面，两点 $A=[a], B=[b]$ 称为关于 $Q(\sigma)$ 的共轭点，是指 $a \perp b$，即 $\sigma(a, b)=0$．过点 $A=[a]$ 任作直线 $M=[a, b]$ 交二阶曲面 $Q(\sigma)$ 于两点 $P=[p], R=$ $[r]$，则 $B=[b]$ 是 $P, R, A$ 的第四调和共轭点，即 $(P R, A B)=-1$ 的充要条件是 $B, A$ 关于 $Q(\sigma)$ 共轭
    3. 退化子空间：设 $M$ 是线性空间 $V$ 的子空间，若 $M \cap M^{\perp}=0$，则 $M$ 称为 $V$ 的非退化子空间；若 $M \cap M^{\perp} \neq 0$，则称 $M$ 为 $V$ 的退化子空间
    4. 切面与切点：设 $M$ 是体 $F$ 上的射影几何 $\boldsymbol{P}(V)$ 中的 $k$ 维面．$M$ 称为切于二阶超曲面 $Q(\sigma)$，是指 $M \cap M^{\perp} \neq 0$．此时称 $M$ 为 $Q(\sigma)$ 的 $k$ 维切面，$M \cap M^{\perp}$ 中的点称为切点

### 5.3.2 二阶超曲面仿射理论
1. 仿射二阶超曲面：设 $(V, \sigma)$ 是域 $F$ 上的内积空间，$\boldsymbol{P}(V)$ 是相应的射影几何，在 $V$ 中固定一个超平面 $H$ 作为无穷远超平面

    $$
    H=\left\{\left(x_0, x_1, x_2, \cdots, x_n\right) \in V, x_0=0\right\}
    $$

    则得一个仿射几何 $\boldsymbol{A}(V)$．$\boldsymbol{A}(V)$ 中的仿射二阶超曲面是点集

    $$
    Q(\sigma)=\{A=[a] \in A(V): \sigma(a, a)=0\}
    $$

    如果点 $H^{\perp} \not \subset H$，则 $H^{\perp}$ 称为仿射二阶超曲面的中心．此时 $Q(\sigma)$ 称为有心二阶超曲面；否则如果 $H^{\perp} \subset H$，则 $Q(\sigma)$ 称为无心二阶超曲面，又称抛物面

2. 设 $\left\{e_0, e_1, e_2, \cdots, e_n\right\}$ 是 $V$ 中的一组基，相应的坐标是 $\left(x_0, x_1, x_2, \cdots, x_n\right)$．它是 $\boldsymbol{P}(V)$ 中点的齐次坐标，$Q(\sigma)$ 的方程是 ${\displaystyle \sum_{i, j=0}^n a_{i j} x_i x_j=0 \ \left(a_{i j}=a_{j i}\right)}$，由于仿射空间中不包含无穷远点，所以 $x_0 \neq 0$，取仿射坐标 $\widetilde{x}_i=\dfrac{x_i}{x_0} \ (i=1,2, \cdots, n)$ 时，仿射二阶超曲面的方程是

    $$
    \sum_{i, j=1}^n a_{i j} \widetilde{x}_i \widetilde{x}_j+\sum_{j=1}^n a_{0 j} \widetilde{x}_j+a_{00}=0 \ \left(a_{i j}=a_{j i}\right)
    $$

    1. 仿射变换使有心二阶超曲面变成有心二阶超曲面，使抛物面变成抛物面
    2. 有心二阶超曲面的标准形是 $\lambda_0+\lambda_1 \widetilde{x}_1^2+\lambda_2 \widetilde{x}_2^2+\cdots+\lambda_r \widetilde{x}_r^2=0$，抛物面的标准形是 $\lambda_1 \widetilde{x}_1+\lambda_2 \widetilde{x}_2^2+\cdots+\lambda_r \widetilde{x}_r^2=0$，其中 $r=\sigma$ 的秩为 $-1$

### 5.3.3 Euclid 空间的二次超曲面
1. 二次超曲面的表达式：任给一个实对称双线性形式 $\sigma: V \times V \rightarrow \mathbf{R}, \sigma(a, b)=\sigma(b, a), \forall a, b \in V$，则得到实 $n$ 维 $\text{Euclid}$ 空间 $E^n$ 中的一个二次超曲面 $Q(a)$，其表达式为 $\sigma(a, a)=0$
    1. $Q(\sigma)$ 的 $\text{Descartes}$ 坐标表示式为 ${\displaystyle \sum_{i, j=1}^n b_{i j} x_i x_j+2 \sum_{i=1}^n b_i x_i+h=0}$

        $Q(\sigma)$ 的齐次坐标 $x_i=\dfrac{\overline{x}_i}{\overline{x}_0}$ 表示式为 ${\displaystyle \sum_{i, j=0}^n b_{i j} \overline{x}_i \overline{x}_j=0}$，其中 $b_{i j}=b_{j i}, b_{i 0}=b_{0 i}=b_i, b_{00}=h$

    2. 设 $Q(\sigma)$ 是 $\text{Euclid}$ 空间 $E^n$ 中的二次超曲面，由于对称双线性形式 $\sigma$ 不一定是正定的，所以 $(V, \sigma)$ 不是 $\text{Euclid}$ 线性空间，因此将其称为内积线性空间，对称双线性形式 $\sigma$ 称为它的内积．如果对于内积 $\sigma$ 来说，$H^{\perp} \not \subset H$，则 $E^n$ 中的二次超曲面 $Q(\sigma)$ 称为有心二次超曲面，$H^{\perp}$ 称为二次超曲面 $Q(\sigma)$ 的中心，它是无穷远超平面 $H$ 的极点．如果 $H^{\perp} \subset H$，则 $Q(\sigma)$ 称为 $E^n$ 的无心二次超曲面或抛物面

2. $\text{Euclid}$ 空间中的有心二次超曲面：一个有心二次超曲面的中心是无穷远超平面 $H$ 的极点，任给一点 $(\overline{x}_0^0, \overline{x}_1^0, \overline{x}_2^0, \cdots, \overline{x}_n^0)$，其极面方程为 ${\displaystyle \sum_{i, j=0}^n b_{i j} \overline{x}_i^0 \overline{x}_j=0}$，换成非齐次坐标后得到方程组 ${\displaystyle \sum_{i=1}^n b_{i j} x_i^0+b_j=0 \ (j=1,2, \cdots, n)}$，其解 $\left(x_1^0, x_2^0, \cdots, x_n^0\right)$ 为有心二次超曲面中心的 $\text{Descartes}$ 坐标
    1. 二次超曲面是有心的充要条件是系数矩阵 $B=\begin{bmatrix} b_{i j} \\ \end{bmatrix}$ 是可逆的，即 $\operatorname{det}(B)=\operatorname{det}\left(b_{i j}\right) \neq 0$
    2. 二次超曲面上一点 $\left(x_1, x_2, \cdots, x_n\right)$ 的法方向是 $\left(\dfrac{\partial \varphi(x)}{\partial x_1}, \dfrac{\partial \varphi(x)}{\partial x_2}, \cdots, \dfrac{\partial \varphi(x)}{\partial x_n}\right)$
    3. 给出 $\text{Euclid}$ 空间中一个非退化有心二次超曲面，则总能找到一个 $\text{Descartes}$ 坐标系或一个正交变换，使二次超曲面的坐标表示方程化成标准形 $\lambda_1 x_1^2+\lambda_2 x_2^2+\cdots+\lambda_n x_n^2=1$，其中 $\lambda_i$ 是非零实数
3. $\text{Euclid}$ 空间中的抛物面：给出 $\text{Euclid}$ 空间 $E^n$ 中的一个非退化抛物面 $Q(\sigma)$，则总可以通过正交变换找到一个 $\text{Descartes}$ 坐标系，使得这个抛物面的坐标表示式可以简化为 $2 \lambda_1 x_1+\lambda_2 x_2^2+\cdots+\lambda_n x_n^2=0$

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

            等式右端是二重积分．当曲面的定向为上侧时，积分号前取「$+$」；当曲面的定向为下侧时，积分号前取「$-$」

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

### 5.4.2 曲面与方程
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

### 5.4.3 基本不变量
设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，参数表示为 $\boldsymbol{r}=\boldsymbol{r}(u, v)$

1. 第一基本形式：$I=\mathrm d s^{2}=E \mathrm d u \cdot \mathrm d u+2 F \mathrm d u \cdot \mathrm d v+G \mathrm d v \cdot \mathrm d v$，其中 $E=\left\langle\boldsymbol{r}_{u}, \boldsymbol{r}_{u}\right\rangle, F=\left\langle\boldsymbol{r}_{u}, \boldsymbol{r}_{v}\right\rangle, G=\left\langle\boldsymbol{r}_{v}, \boldsymbol{r}_{v}\right\rangle$
    1. 曲面 $S$ 的第一基本形式与参数选取无关
    2. 曲面的第一基本形式在 $\mathbf{R}^{3}$ 的合同变换下不变，即若 $\mathbf{R}^{3}$ 的合同变换 $\mathcal{T}$ 将曲面 $S$ 变为曲面 $\widetilde{S}: \widetilde{\boldsymbol{r}}(u, v)=\mathcal{T} \circ \boldsymbol{r}(u, v)$，则曲面 $\widetilde{S}$ 的第一基本形式 $\widetilde{\mathrm{I}}(u, v)$ 与曲面 $S$ 的第一基本形式 $\mathrm{I}(u, v)$ 相同
2. 第二基本形式：设 $S$ 的单位法向量为 $\boldsymbol{n}=\dfrac{\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}}{\left|\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}\right|}$，则定义 $\mathrm{II}=-\langle \mathrm d r, \mathrm d n\rangle$ 为曲面 $S$ 的第二基本形式
    1. 定义函数

        $$
        \begin{aligned}
        & L=\left\langle\boldsymbol{r}_{u u}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{u}, \boldsymbol{n}_{u}\right\rangle \\
        & M=\left\langle\boldsymbol{r}_{u v}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{u}, \boldsymbol{n}_{v}\right\rangle=-\left\langle\boldsymbol{r}_{v}, \boldsymbol{n}_{u}\right\rangle \\
        & N=\left\langle\boldsymbol{r}_{v v}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{v}, \boldsymbol{n}_{v}\right\rangle
        \end{aligned}
        $$

        则 $\mathrm{II} = -\left\langle\boldsymbol{r}_{u} \mathrm d u+\boldsymbol{r}_{v} \mathrm d v, \boldsymbol{n}_{u} \mathrm d u+\boldsymbol{n}_{v} \mathrm d v\right\rangle = L \mathrm d u \mathrm d u+2 M \mathrm d u \mathrm d v+N \mathrm d v \mathrm d v$

    2. 曲面的第二基本形式是关于 $(\mathrm d u, \mathrm d v)$ 的二次型
        1. $L N-M^{2}>0$：此时 $\text{II}$ 正定或负定，这样的点附近，曲面的形状是凸的（或凹的，由法向选取决定）
        2. $L N-M^{2}<0$：此时 $\text{II}$ 不定，这样的点附近，曲面是马鞍型的
        3. $L N-M^{2}=0$：此时 $\text{II}$ 退化

### 5.4.4 法曲率与主曲率
1. 法曲率：设曲面 $S$ 的参数表示是 $\boldsymbol{r}(u, v)$，$P_{0}=P\left(u_{0}, v_{0}\right)$ 是曲面 $S$ 上与 $\left(u_{0}, v_{0}\right)$ 对应的点，$s$ 是曲线 $\boldsymbol{r}(s)$ 的弧长参数．称

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
    2. 曲面 $S$ 沿非零切向量 $\boldsymbol{w}=\xi \boldsymbol{r}_{u}+\eta \boldsymbol{r}_{v}$ 的法曲率定义为 $k_{n}(\boldsymbol{w})=\dfrac{\mathrm{II}(\boldsymbol{w}, \boldsymbol{w})}{\mathrm{I}(\boldsymbol{w}, \boldsymbol{w})}=\dfrac{L \xi^{2}+2 M \xi \eta+N \eta^{2}}{E \xi^{2}+2 F \xi \eta+G \eta^{2}}$
    3. 对曲面 $S$ 的任意单位切向量 $\boldsymbol{v}$，曲面 $S$ 沿 $\boldsymbol{v}$ 方向的法曲率可表为 $k_{n}(\boldsymbol{v})=\langle\mathcal{W}(\boldsymbol{v}), \boldsymbol{v}\rangle$

2. $\text{Gauss}$ 映射：设曲面 $S$ 的参数表示为 $\boldsymbol r=\boldsymbol r(u, v)$，在每点有一个确定的单位法向量 $\boldsymbol{n}(u, v)$．平行移动 $n$ 使之起点落在原点，则 $n$ 的终点就落在 $\mathbf{R}^{3}$ 的单位球面 $S^{2}$ 上，从而得到映射 $\boldsymbol g: \boldsymbol{r}(u, v) \rightarrow \boldsymbol{n}(u, v)$，称为曲面 $S$ 的 $\text{Gauss}$ 映射
3. $\text{Weingarten}$ 变换：切平面到切平面的线性变换 $\mathcal{W}: T_{P} S \rightarrow T_{P} S, \boldsymbol{v}=\lambda \boldsymbol{r}_{u}+\mu \boldsymbol{r}_{v} \rightarrow \mathcal{W}(\boldsymbol{v})=-\left(\lambda \boldsymbol{n}_{u}+\mu \boldsymbol{n}_{v}\right)$
    1. $\text{Weingarten}$ 变换的性质
        1. $\text{Weingarten}$ 变换与曲面的参数选取无关
        2. $\text{Weingarten}$ 变换是曲面切平面到自身的自共轭变换，即对任意 $\boldsymbol{v}$ 都有 $\boldsymbol{w} \in T_{P} S$
    2. 设 $k$ 是 $\text{Weingarten}$ 变换 $\mathcal{W}: T_{P} S \rightarrow T_{P} S$ 的一个特征值，$\boldsymbol{v}$ 是相应的单位特征向量．将 $\text{Weingarten}$ 变换在 $P$ 点的两个特征值称为曲面 $S$ 在 $P$ 点的主曲率，特征值对应的两个（实）特征方向称为曲面在 $P$ 点的主方向
        1. 设曲面 $S$ 的参数表示为 $\boldsymbol r(u, v)$，在切平面的基 $\left\{\boldsymbol{r}_{u}, \boldsymbol{r}_{v}\right\}$ 下 $\text{Weingarten}$ 变换的系数矩阵是 $\left[\begin{array}{ll}a & b \\ c & d\end{array}\right]$，则主曲率 $k_1, k_2$ 满足方程 $k^{2}-\dfrac{L G-2 M F+N E}{E G-F^{2}} k+\dfrac{L N-M^{2}}{E G-F^{2}}=0$
        2. 称 $H=\dfrac{1}{2}\left(k_{1}+k_{2}\right)$ 为曲面的平均曲率，$K=k_{1} k_{2}$ 为曲面的 $\text{Gauss}$ 曲率，于是

            $$
            \begin{aligned}
            H & =\dfrac{1}{2} \dfrac{L G-2 M F+N E}{E G-F^{2}} \\
            K & =\dfrac{L N-M^{2}}{E G-F^{2}}
            \end{aligned}
            $$

        3. $\text{Euler}$ 公式：设 $k_{1}, k_{2}$ 是曲面在一点 $P$ 的主曲率，$\boldsymbol{e}_{1}, \boldsymbol{e}_{2}$ 是相应的正交主方向．设 $\boldsymbol{v} \in T_{P} S$ 是一个单位向量，$\boldsymbol{v}$ 与 $\boldsymbol{e}_{1}$ 的夹角为 $\theta$，则曲面在 $P$ 点沿 $\boldsymbol{v}$ 方向的法曲率为 $k_{n}(\boldsymbol{v})=k_{1} \cos ^{2} \theta+k_{2} \sin ^{2} \theta$
        4. 设 $P$ 是曲面 $S$ 上的一点，$\boldsymbol{e}_{1}, \boldsymbol{e}_{2}$ 是该点的单位正交主方向，则存在 $S$ 的参数 $(u, v)$ 使得 $\boldsymbol{r}_{u}(P)=\boldsymbol{e}_{1}, \boldsymbol{r}_{v}(P)=\boldsymbol{e}_{2}$

4. 设 $P$ 是曲面 $S$ 上的一点，取 $S$ 的参数 $(u, v)$ 使得 $\boldsymbol{e}_{1}=\boldsymbol{r}_{u}(P), \boldsymbol{e}_{2}=\boldsymbol{r}_{v}(P)$ 是该点的单位正交主方向，于是

    $$
    \begin{aligned}
    & L(P)=\left\langle\boldsymbol{r}_{u u}, \boldsymbol{n}\right\rangle(P)=-\left\langle\boldsymbol{n}_{u}, \boldsymbol{r}_{u}\right\rangle(P)=\left\langle\mathcal{W}\left(\boldsymbol{e}_{1}\right), \boldsymbol{e}_{1}\right\rangle=k_{1} \\
    & M(P)=\left\langle\boldsymbol{r}_{u v}, \boldsymbol{n}\right\rangle(P)=-\left\langle\boldsymbol{n}_{u}, \boldsymbol{r}_{v}\right\rangle(P)=\left\langle\mathcal{W}\left(\boldsymbol{e}_{1}\right), \boldsymbol{e}_{2}\right\rangle=0 \\
    & N(P)=\left\langle\boldsymbol{r}_{v v}, \boldsymbol{n}\right\rangle(P)=-\left\langle\boldsymbol{n}_{v}, \boldsymbol{r}_{v}\right\rangle(P)=\left\langle\mathcal{W}\left(\boldsymbol{e}_{2}\right), \boldsymbol{e}_{2}\right\rangle=k_{2}
    \end{aligned}
    $$

    经过 $\mathbf{R}^{3}$ 适当的旋转变换，取 $\boldsymbol{e}_{1}=\boldsymbol i, \boldsymbol{e}_{2}=\boldsymbol j$，则 $\boldsymbol{n}(P)=\boldsymbol{k}$，由此得到曲面 $S$ 在 $P$ 点的二阶近似曲面 $S^{*}$

    $$
    \left\{\begin{array}{l}
    x=u \\
    y=v \\
    z=\dfrac{1}{2}\left(k_{1} u^{2}+k_{2} v^{2}\right) .
    \end{array}\right.
    $$

    1. 当 $K>0$ 时，$P$ 是椭圆点，$S^{*}$ 是椭圆抛物面
    2. 当 $K<0$ 时，$P$ 是双曲点，$S^{*}$ 是双曲抛物面
    3. 当 $K=0$ 时，$P$ 是抛物点，$S^{*}$ 是抛物柱面
    4. 曲面在一点 $P$ 的两个主曲率相等时，在 $P$ 点有 $\dfrac{L}{E}=\dfrac{M}{F}=\dfrac{N}{G}=k$，称点 $P$ 为曲面的脐点．特别地，当 $k \neq 0$ 时点 $P$ 称为圆点；当 $k=0$ 时，$L=M=N=0$，这时称点 $P$ 为曲面的平点

### 5.4.5 活动标架
1. 设 $\mathbf{R}^{3}$ 的曲面 $S$ 的参数表示为 $\boldsymbol{r}=\boldsymbol{r}(u, v)$，参数曲面 $S$ 上的光滑向量场 $\boldsymbol{x}(u, v)$ 对于 $S$ 上的任意一点 $\boldsymbol{r}(u, v)$，都有向量 $\boldsymbol{x}(u, v)$ 从点 $\boldsymbol{r}(u, v)$ 出发，且 $\boldsymbol{x}(u, v)$ 光滑地依赖于参数 $(u, v)$
    1. 若 $\boldsymbol{x}(u, v)$ 是曲面 $S$ 在点 $\boldsymbol{r}(u, v)$ 的切向量，$\boldsymbol{x}(u, v)$ 称为曲面 $S$ 的切向量场，显然 $\boldsymbol{r}_{u}$ 和 $\boldsymbol{r}_{v}$ 是曲面 $S$ 的切向量场
    2. 若 $\boldsymbol{x}(u, v)$ 是曲面 $S$ 在点 $\boldsymbol{r}(u, v)$ 的法向量，$\boldsymbol{x}(u, v)$ 称为曲面 $S$ 的法向量场，显然 $\dfrac{\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}}{\left|\boldsymbol{r}_{u} \wedge \boldsymbol{r}_{v}\right|}$ 是曲面 $S$ 的（单位）法向量场

    记单位法向量为 $\boldsymbol{n}$，则 $\left\{\boldsymbol{r}(u, v) ; \boldsymbol{r}_{u}, \boldsymbol{r}_{v}, \boldsymbol{n}\right\}$ 构成以 $\boldsymbol{r}(u, v)$ 为原点的 $\mathbf{R}^{3}$ 的一个标架，其全体称为参数曲面 $S$ 的自然标架（场）

2. 曲面 $S$ 上的活动标架（场）：以曲面上的点为原点的 $\mathbf{R}^{3}$ 的坐标系 $\left\{\boldsymbol{r}(u, v) ; \boldsymbol{x}_{1}(u, v), \boldsymbol{x}_{2}(u, v), \boldsymbol{x}_{3}(u, v)\right\}$，其中 $\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \boldsymbol{x}_{3}$ 是曲面 $S$ 上的处处线性无关的向量场，即 $\left(\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \boldsymbol{x}_{3}\right) \neq 0$
    1. 一般要求 $\left(\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \boldsymbol{x}_{3}\right)>0$ 以保证这些标架均为正定向的
    2. 特别地，如果 $\left\{\boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \boldsymbol{x}_{3}\right\}$ 为单位正交标架，则称 $\left\{\boldsymbol{r}(u, v) ; \boldsymbol{x}_{1}, \boldsymbol{x}_{2}, \boldsymbol{x}_{3}\right\}$ 为曲面 $S$ 的正交（活动）标架或规范（活动）标架
        1. 设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，$\left\{\boldsymbol{r} ; \boldsymbol{e}_{1}, \boldsymbol{e}_{2}, \boldsymbol{e}_{3}\right\}$ 是 $S$ 的正交标架，则

            $$
            \begin{aligned}
            \mathrm d \boldsymbol{r} &= \omega_{1} \boldsymbol{e}_{1}+\omega_{2} \boldsymbol{e}_{2} \\
            \mathrm d \boldsymbol{e}_{1} &= \omega_{12} \boldsymbol{e}_{2}+\omega_{13} \boldsymbol{e}_{3} \\
            \mathrm d \boldsymbol{e}_{2} &= \omega_{21} \boldsymbol{e}_{1}+\omega_{23} \boldsymbol{e}_{3} \\
            \mathrm d \boldsymbol{e}_{3} &= \omega_{31} \boldsymbol{e}_{1}+\omega_{32} \boldsymbol{e}_{2}
            \end{aligned}
            $$

            其中 $\omega_{i j}+\omega_{j i}=0$，曲面 $S$ 的第一基本形式和第二基本形式分别为

            $$
            \begin{aligned}
            \text{I}&=\omega_{1} \omega_{1}+\omega_{2} \omega_{2}, \\
            \text{II}&=\omega_{1} \omega_{13}+\omega_{2} \omega_{23} .
            \end{aligned}
            $$

        2. 曲面的第一基本形式与正交标架的选取无关，曲面的第二基本形式与同法向的正交标架选取无关
        3. 设 $\omega_{13}=h_{11} \omega_{1}+h_{12} \omega_{2}, \  \omega_{23}=h_{21} \omega_{1}+h_{22} \omega_{2}$，令 $\boldsymbol{B}=\left[\begin{array}{cc} h_{11} & h_{21} \\ h_{12} & h_{22}\end{array}\right]$，则矩阵 $\boldsymbol{B}$ 的特征值是曲面的主曲率，且曲面的 $\text{Gauss}$ 曲率 $K=\operatorname{det}(\boldsymbol{B})=\left(h_{11} h_{22}-h_{12}^{2}\right)$，平均曲率 $H=\dfrac{1}{2} \operatorname{tr} (\boldsymbol{B})=\dfrac{1}{2}\left(h_{11}+h_{22}\right)$

3. 引入如下记号

    $$
    \begin{aligned}
    \boldsymbol{r}&=\boldsymbol{r}\left(u^{1}, u^{2}\right) \\
    \boldsymbol{r}_{\alpha}&=\dfrac{\partial \boldsymbol{r}}{\partial u^{\alpha}}, \alpha=1,2 \\
    \boldsymbol{r}_{\alpha \beta}&=\dfrac{\partial^{2} \boldsymbol{r}}{\partial u^{\alpha} \partial u^{\beta}}\left(u^{1}, u^{2}\right),  \alpha, \beta=1,2 \\
    \boldsymbol{n}&=\dfrac{\boldsymbol{r}_{1} \wedge \boldsymbol{r}_{2}}{\left|\boldsymbol{r}_{1} \wedge \boldsymbol{r}_{2}\right|} \\
    g_{\alpha \beta}&=\left\langle\boldsymbol{r}_{\alpha}, \boldsymbol{r}_{\beta}\right\rangle, \alpha, \beta=1,2 \\
    b_{\alpha \beta}&=\left\langle\boldsymbol{r}_{\alpha \beta}, \boldsymbol{n}\right\rangle=-\left\langle\boldsymbol{r}_{\alpha}, \boldsymbol{n}_{\beta}\right\rangle, \alpha, \beta=1,2
    \end{aligned}
    $$

    1. 称 $\Gamma_{\alpha \beta}^{\gamma}=\dfrac{1}{2} g^{\gamma \xi}\left\{\dfrac{\partial g_{\alpha \xi}}{\partial u^{\beta}}+\dfrac{\partial g_{\beta \xi}}{\partial u^{\alpha}}-\dfrac{\partial g_{\alpha \beta}}{\partial u^{\xi}}\right\}$ 为曲面的 $\text{Christoffel}$ 符号，$\Gamma_{\xi \alpha \beta}=g_{\gamma \xi} \Gamma_{\alpha \beta}^{\gamma}=\dfrac{1}{2}\left\{\dfrac{\partial g_{\alpha \xi}}{\partial u^{\beta}}+\dfrac{\partial g_{\beta \xi}}{\partial u^{\alpha}}-\dfrac{\partial g_{\alpha \beta}}{\partial u^{\xi}}\right\}$ 为曲面的第二类 $\text{Christoffel}$ 符号
    2. 称方程

        $$
        \left\{\begin{aligned}
        & \dfrac{\partial \boldsymbol{r}}{\partial u^{\alpha}}=\boldsymbol{r}_{\alpha}, & \alpha=1,2 \\
        & \dfrac{\partial \boldsymbol{r}_{\alpha}}{\partial u^{\beta}}=\Gamma_{\alpha \beta}^{\gamma} \boldsymbol{r}_{\gamma}+b_{\alpha \beta} \boldsymbol{n}, & \alpha, \beta=1,2 \\
        & \dfrac{\partial \boldsymbol{n}}{\partial u^{\alpha}}=-b_{\alpha}^{\beta} \boldsymbol{r}_{\beta} . & \alpha=1,2
        \end{aligned}\right.
        $$

        为曲面 $S$ 自然标架 $\left\{\boldsymbol{r} ; \boldsymbol{r}_{1}, \boldsymbol{r}_{2}, \boldsymbol{n}\right\}$ 的运动方程

### 5.4.6 曲面论基本定理
1. 曲面的结构方程：引入 $\text{Riemann}$ 记号 $R_{\delta \alpha \beta \gamma}=g_{\delta \xi}\left(\dfrac{\partial \Gamma_{\alpha \beta}^{\xi}}{\partial u^{\gamma}}-\dfrac{\partial \Gamma_{\alpha \gamma}^{\xi}}{\partial u^{\beta}}+\Gamma_{\alpha \beta}^{\eta} \Gamma_{\eta \gamma}^{\xi}-\Gamma_{\alpha \gamma}^{\eta} \Gamma_{\eta \beta}^{\xi}\right)$
    1. $\text{Gauss}$ 方程：$\dfrac{\partial \Gamma_{\alpha \beta}^{\xi}}{\partial u^{\gamma}}-\dfrac{\partial \Gamma_{\alpha \gamma}^{\xi}}{\partial u^{\beta}}+\Gamma_{\alpha \beta}^{\eta} \Gamma_{\eta \gamma}^{\xi}-\Gamma_{\alpha \gamma}^{\eta} \Gamma_{\eta \beta}^{\xi}-b_{\alpha \beta} b_{\gamma}^{\xi}+b_{\alpha \gamma} b_{\beta}^{\xi}=0$
        1. $R_{\delta \alpha \beta \gamma} = g_{\delta \xi}\left(b_{\alpha \beta} b_{\gamma}^{\xi}-b_{\alpha \gamma} b_{\beta}^{\xi}\right)=-\left(b_{\alpha \gamma} b_{\beta \delta}-b_{\alpha \beta} b_{\gamma \delta}\right)$
        2. $R_{\delta \alpha \beta \gamma}=R_{\beta \gamma \delta \alpha}=-R_{\alpha \delta \beta \gamma}=-R_{\delta \alpha \gamma \beta}$
    2. $\text{Codazzi}$ 方程：$\dfrac{\partial b_{\alpha \beta}}{\partial u^{\gamma}}-\dfrac{\partial b_{\alpha \gamma}}{\partial u^{\beta}}+\Gamma_{\alpha \beta}^{\xi} b_{\xi \gamma}-\Gamma_{\alpha \gamma}^{\xi} b_{\xi \beta}=0 \leftrightarrow \dfrac{\partial b_{\beta}^{\xi}}{\partial u^{\gamma}}-\dfrac{\partial b_{\gamma}^{\xi}}{\partial u^{\beta}}=-b_{\beta}^{\eta} \Gamma_{\eta \gamma}^{\xi}+b_{\gamma}^{\eta} \Gamma_{\eta \beta}^{\xi}$
2. 曲面的存在惟一性定理
    1. 唯一性定理：设 $S_{1}$ 和 $S_{2}$ 是定义在同一个参数域 $D$ 上的两个曲面，其的参数表示分别为 $\boldsymbol{r}\left(u^{1}, u^{2}\right)$ 和 $\widetilde{\boldsymbol{r}}\left(u^{1}, u^{2}\right)$．如果对任意 $\left(u^{1}, u^{2}\right) \in D$，$S_{1}$ 和 $S_{2}$ 在 $\left(u^{1}, u^{2}\right)$ 点有相同的第一基本形式和第二基本形式，则 $S_{1}$ 和 $S_{2}$ 相差一个 $\mathbf{R}^{3}$ 的刚体运动，即存在 $\mathbf{R}^{3}$ 的一个刚体运动 $\mathcal{T}$ 使得 $\widetilde{\boldsymbol{r}}=\mathcal{T} \circ \boldsymbol{r}$
    2. 存在性定理：如果 $\Gamma_{\alpha \beta}^{\gamma}, b_{\alpha \beta}, b_{\beta}^{\alpha}$ 满足 $\text{Gauss}-\text{Codazzi}$ 方程，则对任意 $u_{0}=\left(u_{0}^{1}, u_{0}^{2}\right) \in D$，存在 $u_{0}$ 的一个邻域 $U \subseteq D$ 以及定义在 $U$ 上的曲面 $\boldsymbol{r}\left(u_{1}, u_{2}\right): U \rightarrow \mathbf{R}^{3}$ 使得 $\varphi$ 和 $\psi$ 分别为该曲面的第一、第二基本形式

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

2. 测地平行坐标系：设 $S$ 是 $\mathbf{R}^{3}$ 的曲面，取曲面 $S$ 上一点 $P$，$C$ 是过 $P$ 点的测地线，其弧长参数为 $v \ (|v|<\delta)$，$v=0$ 对应 $P$ 点．过 $C$ 的各点作与 $C$ 正交的测地线，其弧长参数记为 $u$．显然 $u=0$ 就是曲线 $C$，$(u, v)$ 构成了 $P$ 点附近的一个参数网，称 $(u, v)$ 为曲面以 $P$ 为原点的测地平行坐标系
3. 测地极坐标系与法坐标系：从曲面 $S$ 上一点 $P$ 出发，沿任意单位切向量有惟一一条测地线存在．测地线上的点可以用弧长作参数，单位切向量可以用它与一个固定方向的夹角作参数，这样定义的参数系称作曲面的测地极坐标系
    1. 对非零切向量 $\boldsymbol{w} \in T_{P} S,|\boldsymbol{w}|=\rho$，定义映射 $\exp _{P}: T_{P} S \to S$，称其为 $P$ 点的指数映射，当 $|\boldsymbol{w}|<\varepsilon$ 时 $\exp _{P}(\boldsymbol{w})$ 有定义
        1. 取 $P$ 点的正交标架 $\boldsymbol e_{1}, \boldsymbol e_{2}$ 建立 $T_{P} S$ 的直角坐标系，对应 $\boldsymbol{w}=x^{1} \boldsymbol{e}_{1}+x^{2} \boldsymbol{e}_{2} \to \boldsymbol{r}\left(x^{1}, x^{2}\right)=\exp _{P}(\boldsymbol{w})$ 给出了曲面 $S$ 在 $P$ 附近的参数表示 $\boldsymbol{r}=\boldsymbol{r}\left(x^{1}, x^{2}\right)$，称 $\left(x^{1}, x^{2}\right)$ 为以 $P$ 为原点的法坐标系
        2. 通过切平面 $T_{P} S$ 的直角坐标系与极坐标系之间的变换

            $$
            \left\{\begin{array}{l}
            x^{1}=\rho \cos \theta \\
            x^{2}=\rho \sin \theta
            \end{array}\right.
            $$

            $(\rho, \theta)$ 也可以作为曲面 $S$ 在点 $P$ 附近的参数表示，$(\rho, \theta)$ 称为以 $P$ 为原点的测地极坐标系

        3. 在以 $P$ 为原点的测地极坐标系 $\boldsymbol{r}=\boldsymbol{r}(\rho, \theta)$ 下，$\rho$ 线 $\theta=\theta_{0}$ 是从 $P$ 点出发、与单位切向量 $\boldsymbol{v}_{0}=\cos \theta_{0} \boldsymbol{e}_{1}+\sin \theta_{0} \boldsymbol{e}_{2}$ 相切的测地射线，$\rho$ 是弧长参数．从指数映射来看，$\rho$ 线是切平面 $T_{P} S$ 的射线 $\rho v_{0}$ 在指数映射下的像 $\exp _{P}\left(\rho v_{0}\right)$．同样 $\theta$ 线 $\rho=\rho_{0}$ 是切平面 $T_{P} S$ 上以原点为圆心、$\rho_{0}$ 为半径的圆在指数映射下的像 $\exp _{P}\left(\rho_{0} \boldsymbol{v}\right)$，称作以 $\rho_{0}$ 为半径的测地圆

    2. 记与 $\boldsymbol{e}_{1}$ 的夹角为 $\theta$ 的 $\rho$ 线为 $C_{\theta}$，则 $\left\{C_{\theta} \mid \theta \in[0,2 \pi]\right\}$ 是从 $P$ 点出发的一族测地线，$\boldsymbol{r}(\rho, \theta)$ 表示的是测地线 $C_{\theta}$ 上弧长为 $\rho$ 对应的点，因此测地极坐标系类似于平面的极坐标系
        1. $\left(x^{1}, x^{2}\right)$ 是曲面在 $P$ 附近的正则参数
        2. 设曲面在以 $P$ 为原点的法坐标系 $\left(x^{1}, x^{2}\right)$ 下的第一基本形式 $\mathrm{I}=g_{\alpha \beta} \mathrm{d} x^{\alpha} \mathrm{d} x^{\beta}$，则

            $$
            \left(g_{\alpha \beta}\right)(P)=\left(\delta_{\alpha \beta}\right), \  \dfrac{\partial g_{\alpha \beta}}{\partial x^{\gamma}}(P)=0, \  \forall \alpha, \beta, \gamma=1,2
            $$

    3. 法坐标系与测地极坐标系之间变换的 $\text{Jacobi}$ 行列式为 $\dfrac{\partial\left(x^{1}, x^{2}\right)}{\partial(\rho, \theta)}=\rho$，这表明测地极坐标系 $(\rho, \theta)$ 是曲面在点 $P$ 附近（$P$ 点除外）的正则参数．在测地极坐标系下，$\rho$ 线（$\theta$ 为常数）是过 $P$ 点的测地线，$\theta$ 线（$\rho$ 为常数）称为以 $P$ 为中心，$\rho$ 为半径的测地圆
        1. $\mathrm{I}=\mathrm{d} s^{2}=\mathrm{d} \rho^{2}+G(\rho, \theta) \mathrm{d} \theta^{2}$
        2. ${\displaystyle \lim _{\rho \rightarrow 0} \sqrt{G}=0}$
        3. ${\displaystyle \lim _{\rho \rightarrow 0}(\sqrt{G})_{\rho}=1}$
    4. 设 $P$ 是曲面 $S$ 的一点，则存在 $P$ 点的一个小邻域 $U$ 使得对任意的 $Q \in U$，在 $U$ 内联结 $P, Q$ 两点的测地线的长度在所有联结这两点的曲面曲线中最短

4. $\text{Gauss}-\text{Bonnet}$ 公式：设 $D$ 是曲面 $S$ 上的一块单连通区域，$\partial D$ 是分段光滑闭曲线，设 $\alpha_{i}$ 是 $\partial D$ 的顶点的外角，则

    $$
    \iint_{\mathrm{D}} K d A+\int_{\partial \mathrm{D}} k_{g} d s+\sum \alpha_{i}=2 \pi
    $$
