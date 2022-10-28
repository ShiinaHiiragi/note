# 2 变换与坐标

## 2.1 变换群

## 2.2 仿射几何
### 2.2.1 仿射几何公理体系

### 2.2.2 仿射变换

### 2.2.3 仿射空间
1. 线性空间的同构
    1. $\mathbf R^n$ 是 $\mathbf R$ 上的线性空间：设 $(x_1, x_2, \cdots, x_n), (y_1, y_2, \cdots, y_n) \in \mathbf R^n$，定义 $\mathbf R^n$ 上的加法运算与 $\mathbf R$ 上的数乘运算

        $$
        \begin{aligned}
        (x_1, x_2, \cdots, x_n) + (y_1, y_2, \cdots, y_n) &= (x_1 + y_1, x_2 + y_2, \cdots, x_n + y_n) \\
        k(x_1, x_2, \cdots, x_n) &= (kx_1, kx_2, \cdots, kx_n)
        \end{aligned}
        $$

        并定义 $\boldsymbol 0 = (0, 0, \cdots, 0)$，则 $\mathbf R^n$ 构成一个线性空间

    2. 任意 $n$ 维线性空间 $V$ 同构于线性空间 $\mathbf R^n$：线性空间 $R^n$ 中的 $n$ 个向量

        $$
        \begin{aligned}
        \boldsymbol \varepsilon_1 & = (1, 0, \cdots, 0) \\
        \boldsymbol \varepsilon_2 & = (0, 1, \cdots, 0) \\
        \cdots \\
        \boldsymbol \varepsilon_n & = (0, 0, \cdots, 1)
        \end{aligned}
        $$

        称为空间 $\mathbf R^n$ 的标准基．设线性空间 $V$ 中向量 $\boldsymbol \alpha$ 在基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 下的坐标为 $x_1, x_2, \cdots, x_n$，即 $\boldsymbol \alpha = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$．构造同构映射 $\varphi: V \to \mathbf R^n$ 为 $\varphi(\boldsymbol \alpha) = (x_1, x_2, \cdots, x_n)$ 将线性空间 $V$ 中的一组基变为空间 $\mathbf R^n$ 中的给定基

2. 仿射空间：设 $\mathscr A$ 是一个集合，对于 $\mathscr A$ 给出线性空间 $V$ 与映射 $v: \mathscr A \times \mathscr A \to V$，使得
    1. 对任意 $A \in \mathscr A$ 与向量 $\boldsymbol \alpha \in V$，存在唯一的点 $B \in \mathscr A$ 使得 $v(A, B) = \boldsymbol \alpha$
    2. 对任意三点 $A, B, C \in \mathscr A$ 有 $v(A, B) + v(B, C) = v(A, C)$

    则称 $\mathscr A$ 为与线性空间 $V$ 相联系的仿射空间，并记 $v(A, B) = \overrightarrow{AB} \ (A, B \in \mathscr A)$

    1. 维度：$\mathscr A$ 的维度为与之相联系的线性空间 $V$ 的维度，记作 $\operatorname{dim} {\mathscr A} = \operatorname{dim} V$
    2. 任何线性空间都是一个仿射空间：设 $V$ 是一个线性空间，定义 $\overrightarrow{\boldsymbol \alpha \boldsymbol \beta} = \boldsymbol \beta - \boldsymbol \alpha$，则 $V$ 是一个仿射空间

3. 仿射几何公理的完备性：任何维数相同的仿射空间都是同构的
    1. $\text{Euclid}$ 空间 $\mathbf R^n$ 是一个与内积空间 $\mathbf R^n$ 相联系的仿射空间．设 $A = (a_1, a_2, \cdots, a_n), B = (b_1, b_2, \cdots, b_n)$，定义 $\overrightarrow{AB} = (b_1 - a_1, b_2 - a_2, \cdots, b_n - a_n)$，其中点 $A$ 称为向量 $\overrightarrow{AB}$ 的始点，点 $B$ 称为向量 $\overrightarrow{AB}$ 的终点
    2. 仿射空间的同构：设 $\mathscr A, \mathscr B$ 是两个仿射空间，且相联系的线性空间 $V, W$ 存在同构映射 $\varphi: V \to W$．若存在一个双射 $\psi: \mathscr A \to \mathscr B$ 使得对于任意 $A, B \in \mathscr A$，均有 $\overrightarrow{\psi(A) \psi(B)} = \varphi(\overrightarrow{AB})$，则称 $\mathscr A$ 与 $\mathscr B$ 同构
        1. 设 $\mathscr A$ 为任意仿射空间，任选 $O \in \mathscr A$．对于任意 $A \in \mathscr A$，构造径向量（或称向径） $\psi_O(A) = \overrightarrow{OA}$，则 $\mathscr A$ 同构于相联系的被看作为仿射空间的线性空间 $V$
        2. 任何一个被看作仿射空间的 $n$ 维线性空间同构于仿射空间 $\mathbf R^n$
    3. 仿射标架：设 $\mathscr A$ 为仿射空间，$V$ 为与之联系的线性空间，称 $\mathscr A$ 中一点 $O$ 与基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 组成的集合称为 $\mathscr A$ 中的仿射标架，记作 $[O; \boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n]$，称点 $O$ 为原点，称基所在的直线为坐标轴
        1. 每个仿射标架 $[O; \boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n]$ 确定一个同构 $\psi: \mathscr A \to \mathbf R^n$，称之为坐标同构．当 $\psi(A) = (x_1, x_2, \cdots, x_n)$ 时，记作 $A(x_1, x_2, \cdots, x_n)$
        2. 当标架取定后，仿射空间与与之联系的线性空间与 $\mathbf R^n$ 具有一一对应的关系，称之为坐标系．由仿射标架确定的坐标系称作仿射坐标系

