# 2 线性空间

## 2.1 线性空间
### 2.1.1 线性相关性
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

### 2.1.2 线性空间
1. 基与维数：设 $V$ 是线性空间，如果在 $V$ 中存在 $n$ 个线性无关的向量 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 使得 $V$ 中任一向量 $\alpha$ 均可由 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 线性表出，则称向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 为线性空间 $V$ 的一组基，$n$ 称为线性空间 $V$ 的维数，记作 $\operatorname{dim} V = n$，$V$ 称为 $n$ 维线性空间
    1. 坐标：设向量组 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 是 $n$ 维线性空间的一组基，$\boldsymbol \alpha$ 是 $V$ 中的任一向量，若 $\boldsymbol \alpha = x_1 \boldsymbol \varepsilon_1 + x_2 \boldsymbol \varepsilon_2 + \cdots + x_n \boldsymbol \varepsilon_n$，则称 $x_1, x_2, \cdots, x_n$ 为向量 $\boldsymbol \alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 下的坐标．任意向量在给定基下的坐标唯一
    2. 坐标变换公式：设 $V$ 是 $n$ 维线性空间，$\boldsymbol M$ 是由基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵，$V$ 中的向量 $\alpha$ 在基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 和基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 下的坐标分别为 $\boldsymbol x = \begin{bmatrix} x_1 & x_2 & \cdots & x_n \\ \end{bmatrix}^{\mathrm T}$ 与 $\boldsymbol x' = \begin{bmatrix} x_1' & x_2' & \cdots & x_n' \\ \end{bmatrix}$，则 $\boldsymbol x = \boldsymbol M \boldsymbol x'$
        1. 过渡矩阵：设 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 与 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 是 $n$ 维线性空间 $V$ 的两组基，若 $\begin{bmatrix} \boldsymbol \eta_1 & \boldsymbol \eta_2 & \cdots & \boldsymbol \eta_n \\ \end{bmatrix} = \begin{bmatrix} \boldsymbol \varepsilon_1 & \boldsymbol \varepsilon_2 & \cdots & \boldsymbol \varepsilon_n \\ \end{bmatrix} \boldsymbol M$，则称 $n$ 阶方阵 $\boldsymbol M$ 为从基 $\boldsymbol \varepsilon_1, \boldsymbol \varepsilon_2, \cdots, \boldsymbol \varepsilon_n$ 到基 $\boldsymbol \eta_1, \boldsymbol \eta_2, \cdots, \boldsymbol \eta_n$ 的过渡矩阵
        2. 过渡矩阵是可逆的
2. 子空间：设 $V$ 是 $F$ 上的线性空间，$W$ 是 $V$ 的一个非空子集．如果 $W$ 是 $V$ 的子结构，则称 $W$ 为 $V$ 的一个线性子空间
    1. 设 $V$ 是 $F$ 上的线性空间，$W$ 是 $V$ 的一个非空子集，若满足条件
        1. 如果 $\boldsymbol \alpha, \boldsymbol \beta \in W$，则 $\boldsymbol \alpha + \boldsymbol \beta \in W$
        2. 如果 $\boldsymbol \alpha \in W, \lambda \in F$，则 $\lambda \boldsymbol \alpha \in W$

        则 $W$ 是 $V$ 的一个子空间

    2. 设 $V$ 是实数域 $\mathbf R$ 上的线性空间，$\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 是 $V$ 中的一组向量，这组向量所有可能的线性组合所组成的集合 $\left\{{\displaystyle \left. \sum_{i=1}^n \lambda_i \boldsymbol \alpha_i \right| \lambda_i \in \mathbf R}\right\}$ 是 $V$ 的一个线性子空间，称为由 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n$ 张成的子空间，记作 $\mathrm{span}(\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_n)$
        - 向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_l$ 张成的子空间的维数等于向量组 $\boldsymbol \alpha_1, \boldsymbol \alpha_2, \cdots, \boldsymbol \alpha_l$ 的秩
    3. 基扩充定理：任何一个子空间的基偶可以扩充成为整个线性空间的基

3. 零空间与列空间

## 2.2 线性变换
