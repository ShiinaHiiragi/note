# 1 向量与矩阵

## 1.1 矩阵
1. $n$ 元向量：由 $n$ 个数构成的序组 $\boldsymbol \alpha = (a_1, a_2, \cdots, a_n)$ 称为 $n$ 元向量或 $n$ 维向量，其中 $a_i$ 称为该 $n$ 元向量的第 $i$ 个元素
    1. 零向量：若向量的所有元素均为 $0$，则该向量称为零向量，记作 $\boldsymbol 0$
    2. 设两个 $n$ 元向量 $\boldsymbol \alpha, \boldsymbol \beta$，若其所有对应元素相等时，称向量 $\boldsymbol \alpha$ 与 $\boldsymbol \beta$ 相等，记作 $\boldsymbol \alpha = \boldsymbol \beta$
    3. $n$ 元向量可写作一行或一列，通常指 $n$ 元列向量
        1. 称 $\boldsymbol \alpha = \begin{bmatrix} a_1 & a_2 & \cdots & a_n \\ \end{bmatrix}$ 为 $n$ 元行向量，相当于一个 $1 \times n$ 矩阵
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

    称为 $m \times n$ 矩阵，也可用 $\boldsymbol A_{m \times n}$ 或 $[a_{ij}], [a_{ij}]_{m \times n}$ 表示．称 $a_{ij}$ 或 $\mathrm{entry}(\boldsymbol A, i, j)$ 为矩阵的第 $i$ 行第 $j$ 列元素

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
    a_{11} & a_{12} & \cdots & a_{1m} \\
    a_{21} & a_{22} & \cdots & a_{2m} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nm} \\
    \end{bmatrix}
    $$

    称为矩阵 $\boldsymbol A$ 的转置矩阵，记作 $\boldsymbol A^{\mathrm T}$

    1. $(\boldsymbol A^{\mathrm T})^{\mathrm T} = \boldsymbol A$
    2. $\mathrm{entry}(\boldsymbol A, i, j) = \mathrm{entry}(\boldsymbol A^{\mathrm T}, j, i)$

2. 矩阵线性运算
    1. 矩阵加法：设矩阵 $\boldsymbol A = [a_{ij}]_{m \times n}, \boldsymbol B = [b_{ij}]_{m \times n}, \boldsymbol C = [c_{ij}]_{m \times n}$．若 $c_{ij} = a_{ij} + b_{ij}$ 对于 $1 \leqslant i \leqslant m, 1 \leqslant j \leqslant n$ 成立，则称矩阵 $\boldsymbol C$ 为 $\boldsymbol A$ 与 $\boldsymbol B$ 的和，记作 $\boldsymbol C = \boldsymbol A + \boldsymbol B$
        1. 交换律：$\boldsymbol A + \boldsymbol B = \boldsymbol B + \boldsymbol A$
        2. 结合律：$(\boldsymbol A + \boldsymbol B) + \boldsymbol C = \boldsymbol A + (\boldsymbol B + \boldsymbol C)$
        3. $(\boldsymbol A + \boldsymbol B)^{\mathrm T} = \boldsymbol A^{\mathrm T} + \boldsymbol B^{\mathrm T}$
    2. 矩阵数乘：设矩阵 $\boldsymbol A = [a_{ij}]_{m \times n}, \boldsymbol B = [b_{ij}]_{m \times n}, k \in \mathbf R$，若满足 $b_{ij} = ka_{ij}$ 对于 $1 \leqslant i \leqslant m, 1 \leqslant j \leqslant n$ 成立，则称矩阵 $\boldsymbol B$ 为实数 $k$ 与矩阵 $\boldsymbol A$ 的数量乘积，记作 $\boldsymbol B = k\boldsymbol A$．特别地，若 $k = -1$，则 $\boldsymbol B = -\boldsymbol A$，称 $\boldsymbol B$ 为 $\boldsymbol A$ 的负矩阵，从而定义 $\boldsymbol A - \boldsymbol B = \boldsymbol A + (-\boldsymbol B)$
        1. 结合律：$k(l\boldsymbol A) = (kl)\boldsymbol A$
        2. 分配律：$(k + l)\boldsymbol A = k\boldsymbol A + l\boldsymbol A, k(\boldsymbol A + \boldsymbol B) = k\boldsymbol A + k\boldsymbol B$
        3. $(k\boldsymbol A)^{\mathrm T} = k\boldsymbol A^{\mathrm T}$
3. 矩阵乘法
4. 分块矩阵

### 1.1.2 初等变换

### 1.1.3 逆矩阵

## 1.3 行列式
