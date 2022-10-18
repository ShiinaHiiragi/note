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

### 1.1.1 基本运算
1. 设 $m \times n$ 矩阵

    $$
    \boldsymbol A = \begin{bmatrix}
    a_{11} & a_{12} & \cdots & a_{1m} \\
    a_{21} & a_{22} & \cdots & a_{2m} \\
    \vdots & \vdots & \ddots & \vdots \\
    a_{n1} & a_{n2} & \cdots & a_{nm} \\
    \end{bmatrix}
    $$

    若将矩阵 $\boldsymbol A$ 的行与列依次呼唤，得到的 $n \times m$ 矩阵称为矩阵 $\boldsymbol A$ 的转置矩阵，记作 $\boldsymbol A^{\mathrm T}$

    1. $(\boldsymbol A^{\mathrm T})^{\mathrm T} = \boldsymbol A$
    2. $\mathrm{entry}(\boldsymbol A, i, j) = \mathrm{entry}(\boldsymbol A^{\mathrm T}, j, i)$

2. 矩阵的线性运算

### 1.1.2 初等变换

### 1.1.3 逆矩阵

## 1.3 行列式