### 2.3.4 仿射几何

## 2.3 Euclid 几何
### 2.3.1 Euclid 几何公理体系

### 2.3.2 正交变换

### 2.3.3 Euclid 空间
1. $\text{Euclid}$ 空间：设 $\mathscr A$ 是一个 $n$ 维仿射空间，$A, B$ 为仿射空间中的两个点，若与 $\mathscr A$ 相联系的线性空间是一个内积空间，则可定义仿射空间的度量 $\rho$ 为 $\rho(A, B) = |\overrightarrow{AB}|$．此时称 $\mathscr A$ 为一个 $\text{Euclid}$ 空间，记作 $E^n$
2. $\text{Descartes}$ 标架
    1. 若仿射标架的基均为单位向量，称该仿射标架为 $\text{Descartes}$ 标架．由 $\text{Descartes}$ 标架确定的坐标系称作 $\text{Descartes}$ 坐标系
    2. 若 $\text{Descartes}$ 标架的基两两正交，则称该仿射标架为 $\text{Descartes}$ 直角标架．由 $\text{Descartes}$ 直角标架确定的坐标系称作 $\text{Descartes}$ 直角坐标系
3. $\text{Descartes}$ 直角坐标系的实例
    1. 平面直角坐标系：$2$ 维 $\text{Descartes}$ 直角坐标系．习惯称基 $\boldsymbol e_1$ 与 $\boldsymbol e_2$ 对应的两个坐标轴为 $x$ 轴与 $y$ 轴，记坐标系为 $xOy$．两个坐标轴将平面分成四个象限

        <div style="text-align: center;">

        |   象限   |            点集            |
        | :------: | :------------------------: |
        | 第一象限 | $\{(x, y) \mid x>0, y>0\}$ |
        | 第二象限 | $\{(x, y) \mid x<0, y>0\}$ |
        | 第三象限 | $\{(x, y) \mid x<0, y<0\}$ |
        | 第四象限 | $\{(x, y) \mid x>0, y<0\}$ |

        </div>

    2. 空间直角坐标系：$3$ 维 $\text{Descartes}$ 直角坐标系．习惯称基 $\boldsymbol e_1, \boldsymbol e_2$ 与 $\boldsymbol e_3$ 对应的三个坐标轴为 $x$ 轴，$y$ 轴与 $z$ 轴，记坐标系为 $Oxyz$．三个坐标轴将平面分成八个卦限

        <div style="text-align: center;">

        |   卦限   |                点集                |   卦限   |                 点集                 |
        | :------: | :--------------------------------: | :------: | :----------------------------------: |
        | 第一卦限 | $\{(x, y, z) \mid x>0, y>0, z>0\}$ | 第五卦限 | $\{(x, y, z) \mid x>0, y>0, z < 0\}$ |
        | 第二卦限 | $\{(x, y, z) \mid x<0, y>0, z>0\}$ | 第六卦限 | $\{(x, y, z) \mid x<0, y>0, z < 0\}$ |
        | 第三卦限 | $\{(x, y, z) \mid x<0, y<0, z>0\}$ | 第七卦限 | $\{(x, y, z) \mid x<0, y<0, z < 0\}$ |
        | 第四卦限 | $\{(x, y, z) \mid x>0, y<0, z>0\}$ | 第八卦限 | $\{(x, y, z) \mid x>0, y<0, z < 0\}$ |

        </div>

