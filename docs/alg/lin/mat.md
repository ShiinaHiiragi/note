# 1 矩阵与行列式

## 1.1 矩阵
1. 向量： $n$ 元向量可写作一行或一列，并将其视作特殊的矩阵，通常指 $n$ 元列向量
    1. 称

        $$
        \boldsymbol \alpha = \begin{bmatrix}
        a_1 & a_2 & \cdots & a_n \\
        \end{bmatrix}
        $$

        为 $n$ 元行向量，相当于一个 $1 \times n$ 矩阵

    2. 称

        $$
        \boldsymbol \beta = \boldsymbol \alpha^{\mathrm T} = \begin{bmatrix}
        a_1 \\
        a_2 \\
        \vdots \\
        a_n \\
        \end{bmatrix}
        $$

        为 $n$ 元列向量，相当于一个 $n \times 1$ 矩阵

2. 矩阵：由若干个数排成的 $m$ 行 $n$ 列矩形阵列

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{m1} & a_{m2} & \cdots & a_{mn} \\
    \end{bmatrix}
    $$

    称为 $m \times n$ 矩阵，也可用 $\boldsymbol A_{m \times n}$ 或 $[a_{ij}], [a_{ij}]_{m \times n}$ 表示．称 $a_{ij}$ 或 $\mathrm{entry}(\boldsymbol A, i, j)$ 为矩阵的第 $i$ 行第 $j$ 列元素，$\mathrm{row}(\boldsymbol A, i)$ 表示矩阵 $\boldsymbol A$ 第 $i$ 行元素组成的行向量，$\mathrm{col}(\boldsymbol B, j)$ 表示矩阵 $\boldsymbol B$ 的第 $j$ 列组成的列向量

    1. 零矩阵：若矩阵的所有元素均为 $0$，则该矩阵称为零矩阵，记作 $\boldsymbol O$ 或 $\boldsymbol O_{m \times n}$
    2. 方阵：当 $m = n$，称 $\boldsymbol A_{m \times n}$ 为 $n$ 阶方阵，该方阵从左上角至右下角的元素 $a_{11}, a_{22}, \cdots, a_{nn}$ 称为（主）对角线元素
        1. 迹：方阵 $\boldsymbol A$ 的对角线元素之和 ${\displaystyle \sum_{i=1}^n a_{ii}}$ 称为该方阵的迹，记作 $\mathrm{tr}(\boldsymbol A)$
        2. 对称阵：若 $n$ 阶方阵 $\boldsymbol A$ 满足 $\boldsymbol A^{\mathrm T} = \boldsymbol A$，则称 $\boldsymbol A$ 为对称阵
        3. 对角阵：若 $n$ 阶方阵 $\boldsymbol A$ 的非对角线元素均为零，即

            $$
            \boldsymbol A = \begin{bmatrix}
            a_{1} & 0 & \cdots & 0 \\
            0 & a_{2} & \cdots & 0 \\
            \vdots & \vdots & \ddots & \vdots \\
            0 & 0 & 0 & a_{n} \\
            \end{bmatrix}
            $$

            则称该方阵为对角阵，记为 $\mathrm{diag}(a_1, a_2, \cdots, a_n)$．特别地，如果对角阵的对角线元素相等，则称该对角阵为纯量阵

        4. 三角阵：设 $n$ 阶方阵 $\boldsymbol A = [a_{ij}]_{n \times n}$，当 $1 \leqslant j < i \leqslant n$ 时，$a_{ij} = 0$，称 $\boldsymbol A$ 为上三角阵；当 $1 \leqslant i < j \leqslant n$ 时，$a_{ij} = 0$，称 $\boldsymbol A$ 为下三角阵．如果上（下）三角阵的对角线元素均为 $0$，则称之为严格上（下）三角阵

    3. 单位阵：若纯量阵的对角线元素均为 $1$，则称该方阵为单位阵 $\boldsymbol I$ 或 $\boldsymbol I_n$，其中 $n$ 表示阶数

