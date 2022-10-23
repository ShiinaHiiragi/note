# 5 矩阵论

## 5.1 矩阵
### 5.1.1 矩阵的概念
1. 矩阵：由若干个数排成的 $m$ 行 $n$ 列矩形阵列

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

2. 子矩阵：设 $\boldsymbol A$ 为 $m \times n$ 矩阵，任取 $\boldsymbol A$ 的 $k$ 行 $l$ 列，位于这些行与列交叉处的元素按原来顺序构成的 $k \times l$ 矩阵称为 $\boldsymbol A$ 的一个子矩阵．特别地，当 $k = l$ 时，该子矩阵称为 $\boldsymbol A$ 的一个 $k$ 阶子矩阵
3. 相似矩阵：对于 $n$ 阶矩阵 $\boldsymbol A$ 和 $\boldsymbol B$，若存在一个 $n$ 阶可逆矩阵 $\boldsymbol P$ 使得 $\boldsymbol P^{-1} \boldsymbol{AP} = \boldsymbol B$，则称矩阵 $\boldsymbol A$ 与 $\boldsymbol B$ 相似，记作 $\boldsymbol A \sim \boldsymbol B$

### 5.1.2 基本运算
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

### 5.1.3 初等变换
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
    4. 设 $\boldsymbol A$ 为 $n$ 阶方阵，则以下命题等价
        1. $\mathrm{rank}(\boldsymbol A) = n$
        2. 存在 $n$ 阶方阵 $\boldsymbol B$ 使得 $\boldsymbol{AB} = \boldsymbol I$
        3. 存在 $n$ 阶方阵 $\boldsymbol C$ 使得 $\boldsymbol{CA} = \boldsymbol I$
        4. $\boldsymbol A$ 的列向量组线性无关
        5. $\boldsymbol A$ 的行向量组线性无关
        6. $\boldsymbol{Ax} = \boldsymbol 0$ 只有零解
        7. $\boldsymbol A$ 可经过初等变换化为标准型 $\boldsymbol I$
    5. 含秩的不等式
        1. 设 $\boldsymbol A_{m \times l}, \boldsymbol B_{l \times n}$ 为两个矩阵，则 $\mathrm{rank}(\boldsymbol{AB}) \leqslant \min\{\mathrm{rank}(\boldsymbol A), \mathrm{rank}(\boldsymbol B)\}$
        2. 设 $\boldsymbol A_{m \times l}, \boldsymbol B_{l \times n}$ 为两个矩阵，则 $\mathrm{rank}(\boldsymbol A) + \mathrm{rank}(\boldsymbol B) \leqslant \mathrm{rank}(\boldsymbol{AB}) + n$
        3. 设 $\boldsymbol A_{m \times n}, \boldsymbol B_{m \times n}$ 为两个矩阵，则 $\mathrm{rank}(\boldsymbol A + \boldsymbol B) \leqslant \mathrm{rank}(\boldsymbol A) + \mathrm{rank}(\boldsymbol B)$
        4. 设 $\boldsymbol \alpha$ 为 $n$ 元非零向量，则 $\mathrm{rank}(\boldsymbol \alpha^{\mathrm T} \boldsymbol \alpha) = 1$
    6. 设 $\boldsymbol A$ 为 $m \times n$ 矩阵，则 $\mathrm{det}(\boldsymbol A) = r$ 当且仅当矩阵 $\boldsymbol A$ 有一个 $r$ 阶子矩阵的行列式不为零，而 $\boldsymbol A$ 的所有 $r + 1$ 阶子矩阵（若存在）的行列式均为零

4. 阶梯型矩阵：若矩阵的每个非零行上方没有零行，且各个非零行自左向右的第一个非零元素 $a_{1j_1}, a_{2j_2}, \cdots, a_{rj_r}$ 所在列的编号满足 $j_1 < j_2 < \cdots < j_r$，则称该矩阵为阶梯型矩阵
    1. 主元列：阶梯型矩阵中各非零行自左向右第一个非零元素 $a_{1j_1}, a_{2j_2}, \cdots, a_{rj_r}$ 所在的列 $j_1, j_2, \cdots, j_r$
    2. 最简阶梯形矩阵：各非零行自左向右第一个非零元素均为 $1$，其所在列其余元素均为 $1$ 的阶梯型矩阵
        1. 任一非零矩阵只经初等行变换可化为最简阶梯型矩阵
        2. 非零矩阵的秩等于其最简阶梯形中主元列的个数

