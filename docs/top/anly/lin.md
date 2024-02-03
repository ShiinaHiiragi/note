# 1 线性空间与向量

## 1.1 线性空间
- 设 $\mathrm{VF}-$结构 $\mathfrak V = (V, +^\mathfrak V, 0^\mathfrak V, \{\sigma^\mathfrak V \mid \sigma \in F\})$ 为一个线性空间，也称 $V$ 是一个线性空间
    1. 向量：通常将 $V$ 中的元素称为向量，将常元 $0^\mathfrak V$ 称为零向量，记作 $\boldsymbol 0$
    2. 一元函数符集合 $\{\sigma^\mathfrak V \mid \sigma \in F\}$ 定义了向量的数乘，通常将 $\sigma^\mathfrak V(\boldsymbol \alpha)$ 简记为 $\sigma \boldsymbol \alpha$，其中 $\boldsymbol \alpha \in V$
    3. 二元函数符 $+^\mathfrak V$ 定义了向量的加法

    特别地，若 $F = \mathbf R$，则称 $V$ 是一个实线性空间；若 $F = \mathbf C$，则称 $V$ 是一个复线性空间

### 1.1.1 线性相关
1. 线性相关：设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s \ (s \geqslant 1)$ 为一组 $n$ 元向量，若存在不全为零的系数 $k_1, k_2, \cdots, k_s$ 使得 $k_1 \boldsymbol \alpha_1 + k_2 \boldsymbol \alpha_2 + \cdots + k_s \boldsymbol \alpha_s = \boldsymbol 0$，则称向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 线性相关，否则称向量组线性无关
    1. 线性组合：设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m, \boldsymbol \beta$ 为一组 $n$ 元向量．若存在一组实数 $k_1, k_2, \cdots, k_m$ 使得 $\boldsymbol \beta = k_1 \boldsymbol \alpha_1 + k_2 \boldsymbol \alpha_2 + \cdots + k_m \boldsymbol \alpha_m$，则称向量 $\boldsymbol \beta$ 是 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m$ 的线性组合，或称 $\boldsymbol \beta$ 可由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m$ 线性表出，$k_1, k_2, \cdots, k_m$ 称为线性组合系数或线性表出系数

        !!! note "向量的共线与共面"
            1. 设向量 $\boldsymbol e \neq 0$，若向量 $\boldsymbol r$ 是 $\boldsymbol e$ 的线性组合，则称向量 $\boldsymbol r$ 与向量 $\boldsymbol e$ 共线
            2. 设向量 $\boldsymbol e_1, \boldsymbol e_2$ 不共线，若向量 $\boldsymbol r$ 是 $\boldsymbol e_1, \boldsymbol e_2$ 的线性组合，则称向量 $\boldsymbol r$ 与向量 $\boldsymbol e_1, \boldsymbol e_2$ 共面

    2. 线性相关的性质
        1. 若一个向量组线性无关，则其任何一个部分向量组线性无关
        2. 向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s (s \geqslant 2)$ 线性相关当且仅当该向量组中至少有一个向量可由其余向量线性表出
        3. 设 $\boldsymbol A = \begin{bmatrix} \boldsymbol \alpha_1 & \boldsymbol \alpha_2 & \cdots & \boldsymbol \alpha_n \\ \end{bmatrix}$，向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 线性相关当且仅当矩阵的秩 $\mathrm{rank}(\boldsymbol A) < s$，向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 线性无关当且仅当矩阵的秩 $\mathrm{rank}(\boldsymbol A) = s$
    3. 极大无关组：如果向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 中的部分向量组 $\boldsymbol \alpha_{i_1}, \boldsymbol \alpha_{i_2}, \cdots, \boldsymbol \alpha_{i_r}$
        1. 线性无关
        2. 加入原向量组（如果有）中其他任一向量所形成的新的部分向量组均线性相关

        则称部分向量组 $\boldsymbol \alpha_{i_1}, \boldsymbol \alpha_{i_2}, \cdots, \boldsymbol \alpha_{i_r}$ 为向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 的一个极大线性无关组．特别地，线性无关向量组的极大线性无关组是其本身

        1. 向量组中任一向量都可由该向量组的极大线性无关组线性表出
        2. 一个向量组的任意两个极大线性无关组可以相互线性表出，且所含向量个数相等

    4. 向量组的秩：向量组的极大线性无关组所含向量的个数
        1. 矩阵的列（行）秩：矩阵的列（行）向量组的秩称为矩阵的列（行）秩
        2. 矩阵的秩等于矩阵的列（行）秩

2. 线性方程组与线性相关性
    1. 设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 是齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的一组解向量，若其满足条件
        1. 线性无关
        2. 齐次线性方程组的任一解向量都能由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 线性表出

        则称  $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 为齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的基础解系

        1. 设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 均为齐次线性方程组的解，则 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 的线性组合也是 $\boldsymbol{Ax} = \boldsymbol 0$ 的解
        2. 设 $\mathrm{rank}(\boldsymbol A_{m \times n}) = r$，若 $\boldsymbol{Ax} = \boldsymbol 0$ 有非零解，则该齐次线性方程组有基础解系，且基础解系含有 $n - r$ 个解
        3. 设 $\boldsymbol A$ 为 $m \times n$ 矩阵，$\boldsymbol \beta$ 为 $m$ 元列向量
            1. $\mathrm{rank}(\boldsymbol A \boldsymbol A^{\mathrm T}) = \mathrm{rank}(\boldsymbol A^{\mathrm T} \boldsymbol A) = \mathrm{rank}(\boldsymbol A) = \mathrm{rank}(\boldsymbol A^{\mathrm T})$
            2. 线性方程组 $\boldsymbol A^{\mathrm T} \boldsymbol A \boldsymbol x = \boldsymbol A^{\mathrm T} \boldsymbol \beta$ 一定有解

    2. 设 $\boldsymbol x_0$ 是非齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol \beta$ 的某个特解，$\boldsymbol y$ 是相应齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的通解，则非齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol \beta$ 的通解为 $\boldsymbol x = \boldsymbol x_0 + \boldsymbol y$
        1. 非齐次线性方程组的解集 $\{\boldsymbol x \mid \boldsymbol{Ax} = \boldsymbol \beta, \boldsymbol \beta \neq \boldsymbol 0\}$ 不构成子空间
        2. 线性方程组 $\boldsymbol{Ax} = \boldsymbol \beta$ 有解的充要条件是 $\boldsymbol \beta \in \mathbf C(\boldsymbol A)$

3. 坐标：设向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是 $n$ 维线性空间 $V$ 的一组基，$\boldsymbol \alpha$ 是 $V$ 中的任一向量，若 $\boldsymbol \alpha = x_1 \boldsymbol \varepsilon_1 + x_2 \boldsymbol \varepsilon_2 + \cdots + x_n \boldsymbol \varepsilon_n$，则称 $x_1, x_2, \cdots, x_n$ 为向量 $\boldsymbol \alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的坐标
    1. 基与维数：设 $V$ 是线性空间，如果在 $V$ 中存在 $n$ 个线性无关的向量 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 使得 $V$ 中任一向量 $\boldsymbol \alpha$ 均可由这些向量线性表出，则称向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 为线性空间 $V$ 的一组基，$n$ 称为线性空间 $V$ 的维数，记作 $\operatorname{dim} V = n$，并称 $V$ 是 $n$ 维线性空间
    2. 任意向量在给定基下的坐标唯一：通常将向量写作行向量或列向量的形式，并看作是特殊的矩阵．设向量 $\boldsymbol \alpha$ 有

        $$
        \boldsymbol \alpha = x_1 \boldsymbol \varepsilon_1 + x_2 \boldsymbol \varepsilon_2 + \cdots + x_n \boldsymbol \varepsilon_n
        $$

        1. 称

            $$
            \boldsymbol \alpha = \begin{bmatrix}
            x_1 & x_2 & \cdots & x_n \\
            \end{bmatrix}
            $$

            为 $n$ 元行向量，相当于一个 $1 \times n$ 矩阵

        2. 称

            $$
            \boldsymbol \beta = \boldsymbol \alpha^{\mathrm T} = \begin{bmatrix}
            x_1 \\
            x_2 \\
            \vdots \\
            x_n \\
            \end{bmatrix}
            $$

            为 $n$ 元列向量，相当于一个 $n \times 1$ 矩阵

        通常情况下向量均为列向量

        1. 零向量的所有坐标分量均为 $0$ 且与基的选取无关
        2. 设两个 $n$ 元向量 $\boldsymbol \alpha, \boldsymbol \beta$，若其所有对应坐标分量相等时，称向量 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 相等，记作 $\boldsymbol \alpha = \boldsymbol \beta$

    3. 坐标变换公式：设 $V$ 是 $n$ 维线性空间，$\boldsymbol M$ 是由基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵，$V$ 中的向量 $\boldsymbol \alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 和基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 下的坐标分别为 $\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$ 与 $\boldsymbol x' = \begin{bmatrix} x_1' & x_2' & \cdots & x_n' \\ \end{bmatrix}^{\mathrm T}$，则 $\boldsymbol x = \boldsymbol M \boldsymbol x'$
        1. 过渡矩阵：设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 与 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 是 $n$ 维线性空间 $V$ 的两组基，若

            $$
            \begin{bmatrix} \boldsymbol \eta_1 & \boldsymbol \eta_2 & \cdots & \boldsymbol \eta_n \\ \end{bmatrix} = \begin{bmatrix} \boldsymbol \varepsilon_1 & \boldsymbol \varepsilon_2 & \cdots & \boldsymbol \varepsilon_n \\ \end{bmatrix} \boldsymbol M
            $$

            则称 $n$ 阶方阵 $\boldsymbol M$ 为从基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵

        2. 过渡矩阵是可逆的