### 1.1.1 基本运算
1. 设 $m \times n$ 矩阵

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{m1} & a_{m2} & \cdots & a_{mn} \\
    \end{bmatrix}
    $$

    若将矩阵 $\boldsymbol A$ 的行与列依次互换，得到的 $n \times m$ 矩阵

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{21} & \cdots & a_{m1} \\
    a_{12} & a_{22} & \cdots & a_{m2} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{1n} & a_{2n} & \cdots & a_{mn} \\
    \end{bmatrix}
    $$

    称为矩阵 $\boldsymbol A$ 的转置矩阵，记作 $\boldsymbol A^{\mathrm T}$

    1. $(\boldsymbol A^{\mathrm T})^{\mathrm T} = \boldsymbol A$
    2. $\mathrm{entry}(\boldsymbol A, i, j) = \mathrm{entry}(\boldsymbol A^{\mathrm T}, j, i)$

2. 矩阵线性运算
    1. 矩阵加法：设 $\boldsymbol A = [a_{ij}]_{m \times n}, \boldsymbol B = [b_{ij}]_{m \times n}, \boldsymbol C = [c_{ij}]_{m \times n}$ 为三个矩阵．若 $c_{ij} = a_{ij} + b_{ij}$ 对于 $1 \leqslant i \leqslant m, 1 \leqslant j \leqslant n$ 成立，则称矩阵 $\boldsymbol C$ 为 $\boldsymbol A$ 与 $\boldsymbol B$ 的和，记作 $\boldsymbol C = \boldsymbol A + \boldsymbol B$
        1. 交换律：$\boldsymbol A + \boldsymbol B = \boldsymbol B + \boldsymbol A$
        2. 结合律：$(\boldsymbol A + \boldsymbol B) + \boldsymbol C = \boldsymbol A + (\boldsymbol B + \boldsymbol C)$
        3. $(\boldsymbol A + \boldsymbol B)^{\mathrm T} = \boldsymbol A^{\mathrm T} + \boldsymbol B^{\mathrm T}$
    2. 矩阵数乘：设 $\boldsymbol A = [a_{ij}]_{m \times n}, \boldsymbol B = [b_{ij}]_{m \times n}$ 为两个矩阵且有 $k \in \mathbf R$，若满足 $b_{ij} = ka_{ij}$ 对于 $1 \leqslant i \leqslant m, 1 \leqslant j \leqslant n$ 成立，则称矩阵 $\boldsymbol B$ 为实数 $k$ 与矩阵 $\boldsymbol A$ 的数量乘积，记作 $\boldsymbol B = k\boldsymbol A$．特别地，若 $k = -1$，则 $\boldsymbol B = -\boldsymbol A$，称 $\boldsymbol B$ 为 $\boldsymbol A$ 的负矩阵，从而定义 $\boldsymbol A - \boldsymbol B = \boldsymbol A + (-\boldsymbol B)$
        1. 结合律：$k(l\boldsymbol A) = (kl)\boldsymbol A$
        2. 分配律：$(k + l)\boldsymbol A = k\boldsymbol A + l\boldsymbol A, k(\boldsymbol A + \boldsymbol B) = k\boldsymbol A + k\boldsymbol B$
        3. $(k\boldsymbol A)^{\mathrm T} = k\boldsymbol A^{\mathrm T}$