### 5.1.4 矩阵实例
1. 可逆矩阵：设 $\boldsymbol A$ 是 $n$ 阶方阵，如果存在 $n$ 阶方阵 $\boldsymbol B$ 使 $\boldsymbol{AB} = \boldsymbol{BA} = \boldsymbol I$，则称 $\boldsymbol A$ 是可逆矩阵或非奇异矩阵，称 $\boldsymbol B$ 是 $\boldsymbol A$ 的逆矩阵，记作 $\boldsymbol A^{-1}$
    1. 设 $\boldsymbol A, \boldsymbol A_1, \boldsymbol A_2, \cdots, \boldsymbol A_k$ 均为 $n$ 阶可逆矩阵，则有
        1. $(\boldsymbol A^{-1})^{-1} = \boldsymbol A$
        2. $(k \boldsymbol A)^{-1} = \dfrac 1k \boldsymbol A^{-1}$
        3. $(\boldsymbol A^{\mathrm T})^{-1} = (\boldsymbol A^{-1})^{\mathrm T}$
        4. $(\boldsymbol A_1 \boldsymbol A_2 \cdots \boldsymbol A_k)^{-1} = \boldsymbol A_1^{-1} \boldsymbol A_2^{-1} \cdots \boldsymbol A_k^{-1}$
    2. 可逆矩阵的性质
        1. 若对角阵可逆，则其逆矩阵仍为对角阵
        2. 若对称阵可逆，则其逆矩阵仍为对称阵
        3. 若初等阵可逆，则其逆矩阵仍为初等阵
    3. 方阵 $\boldsymbol A$ 可逆当且仅当以下条件之一成立
        1. $\boldsymbol A$ 的标准型为单位阵
        2. $\boldsymbol A$ 可表示为若干初等阵的乘积
        3. $\boldsymbol A$ 仅经初等行变化可化为单位阵
        4. $\boldsymbol A$ 仅经初等列变换可化为单位阵
        5. $\mathrm{det}(\boldsymbol A) \neq 0$
    4. 初等变换与逆矩阵：任一秩为 $r$ 的非零矩阵 $\boldsymbol A_{m \times n}$ 必存在 $m$ 阶可逆矩阵 $\boldsymbol P$ 及 $n$ 阶可逆矩阵 $\boldsymbol Q$ 使得

        $$
        \boldsymbol{PAQ} = \begin{bmatrix}
        \boldsymbol I_r & \boldsymbol O \\
        \boldsymbol O & \boldsymbol O \\
        \end{bmatrix}
        \to
        \boldsymbol A = \boldsymbol P^{-1}
        \begin{bmatrix}
        \boldsymbol I_r & \boldsymbol O \\
        \boldsymbol O & \boldsymbol O \\
        \end{bmatrix}
        \boldsymbol Q^{-1}
        $$