### 1.1.2 构造空间
1. 子空间：设 $V$ 是 $F$ 上的线性空间，$W$ 是 $V$ 的一个非空子集．如果 $W$ 是 $V$ 的子结构，则称 $W$ 为 $V$ 的一个线性子空间
    1. 设 $V$ 是 $F$ 上的线性空间，$W$ 是 $V$ 的一个非空子集，若满足条件
        1. 如果 $\boldsymbol \alpha, \boldsymbol \beta \in W$，则 $\boldsymbol \alpha + \boldsymbol \beta \in W$
        2. 如果 $\boldsymbol \alpha \in W, \lambda \in F$，则 $\lambda \boldsymbol \alpha \in W$

        则 $W$ 是 $V$ 的一个子空间

    2. 设 $V$ 是实数域 $\mathbf R$ 上的线性空间，$\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 是 $V$ 中的一组向量，这组向量所有可能的线性组合所组成的集合 $\left\{{\displaystyle \left. \sum_{i=1}^n \lambda_i \boldsymbol \alpha_i \right| \lambda_i \in \mathbf R}\right\}$ 是 $V$ 的一个线性子空间，称为由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 张成的子空间，记作 $\mathrm{span}(\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n)$，其维数等于向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 的秩
    3. 基扩充定理：任何一个子空间的基偶可以扩充成为整个线性空间的基
    4. 子空间的交与和：设 $W_1$ 与 $W_2$ 是线性空间 $V$ 的两个子空间，其交定义为 $W_1 \cap W_2 = \{\boldsymbol \alpha \mid \boldsymbol \alpha \in W_1 \wedge \boldsymbol \alpha \in W_2\}$，其和定义为 $W_1 + W_2 = \{\boldsymbol \alpha + \boldsymbol \beta \mid \boldsymbol \alpha \in W_1 \wedge \boldsymbol \beta \in W_2\}$
        1. 封闭性：$W_1 \cap W_2$ 与 $W_1 + W_2$ 均为 $V$ 的子空间
        2. 交换律：$W_1 \cap W_2 = W_2 \cap W_1, W_1 + W_2 = W_2 + W_1$
        3. 结合律：$(W_1 \cap W_2) \cap W_3 = W_1 \cap (W_2 \cap W_3), (W_1 + W_2) + W_3 = W_1 + (W_2 + W_3)$
        4. 维数公式：$\operatorname{dim} W_1 + \operatorname{W_2} = \operatorname{\dim} (W_1 + W_2) + \operatorname{dim} (W_1 \cap W_2)$

2. 零空间与列空间：齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的解集称为该齐次线性方程组的解空间，或称为矩阵 $A$ 的零空间，记作 $\mathbf N(\boldsymbol A)$；矩阵 $\boldsymbol A$ 的列向量张成的子空间称为矩阵 $\boldsymbol A$ 的列空间，记作 $\mathbf C(\boldsymbol A)$
    1. 齐次线性方程组的基础解系张成的空间 $\{\boldsymbol x \mid \boldsymbol{Ax} = \boldsymbol 0\}$ 是矩阵 $\boldsymbol A$ 的零空间，其构成线性空间 $\mathbf R^n$ 的一个子空间
    2. 设矩阵 $\boldsymbol A_{m \times n}$ 的秩为 $r$，则矩阵 $\boldsymbol A$ 的列空间的维数 $\operatorname{dim} \mathbf C(\boldsymbol A) = r$；零空间的维数 $\operatorname{dim} \mathbf N(\boldsymbol A) = n - r$
3. 补空间：设 $W_1$ 与 $W_2$ 是线性空间 $V$ 的两个子空间，如果 $W_1 \cap W_2 = \{\boldsymbol 0\}, W_1 + W_2 = V$，则称 $W_2$ 是 $W_1$ 关于线性空间 $V$ 的（代数）补空间，此时记 $V = W_1 \ \dot{+} \ W_2$，称其为 $W_1$ 与 $W_2$ 的直和
    1. 补空间存在性定理：设 $W_1$ 是 $n$ 维线性空间 $V$ 的子空间，则存在 $W_1$ 关于线性空间 $V$ 的补空间
    2. 正交补空间：设 $W_1, W_2$ 是 $\text{Euclid}$ 线性空间 $V$ 的两个子空间，如果 $W_1 \bot W_2$ 且 $W_1 + W_2 = V$，则称 $W_2$ 是 $W_1$ 的正交补空间，记作 $W_2 = W_1^\bot$ 或 $V = W_1 \oplus W_2$，称其为 $W_1$ 与 $W_2$ 的正交和
        1. $W_2 = W_1^\bot \to W_1 = W_2^\bot$
        2. $\mathbf C(\boldsymbol A)^\bot = \mathbf N(\mathbf A^{\mathrm T})$

### 1.1.3 Euclid 线性空间
1. $\text{Euclid}$ 线性空间：设 $V$ 是实数域 $\mathbf R$ 上一个线性空间，如果二元运算 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>$ 满足以下条件
    1. $\left<\boldsymbol \alpha, \boldsymbol \beta\right> = \left<\boldsymbol \beta, \boldsymbol \alpha\right>$
    2. $\left<k \boldsymbol \alpha, \boldsymbol \beta\right> = k \left<\boldsymbol \alpha, \boldsymbol \beta\right>$
    3. $\left<\boldsymbol \alpha + \boldsymbol \beta, \boldsymbol \gamma\right> = \left<\boldsymbol \alpha, \boldsymbol \gamma\right> + \left<\boldsymbol \beta, \boldsymbol \gamma\right>$
    4. $\left<\boldsymbol \alpha, \boldsymbol \alpha\right> \geqslant 0$ 且 $\left<\boldsymbol \alpha, \boldsymbol \alpha\right> = 0$ 当且仅当 $\boldsymbol \alpha = \boldsymbol 0$

    其中 $\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma \in V, k \in \mathbf R$，则称二元运算 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>$ 为 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 的内积，引入内积后的线性空间称为 $\text{Euclid}$ 线性空间

    1. ${\displaystyle \left<\sum_{i=1}^n k_i \boldsymbol \alpha_i, \sum_{j=1}^m l_j \boldsymbol \beta_j\right> = \sum_{i=1}^n \sum_{j=1}^m k_i l_j \left<\boldsymbol \alpha_i, \boldsymbol \beta_j\right>}$
    2. $\text{Cauchy} - \text{Schwarz}$ 不等式的向量形式：设 $\boldsymbol \alpha, \boldsymbol \beta$ 是 $\text{Euclid}$ 线性空间 $V$ 上的向量，则恒有 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>^2 \leqslant \left<\boldsymbol \alpha, \boldsymbol \alpha\right> \left<\boldsymbol \beta, \boldsymbol \beta\right>$

        !!! note "三角不等式"
            $\text{Cauchy} - \text{Schwarz}$ 不等式导出三角不等式：$|\boldsymbol \alpha + \boldsymbol \beta| \leqslant |\boldsymbol \alpha| + |\boldsymbol \beta|$．将其推广可得 $|\boldsymbol \alpha_1 + \boldsymbol \alpha_2 + \cdots + \boldsymbol \alpha_n| \leqslant |\boldsymbol \alpha_1| + |\boldsymbol \alpha_2| + \cdots + |\boldsymbol \alpha_n|$

2. 设 $\boldsymbol \alpha$ 是 $\text{Euclid}$ 线性空间 $V$ 的中的一个向量，则 $\sqrt{\left<\boldsymbol \alpha, \boldsymbol \alpha\right>}$ 称为向量 $\boldsymbol \alpha$ 的模或者范数，记为 $|\boldsymbol \alpha|$
    1. $|\boldsymbol \alpha| = 0$ 当且仅当 $\boldsymbol \alpha = \boldsymbol 0$
    2. 单位向量：模为 $1$ 的向量，若 $\boldsymbol \alpha \neq 0$，则 $\dfrac{\boldsymbol \alpha}{|\boldsymbol \alpha|}$ 为单位向量，这被称为向量的单位化或标准化