3. 矩阵乘法：设 $\boldsymbol A = [a_{ik}]_{m \times l}, \boldsymbol B = [b_{kj}]_{l \times n}, \boldsymbol C = [c_{ij}]_{m \times n}$ 为三个矩阵．若有 $c_{ij} = {\displaystyle \sum_{k=1}^l a_{ik} k_{kj}}$ 对于 $1 \leqslant i \leqslant m, 1 \leqslant j \leqslant n$ 成立，则称矩阵 $\boldsymbol C$ 为 $\boldsymbol A$ 与 $\boldsymbol B$ 的乘积，记作 $\boldsymbol C = \boldsymbol{AB}$
    1. 等价定义
        1. $\mathrm{entry}(\boldsymbol{AB}, i, j) = \left<\mathrm{row}(\boldsymbol A, i), \mathrm{col}(\boldsymbol B, j)\right> = \mathrm{row}(\boldsymbol A, i) \mathrm{col}(\boldsymbol B, j)$
        2. $\mathrm{row}(\boldsymbol{AB}, i) = \mathrm{row}(\boldsymbol A, i) \boldsymbol B = {\displaystyle \sum_{k=1}^l a_{ik} \mathrm{row}(\boldsymbol B, k)}$
        3. $\mathrm{col}(\boldsymbol{AB}, j) = \boldsymbol A \mathrm{col}(\boldsymbol B, j) = {\displaystyle \sum_{k=1}^l b_{kj} \mathrm{col}(\boldsymbol A, k)}$
        4. $\boldsymbol{AB} = {\displaystyle \sum_{k=1}^l \mathrm{col}(\boldsymbol A, k) \mathrm{row}(\boldsymbol B, k)}$
    2. 矩阵乘法的性质
        1. 结合律：$(\boldsymbol{AB}) \boldsymbol C = \boldsymbol A (\boldsymbol{BC})$
        2. 分配律：$\boldsymbol C (\boldsymbol A + \boldsymbol B) = \boldsymbol{CA} + \boldsymbol{CB}, (\boldsymbol A + \boldsymbol B) \boldsymbol C = \boldsymbol{AC} + \boldsymbol B + \boldsymbol C$
        3. $k(\boldsymbol{AB}) = (k\boldsymbol A) \boldsymbol B = \boldsymbol A(k\boldsymbol B)$
        4. $(\boldsymbol{AB})^{\mathrm T} = \boldsymbol B^{\mathrm T} \boldsymbol A^{\mathrm T}$
    3. 特殊矩阵的性质
        1. 设 $\boldsymbol A_{m \times n}, \boldsymbol B_{n \times m}$ 为两个矩阵，则 $\mathrm{tr}(\boldsymbol{AB}) = \mathrm{tr}(\boldsymbol{BA})$
        2. 设 $\boldsymbol A_{m \times n}$ 为一个矩阵，$\boldsymbol I_m, \boldsymbol I_n$ 分别为 $m$ 阶与 $n$ 阶单位阵，则 $\boldsymbol I_m \boldsymbol A = \boldsymbol{AI}_n = \boldsymbol A$
        3. 设 $\boldsymbol A = \mathrm{diag}(a_1, a_2, \cdots, a_n), \boldsymbol B = \mathrm{diag}(b_1, b_2, \cdots, b_n)$，则 $\boldsymbol{AB} = \boldsymbol{BA} = \mathrm{diag}(a_1 b_1, a_2 b_2, \cdots, a_n, b_n)$
        4. 若 $\boldsymbol A$ 与 $\boldsymbol B$ 均为 $n$ 阶上（下）三角阵，则 $\boldsymbol{AB}$ 为上（下）三角阵
        5. 设 $\boldsymbol A$ 是 $n$ 阶方阵，$k \in \mathbf N$，则 $k$ 个 $\boldsymbol A$ 的乘积称为方阵 $\boldsymbol A$ 的 $k$ 次幂，记作 $\boldsymbol A^k$，并规定 $\boldsymbol A^0 = \boldsymbol I$
            - $\boldsymbol A^k \boldsymbol A^l = \boldsymbol A^{k+l}, (\boldsymbol A^k)^l = \boldsymbol A^{kl} \ (k, l \in \mathbf N)$
            - 当 $\boldsymbol{AB} = \boldsymbol{BA}$ 时，有 $(\boldsymbol{AB})^k = \boldsymbol A^k \boldsymbol B^k$
