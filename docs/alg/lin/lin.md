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

2. 线性方程组的基础解系

### 2.1.2 线性空间

## 2.2 线性变换