3. 正交：设 $V$ 是一个 $\text{Euclid}$ 线性空间且 $\boldsymbol \alpha \in V$
    1. 正交的概念
        1. 设 $\boldsymbol \beta \in V$，若 $\left<\boldsymbol \alpha, \boldsymbol \beta\right> = 0$，则称 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 正交，记为 $\boldsymbol \alpha \bot \boldsymbol \beta$
        2. 设 $W$ 是 $V$ 的子空间，若对于任意 $\boldsymbol \beta \in W$ 都有 $\boldsymbol \alpha \bot \boldsymbol \beta$，则称向量 $\boldsymbol \alpha$ 与子空间 $W$ 正交，记作 $\boldsymbol \alpha \bot W$
        3. 设 $W_1, W_2$ 是 $V$ 的子空间，若对于任意 $\boldsymbol \beta \in W_1, \boldsymbol \gamma \in W_2$ 都有 $\boldsymbol \beta \bot \boldsymbol \gamma$，则称 $W_1$ 与 $W_2$ 正交，记作 $W_1 \bot W_2$
    2. 在 $n$ 维 $\text{Euclid}$ 线性空间 $V$ 中，两两正交的一组非零向量称为正交向量组，两两正交的一组单位向量称为标准正交向量组；由 $n$ 个两两正交的非零向量构成的一组基称为正交基，由单位向量构成的正交基称为标准正交基
        1. 设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_l \ (l \leqslant n)$ 是 $n$ 维 $\text{Euclid}$ 线性空间 $V$ 中的一个正交向量组，则 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_l$ 线性无关
        2. 设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是 $n$ 维 $\text{Euclid}$ 线性空间 $V$ 的一个标准正交基，$\boldsymbol \alpha, \boldsymbol \beta \in V$ 且 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 在该标准正交基下的坐标向量分别为 $\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$ 与 $\boldsymbol y = \begin{bmatrix} y_1 & y_2 & \cdots & y_n \\ \end{bmatrix}^{\mathrm T}$，则 $\boldsymbol alpha$ 与 $\boldsymbol \beta$ 的内积 $\left<\boldsymbol \alpha, \boldsymbol \beta\right> = \boldsymbol x^{\mathrm T} \boldsymbol y$
    3. 给定向量 $\boldsymbol \beta$ 与 $\mathbf R^n$ 中子空间 $W$，存在唯一向量 $\widehat{\boldsymbol \beta} \in W$ 使得 $\boldsymbol \beta - \widehat{\boldsymbol \beta}$ 与 $W$ 正交，称 $\widehat{\boldsymbol \beta}$ 为 $\boldsymbol \beta$ 在子空间 $W$ 中的正交投影

        1. 最小二乘解：设 $\boldsymbol A = \begin{bmatrix} \boldsymbol \alpha_1 & \boldsymbol \alpha_2 & \cdots & \boldsymbol \alpha_l \\ \end{bmatrix}$，其中向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_l$ 线性无关，$\boldsymbol \alpha_i \in \mathbf R^n \ (i = 1, 2, \cdots, l)$．现有向量 $\boldsymbol \beta \in \mathbf R^n$，则 $\boldsymbol \beta$ 在子空间 $\mathbf C(\boldsymbol A)$ 中的正交投影为 $\boldsymbol{Ax} = \boldsymbol A (\boldsymbol A^{\mathrm T} \boldsymbol A)^{-1} \boldsymbol A^{\mathrm T} \boldsymbol \beta$
        2. 极小化向量定理：设 $V$ 是 $\text{Euclid}$ 线性空间，$M$ 是 $V$ 中非空凸集且按 $V$ 中由内积导出的距离完备，则对每个 $\boldsymbol x \in V$，存在唯一的 $\boldsymbol y \in M$，使得 ${\displaystyle |\boldsymbol x-\boldsymbol y|=d(\boldsymbol x, M)=\inf_{\boldsymbol y \in M} |\boldsymbol x-\boldsymbol y|}$

    4. $\text{Schmidt}$ 正交化：将 $n$ 维线性空间 $V$ 的任意一组基 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 化为标准正交基 $\boldsymbol \gamma_1, \boldsymbol \gamma_2, \cdots, \boldsymbol \gamma_n$，其中

        $$
        \boldsymbol \gamma_i = \left\{\begin{aligned}
        & \dfrac{\boldsymbol \alpha_i - \boldsymbol \gamma_1 \boldsymbol \gamma_1^{\mathrm T} \boldsymbol \alpha_i - \boldsymbol \gamma_2 \boldsymbol \gamma_2^{\mathrm T} \boldsymbol \alpha_i - \cdots - \boldsymbol \gamma_{i-1} \boldsymbol \gamma_{i-1}^{\mathrm T} \boldsymbol \alpha_i}{\left|\boldsymbol \alpha_i - \boldsymbol \gamma_1 \boldsymbol \gamma_1^{\mathrm T} \boldsymbol \alpha_i - \boldsymbol \gamma_2 \boldsymbol \gamma_2^{\mathrm T} \boldsymbol \alpha_i - \cdots - \boldsymbol \gamma_{i-1} \boldsymbol \gamma_{i-1}^{\mathrm T} \boldsymbol \alpha_i\right|}, & i > 1 \\
        & \dfrac{\boldsymbol \alpha_1}{|\boldsymbol \alpha_1|}, & i = 1
        \end{aligned}\right.
        $$

### 1.1.4 线性变换
1. 线性映射：若映射 $T: V \to W$ 是从线性空间 $V$ 到线性空间 $W$ 的同态，则称 $T$ 为线性映射；若映射 $T: V \to V$ 是线性空间 $V$ 上的自同态，则称 $T$ 为线性变换．通常记 $T(\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n) = \begin{bmatrix} T(\boldsymbol \alpha_1) & T(\boldsymbol \alpha_2) & \cdots & T(\boldsymbol \alpha_n) \\ \end{bmatrix}$
    1. 设 $T$ 是线性空间 $V$ 中的线性变换，则 $T(\boldsymbol 0) = \boldsymbol 0$
    2. 设 $T$ 是线性空间 $V$ 中的线性变换，$\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m$ 是 $V$ 中的 $m$ 个向量，$\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_m \\ \end{bmatrix}^{\mathrm T}$，则 $T(\begin{bmatrix} \boldsymbol \alpha_1 & \boldsymbol \alpha_2 & \cdots & \boldsymbol \alpha_m \\ \end{bmatrix}^{\mathrm T}) = T(\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m) \boldsymbol x$
    3. 设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是 $n$ 维线性空间 $V$ 的一组基，对于 $V$ 中任意 $n$ 个向量 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$，存在唯一的线性变换 $T$ 使得 $T(\boldsymbol \varepsilon_i) = \boldsymbol \alpha_i \ (i = 1, 2, \cdots, n)$
2. 线性变换的表示矩阵：设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是线性空间 $V$ 的一组基，$T$ 是线性空间 $V$ 的一个线性变换，基的像表示为

    $$
    \begin{aligned}
    T(\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n) & = \begin{bmatrix} T(\boldsymbol \alpha_1) & T(\boldsymbol \alpha_2) & \cdots & T(\boldsymbol \alpha_n) \\ \end{bmatrix} \\
    & = \begin{bmatrix} \boldsymbol \varepsilon_1 & \boldsymbol \varepsilon_2 & \cdots & \boldsymbol \varepsilon_n \\ \end{bmatrix} \boldsymbol A
    \end{aligned}
    $$

    其中矩阵

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn} \\
    \end{bmatrix}
    $$

    称为线性变换 $T$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的表示矩阵．在给定基下，线性变换与其表示矩阵一一对应

    1. 设线性变换 $T$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的表示矩阵为 $\boldsymbol A$，向量 $\boldsymbol \xi$ 在基 $\begin{bmatrix} \boldsymbol \varepsilon_1 & \boldsymbol \varepsilon_2 & \cdots & \boldsymbol \varepsilon_n \\ \end{bmatrix}$ 下坐标为 $\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$，则 $T(\boldsymbol \xi)$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的坐标为 $\boldsymbol{Ax}$
    2. 设线性变换 $T$ 在线性空间的两组基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 与 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 下的表示矩阵分别是 $\boldsymbol A$ 与 $\boldsymbol B$，从基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵为 $\boldsymbol M$，则 $\boldsymbol B = \boldsymbol M^{-1} \boldsymbol A \boldsymbol M$

## 1.2 向量的计算
- 设 $E^n$ 是一个 $\text{Euclid}$ 空间，在其上建立 $\text{Descartes}$ 直角坐标系

### 1.2.1 向量代数
1. 向量的坐标运算：设 $\boldsymbol \alpha = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}, \boldsymbol \beta = \begin{bmatrix} y_1 & y_2 & \cdots & y_n \\ \end{bmatrix}^{\mathrm T}$，则有

    $$
    \begin{aligned}
    \boldsymbol \alpha + \boldsymbol \beta & = \begin{bmatrix}
    x_1 + y_1 & x_2 + y_2 & \cdots & x_n + y_n \\
    \end{bmatrix}^{\mathrm T} \\
    k \boldsymbol \alpha & = \begin{bmatrix} kx_1 & kx_2 & \cdots & kx_n \\ \end{bmatrix}^{\mathrm T}
    \end{aligned}
    $$

    1. 向量的减法
        1. 反向量：向量 $\overrightarrow{AB}$ 与向量 $\overrightarrow{BA}$ 互为反向量，即 $\overrightarrow{AB} + \overrightarrow{BA} = \boldsymbol 0$
        2. 向量的减法：若向量 $\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma$ 有 $\boldsymbol \alpha = \boldsymbol \beta + \boldsymbol \gamma$，则称 $\boldsymbol \gamma$ 为向量 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 的差，记作 $\boldsymbol \gamma = \boldsymbol \alpha - \boldsymbol \beta = \boldsymbol \alpha + (-\boldsymbol \beta)$
    2. 向量的定比分点：设向量 $\overrightarrow{P_1 P_2}$ 的始点为 $P_1(x_1, x_2, \cdots, x_n)$，终点为 $P_2(y_1, y_2, \cdots, y_n)$，则分向量 $\overrightarrow{P_1 P_2}$ 成定比 $\lambda \ (\lambda \neq -1)$ 的分点 $P$ 的坐标为 $P \left(\dfrac{x_1 + \lambda y_1}{1 + \lambda}, \dfrac{x_2 + \lambda y_2}{1 + \lambda}, \cdots, \dfrac{x_n + \lambda y_n}{1 + \lambda}\right)$

2. 向量的内积：设 $\boldsymbol \alpha = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}, \boldsymbol \beta = \begin{bmatrix} y_1 & y_2 & \cdots & y_n \\ \end{bmatrix}^{\mathrm T}$，则内积 $\left<\boldsymbol \alpha, \boldsymbol \beta\right> = x_1 y_1 + x_2 y_2 + \cdots + x_n y_n$
    1. 定义向量 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 的夹角 $\theta = \arccos \dfrac{\left<\boldsymbol \alpha, \boldsymbol \beta\right>}{|\boldsymbol \alpha| |\boldsymbol \beta|}$，并记 $\cos \theta$ 为 $\cos \left<\boldsymbol \alpha, \boldsymbol \beta\right>$，记 $\sin \theta$ 为 $\sin \left<\boldsymbol \alpha, \boldsymbol \beta\right>$．特别地，称非零向量与基所成的夹角为该向量的方向角

        !!! note "角度的分类"
            设 $\theta \in \mathbf R$ 为一个角度

            1. 若 $\theta \in \left(0, +\infty\right)$，则称 $\theta$ 为正角；若 $\theta \in \left(-\infty, 0\right)$，则称 $\theta$ 为负角
            2. 若 $\theta \in \left(0, \dfrac{\pi}{2}\right)$，则称 $\theta$ 为锐角；若 $\theta \in \left(\dfrac{\pi}{2}, \pi\right)$，则称 $\theta$ 为钝角
            3. 若 $\theta = 0$，则称 $\theta$ 为零角；若 $\theta = \dfrac{\pi}{2}$，则称 $\theta$ 为直角；若 $\theta = \pi$，则称 $\theta$ 为平角；若 $\theta = 2\pi$，则称 $\theta$ 为周角

    2. 仿射坐标系下的内积：设 $[O; \boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n]$ 是一个仿射标架，则

        $$
        \begin{aligned}
        \left<\boldsymbol \alpha, \boldsymbol \beta\right>
        & = \boldsymbol x^{\mathrm T} \boldsymbol E \boldsymbol y \\
        & = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}
        \begin{bmatrix}
        e_{11} & e_{12} & \cdots & e_{1n} \\
        e_{21} & e_{22} & \cdots & e_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        e_{m1} & e_{m2} & \cdots & e_{mn} \\
        \end{bmatrix}
        \begin{bmatrix} y_1 \\ y_2 \\ \vdots \\ y_n \\ \end{bmatrix}
        \end{aligned}
        $$

        其中 $e_{ij} = \left<\boldsymbol \varepsilon_i, \boldsymbol \varepsilon_j\right>$．当且仅当矩阵为对称的正定矩阵时，$\boldsymbol x^{\mathrm T} \boldsymbol E \boldsymbol y$ 定义了一个内积