4. 分块矩阵：设 $\boldsymbol A$ 是一个 $m \times n$ 的矩阵，将矩阵分块得到

    $$
    \boldsymbol A = \begin{bmatrix}
    \boldsymbol A_{11} & \boldsymbol A_{12} & \cdots & \boldsymbol A_{1q} \\
    \boldsymbol A_{21} & \boldsymbol A_{22} & \cdots & \boldsymbol A_{2q} \\
    \vdots & \vdots & \ddots & \vdots \\
    \boldsymbol A_{p1} & \boldsymbol A_{p2} & \cdots & \boldsymbol A_{pq} \\
    \end{bmatrix}
    $$

    其中 $\boldsymbol A_{ij} \ (1 \leqslant i \leqslant p, 1 \leqslant j \leqslant q)$ 为 $m_i \times n_j$ 子矩阵，同一行的子矩阵行数相同，同一列的子矩阵列数相同，且 ${\displaystyle \sum_{i=1}^p m_i = m, \sum_{i=1}^q n_i = n}$

    1. 设 $\boldsymbol A$ 为 $m \times n$ 的矩阵，如果按行分块将矩阵的每一行作为一个子矩阵得到

        $$
        \boldsymbol A = \begin{bmatrix}
        \mathrm{row}(\boldsymbol A, 1) \\
        \mathrm{row}(\boldsymbol A, 2) \\
        \vdots \\
        \mathrm{row}(\boldsymbol A, n) \\
        \end{bmatrix}
        $$

        如果按列分块将矩阵的每一列作为一个子矩阵得到

        $$
        \boldsymbol A = \begin{bmatrix} \mathrm{col}(\boldsymbol A, 1) & \mathrm{col}(\boldsymbol A, 2) & \cdots & \mathrm{col}(\boldsymbol A, n) \\ \end{bmatrix}
        $$

    2. 分块矩阵的基本运算
        1. 转置：设分块矩阵

            $$
            \boldsymbol A = \begin{bmatrix}
            \boldsymbol A_{11} & \boldsymbol A_{12} & \cdots & \boldsymbol A_{1q} \\
            \boldsymbol A_{21} & \boldsymbol A_{22} & \cdots & \boldsymbol A_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{p1} & \boldsymbol A_{p2} & \cdots & \boldsymbol A_{pq} \\
            \end{bmatrix}
            $$

            则其转置矩阵为

            $$
            \boldsymbol A^{\mathrm T} = \begin{bmatrix}
            \boldsymbol A_{11}^{\mathrm T} & \boldsymbol A_{21}^{\mathrm T} & \cdots & \boldsymbol A_{p1}^{\mathrm T} \\
            \boldsymbol A_{12}^{\mathrm T} & \boldsymbol A_{22}^{\mathrm T} & \cdots & \boldsymbol A_{p2}^{\mathrm T} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{1q}^{\mathrm T} & \boldsymbol A_{2q}^{\mathrm T} & \cdots & \boldsymbol A_{pq}^{\mathrm T} \\
            \end{bmatrix}
            $$

        2. 加法：设 $\boldsymbol A$ 与 $\boldsymbol B$ 均为 $m \times n$ 矩阵：

            $$
            \boldsymbol A = \begin{bmatrix}
            \boldsymbol A_{11} & \boldsymbol A_{12} & \cdots & \boldsymbol A_{1q} \\
            \boldsymbol A_{21} & \boldsymbol A_{22} & \cdots & \boldsymbol A_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{p1} & \boldsymbol A_{p2} & \cdots & \boldsymbol A_{pq} \\
            \end{bmatrix}, \ 
            \boldsymbol B = \begin{bmatrix}
            \boldsymbol B_{11} & \boldsymbol B_{12} & \cdots & \boldsymbol B_{1q} \\
            \boldsymbol B_{21} & \boldsymbol B_{22} & \cdots & \boldsymbol B_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol B_{p1} & \boldsymbol B_{p2} & \cdots & \boldsymbol B_{pq} \\
            \end{bmatrix}
            $$

            其中 $\boldsymbol A_{ij}, \boldsymbol B_{ij} \ (1 \leqslant i \leqslant p, 1 \leqslant j \leqslant q)$ 均为 $m_i \times n_j$ 矩阵，则

            $$
            \boldsymbol A + \boldsymbol B = \begin{bmatrix}
            \boldsymbol A_{11} + \boldsymbol B_{11} & \boldsymbol A_{12} + \boldsymbol B_{12} & \cdots & \boldsymbol A_{1q} + \boldsymbol B_{1q} \\
            \boldsymbol A_{21} + \boldsymbol B_{21} & \boldsymbol A_{22} + \boldsymbol B_{22} & \cdots & \boldsymbol A_{2q} + \boldsymbol B_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{p1} + \boldsymbol B_{p1} & \boldsymbol A_{p2} + \boldsymbol B_{p2} & \cdots & \boldsymbol A_{pq} + \boldsymbol B_{pq} \\
            \end{bmatrix}
            $$

        3. 数乘：设 $k \in \mathbf R$，$\boldsymbol A$ 是一个 $m \times n$ 的矩阵：

            $$
            \boldsymbol A = \begin{bmatrix}
            \boldsymbol A_{11} & \boldsymbol A_{12} & \cdots & \boldsymbol A_{1q} \\
            \boldsymbol A_{21} & \boldsymbol A_{22} & \cdots & \boldsymbol A_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{p1} & \boldsymbol A_{p2} & \cdots & \boldsymbol A_{pq} \\
            \end{bmatrix}
            $$

            则

            $$
            k \boldsymbol A = \begin{bmatrix}
            k \boldsymbol A_{11} & k \boldsymbol A_{12} & \cdots & k \boldsymbol A_{1q} \\
            k \boldsymbol A_{21} & k \boldsymbol A_{22} & \cdots & k \boldsymbol A_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            k \boldsymbol A_{p1} & k \boldsymbol A_{p2} & \cdots & k \boldsymbol A_{pq} \\
            \end{bmatrix}
            $$

        4. 乘法：设 $\boldsymbol A$ 为 $m \times s$ 的矩阵，$\boldsymbol B$ 为 $s \times n$ 的矩阵，且有

            $$
            \boldsymbol A = \begin{bmatrix}
            \boldsymbol A_{11} & \boldsymbol A_{12} & \cdots & \boldsymbol A_{1t} \\
            \boldsymbol A_{21} & \boldsymbol A_{22} & \cdots & \boldsymbol A_{2t} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol A_{p1} & \boldsymbol A_{p2} & \cdots & \boldsymbol A_{pt} \\
            \end{bmatrix}, \ 
            \boldsymbol B = \begin{bmatrix}
            \boldsymbol B_{11} & \boldsymbol B_{12} & \cdots & \boldsymbol B_{1q} \\
            \boldsymbol B_{21} & \boldsymbol B_{22} & \cdots & \boldsymbol B_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol B_{t1} & \boldsymbol B_{t2} & \cdots & \boldsymbol B_{tq} \\
            \end{bmatrix}
            $$

            其中 $\boldsymbol A_{ik}$ 是 $m_i \times s_k$ 子矩阵，$\boldsymbol B_{kj}$ 是 $s_k \times n_j$ 子矩阵，其中 $1 \leqslant i \leqslant p, 1 \leqslant k \leqslant t, 1 \leqslant j \leqslant q$．则

            $$
            \boldsymbol{AB} = \begin{bmatrix}
            \boldsymbol C_{11} & \boldsymbol C_{12} & \cdots & \boldsymbol C_{1q} \\
            \boldsymbol C_{21} & \boldsymbol C_{22} & \cdots & \boldsymbol C_{2q} \\
            \vdots & \vdots & \ddots & \vdots \\
            \boldsymbol C_{p1} & \boldsymbol C_{p2} & \cdots & \boldsymbol C_{pq} \\
            \end{bmatrix}
            $$

            其中 $\boldsymbol C_{ij} = {\displaystyle \sum_{k=1}^t \boldsymbol A_{ik} \boldsymbol B_{kj}}$

