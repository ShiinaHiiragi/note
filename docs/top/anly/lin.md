# 1 线性空间

## 1.1 线性空间

- 设 $\mathrm{VF}-$结构 $\mathfrak V = (V, +^\mathfrak V, 0^\mathfrak V, \{\sigma^\mathfrak V \mid \sigma \in F\})$ 为一个线性空间
    1. 向量：通常将 $V$ 中的元素称为向量，将常元 $0^\mathfrak V$ 称为零向量，记作 $\boldsymbol 0$
    2. 二元函数符 $+^\mathfrak V$ 定义了向量的加法
    3. 一元函数符集合 $\{\sigma^\mathfrak V \mid \sigma \in F\}$ 定义了向量的数乘，通常将 $\sigma^\mathfrak V(\boldsymbol \alpha)$ 简记为 $\sigma \boldsymbol \alpha$，其中 $\boldsymbol \alpha \in V$

### 1.1.1 线性相关
1. 线性相关：设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s \ (s \geqslant 1)$ 为一组 $n$ 元向量，若存在不全为零的系数 $k_1, k_2, \cdots, k_s$ 使得 $k_1 \boldsymbol \alpha_1 + k_2 \boldsymbol \alpha_2 + \cdots + k_s \boldsymbol \alpha_s = \boldsymbol 0$，则称向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_s$ 线性相关，否则称向量组线性无关
    1. 线性组合：设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m, \boldsymbol \beta$ 为一组 $n$ 元向量．若存在一组实数 $k_1, k_2, \cdots, k_m$ 使得 $\boldsymbol \beta = k_1 \boldsymbol \alpha_1 + k_2 \boldsymbol \alpha_2 + \cdots + k_m \boldsymbol \alpha_m$，则称向量 $\beta$ 是 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m$ 的线性组合，或称 $\beta$ 可由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_m$ 线性表出，$k_1, k_2, \cdots, k_m$ 称为线性组合系数或线性表出系数
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

2. 设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 是齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的一组解向量，若其满足条件
    1. 线性无关
    2. 齐次线性方程组的任一解向量都能由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 线性表出

    则称  $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 为齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的基础解系

    1. 设 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 均为齐次线性方程组的解，则 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_t$ 的线性组合也是 $\boldsymbol{Ax} = \boldsymbol 0$ 的解
    2. 设 $\mathrm{rank}(\boldsymbol A_{m \times n}) = r$，若 $\boldsymbol{Ax} = \boldsymbol 0$ 有非零解，则该齐次线性方程组有基础解系，且基础解系含有 $n - r$ 个解
    3. 设 $\boldsymbol A$ 为 $m \times n$ 矩阵，$\boldsymbol b$ 为 $m$ 元列向量
        1. $\mathrm{rank}(\boldsymbol A \boldsymbol A^{\mathrm T}) = \mathrm{rank}(\boldsymbol A^{\mathrm T} \boldsymbol A) = \mathrm{rank}(\boldsymbol A) = \mathrm{rank}(\boldsymbol A^{\mathrm T})$
        2. 线性方程组 $\boldsymbol A^{\mathrm T} \boldsymbol A \boldsymbol x = \boldsymbol A^{\mathrm T} \boldsymbol b$ 一定有解

3. 设 $\boldsymbol x_0$ 是非齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol b$ 的某个特解，$\boldsymbol y$ 是相应齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol 0$ 的通解，则非齐次线性方程组 $\boldsymbol{Ax} = \boldsymbol b$ 的通解为 $\boldsymbol x = \boldsymbol x_0 + \boldsymbol y$
    1. 非齐次线性方程组的解集 $\{\boldsymbol x \mid \boldsymbol{Ax} = \boldsymbol b, \boldsymbol b \neq \boldsymbol 0\}$ 不构成子空间
    2. 线性方程组 $\boldsymbol{Ax} = \boldsymbol b$ 有解的充要条件是 $\boldsymbol b \in \mathbf C(\boldsymbol A)$

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
3. 补空间：设 $W_1$ 与 $W_2$ 是线性空间 $V$ 的两个子空间，如果 $W_1 \cap W_2 = \{\boldsymbol 0\}, W_1 + W_2 = V$，则称 $W_2$ 是 $W_1$ 关于线性空间 $V$ 的补空间
    1. 补空间存在性定理：设 $W_1$ 是 $n$ 维线性空间 $V$ 的子空间，则存在 $W_1$ 关于线性空间 $V$ 的补空间
    2. 正交补空间