3. $\text{Grassmann}$ 代数：设 $V$ 是一个 $n$ 维线性空间，则 $V$ 中任意 $m$ 个有序向量 $\boldsymbol \alpha_1, \cdots, \boldsymbol \alpha_m$ 的外积记为 $\boldsymbol \alpha_1 \wedge \boldsymbol \alpha_2 \wedge \cdots \wedge \boldsymbol \alpha_m$，称为一个 $m$ 重可分解向量．所有 $m$ 重可分解向量形式上作线性扩张所得的空间记为 $\wedge^m(V)$，其中的元素称为 $m$ 重向量．在 $\wedge^m(V)$ 中规定外积运算 $\wedge$ 满足下列运算法则
    1. 反对称性：$\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_i \wedge \cdots \wedge \boldsymbol \alpha_m=(-1)^{i-1} \boldsymbol \alpha_i \wedge \boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_{i-1} \wedge \boldsymbol \alpha_{i+1} \wedge \cdots \wedge \boldsymbol \alpha_m$
    2. 线性分配律：设 $\lambda, \mu \in \mathbf R$

        $$
        \left(\lambda \boldsymbol \alpha_1+\mu \boldsymbol \beta\right) \wedge \boldsymbol \alpha_2 \wedge \cdots \wedge \boldsymbol \alpha_m = \lambda\left(\boldsymbol \alpha_1 \wedge \boldsymbol \alpha_2 \wedge \cdots \wedge \boldsymbol \alpha_m\right)+\mu\left(\boldsymbol \beta \wedge \boldsymbol \alpha_2 \wedge \cdots \wedge \boldsymbol \alpha_m\right)
        $$

    则 $\wedge^m(V)$ 是一个 $C_n^m$ 维线性空间．特别地，当 $m > n$ 时, $\wedge^m(V)$ 只含有 $m$ 重零向量

    1. 约定 $\wedge^0(V)$ 表示实数系，任何实数 $\lambda$ 与一个 $m$ 重向量 $\boldsymbol{p}$ 的外积规定为 $\lambda \boldsymbol{p}$，$\wedge^1(V)$ 就是 $V$ 本身
    2. 记 $G(V)=\wedge^0(V) \oplus \wedge^1(V) \oplus \cdots \oplus \wedge^n(V)$，$G(V)$ 是一个 $2^n$ 维的线性空间，外积运算 $\wedge$ 自然延拓成 $G(V)$ 中的外积运算

        $$
        \left(\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_p\right) \wedge\left(\boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_q\right)= \left\{\begin{aligned}&\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_p \wedge \boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_q, & p+q \leqslant n, \\ & 0, & p+q>n .\end{aligned}\right.
        $$

        并要求满足结合律及线性分配律．$G(V)$ 连同外积运算 $\wedge$ 称为 $V$ 上的 $\text{Grassmann}$ 代数

    3. 对两个 $m$ 重可分解向量 $\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m$ 和 $\boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_m$，规定内积为

        $$
        \left\langle\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m, \boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_m\right\rangle=
        \begin{vmatrix}
        \boldsymbol \alpha_1 \boldsymbol \beta_1 & \boldsymbol \alpha_1 \boldsymbol \beta_2 & \cdots & \boldsymbol \alpha_1 \boldsymbol \beta_m \\
        \boldsymbol \alpha_2 \boldsymbol \beta_1 & \boldsymbol \alpha_2 \boldsymbol \beta_2 & \cdots & \boldsymbol \alpha_2 \boldsymbol \beta_m \\
        \vdots & \vdots & \ddots & \vdots \\
        \boldsymbol \alpha_m \boldsymbol \beta_1 & \boldsymbol \alpha_m \boldsymbol \beta_2 & \cdots & \boldsymbol \alpha_m \boldsymbol \beta_m \\
        \end{vmatrix}
        $$

        然后用线性分配律延拓为 $\wedge^m(V)$ 中的内积．特别地，称 $\left|\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m\right|=\sqrt{\left\langle\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m, \boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m\right\rangle}$ 为 $\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m$ 的长度

    4. 定义由两个 $m$ 重可分解向量 $\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m$ 和 $\boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_m$ 所确定的 $m$ 维平面之间的夹角为

        $$
        \theta=\arccos \dfrac{\left\langle\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m, \boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_m\right\rangle}{\left|\boldsymbol \alpha_1 \wedge \cdots \wedge \boldsymbol \alpha_m\right|\left|\boldsymbol \beta_1 \wedge \cdots \wedge \boldsymbol \beta_m\right|}
        $$

    !!! note "空间向量的外积与混合积"
        设 $\boldsymbol \alpha, \boldsymbol \beta$ 是 $3$ 维线性空间的两个向量

        1. 外积：记 $\boldsymbol \alpha \wedge \boldsymbol \beta$ 为 $\boldsymbol \alpha \times \boldsymbol \beta$，且有 $|\boldsymbol \alpha \times \boldsymbol \beta|=|\boldsymbol \alpha||\boldsymbol \beta| \sin \langle\boldsymbol \alpha, \boldsymbol \beta\rangle$，其方向与 $\boldsymbol \alpha$ 和 $\boldsymbol \beta$ 正交
            1. $\boldsymbol \alpha \times \boldsymbol \beta=-\boldsymbol \beta \times \boldsymbol \alpha$
            2. $(\lambda \boldsymbol \alpha+\mu \boldsymbol \beta) \times \boldsymbol \gamma=\lambda(\boldsymbol \alpha \times \boldsymbol \gamma)+\mu(\boldsymbol \beta \times \boldsymbol \gamma) \ (\lambda, \mu \in \mathbf R)$
            3. $(\boldsymbol \alpha \times \boldsymbol \beta) \times \boldsymbol \gamma-\boldsymbol \alpha \times(\boldsymbol \beta \times \boldsymbol \gamma)=(\boldsymbol \alpha \cdot \boldsymbol \beta) \boldsymbol \gamma-(\boldsymbol \beta \cdot \boldsymbol \gamma) \boldsymbol \alpha$

        2. 双重外积：设 $\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma$ 为三个向量，定义其双重外积为 $\boldsymbol \alpha \times \boldsymbol \beta \times \boldsymbol \gamma = \boldsymbol \alpha \times \boldsymbol \beta \times \boldsymbol \gamma = (\boldsymbol \alpha \boldsymbol \gamma) \boldsymbol \beta - (\boldsymbol \beta \boldsymbol \gamma) \boldsymbol \alpha$
            1. $\text{Lagrange}$ 恒等式：$(\boldsymbol \alpha \times \boldsymbol \beta) \cdot\left(\boldsymbol \alpha^{\prime} \times \boldsymbol \beta^{\prime}\right)=\begin{vmatrix} \boldsymbol \alpha \cdot \boldsymbol \alpha^{\prime} & \boldsymbol \alpha \cdot \boldsymbol \beta^{\prime} \\ \boldsymbol \beta \cdot \boldsymbol \alpha^{\prime} & \boldsymbol \beta \cdot \boldsymbol \beta^{\prime} \end{vmatrix}$
            2. $\text{Jacobi}$ 恒等式：$(\boldsymbol \alpha \times \boldsymbol \beta) \times \boldsymbol \gamma + (\boldsymbol \beta \times \boldsymbol \gamma) \times \boldsymbol \alpha + (\boldsymbol \gamma \times \boldsymbol \alpha) \times \boldsymbol \beta = 0$
        3. 混合积：设 $\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma$ 为三个向量，定义其混合积 $V(\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma)=(\boldsymbol \alpha \times \boldsymbol \beta) \cdot \boldsymbol \gamma$
            1. $V(\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma)=V(\boldsymbol \beta, \boldsymbol \gamma, \boldsymbol \alpha)=V(\boldsymbol \gamma, \boldsymbol \alpha, \boldsymbol \beta)=-V(\boldsymbol \beta, \boldsymbol \alpha, \boldsymbol \gamma)=-V(\boldsymbol \gamma, \boldsymbol \beta, \boldsymbol \alpha)=-V(\boldsymbol \alpha, \boldsymbol \gamma, \boldsymbol \beta)$
            2. $V\left(\lambda \boldsymbol \alpha_1+\mu \boldsymbol \alpha_2, \boldsymbol \beta, \boldsymbol \gamma\right)=\lambda V\left(\boldsymbol \alpha_1, \boldsymbol \beta, \boldsymbol \gamma\right)+\mu V\left(\boldsymbol \alpha_2, \boldsymbol \beta, \boldsymbol \gamma\right)$

### 1.2.2 向量分析
1. 多元函数与向量值函数：设 $D \subseteq \mathbf R^n$
    1. 多元函数：称映射

        $$
        \begin{aligned}
        f: D & \to \mathbf R \\
        (x_1, x_2, \cdots, x_n) & \mapsto u = f(x_1, x_2, \cdots, x_n)
        \end{aligned}
        $$

        是定义在 $D$ 上的一个 $n$ 元函数，此时对于 $\boldsymbol x = (x_1, x_2, \cdots, x_n)$，可将 $f(\boldsymbol x)$ 写作 $f(x_1, x_2, \cdots, x_n)$

    2. 向量值函数：称映射

        $$
        \begin{aligned}
        \boldsymbol f: D & \to \mathbf R^m \\
        \boldsymbol x = (x_1, x_2, \cdots, x_n) & \mapsto \boldsymbol y = (y_1, y_2, \cdots, y_m)
        \end{aligned}
        $$

        为向量值函数，此时有 $\boldsymbol{y}=\boldsymbol f(\boldsymbol{x})=\left(f_{1}(\boldsymbol{x}), f_{2}(\boldsymbol{x}), \cdots, f_{m}(\boldsymbol{x})\right)$，其中 $f_{1}, f_{2}, \cdots, f_{m}$ 均为 $n$ 元函数

2. 微分形式与外微分
    1. 微分形式：设 $U$ 为 $\mathbf{R}^{n}$ 上的区域，记 $\boldsymbol{x}=\left(x_{1}, x_{2}, \cdots, x_{n}\right)$，$C^{\prime}(U)$ 为 $U$ 上具有连续偏导数的函数全体．在 $\left\{\mathrm{d} x_{1}, \mathrm{d} x_{2}, \cdots, \mathrm{d} x_{n}\right\}$ 中任意选取 $k$ 个组成有序元，记为 $\mathrm{d} x_{i_1} \wedge \mathrm{d} x_{i_2} \wedge \cdots \wedge \mathrm{d} x_{i_k}$，这里 $i_{1}, i_{2}, \cdots, i_{k}$ 是从集合 $\{1,2, \cdots, n\}$ 中选取的任意 $k$ 个整数．规定

        $$
        \mathrm{d} x_{i, 1} \wedge \cdots \wedge \mathrm{d} x_{i r} \wedge \mathrm{d} x_{i r+1} \cdots \wedge \mathrm{d} x_{i k}=-\mathrm{d} x_{i 1} \wedge \cdots \wedge \mathrm{d} x_{i r+1} \wedge \mathrm{d} x_{i r} \cdots \wedge \mathrm{d} x_{i k}, 1 \leqslant r \leqslant k-1
        $$

        且如果 $i_{1}, i_{2}, \cdots, i_{k}$ 中有两个是相同的，则规定 $\mathrm{d} x_{i 1} \wedge \mathrm{d} x_{i 2} \wedge \cdots \wedge \mathrm{d} x_{i k}=0$．以这些有序元为基构造一个 $C^{\prime}(U)$ 上的线性空间 $\wedge^{k}(U)$，$\wedge^{k}(U)$ 的元素称为 $k$ 次微分形式，简称 $k-$形式．于是一般 $k-$形式就可表示为

        $$
        \sum_{1 \leqslant i_{1}<i_{2}<\cdots<i_{k} \leqslant n} g_{i_{1}, i_{2}, \cdots, i_{k}}(\boldsymbol{x}) \mathrm{d} x_{i 1} \wedge \mathrm{d} x_{i 2} \wedge \cdots \wedge \mathrm{d} x_{i k}
        $$

        称为 $k-$形式的标准形式

        1. 当 $k>n$ 时，$\mathrm{d} x_{i 1}, \mathrm{d} x_{i 2}, \cdots, \mathrm{d} x_{i k}$ 中必有两个相同，因此总有 $\mathrm{d} x_{i 1} \wedge \mathrm{d} x_{i 2} \wedge \cdots \wedge \mathrm{d} x_{i k}=0$，即 $\wedge^{k}(U)=\{0\}$；当 $k=0$ 时，$\wedge^0(U)$ 是 $U$ 上具有连续偏导数的函数全体
        2. 设 $\mathbf{R}^{n}$ 中的坐标变换为 $T: y_{1}=y_{1}\left(x_{1}, x_{2}, \cdots, x_{n}\right), y_{2}=y_{2}\left(x_{1}, x_{2}, \cdots, x_{n}\right), \cdots, y_{n}=y_{n}\left(x_{1}, x_{2}, \cdots, x_{n}\right)$，则有

            $$
            \mathrm{d} y_{1} \wedge \mathrm{d} y_{2} \wedge \cdots \wedge \mathrm{d} y_{n}=\dfrac{\partial\left(y_{1}, y_{2}, \cdots, y_{n}\right)}{\partial\left(x_{1}, x_{2}, \cdots, x_{n}\right)} \mathrm{d} x_{1} \wedge \mathrm{d} x_{2} \wedge \cdots \wedge \mathrm{d} x_{n}
            $$

    2. 外微分：对 $\Lambda^{k}$ 中的任意一个 $k-$形式

        $$
        \omega=\sum_{1 \leqslant i_{1}<i_{2}<\cdots<i_{k} \leqslant n} g_{i_{1}, i_{2}, \cdots, i_{k}}(\boldsymbol{x}) \mathrm{d} x_{i_{1}} \wedge \mathrm{d} x_{i_{2}} \wedge \cdots \wedge \mathrm{d} x_{i_{k}}
        $$

        定义

        $$
        \begin{aligned}
        \mathrm{d} \omega & =\sum_{1 \leqslant i_{1}<i_{2}<\cdots<i_{k} \leqslant n}\left(\mathrm{d} g_{i_{1}, i_{2}, \cdots, i_{k}}(\boldsymbol{x})\right) \wedge \mathrm{d} x_{i_{1}} \wedge \mathrm{d} x_{i_{2}} \wedge \cdots \wedge \mathrm{d} x_{i_{k}} \\
        & =\sum_{1 \leqslant i_{1}<i_{2}<\cdots<i_{k} \leqslant n} \sum_{i=1}^{n} \dfrac{\partial g_{i_{1}, i_{2}, \cdots, i_{k}}}{\partial x_{i}} \mathrm{d} x_{i} \wedge \mathrm{d} x_{i_{1}} \wedge \mathrm{d} x_{i_{2}} \wedge \cdots \wedge \mathrm{d} x_{i_{k}}
        \end{aligned}
        $$

        同时，对空间 $\Lambda=\Lambda^{0}+\Lambda^{1}+\cdots+\Lambda^{n}$ 上的任意一个元素，定义 $\omega=\omega_{0}+\omega_{1}+\cdots+\omega_{n} \ (\omega_{i} \in \Lambda^{i})$．称这样的微分运算 $\mathrm{d}$ 为外微分

        1. 微分运算 $\mathrm{d}: \Lambda \rightarrow \Lambda$ 是线性的：$\mathrm{d}(\alpha \omega+\beta \eta)=\alpha \mathrm{d} \omega+\beta \mathrm{d} \eta$，其中 $\omega, \eta \in \Lambda$，$\alpha, \beta$ 为常数
        2. 设 $\omega$ 为 $k-$形式，$\eta$ 为 $l-$形式，则 $\mathrm{d}(\omega \wedge \eta)=\mathrm{d} \omega \wedge \eta+(-1)^{k} \omega \wedge \mathrm{d} \eta$
        3. 对任意 $\omega \in \Lambda$，有 $\mathrm{d}^{2} \omega=0$

3. 场：设 $\Omega \subseteq \mathbf{R}^{3}$ 是一个区域，若在时刻 $t$，$\Omega$ 中每一点 $(x, y, z)$ 都有确定的数值 $f(x, y, z, t)$（或确定的向量值 $\boldsymbol{f}(x, y, z, t)$）与它对应，就称 $f(x, y, z, t)$（或 $\boldsymbol{f}(x, y, z, t)$）为 $\Omega$ 上的数量场（或向量场）．显然 $\Omega$ 上任何一个三元函数 $f(x, y, z)$ 都可以看成是 $\Omega$ 上的一个数量场
    1. 梯度场：设 $D \subseteq \mathbf{R}^{3}$ 为开集，$\left(x_{0}, y_{0}, z_{0}\right) \in D$ 为一定点．如果函数 $w=f(x, y, z)$ 在 $\left(x_{0}, y_{0}, z_{0}\right)$ 点可偏导，则称向量 $\left(f_{x}\left(x_{0}, y_{0}, z_{0}\right), f_{y}\left(x_{0}, y_{0}, z_{0}\right), f_{z}\left(x_{0}, y_{0}, z_{0}\right)\right)$ 为 $f$ 在点 $\left(x_{0}, y_{0}, z_{0}\right)$ 的梯度，记为 $\operatorname{\mathbf{grad}} f\left(x_{0}, y_{0}, z_{0}\right)$
        1. 若 $f \equiv c$（$c$ 为常数），则 $\operatorname{\mathbf{grad}} f=\mathbf{0}$
        2. 若 $\alpha, \beta$ 为常数，则 $\operatorname{\mathbf{grad}}(\alpha f+\beta g)=\alpha \operatorname{\mathbf{grad}} f+\beta \operatorname{\mathbf{grad}} g$
        3. $\operatorname{\mathbf{grad}}(f \cdot g)=f \cdot \operatorname{\mathbf{grad}} g+g \cdot \operatorname{\mathbf{grad}} f$
        4. $\operatorname{\mathbf{grad}}\left(\dfrac{f}{g}\right)=\dfrac{g \cdot \operatorname{\mathbf{grad}} f-f \cdot \operatorname{\mathbf{grad}} g}{g^{2}} \ (g \neq 0)$

        称由数量场 $f$ 产生的向量场 $\operatorname{\mathbf{grad}} f$ 为梯度场

    2. 散度场：设 $\boldsymbol{a}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3 \ ((x, y, z) \in \Omega)$ 是一个向量场，$M$ 为场中任一点，称 $\dfrac{\partial P}{\partial x}(M)+\dfrac{\partial Q}{\partial y}(M)+\dfrac{\partial R}{\partial z}(M)$ 为向量场 $\boldsymbol{a}$ 在 $M$ 点的散度，记为 $\operatorname{div}\boldsymbol{a}(M)$
        1. 通量：设 $P(x, y, z), Q(x, y, z), R(x, y, z)$ 在 $\Omega$ 上具有连续偏导数，$\Sigma$ 为向量场 $\boldsymbol a$ 中的定向曲面，称曲面积分 ${\displaystyle \Phi=\iint_{\Sigma} \boldsymbol a \cdot \mathrm{d} \boldsymbol S}$ 为向量场 $\boldsymbol a$ 沿指定侧通过曲面 $\Sigma$ 的通量
        2. $\text{Gauss}$ 公式可转写为 ${\displaystyle \iiint_{\Omega} \operatorname{div}a \mathrm{d} V=\iint_{\partial \Omega} a \cdot \mathrm{d} S}$
        3. $\boldsymbol a$ 的散度是通量关于体积的变化率，即 ${\displaystyle \operatorname{div}a(M)=\lim _{V \rightarrow M} \dfrac{{\displaystyle \iint_{\Sigma} a \cdot \mathrm{d} S}}{m V}}$

        称由向量场 $\boldsymbol a$ 产生的数量场 $\operatorname{div}a$ 为散度场

    3. 旋度场：设 $\boldsymbol{a}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3 \ ((x, y, z) \in \Omega)$ 是一向量场，$M$ 为场中任一点．称向量

        $$
        \left[\begin{array}{ccc}
        \boldsymbol{e}_1 & \boldsymbol{e}_2 & \boldsymbol{e}_3 \\
        \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\
        P & Q & R
        \end{array}\right]_{M}=\left(\dfrac{\partial R}{\partial y}-\dfrac{\partial Q}{\partial z}\right)_{M} \boldsymbol{e}_1+\left(\dfrac{\partial P}{\partial z}-\dfrac{\partial R}{\partial x}\right)_{M} \boldsymbol{e}_2+\left(\dfrac{\partial Q}{\partial x}-\dfrac{\partial P}{\partial y}\right)_{M} \boldsymbol{e}_3
        $$

        为向量场 $\boldsymbol{\boldsymbol a}$ 在 $M$ 点的旋度，记为 $\operatorname{\mathbf{rot}} \boldsymbol{\boldsymbol a}(M)$ 或 $\operatorname{\mathbf{curl}} \boldsymbol{\boldsymbol a}(M)$

        1. 环量：设 $P(x, y, z), Q(x, y, z), R(x, y, z)$ 在 $\Omega$ 上具有连续偏导数，设 $\Gamma$ 为场中的定向曲线，称曲线积分 ${\displaystyle \int_{\Gamma} \boldsymbol a \cdot \mathrm{d} \boldsymbol s}$ 为向量场 $\boldsymbol a$ 沿定向曲线 $\Gamma$ 的环量
        2. $\text{Stokes}$ 公式可转写为 ${\displaystyle \iint_{\Sigma} \operatorname{\mathbf{rot}} \boldsymbol a \cdot \mathrm{d} \boldsymbol S=\int_{\partial \Sigma} \boldsymbol a \cdot \mathrm{d} \boldsymbol s}$
        3. 向量场 $\boldsymbol a$ 在 $M$ 点处的旋度就是这样一个向量：$\boldsymbol a$ 在 $M$ 点处沿旋度方向的环量面密度最大，且最大值就是 $|\operatorname{\mathbf{rot}} \boldsymbol a(M)|$

        由向量场 $\boldsymbol a$ 产生的向量场 $\operatorname{\mathbf{rot}} \boldsymbol a$ 称为旋度场，如果在场中每一点都有 $\operatorname{\mathbf{rot}} \boldsymbol a=0$，则称 $\boldsymbol a$ 为无旋场

4. $\text{Hamilton}$ 算子：$\boldsymbol{\nabla}=\boldsymbol{e}_1 \dfrac{\partial}{\partial x}+\boldsymbol{e}_2 \dfrac{\partial}{\partial y}+\boldsymbol{e}_3 \dfrac{\partial}{\partial z}$
    1. 若函数 $f(x, y, z)$ 和向量场 $\boldsymbol{a}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3$ 在区域 $\Omega$ 上满足可偏导条件，则定义

        $$
        \begin{aligned}
        \boldsymbol{\nabla} f&=\dfrac{\partial f}{\partial x} \boldsymbol{e}_1+\dfrac{\partial f}{\partial y} \boldsymbol{e}_2+\dfrac{\partial f}{\partial z} \boldsymbol{e}_3=\operatorname{grad} f ; \\
        \boldsymbol{\nabla} \cdot \boldsymbol{a}&=\left(\boldsymbol{e}_1 \dfrac{\partial}{\partial x}+\boldsymbol{e}_2 \dfrac{\partial}{\partial y}+\boldsymbol{e}_3 \dfrac{\partial}{\partial z}\right) \cdot(P \boldsymbol{e}_1+Q \boldsymbol{e}_2+R \boldsymbol{e}_3)=\dfrac{\partial P}{\partial x}+\dfrac{\partial Q}{\partial y}+\dfrac{\partial R}{\partial z}=\operatorname{div}\boldsymbol{a} ; \\
        \boldsymbol{\nabla} \times \boldsymbol{a}&=\left(\boldsymbol{e}_1 \dfrac{\partial}{\partial x}+\boldsymbol{e}_2 \dfrac{\partial}{\partial y}+\boldsymbol{e}_3 \dfrac{\partial}{\partial z}\right) \times(P \boldsymbol{e}_1+Q \boldsymbol{e}_2+R \boldsymbol{e}_3)=\left|\begin{array}{ccc}
        \boldsymbol{e}_1 & \boldsymbol{e}_2 & \boldsymbol{e}_3 \\
        \dfrac{\partial}{\partial x} & \dfrac{\partial}{\partial y} & \dfrac{\partial}{\partial z} \\
        P & Q & R
        \end{array}\right| \\
        &=\left(\dfrac{\partial R}{\partial y}-\dfrac{\partial Q}{\partial z}\right) \boldsymbol{e}_1+\left(\dfrac{\partial P}{\partial z}-\dfrac{\partial R}{\partial x}\right) \boldsymbol{e}_2+\left(\dfrac{\partial Q}{\partial x}-\dfrac{\partial P}{\partial y}\right) \boldsymbol{e}_3=\operatorname{\mathbf{rot}} \boldsymbol{a} .
        \end{aligned}
        $$

        并定义 $\text{Laplace}$ 算子 $\Delta=\nabla \cdot \nabla=\dfrac{\partial^{2}}{\partial x^{2}}+\dfrac{\partial^{2}}{\partial y^{2}}+\dfrac{\partial^{2}}{\partial z^{2}}$，满足 $\text{Laplace}$ 方程 $\Delta u=\dfrac{\partial^{2} u}{\partial x^{2}}+\dfrac{\partial^{2} u}{\partial y^{2}}+\dfrac{\partial^{2} u}{\partial z^{2}}=0$ 的函数称为调和函数

    2. $\text{Green}$ 公式重述为 ${\displaystyle \iint_{\partial \Omega} \boldsymbol a \cdot \mathrm{d} \boldsymbol S=\iiint_{\Omega} \nabla \cdot \boldsymbol a \mathrm{d} V}$，$\text{Stokes}$ 公式重述为 ${\displaystyle \int_{\partial \Sigma} \boldsymbol{a} \cdot \mathrm{d} \boldsymbol s=\iint_{\Sigma}(\nabla \times \boldsymbol a) \cdot \mathrm{d} \boldsymbol S}$
        1. $\text{Green}$ 第一公式：${\displaystyle \iiint_{\Omega}(\nabla f \cdot \nabla g+f \Delta g) \mathrm{d} V=\iint_{\partial \Omega} f \dfrac{\partial g}{\partial \boldsymbol{n}} \mathrm{d} S}$
        2. $\text{Green}$ 第二公式：${\displaystyle \iiint_{\Omega}(f \Delta g-g \Delta f) \mathrm{d} V=\iint_{\partial \Omega}\left(f \dfrac{\partial g}{\partial \boldsymbol{n}}-g \dfrac{\partial f}{\partial \boldsymbol{n}}\right) \mathrm{d} S}$
    3. 场论的基本关系式
        1. $\boldsymbol{\nabla} \cdot(\lambda \boldsymbol{a}+\mu \boldsymbol{b})=\lambda(\boldsymbol{\nabla} \cdot \boldsymbol{a})+\mu(\boldsymbol{\nabla} \cdot \boldsymbol{b})$
        2. $\boldsymbol{\nabla} \times(\lambda \boldsymbol{a}+\mu \boldsymbol{b})=\lambda(\boldsymbol{\nabla} \times \boldsymbol{a})+\mu(\boldsymbol{\nabla} \times \boldsymbol{b})$
        3. $\boldsymbol{\nabla} \cdot(f \boldsymbol{a})=f(\boldsymbol{\nabla} \cdot \boldsymbol{a})+(\boldsymbol{\nabla} f) \cdot \boldsymbol a$
        4. $\boldsymbol{\nabla} \times(f \boldsymbol{a})=f((\boldsymbol{\nabla} \times \boldsymbol{a})+(\boldsymbol{\nabla} f) \times \boldsymbol{a})$
        5. $\boldsymbol{\nabla} \cdot(\boldsymbol{a} \times \boldsymbol{b})=\boldsymbol{b} \cdot(\boldsymbol{\nabla} \times \boldsymbol{a})-\boldsymbol{a} \cdot(\boldsymbol{\nabla} \times \boldsymbol{b})$
        6. $\boldsymbol{\nabla} \times(\boldsymbol{\nabla} f)=(\boldsymbol{\nabla} \times \boldsymbol{\nabla}) f=\mathbf{0}$
        7. $\boldsymbol{\nabla} \cdot(\boldsymbol{\nabla} \times \boldsymbol{a})=0$

5. 保守场与势函数
    1. 有势场：设 $\boldsymbol{a}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3 \ ((x, y, z) \in \Omega)$ 为向量场，其中 $P, Q, R$ 在区域 $\Omega$ 上连续．若存在函数 $U(x, y, z)$ 满足 $\boldsymbol{a}=\operatorname{grad} U$，则称向量场 $\boldsymbol{a}$ 为有势场, 并称函数 $V=-U$ 为势函数
    2. 保守场：如果对于 $\Omega$ 内任意两点 $A, B$，积分值 ${\displaystyle \int_{L} P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d} z}$ 只与 $A, B$ 两点有关，而与从 $A$ 到 $B$ 的路径（只考虑光滑或分段光滑曲线）$L$ 无关，就称曲线积分 ${\displaystyle \int_{L} P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d}}$ 与路径无关．如果在向量场 $\boldsymbol{a}$ 中曲线积分与路径无关，则称 $\boldsymbol{a}$ 为保守场
    3. 设 $\Omega \in \mathbf{R}^{3}$ 为单连通区域，在 $\Omega$ 上定义向量场 $\boldsymbol{a}(x, y, z)=P(x, y, z) \boldsymbol{e}_1+Q(x, y, z) \boldsymbol{e}_2+R(x, y, z) \boldsymbol{e}_3 \ ((x, y, z) \in \Omega)$，$P(x, y, z), Q(x, y, z), R(x, y, z)$ 在 $\Omega$ 上具有连续偏导数，则 $\boldsymbol{a}$ 是保守场 $\leftrightarrow \boldsymbol{a}$ 是有势场 $\leftrightarrow \boldsymbol{a}$ 是无旋场
    4. 设函数 $P(x, y, z), Q(x, y, z)$ 和 $R(x, y, z)$ 在单连通区域 $\Omega$ 上连续，若 $U(x, y, z)$ 是 $1-$形式 $P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d} z$ 的一个原函数（即在 $\Omega$ 上恒有 $\mathrm{d} U=P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d} z$），则对于 $\Omega$ 内任意两点 $A\left(x_{A}, y_{A}, z_{A}\right), B\left(x_{B}, y_{B}, z_{B}\right)$ 有

        $$
        \int_{\overset{\LARGE{\frown}}{AB}} P \mathrm{d} x+Q \mathrm{d} y+R \mathrm{d} z=U\left(x_{B}, y_{B}, z_{B}\right)-U\left(x_{A}, y_{A}, z_{A}\right)
        $$

        其中 $\overset{\LARGE{\frown}}{AB}$ 为从 $A$ 到 $B$ 的任意路径