### 1.1.2 初等变换
1. 矩阵 $\boldsymbol A$ 的初等行（列）变换
    1. 将 $\boldsymbol A$ 的第 $i$ 行（列）与第 $j$ 行（列）对换

        $$
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{i1} & a_{i2} & \cdots & a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{j1} & a_{j2} & \cdots & a_{jn} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        \xrightarrow{R_{ij}}
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{j1} & a_{j2} & \cdots & a_{jn} \\
        \vdots & \vdots &  & \vdots \\
        a_{i1} & a_{i2} & \cdots & a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        $$

    2. 将 $\boldsymbol A$ 的第 $i$ 行（列）乘以非零实数 $k$

        $$
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{i1} & a_{i2} & \cdots & a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        \xrightarrow{kR_i}
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        k a_{i1} & k a_{i2} & \cdots & k a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        $$

    3. 将 $\boldsymbol A$ 第 $i$ 行（列）的 $k$ 倍加到第 $j$ 行（列）上

        $$
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{i1} & a_{i2} & \cdots & a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{j1} & a_{j2} & \cdots & a_{jn} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        \xrightarrow{R_j + kR_i}
        \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{i1} & a_{i2} & \cdots & a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{j1} + k a_{i1} & a_{j2} + k a_{i2} & \cdots & a_{jn} + k a_{in} \\
        \vdots & \vdots &  & \vdots \\
        a_{m1} & a_{m2} & \cdots & a_{mn} \\
        \end{bmatrix}
        $$

    对应的初等列变换分别记作 $C_{ij}, kC_i, C_j + kC_i$．如果对矩阵 $\boldsymbol A$ 进行一次初等行（列）变换，为使其变回原来的矩阵，只需再进行一次相应的逆变换，逆变换也是初等变换