2. 正交阵：若方阵 $\boldsymbol A$ 可逆且满足 $\boldsymbol A^{-1} = \boldsymbol A^{\mathrm T}$，则称 $\boldsymbol A$ 为正交阵
    1. 设矩阵 $\boldsymbol A$ 为 $n$ 阶方阵，$\delta_{ij} = \left\{\begin{aligned} & 1, & i = j \\ & 0, & i \neq j \end{aligned}\right.$，则以下命题等价
        1. $\boldsymbol A$ 为正交阵
        2. $\boldsymbol A^{\mathrm T} \boldsymbol A = \boldsymbol I$
        3. $\boldsymbol A \boldsymbol A^{\mathrm T} = \boldsymbol I$
        4. 将 $\boldsymbol A$ 按列分块 $\boldsymbol A = \begin{bmatrix} \boldsymbol \alpha_1 & \boldsymbol \alpha_2 & \cdots & \boldsymbol \alpha_n \\ \end{bmatrix}$ 有 $\boldsymbol \alpha_i^{\mathrm T} \boldsymbol \alpha_j = \delta_{ij} \ (1 \leqslant i, j \leqslant n)$
        5. 将 $\boldsymbol A$ 按行分块 $\boldsymbol A = \begin{bmatrix} \boldsymbol \beta_1 & \boldsymbol \beta_2 & \cdots & \boldsymbol \beta_n \\ \end{bmatrix}^{\mathrm T}$ 有 $\boldsymbol \beta_i \boldsymbol \beta_j^{\mathrm T} = \delta_{ij} \ (1 \leqslant i, j \leqslant n)$
    2. 正交阵对积与逆运算（即转置）封闭

## 5.2 行列式
1. $n$ 阶行列式：设 $n$ 阶方阵

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn} \\
    \end{bmatrix}
    $$

    则方阵 $\boldsymbol A$ 的行列式可递归定义为

    $$
    \begin{vmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn} \\
    \end{vmatrix}
    = \left\{\begin{aligned}
    & \sum_{i=1}^n a_{1i} \cdot A_{1i} & n > 1 \\
    & a_{nn}, & n = 1
    \end{aligned}\right.
    $$

    记作 $\mathrm{det}(\boldsymbol A)$ 或 $|\boldsymbol A|$，其中 $1 \leqslant k \leqslant n$，$A_{pq}$ 为 $a_{pq}$ 的代数余子式

    1. 代数余子式：将 $n$ 阶方阵 $\boldsymbol A = [a_{ij}]_{n \times n}$ 的第 $i$ 行第 $j$ 列划去后，所得的 $n - 1$ 阶子矩阵的行列式记作 $M_{ij}$，则称 $(-1)^{i + j} M_{ij}$ 为元素 $a_{ij}$ 的代数余子式，记作 $A_{ij}$
    2. 伴随矩阵：设 $A_ij$ 是矩阵 $\boldsymbol A = [a_{ij}]_{n \times n}$ 中元素 $a_{ij}$ 的代数余子式，则称矩阵

        $$
        \begin{bmatrix}
        A_{11} & A_{12} & \cdots & A_{1n} \\
        A_{21} & A_{22} & \cdots & A_{2n} \\
        \vdots & \vdots & \ddots & \vdots \\
        A_{n1} & A_{n2} & \cdots & A_{nn} \\
        \end{bmatrix}
        $$

        为矩阵 $\boldsymbol A$ 的伴随矩阵，记作 $\boldsymbol A^*$

        1. 设方阵 $\boldsymbol A$ 的伴随矩阵为 $\boldsymbol A^*$，则 $\boldsymbol A \boldsymbol A^* = \boldsymbol A^* \boldsymbol A = \mathrm{det}(\boldsymbol A) \boldsymbol I$
        2. 设方阵 $\boldsymbol A$ 可逆，则 $\boldsymbol A^{-1} = \dfrac{\boldsymbol A^*}{\mathrm{det}(\boldsymbol A)}$，其中 $\boldsymbol A^*$ 是 $\boldsymbol A$ 的伴随矩阵

    3. $\text{Vandermonde}$ 行列式

        $$
        \mathrm{det}(\boldsymbol A_n) = \begin{vmatrix}
        1 & 1 & \cdots & 1 \\
        a_1 & a_2 & \cdots & a_n \\
        a_1^2 & a_2^2 & \cdots & a_n^2 \\
        \vdots & \vdots & \ddots & \vdots \\
        a_1^{n-1} & a_2^{n-1} & \cdots & a_n^{n-1} \\
        \end{vmatrix}
        = \prod_{1 \leqslant i < j \leqslant n} (a_j - a_i)
        $$

2. 行列式的初等变换
    1. 设 $n$ 阶方阵 $\boldsymbol A, \boldsymbol B, \boldsymbol C$ 仅有第 $t$ 行不同：

        $$
        \begin{aligned}
        \boldsymbol A & = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        b_{t1} + c_{t1} & b_{t2} + c_{t2} & \cdots & b_{tn} + c_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}, \\
        \boldsymbol B & = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        b_{t1} & b_{t2} & \cdots & b_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}, \ 
        \boldsymbol C = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        c_{t1} & c_{t2} & \cdots & c_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix} \\
        \end{aligned}
        $$

        则 $\mathrm{det}(\boldsymbol A) = \mathrm{det}(\boldsymbol B) + \mathrm{det}(\boldsymbol C)$

    2. 设 $\boldsymbol A$ 为 $n$ 阶方阵，将 $\boldsymbol A$ 的第 $s$ 行与第 $t$ 行互换得到 $\boldsymbol B$：

        $$
        \boldsymbol A = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{t1} & a_{t2} & \cdots & a_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{s1} & a_{s2} & \cdots & a_{sn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}, \ 
        \boldsymbol B = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{s1} & a_{s2} & \cdots & a_{sn} \\
        \vdots & \vdots &  & \vdots \\
        a_{t1} & a_{t2} & \cdots & a_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}
        $$

        则 $\mathrm{det}(\boldsymbol B) = -\mathrm{det}(\boldsymbol A)$

    3. 设 $\boldsymbol A$ 为 $n$ 阶方阵，将 $\boldsymbol A$ 的第 $t$ 行每一个元素乘以实数 $k$ 得到 $\boldsymbol B$：

        $$
        \boldsymbol A = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{t1} & a_{t2} & \cdots & a_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}, \ 
        \boldsymbol B = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        ka_{t1} & ka_{t2} & \cdots & ka_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}
        $$

        则 $\mathrm{det}(\boldsymbol B) = k \cdot \mathrm{det}(\boldsymbol A)$

        1. 设 $\boldsymbol A$ 是 $n$ 阶方阵，则 $\mathrm{det}(k \boldsymbol A) = k^n \mathrm{det}(\boldsymbol A)$
        2. 若方阵某一行（列）的元素全为 $0$，则其行列式为 $0$
        3. 若方阵中有两行（列）对应元素相等或成比例，则其行列式为 $0$

    4. 设 $\boldsymbol A$ 为 $n$ 阶方阵，将 $\boldsymbol A$ 的第 $s$ 行每一个元素乘以实数 $k$ 后加到第 $t$ 行得到 $\boldsymbol B$：

        $$
        \boldsymbol A = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{t1} & a_{t2} & \cdots & a_{tn} \\
        \vdots & \vdots &  & \vdots \\
        a_{s1} & a_{s2} & \cdots & a_{sn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}, \ 
        \boldsymbol B = \begin{bmatrix}
        a_{11} & a_{12} & \cdots & a_{1n} \\
        \vdots & \vdots &  & \vdots \\
        a_{t1} + ka_{s1} & a_{t2} + ka_{s2} & \cdots & a_{tn} + ka_{sn} \\
        \vdots & \vdots &  & \vdots \\
        a_{s1} & a_{s2} & \cdots & a_{sn} \\
        \vdots & \vdots &  & \vdots \\
        a_{n1} & a_{n2} & \cdots & a_{nn} \\
        \end{bmatrix}
        $$

        则 $\mathrm{det}(\boldsymbol B) = \mathrm{det}(\boldsymbol A)$