### 1.2.3 矩阵分析
1. 矩阵函数：设 $D \subseteq \mathbf R^{m \times n}$，称映射

    $$
    \begin{aligned}
    \boldsymbol F: D & \to \mathbf R^{p \times q} \\
    \boldsymbol X = \begin{bmatrix}
    x_{11} & x_{12} & \cdots & x_{1n} \\
    x_{21} & x_{22} & \cdots & x_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    x_{m1} & x_{m2} & \cdots & x_{mn} \\
    \end{bmatrix} & \mapsto \boldsymbol Y = \begin{bmatrix}
    y_{11} & y_{12} & \cdots & y_{1q} \\
    y_{21} & y_{22} & \cdots & y_{2q} \\
    \vdots & \vdots & \ddots & \vdots \\
    y_{p1} & y_{p2} & \cdots & y_{pq} \\
    \end{bmatrix}
    \end{aligned}
    $$

    为矩阵函数，此时有

    $$
    \boldsymbol{Y}=\boldsymbol F(\boldsymbol{X})=\begin{bmatrix}
    f_{11}(\boldsymbol X) & f_{12}(\boldsymbol X) & \cdots & f_{1q}(\boldsymbol X) \\
    f_{21}(\boldsymbol X) & f_{22}(\boldsymbol X) & \cdots & f_{2q}(\boldsymbol X) \\
    \vdots & \vdots & \ddots & \vdots \\
    f_{p1}(\boldsymbol X) & f_{p2}(\boldsymbol X) & \cdots & f_{pq}(\boldsymbol X) \\
    \end{bmatrix}
    $$

    其中 $f_{11}, f_{12}, \cdots, f_{pq}$ 均为 $m \times n$ 元函数

    1. 矩阵函数的退化情况如下表所示：

        <div class="text-table">

        |      项目      |    $p = q = 1$     |         $p > 1, q = 1$         |           $p, q > 1$           |
        | :------------: | :----------------: | :----------------------------: | :----------------------------: |
        |  $m = n = 1$   |       $f(x)$       |       $f(\boldsymbol x)$       |       $f(\boldsymbol X)$       |
        | $m > 1, n = 1$ | $\boldsymbol f(x)$ | $\boldsymbol f(\boldsymbol x)$ | $\boldsymbol f(\boldsymbol X)$ |
        |   $m, n > 1$   | $\boldsymbol F(x)$ | $\boldsymbol F(\boldsymbol x)$ | $\boldsymbol F(\boldsymbol X)$ |

        </div>

    2. 设 $\boldsymbol X = \begin{bmatrix} x_{ij} \\ \end{bmatrix}_{m \times n}$，则可定义 $\operatorname{vec}(\boldsymbol X) = \begin{bmatrix} x_{11} & x_{21} & \cdots & x_{m1} & x_{12} & x_{22} & \cdots & x_{m2} & \cdots & x_{1n} & x_{2n} & \cdots & x_{mn} \end{bmatrix}$．此时 $f_{11}, f_{12}, \cdots, f_{pq}$ 为向量 $\operatorname{vec}(\boldsymbol X)$ 的函数，于是对于 $f_{ij}$ 有

        $$
        \begin{aligned}
        \mathrm{d}f_{ij}(\boldsymbol{X}) & = \dfrac{\partial f_{ij}}{\partial x_{11}}\mathrm{d}x_{11} + \dfrac{\partial f_{ij}}{\partial x_{21}}\mathrm{d}x_{21} + \cdots + \dfrac{\partial f_{ij}}{\partial x_{m1}}\mathrm{d}x_{m1} + \dfrac{\partial f_{ij}}{\partial x_{12}}\mathrm{d}x_{12} + \cdots + \dfrac{\partial f_{ij}}{\partial x_{mn}}\mathrm{d}x_{mn} \\
        & = \operatorname{tr} \left(\begin{bmatrix} \dfrac{\partial f_{ij}}{\partial x_{11}}&\dfrac{\partial f_{ij}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{ij}}{\partial x_{m1}} \\ \dfrac{\partial f_{ij}}{\partial x_{12}}&\dfrac{\partial f_{ij}}{\partial x_{22}}& \cdots & \dfrac{\partial f_{ij}}{\partial x_{m2}}\\ \vdots&\vdots&\vdots&\vdots\\ \dfrac{\partial f_{ij}} {\partial x_{1n}}&\dfrac{\partial f_{ij}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{ij}}{\partial x_{mn}} \end{bmatrix} \begin{bmatrix} \mathrm{d}x_{11} & \mathrm{d}x_{12} & \cdots & \mathrm{d}x_{1n} \\ \mathrm{d}x_{21} & \mathrm{d}x_{22} & \cdots & \mathrm{d}x_{2n} \\ \vdots&\vdots&\vdots&\vdots\\ \mathrm{d}x_{m1} & \mathrm{d}x_{m2} & \cdots & \mathrm{d}x_{mn} \end{bmatrix} \right) \\
        & = \operatorname{tr} \left(\dfrac{\partial f_{ij} (\boldsymbol X)}{\partial \boldsymbol X^{\mathrm T}} \mathrm{d}\boldsymbol{X}\right)
        \end{aligned}
        $$