2. 初等矩阵：由单位矩阵 $I_n$ 经过一次初等变换得到的矩阵 $\boldsymbol E$．$\boldsymbol E \boldsymbol A$ 相当于对矩阵 $\boldsymbol A_{m \times n}$ 做一次初等行变换，$\boldsymbol A \boldsymbol E$ 相当于对矩阵 $\boldsymbol A_{m \times n}$ 做一次初等列变换
    1. 第一类初等矩阵 $\boldsymbol E_{ij}$ 表示将单位阵 $\boldsymbol I_n$ 的第 $i$ 行（列）与第 $j$ 行（列）对换得到的矩阵

        $$
        \boldsymbol E_{ij} = \begin{bmatrix}
        1 &  &  &  &  &  &  \\
         & \ddots &  &  &  &  &  \\
         &  & 0 & \cdots & 1 &  &  \\
         &  & \vdots &  & \vdots &  &  \\
         &  & 1 & \cdots & 0 &  &  \\
         &  &  &  &  & \ddots &  \\
         &  &  &  &  &  & 1 \\
        \end{bmatrix}
        $$

    2. 第二类初等矩阵 $\boldsymbol E_i(k)$ 表示单位阵 $\boldsymbol I_n$ 第 $i$ 行（列）乘以非零实数 $k$

        $$
        \boldsymbol E_i(k) = \begin{bmatrix}
        1 &  &  &  &  \\
         & \ddots &  &  &  \\
         &  & k &  &  \\
         &  &  & \ddots &  \\
         &  &  &  & 1 \\
        \end{bmatrix}
        $$

    3. 第三类初等矩阵 $\boldsymbol E_{ij}(k)$ 表示单位阵 $\boldsymbol I_n$ 第 $i$ 行（列）的 $k$ 倍加到第 $j$ 行（列）上

        $$
        \boldsymbol E_{ij} = \begin{bmatrix}
        1 &  &  &  &  &  &  \\
         & \ddots &  &  &  &  &  \\
         &  & 1 & \cdots & 0 &  &  \\
         &  & \vdots &  & \vdots &  &  \\
         &  & k & \cdots & 1 &  &  \\
         &  &  &  &  & \ddots &  \\
         &  &  &  &  &  & 1 \\
        \end{bmatrix}
        $$