3. 行列式的性质
    1. $\mathrm{det}(\boldsymbol I) = 1$
    2. 初等矩阵的行列式分别为 $\mathrm{det}(\boldsymbol E_{ij}) = -1, \mathrm{det}(\boldsymbol E_i(k)) = k \neq 0, \mathrm{det}(\boldsymbol E_{ij}(k)) = 1$
    3. 设 $\boldsymbol A$ 是 $n$ 阶方阵，则 $\mathrm{det}(\boldsymbol A^{\mathrm T}) = \mathrm{det}(\boldsymbol A), \mathrm{det}(\boldsymbol A^{-1}) = \dfrac{1}{\mathrm{det}(\boldsymbol A)}$
    4. 设 $\boldsymbol A_1, \boldsymbol A_2, \cdots, \boldsymbol A_n$ 均为 $n$ 阶方阵，则 $\mathrm{\det}(\boldsymbol A_1 \boldsymbol A_2 \cdots \boldsymbol A_k) = \mathrm{det}(\boldsymbol A_1) \cdot \mathrm{det}(\boldsymbol A_2) \cdots \mathrm{det}(\boldsymbol A_k)$

## 5.3 特征值与二次型
### 5.3.1 特征值与特征向量
1. 特征值与特征向量：设 $\boldsymbol A$ 是 $n$ 阶方阵，$\boldsymbol x$ 是 $n$ 元非零向量，若有 $\boldsymbol{Ax} = \lambda \boldsymbol x$，则称实数 $\lambda$ 为方阵 $\boldsymbol A$ 的特征值，向量 $\boldsymbol x$ 称为方阵 $\boldsymbol A$ 属于特征值 $\lambda$ 的特征向量
    1. 一个特征向量只能属于一个特征值
    2. 方阵 $\boldsymbol A$ 属于 $\lambda$ 的全部特征向量与零向量组成的子空间称为方阵 $\boldsymbol A$ 的特征子空间