2. 矩阵微分：定义矩阵的微分为对矩阵各元素的全微分组成的矩阵（或退化后的向量与标量）．即设 $D \subseteq \mathbf R^{m \times n}, \boldsymbol F: D \to \mathbf R^{p \times q}$ 为矩阵函数且 $f_{ij}(\boldsymbol X)$ 可微，则可定义 $\boldsymbol F$ 的全微分为

    $$
    \mathrm{d} \boldsymbol{F}(\boldsymbol{X})=\left[\begin{array}{cccc}
    \mathrm{d} f_{11}(\boldsymbol{X}) & \mathrm{d} f_{12}(\boldsymbol{X}) & \cdots & \mathrm{d} f_{1 q}(\boldsymbol{X}) \\
    \mathrm{d} f_{21}(\boldsymbol{X}) & \mathrm{d} f_{22}(\boldsymbol{X}) & \cdots & \mathrm{d} f_{2 q}(\boldsymbol{X}) \\
    \vdots & \vdots & \ddots & \vdots \\
    \mathrm{d} f_{p 1}(\boldsymbol{X}) & \mathrm{d} f_{p 2}(\boldsymbol{X}) & \cdots & \mathrm{d} f_{p q}(\boldsymbol{X})
    \end{array}\right]
    $$

    并定义 $\boldsymbol X_{m \times n}$ 的全微分为

    $$
    \mathrm{d} \boldsymbol{X}=\left[\begin{array}{cccc}
    \mathrm{d} x_{11} & \mathrm{d} x_{12} & \cdots & \mathrm{d} x_{1 n} \\
    \mathrm{d} x_{21} & \mathrm{d} x_{22} & \cdots & \mathrm{d} x_{2 n} \\
    \vdots & \vdots & \ddots & \vdots \\
    \mathrm{d} x_{m 1} & \mathrm{d} x_{m 2} & \cdots & \mathrm{d} x_{m n}
    \end{array}\right]
    $$

    1. 矩阵微分的运算
        1. 常数矩阵的全微分：$\mathrm d \boldsymbol A_{m \times n} = \boldsymbol 0_{m \times n}$
        2. 线性法则：$\mathrm{d}\left(c_1 \boldsymbol{F}(\boldsymbol{X})+c_2 \boldsymbol{G}(\boldsymbol{X})\right)=c_1 \mathrm{d} \boldsymbol{F}(\boldsymbol{X})+c_2 \mathrm{d} \boldsymbol{G}(\boldsymbol{X})$
        3. 乘积法则：$\mathrm{d}(\boldsymbol{F}(\boldsymbol{X}) \boldsymbol{G}(\boldsymbol{X}))=\mathrm{d}(\boldsymbol{F}(\boldsymbol{X})) \boldsymbol{G}(\boldsymbol{X})+\boldsymbol{F}(\boldsymbol{X}) \mathrm{d}(\boldsymbol{G}(\boldsymbol{X}))$
        4. 转置法则：$\mathrm{d} \boldsymbol{F}^{\mathrm T}(\boldsymbol{X})=\left(\mathrm{d} \boldsymbol{F}(\boldsymbol{X})\right)^{\mathrm T}$
    2. 方阵微分的性质：设 $\boldsymbol X$ 是一个 $n \times n$ 方阵
        1. 行列式：$\mathrm{d}\operatorname{det}(\boldsymbol{X})=\operatorname{det}(\boldsymbol{X}) \operatorname{tr}\left(\boldsymbol{X}^{-1} \mathrm{d} \boldsymbol{X}\right)=\operatorname{tr}\left(\operatorname{det}(\boldsymbol{X}) \boldsymbol{X}^{-1} \mathrm{d} \boldsymbol{X}\right)$
        2. 逆矩阵：$\mathrm{d}\left(\boldsymbol{X}^{-1}\right)=-\boldsymbol{X}^{-1} \mathrm{d}(\boldsymbol{X}) \boldsymbol{X}^{-1}$

        上述 $\boldsymbol X$ 均可替换为对应的 $\boldsymbol F_{n \times n}(\boldsymbol X)$

