# 3 曲线方程与曲线论

## 3.1 平面曲线方程
1. 平面曲线方程：设 $2$ 维仿射空间取定了 $\text{Descartes}$ 直角坐标系．若方程 $F(x, y) = 0$ 与曲线 $L$ 有关系：点 $P(x, y)$ 在曲线 $L$ 上当且仅当 $(x, y)$ 满足该方程，则称该方程为 $L$ 的曲线方程
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

### 3.1.1 直线
1. 直线的一般方程：$L: Ax + By + C = 0 \ (A^2 + B^2 = 0)$
    1. 直线与向量：设 $L$ 上相异两点为 $P(x_1, y_1), Q(x_2, y_2)$，则 $\overrightarrow{PQ} = (x_2 - x_1, y_2 - y_1)$ 称为直线 $L$ 的方向向量；与 $\overrightarrow{PQ}$ 垂直的向量称为直线 $L$ 的法向量
    2. 斜率与倾角：当 $B \neq 0$ 时，称 $k = -\dfrac{A}{B}$ 为直线的斜率，称 $\arctan k$ 为直线的倾角 $\theta$，后者是 $L$ 上方向向量与基 $\boldsymbol e_1$ 的夹角，且其取值范围为 $[0, \pi)$；当 $B = 0$ 时，称直线 $L$ 的斜率不存在
    3. 直线的法距：直线 $L$ 上点 $Q$ 的径向量 $\overrightarrow{OQ}$ 的最小模长 $\dfrac{\left|C\right|}{\sqrt{A^2+B^2}}$

    !!! note "一般方程的变形"
        1. 若 $A \neq 0$
            1. 若 $B=0$，则方程变为 $x+\dfrac{C}{A}=0$，表示过 $x$ 轴上的点 $\left(-\dfrac{C}{A}, 0\right)$ 且正交于 $x$ 轴的直线
            2. 若 $B \neq 0$, 则方程化为斜截式 $y=-\dfrac{A}{B} x-\dfrac{C}{B}$
        2. 若 $A \neq 0, B \neq 0, C \neq 0$, 则方程化为截距式 $\dfrac{x}{-\dfrac{C}{A}}+\dfrac{y}{-\dfrac{C}{B}}=1$

2. 直线方程的其他表示
    1. 极坐标方程：设 $P(\rho_0, \theta_0)$ 是直线 $L$ 上任一点的极坐标
        1. 过原点的直线：$L: \theta = \theta_0$
        2. 不过原点的直线：$p > 0$ 为直线 $L$ 的法距，则 $L: \rho=\dfrac{p}{\cos (\alpha-\theta)}$，其中 $\alpha$ 是与 $L$ 垂直直线的倾斜角
    2. 参数式方程：设 $P(x_0, y_0)$ 是倾角为 $\varphi$ 的直线 $L$ 上任一点，则直线 $L$ 的参数方程为 $L: \left\{\begin{array}{l} x=x_0+t \cos \varphi \\ y=y_0+t \sin \varphi \end{array}\right. \ (t \in \mathbf R)$
3. 直线与点的关系：设 $L: Ax + By + C = 0 \ (A^2 + B^2 = 0)$，点 $P$ 的坐标为 $(x_1, y_1)$，点 $Q(x_2, y_2)$ 在直线 $L$ 上．则点到直线的距离 $d$ 定义为 $\min |\overrightarrow{PQ}| = \dfrac{\left|A x_1+B y_1+C\right|}{\sqrt{A^2+B^2}}$
4. 直线间关系：设 $L_1: A_1 x + B_1 y + C_1 = 0$ 与 $L_2: A_2 x + B_2 y + C_2 = 0$ 是两条直线
    1. 两直线重合当且仅当 $A_1 B_2 - A_2 B_1 = 0$ 且 $A_1 C_2 \neq A_2 C_1$
    2. 定义两直线垂直为两直线的方向向量正交，此时 $A_1 A_2 + B_1 B_2 = 0$
    3. 定义两直线平行为两直线的方向向量共线且两直线不重合，此时 $A_1 B_2 - A_2 B_1 = 0$ 且 $A_1 C_2 = A_2 C_1$，此时两直线间的距离为 $\dfrac{|C_1 - C_2|}{\sqrt{A^2+B^2}}$

### 3.1.2 二次曲线

### 3.1.3 其他曲线

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

## 3.3 二次曲线一般理论

## 3.4 二次曲线射影理论

## 3.5 曲线的局部理论