2. 特征多项式：设 $n$ 阶方阵 $\boldsymbol A$ 的特征值为 $\lambda$，称 $\mathrm{det}(\lambda \boldsymbol I - \boldsymbol A)$ 为 $\boldsymbol A$ 的特诊多项式．方程 $\mathrm{det}(\lambda \boldsymbol I - \boldsymbol A) = 0$ 的根即为 $\boldsymbol A$ 的特征值，称其根为特征根（包括重根）
    1. 方阵 $\boldsymbol A$ 的全体特征根之和等于其迹 $\mathrm{tr}(\boldsymbol A)$，全体特征根的乘积等于其行列式 $\mathrm{det}(\boldsymbol A)$
    2. 相似矩阵有相同的特征多项式
    3. 设 $\lambda_0$ 是方阵 $\boldsymbol A$ 的一个特征值，$V_0$ 是属于 $\lambda_0$ 的特征子空间．称 $\lambda_0$ 作为方阵 $\boldsymbol A$ 的特征多项式根的重数为 $\lambda_0$ 的代数重数，特征子空间 $V_0$ 的维数为 $\lambda_0$ 的几何重数，则每个特征值的代数重数不小于其几何重数
3. 特征向量的线性无关性：若 $\lambda_1, \lambda_2, \cdots, \lambda_k$ 是矩阵 $\boldsymbol A$ 的不同特征值，$\boldsymbol x_{i1}, \boldsymbol x_{i2}, \cdots, \boldsymbol x_{ir} \ (1 \leqslant i \leqslant k)$ 是属于特征值 $\lambda_i$ 的线性无关的特征向量，则向量组 $\boldsymbol x_{11}, \boldsymbol x_{12}, \cdots, \boldsymbol x_{1r}, \boldsymbol x_{21}, \boldsymbol x_{22}, \cdots, \boldsymbol x_{2r}, \cdots, \boldsymbol x_{k1}, \boldsymbol x_{k2}, \cdots, \boldsymbol x_{kr}$ 线性无关

### 5.3.2 矩阵的对角化
1. 可对角化：若矩阵 $\boldsymbol A$ 与对角阵 $\boldsymbol \Lambda$ 相似，则称矩阵 $\boldsymbol A$ 可对角化
    1. $n$ 阶矩阵 $\boldsymbol A$ 可对角化当且仅当 $\boldsymbol A$ 有 $n$ 个线性无关的特征向量
    2. $n$ 阶矩阵 $\boldsymbol A$ 可对角化当且仅当 $\boldsymbol A$ 的任一特征值的几何重数与代数重数相等
    3. 具有 $n$ 个不同特征值的 $n$ 阶方阵一定可以对角化
2. 实对称矩阵：矩阵元素都是实数的对称矩阵
    1. 实对称矩阵的所有特征值是实数，所有特征向量是实向量
    2. 实对称矩阵的属于不同特征值的特征向量正交
    3. 设 $\boldsymbol A$ 是 $n$ 阶实对称矩阵，则存在 $n$ 阶正交阵 $\boldsymbol P$ 使得 $\boldsymbol P^{\mathrm T} \boldsymbol{AP}$ 为对角阵，这个过程称为正交对角化

        !!! note "正交对角化的步骤"
            1. 求出实对称矩阵 $\boldsymbol A$ 的所有不同特征值 $\lambda_1, \lambda_2, \cdots, \lambda_s \ (\lambda_i \neq \lambda_j)$
            2. 对每个 $\lambda_i \ (1 \leqslant i \leqslant s)$，解方程组 $(\lambda_i \boldsymbol I - \boldsymbol A) = \boldsymbol 0$，找出一个基础解系 $\boldsymbol x_{i1}, \boldsymbol x_{i2}, \cdots, \boldsymbol x_{ir_i}$．这是矩阵 $\boldsymbol A$ 的特征值 $\lambda_i$ 对应特征子空间的基
            3. 将 $\boldsymbol x_{i1}, \boldsymbol x_{i2}, \cdots, \boldsymbol x_{ir_i}$．这是矩阵 $\boldsymbol A$ 的特征值 $\lambda_i$ 作 $\text{Schmidt}$ 正交化，得到一组相互正交的单位向量组 $\boldsymbol \varepsilon_{i1}, \boldsymbol \varepsilon_{i2}, \cdots, \boldsymbol \varepsilon_{ir_i}$，这是矩阵 $\boldsymbol A$ 的特征值 $\lambda_i$ 对应特征子空间的标准正交基
            4. $\boldsymbol P = \begin{bmatrix} \boldsymbol \varepsilon_{11} & \boldsymbol \varepsilon_{12} & \cdots & \boldsymbol \varepsilon_{1r_1} & \varepsilon_{21} & \boldsymbol \varepsilon_{22} & \cdots & \boldsymbol \varepsilon_{2r_2} & \cdots & \varepsilon_{s1} & \boldsymbol \varepsilon_{s2} & \cdots & \boldsymbol \varepsilon_{sr_s} \\ \end{bmatrix}$ 即为所求的正交阵