### 1.1.3 内积空间
1. 内积空间：设 $V$ 是实数域 $\mathbf R$ 上一个线性空间，如果二元运算 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>$ 满足以下条件
    1. $\left<\boldsymbol \alpha, \boldsymbol \beta\right> = \left<\boldsymbol \beta, \boldsymbol \alpha\right>$
    2. $\left<k \boldsymbol \alpha, \boldsymbol \beta\right> = k \left<\boldsymbol \alpha, \boldsymbol \beta\right>$
    3. $\left<\boldsymbol \alpha + \boldsymbol \beta, \boldsymbol \gamma\right> = \left<\boldsymbol \alpha, \boldsymbol \gamma\right> + \left<\boldsymbol \beta, \boldsymbol \gamma\right>$
    4. $\left<\boldsymbol \alpha, \boldsymbol \alpha\right> \geqslant 0$ 且 $\left<\boldsymbol \alpha, \boldsymbol \alpha\right> = 0$ 当且仅当 $\boldsymbol \alpha = \boldsymbol 0$

    其中 $\boldsymbol \alpha, \boldsymbol \beta, \boldsymbol \gamma \in V, k \in \mathbf R$，则称二元运算 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>$ 为 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 的内积，引入内积后的线性空间称为内积空间

    1. ${\displaystyle \left<\sum_{i=1}^n k_i \boldsymbol \alpha_i, \sum_{j=1}^m l_j \boldsymbol \beta_j\right> = \sum_{i=1}^n \sum_{j=1}^m k_i l_j \left<\boldsymbol \alpha_i, \boldsymbol \beta_j\right>}$
    2. $\text{Cauchy} - \text{Schwarz}$ 不等式：设 $\boldsymbol \alpha, \boldsymbol \beta$ 是内积空间 $V$ 上的向量，则恒有 $\left<\boldsymbol \alpha, \boldsymbol \beta\right>^2 \leqslant \left<\boldsymbol \alpha, \boldsymbol \alpha\right> \left<\boldsymbol \beta, \boldsymbol \beta\right>$

2. 设 $\boldsymbol \alpha$ 是内积空间 $V$ 的中的一个向量，则 $\sqrt{\left<\boldsymbol \alpha, \boldsymbol \alpha\right>}$ 称为向量 $\boldsymbol \alpha$ 的模或者范数，记为 $||\boldsymbol \alpha||$
    1. $||\boldsymbol \alpha|| = 0$ 当且仅当 $\boldsymbol \alpha = \boldsymbol 0$
    2. 单位向量：模为 $1$ 的向量，若 $\boldsymbol \alpha \neq 0$，则 $\dfrac{\boldsymbol \alpha}{||\boldsymbol \alpha||}$ 为单位向量，这被称为向量的单位化或标准化

## 1.2 线性变换

## 1.3 仿射几何
### 1.3.1 仿射空间
1. 基与维数：设 $V$ 是线性空间，如果在 $V$ 中存在 $n$ 个线性无关的向量 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 使得 $V$ 中任一向量 $\alpha$ 均可由 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 线性表出，则称向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 为线性空间 $V$ 的一组基，$n$ 称为线性空间 $V$ 的维数，记作 $\operatorname{dim} V = n$，并称 $V$ 是 $n$ 维线性空间
2. 坐标：设向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是 $n$ 维线性空间 $V$ 的一组基，$\boldsymbol \alpha$ 是 $V$ 中的任一向量，若 $\boldsymbol \alpha = x_1 \boldsymbol \varepsilon_1 + x_2 \boldsymbol \varepsilon_2 + \cdots + x_n \boldsymbol \varepsilon_n$，则称 $x_1, x_2, \cdots, x_n$ 为向量 $\boldsymbol \alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的坐标
    1. 任意向量在给定基下的坐标唯一：通常将向量写作行向量或列向量的形式，并看作是特殊的矩阵．设向量 $\boldsymbol \alpha$ 有

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

    2. 坐标变换公式：设 $V$ 是 $n$ 维线性空间，$\boldsymbol M$ 是由基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵，$V$ 中的向量 $\alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 和基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 下的坐标分别为 $\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$ 与 $\boldsymbol x' = \begin{bmatrix} x_1' & x_2' & \cdots & x_n' \\ \end{bmatrix}$，则 $\boldsymbol x = \boldsymbol M \boldsymbol x'$
        1. 过渡矩阵：设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 与 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 是 $n$ 维线性空间 $V$ 的两组基，若

            $$
            \begin{bmatrix} \boldsymbol \eta_1 & \boldsymbol \eta_2 & \cdots & \boldsymbol \eta_n \\ \end{bmatrix} = \begin{bmatrix} \boldsymbol \varepsilon_1 & \boldsymbol \varepsilon_2 & \cdots & \boldsymbol \varepsilon_n \\ \end{bmatrix} \boldsymbol M
            $$

            则称 $n$ 阶方阵 $\boldsymbol M$ 为从基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵

        2. 过渡矩阵是可逆的

3. 仿射空间

### 1.3.2 向量代数