3. 秩：任一非零矩阵经过有限次初等变换可化为标准型 $\begin{bmatrix} \boldsymbol I_r & \boldsymbol O \\ \boldsymbol O & \boldsymbol O \\ \end{bmatrix}$．对于给定的矩阵，其标准型中 $r$ 的值唯一，称为矩阵 $\boldsymbol A$ 的秩，记作 $\mathrm{rank}(A)$ 或 $r(A)$．特别地，记 $\mathrm{rank}(\boldsymbol O) = 0$
    1. 标准型：若 $m \times n$ 矩阵 $\boldsymbol A$ 可被分块为

        $$
        \boldsymbol A = \begin{bmatrix}
        \boldsymbol I_r & \boldsymbol O_{r \times (n - r)} \\
        \boldsymbol O_{(m - r) \times r} & \boldsymbol O_{(m - r) \times (n - r)} \\
        \end{bmatrix}
        $$

        则称该矩阵为 $m \times n$ 矩阵的标准型

    2. 设 $\boldsymbol A_{m \times n}$ 是一个矩阵，则 $\mathrm{rank}(\boldsymbol A) = \mathrm{rank}(\boldsymbol A^{\mathrm T}) \leqslant \min \{m, n\}$
        1. 当 $\mathrm{rank}(\boldsymbol A) = m < n$ 时，$\boldsymbol A$ 的标准型为 $\begin{bmatrix} \boldsymbol I_m & \boldsymbol O \\ \end{bmatrix}$
        2. 当 $\mathrm{rank}(\boldsymbol A) = n < m$ 时，$\boldsymbol A$ 的标准型为 $\begin{bmatrix} \boldsymbol I_n & \boldsymbol O \\ \end{bmatrix}^{\mathrm T}$
        3. 当 $\mathrm{rank}(\boldsymbol A) = m = n$ 时，$\boldsymbol A$ 的标准型为 $\boldsymbol I_n$

        因此矩阵经过初等变换后秩不变

    3. 设 $\boldsymbol A$ 与 $\boldsymbol B$ 为两个 $m \times n$ 的矩阵，则以下命题等价
        1. $\mathrm{rank}(\boldsymbol A) = \mathrm{rank}(\boldsymbol B)$
        2. 矩阵 $\boldsymbol A$ 与 $\boldsymbol B$ 具有相同的标准型
        3. 矩阵 $\boldsymbol A$ 经过有限次初等变换可化为 $\boldsymbol B$

4. 阶梯型矩阵：若矩阵的每个非零行上方没有零行，且各个非零行自左向右的第一个非零元素 $a_{1j_1}, a_{2j_2}, \cdots, a_{rj_r}$ 所在列的编号满足 $j_1 < j_2 < \cdots < j_r$，则称该矩阵为阶梯型矩阵
    1. 主元列：阶梯型矩阵中各非零行自左向右第一个非零元素 $a_{1j_1}, a_{2j_2}, \cdots, a_{rj_r}$ 所在的列 $j_1, j_2, \cdots, j_r$
    2. 最简阶梯形矩阵：各非零行自左向右第一个非零元素均为 $1$，其所在列其余元素均为 $1$ 的阶梯型矩阵
        1. 任一非零矩阵只经初等行变换可化为最简阶梯型矩阵
        2. 非零矩阵的秩等于其最简阶梯形中主元列的个数

### 1.1.3 逆矩阵

## 1.3 行列式