### 5.3.3 二次型
1. 设 $\boldsymbol A$ 是 $n$ 阶实对称矩阵，$\boldsymbol x$ 是 $n$ 元列向量，则称 $\boldsymbol x^{\mathrm T} \boldsymbol{Ax}$ 为二次型．此时

    $$
    A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1n} \\
    a_{21} & a_{22} & \cdots & a_{2n} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nn} \\
    \end{bmatrix}, \ \boldsymbol x = \begin{bmatrix}
    x_1 \\ x_2 \\ \vdots \\ x_n
    \end{bmatrix}
    $$

    从而

    $$
    \begin{aligned}
    \boldsymbol x^{\mathrm T} \boldsymbol{Ax} & = \sum_{i=1}^n \sum_{j=1}^n a_{ij} x_i x_j \\
    & = \sum_{i=1^n} a_{ii}x_i^2 + \sum_{i \neq j} a_{ij} x_i x_j \\
    & = \sum_{i=1^n} a_{ii}x_i^2 + 2\sum_{i < j} a_{ij} x_i x_j
    \end{aligned}
    $$

    1. 标准型：若二次型只含有变量的平方项，即有

        $$
        \begin{aligned}
        f(y_1, y_2, \cdots, y_n) & = \begin{bmatrix} y_1 & y_2 & \cdots & y_n \\ \end{bmatrix} \begin{bmatrix}
        b_{11} &  &  &  \\
         & b_{22} &  &  \\
         &  & \ddots &  \\
         &  &  & b_{nn} \\
        \end{bmatrix} \begin{bmatrix}
        y_1 \\ y_2 \\ \vdots \\ y_n \\
        \end{bmatrix} \\
        & = b_1 y_1^2 + b_2 y_2^2 + \cdots + b_n y_n^2
        \end{aligned}
        $$

        则称这种形式为二次型的标准形

    2. 对于二次型 $\boldsymbol x^{\mathrm T} \boldsymbol{Ax}$，存在正交阵 $\boldsymbol P$ 使得经过正交变换 $\boldsymbol y = \boldsymbol P^{\mathrm T} \boldsymbol x$ 的二次型 $\boldsymbol x^{\mathrm T} \boldsymbol{Ax}$ 可化为标准形 $\lambda_1 y_1^2 + \lambda_2 y_2^2 + \cdots + \lambda_n y_n^2$，其中 $\lambda_1, \lambda_2, \cdots, \lambda_n$ 是实对称矩阵 $\boldsymbol A$ 的全部特征值

2. $\text{Rayleigh}$ 商：设 $\boldsymbol A$ 为 $n$ 阶实对称矩阵，$\boldsymbol x$ 为 $n$ 元非零列向量，称 $\dfrac{\boldsymbol x^{\mathrm T} \boldsymbol{Ax}}{\boldsymbol x^{\mathrm T} \boldsymbol x}$ 为 $\boldsymbol A$ 的 $\text{Rayleigh}$ 商
    1. 实对称矩阵 $\boldsymbol A$ 的 $\text{Rayleigh}$ 商的最大值为 $\boldsymbol A$ 的最大特征值
    2. 实对称矩阵 $\boldsymbol A$ 的 $\text{Rayleigh}$ 商的最小值为 $\boldsymbol A$ 的最小特征值
