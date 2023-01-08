# 4 曲面方程与曲面论

## 4.1 曲面方程
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

### 4.1.1 空间平面
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

### 4.1.2 空间曲面
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

4. 椭球面：在直角坐标系下，由方程 $\dfrac{x^2}{a^2}+\dfrac{y^2}{b^2}+\dfrac{z^2}{c^2}=1$ 所表示的曲面称作椭球面．称该方程为椭球面的标准方程，其中 $a, b, c$ 为任意正常数
5. 双曲面
6. 抛物面

## 4.2 二次曲面一般理论

## 4.3 二次曲面射影理论

## 4.4 曲面的局部理论

## 4.5 曲面的内蕴理论