3. 矩阵的导函数：设 $\boldsymbol F(\boldsymbol X), \boldsymbol X = \begin{bmatrix} x_{ij} \\ \end{bmatrix}_{m \times n}$ 为矩阵变元的矩阵函数
    1. 定义行向量偏导算子（$\text{Jacobi}$ 算子）为 $\mathrm{D}_{\boldsymbol{x}} = \dfrac{\partial}{\partial \boldsymbol{x}^{\mathrm{T}}} = \begin{bmatrix} \dfrac{\partial}{\partial x_{1}} & \dfrac{\partial}{\partial x_{2}} & \cdots & \dfrac{\partial}{\partial x_{n}} \\ \end{bmatrix}$，则 $\boldsymbol F(\boldsymbol X)$ 的 $\text{Jacobi}$ 矩阵形式定义为

        $$
        \begin{align*} \text{D}_{\pmb{X}}\pmb{F}(\pmb{X}) &=\dfrac{\partial \text{vec}_{pq\times 1}(\pmb{F}_{}(\pmb{X}))}{\partial \text{vec}^{\mathrm T}_{mn\times 1}(\pmb{X})} \\\\ &= \begin{bmatrix} \dfrac{\partial f_{11}}{\partial x_{11}}&\dfrac{\partial f_{11}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{11}}{\partial x_{m1}}&\dfrac{\partial f_{11}}{\partial x_{12}}&\dfrac{\partial f_{11}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{11}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{11}}{\partial x_{1n}}&\dfrac{\partial f_{11}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{11}}{\partial x_{mn}}\\  \dfrac{\partial f_{21}}{\partial x_{11}}&\dfrac{\partial f_{21}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{21}}{\partial x_{m1}}&\dfrac{\partial f_{21}}{\partial x_{12}}&\dfrac{\partial f_{21}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{21}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{21}}{\partial x_{1n}}&\dfrac{\partial f_{21}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{21}}{\partial x_{mn}}\\  \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{p1}}{\partial x_{11}}&\dfrac{\partial f_{p1}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{m1}}&\dfrac{\partial f_{p1}}{\partial x_{12}}&\dfrac{\partial f_{p1}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{1n}}&\dfrac{\partial f_{p1}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{mn}}\\ \dfrac{\partial f_{12}}{\partial x_{11}}&\dfrac{\partial f_{12}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{12}}{\partial x_{m1}}&\dfrac{\partial f_{12}}{\partial x_{12}}&\dfrac{\partial f_{12}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{12}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{12}}{\partial x_{1n}}&\dfrac{\partial f_{12}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{12}}{\partial x_{mn}}\\ \dfrac{\partial f_{22}}{\partial x_{11}}&\dfrac{\partial f_{22}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{22}}{\partial x_{m1}}&\dfrac{\partial f_{22}}{\partial x_{12}}&\dfrac{\partial f_{22}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{22}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{22}}{\partial x_{1n}}&\dfrac{\partial f_{22}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{22}}{\partial x_{mn}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{p2}}{\partial x_{11}}&\dfrac{\partial f_{p2}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{m1}}&\dfrac{\partial f_{p2}}{\partial x_{12}}&\dfrac{\partial f_{p2}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{1n}}&\dfrac{\partial f_{p2}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{mn}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{1q}}{\partial x_{11}}&\dfrac{\partial f_{1q}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{m1}}&\dfrac{\partial f_{1q}}{\partial x_{12}}&\dfrac{\partial f_{1q}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{1n}}&\dfrac{\partial f_{1q}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{mn}}\\ \dfrac{\partial f_{2q}}{\partial x_{11}}&\dfrac{\partial f_{2q}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{2q}}{\partial x_{m1}}&\dfrac{\partial f_{2q}}{\partial x_{12}}&\dfrac{\partial f_{2q}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{2q}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{2q}}{\partial x_{1n}}&\dfrac{\partial f_{2q}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{2q}}{\partial x_{mn}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{pq}}{\partial x_{11}}&\dfrac{\partial f_{pq}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{m1}}&\dfrac{\partial f_{pq}}{\partial x_{12}}&\dfrac{\partial f_{pq}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{1n}}&\dfrac{\partial f_{pq}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{mn}}\\ \end{bmatrix} \end{align*}
        $$

    2. 定义列向量偏导算子（梯度算子）为 $\nabla_{\boldsymbol{x}} = \dfrac{\partial}{\partial \boldsymbol{x}} = \begin{bmatrix} \dfrac{\partial}{\partial x_{1}} & \dfrac{\partial}{\partial x_{2}} & \cdots & \dfrac{\partial}{\partial x_{n}} \\ \end{bmatrix}^{\mathrm{T}}$，则 $\boldsymbol F(\boldsymbol X)$ 的梯度矩阵形式定义为

        $$
        \begin{align*} \nabla_{\pmb{X}}\pmb{F}(\pmb{X}) &=\dfrac{\partial \text{vec}_{pq\times 1}^{\mathrm T}(\pmb{F}_{}(\pmb{X}))}{\partial \text{vec}_{mn\times 1}(\pmb{X})} \\\\ &= \begin{bmatrix} \dfrac{\partial f_{11}}{\partial x_{11}}&\dfrac{\partial f_{21}}{\partial x_{11}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{11}}&\dfrac{\partial f_{12}}{\partial x_{11}}&\dfrac{\partial f_{22}}{\partial x_{11}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{11}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{11}}&\dfrac{\partial f_{2q}}{\partial x_{11}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{11}}\\  \dfrac{\partial f_{11}}{\partial x_{21}}&\dfrac{\partial f_{21}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{21}}&\dfrac{\partial f_{12}}{\partial x_{21}}&\dfrac{\partial f_{22}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{21}}&\dfrac{\partial f_{2q}}{\partial x_{21}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{21}}\\  \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{11}}{\partial x_{m1}}&\dfrac{\partial f_{21}}{\partial x_{m1}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{m1}}&\dfrac{\partial f_{12}}{\partial x_{m1}}&\dfrac{\partial f_{22}}{\partial x_{m1}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{m1}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{m1}}&\dfrac{\partial f_{2q}}{\partial x_{m1}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{m1}}\\ \dfrac{\partial f_{11}}{\partial x_{12}}&\dfrac{\partial f_{21}}{\partial x_{12}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{12}}&\dfrac{\partial f_{12}}{\partial x_{12}}&\dfrac{\partial f_{22}}{\partial x_{12}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{12}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{12}}&\dfrac{\partial f_{2q}}{\partial x_{12}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{12}}\\ \dfrac{\partial f_{11}}{\partial x_{22}}&\dfrac{\partial f_{21}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{22}}&\dfrac{\partial f_{12}}{\partial x_{22}}&\dfrac{\partial f_{22}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{22}}&\dfrac{\partial f_{2q}}{\partial x_{22}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{22}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{11}}{\partial x_{m2}}&\dfrac{\partial f_{21}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{m2}}&\dfrac{\partial f_{12}}{\partial x_{m2}}&\dfrac{\partial f_{22}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{m2}}&\dfrac{\partial f_{2q}}{\partial x_{m2}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{m2}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{11}}{\partial x_{1n}}&\dfrac{\partial f_{21}}{\partial x_{1n}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{1n}}&\dfrac{\partial f_{12}}{\partial x_{1n}}&\dfrac{\partial f_{22}}{\partial x_{1n}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{1n}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{1n}}&\dfrac{\partial f_{2q}}{\partial x_{1n}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{1n}}\\ \dfrac{\partial f_{11}}{\partial x_{2n}}&\dfrac{\partial f_{21}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{2n}}&\dfrac{\partial f_{12}}{\partial x_{2n}}&\dfrac{\partial f_{22}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{2n}}&\dfrac{\partial f_{2q}}{\partial x_{2n}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{2n}}\\ \vdots&\vdots&\ddots&\vdots&\vdots&\vdots&\ddots&\vdots&\ddots&\vdots&\vdots&\ddots&\vdots\\ \dfrac{\partial f_{11}}{\partial x_{mn}}&\dfrac{\partial f_{21}}{\partial x_{mn}}&\cdots&\dfrac{\partial f_{p1}}{\partial x_{mn}}&\dfrac{\partial f_{12}}{\partial x_{mn}}&\dfrac{\partial f_{22}}{\partial x_{mn}}&\cdots&\dfrac{\partial f_{p2}}{\partial x_{mn}}&\cdots&\dfrac{\partial f_{1q}}{\partial x_{mn}}&\dfrac{\partial f_{2q}}{\partial x_{mn}}&\cdots&\dfrac{\partial f_{pq}}{\partial x_{mn}}\\ \end{bmatrix} \end{align*}
        $$