4. $\text{Euclid}$ 空间下的其他坐标系
    1. 极坐标系：$2$ 维仿射空间中的一个顶点 $O$ 与基 $\boldsymbol e$ 组成了一个极坐标系，称 $O$ 为极点，$\boldsymbol e$ 所在的直线为极轴．任意有序数对 $(\rho, \theta)$（其中 $\rho \geqslant 0, -\pi < \varphi \leqslant \pi$）唯一对应了平面中的点 $P$，其中 $\rho = |\overrightarrow{OP}|$，$\theta$ 为 $\overrightarrow{OP}$ 与 $\boldsymbol e$ 的夹角．并称 $\rho$ 为极径，称 $\theta$ 为极角，称 $(\rho, \theta)$ 为点 $P$ 的极坐标，记作 $P(\rho, \theta)$
        1. 极坐标化为平面直角坐标

            $$
            \left\{\begin{aligned}
            & x = \rho \cos \theta \\
            & y = \rho \sin \theta
            \end{aligned}\right.
            \ \left(\begin{array}{l}
            \rho \geqslant 0 \\
            -\pi < \varphi \leqslant \pi
            \end{array}\right)
            $$

        2. 平面直角坐标化为极坐标

            $$
            \left\{\begin{aligned}
            & \rho^2 = x^2 + y^2 \\
            & \tan \theta = \dfrac{y}{x}
            \end{aligned}\right.
            $$

    2. 球坐标系：$3$ 维仿射空间中的一个顶点 $O$ 与不共线的基 $\boldsymbol e_1, \boldsymbol e_2$ 组成了一个球坐标系，称 $O$ 为原点．设 $\overrightarrow{OP}$ 在 $\mathrm{span}(\boldsymbol e_1, \boldsymbol e_2)$ 的正交投影为 $\overrightarrow{OM}$，则任意 $3$ 元有序组 $(\rho, \varphi, \theta)$（其中 $\rho \geqslant 0, -\pi<\varphi \leqslant \pi, -\dfrac{\pi}{2} \leqslant \theta \leqslant \dfrac{\pi}{2}$）唯一对应了空间中的点 $P$，其中 $\rho = |\overrightarrow{OP}|$．则 $\varphi$ 表示 $\overrightarrow{OM}$ 与 $\boldsymbol e_1$ 的夹角，$\theta$ 是 $\overrightarrow{OP}$ 与 $\overrightarrow{OM}$ 的夹角．称 $(\rho, \varphi, \theta)$ 为点 $P$ 的球坐标，记作 $P(\rho, \varphi, \theta)$
        1. 球坐标化为空间直角坐标

            $$
            \left\{\begin{array}{l}
            x=\rho \cos \theta \cos \varphi \\
            y=\rho \cos \theta \sin \varphi \\
            z=\rho \sin \theta
            \end{array}\right.
            \ \left(\begin{array}{l}
            \rho \geqslant 0 \\
            -\pi<\varphi \leqslant \pi \\
            -\dfrac{\pi}{2} \leqslant \theta \leqslant \dfrac{\pi}{2}
            \end{array}\right)
            $$

        2. 空间直角坐标化为球坐标

            $$
            \left\{\begin{array}{l}
            \rho=\sqrt{x^2+y^2+z^2} \\
            \cos \varphi=\dfrac{x}{\sqrt{x^2+y^2}} \\
            \sin \varphi=\dfrac{y}{\sqrt{x^2+y^2}} \\
            \theta=\arcsin \dfrac{z}{\sqrt{x^2+y^2+z^2}}
            \end{array}\right.
            $$

    3. 柱坐标系：$3$ 维仿射空间中的一个顶点 $O$ 与正交的两个基 $\boldsymbol e_1, \boldsymbol e_2$ 组成了一个柱坐标系，也称作半极坐标．点 $O$ 与基 $e_1$ 组成一个平面上的极坐标系．设 $\overrightarrow{OP}$ 在 $\mathbf N(\boldsymbol e_1)$ 的正交投影为 $\overrightarrow{OM}$，则任意 $3$ 元有序组 $(\rho, \varphi, u)$（其中 $\rho \geqslant 0, -\pi< \varphi \leqslant \pi, u \in \mathbf R$）唯一对应了空间中的点 $P$，其中 $(\rho, \varphi)$ 是 $\overrightarrow{OM}$ 在点 $O$ 与基 $e_1$ 形成的极坐标系下的坐标，$|u| = |\overrightarrow{MP}|$．称 $(\rho, \varphi, u)$ 为点 $P$ 的球坐标，记作 $P(\rho, \varphi, u)$
        1. 柱坐标化为空间直角坐标

            $$
            \left\{\begin{array}{l}
            x=\rho \cos \varphi \\
            y=\rho \sin \varphi \\
            z=u
            \end{array}\right.
            \ \left(\begin{array}{l}
            \rho \geqslant 0 \\
            -\pi< \varphi \leqslant \pi \\
            u \in \mathbf R
            \end{array}\right)
            $$

        2. 空间直角坐标化为柱坐标

            $$
            \left\{\begin{array}{l}
            \rho=\sqrt{x^2+y^2} \\
            \cos \varphi=\dfrac{x}{\sqrt{x^2+y^2}} \\
            \sin \varphi=\dfrac{y}{\sqrt{x^2+y^2}} \\
            u=z
            \end{array}\right.
            $$


### 2.3.4 Hilbert 几何

## 2.4 射影几何
### 2.4.1 射影几何公理体系

### 2.4.2 射影变换

### 2.4.3 射影空间

### 2.4.4 射影几何
