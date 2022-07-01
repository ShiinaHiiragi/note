# 1 序列与极限

- 序列：以自然数 $n$ 或全体自然数的集合 $\mathbf N$ 为定义域的映射，如果其定义域是 $n \in \mathbf N$，则称为长度为 $n$ 的有穷序列．特别地，定义域为 $0$ 的序列称为空序列，定义域为 $\mathbf N$ 的序列称为无穷序列
    1. 有穷序列：$\left<a_i \mid i < n\right>$ 或 $\left<a_0, a_1, \cdots, a_{n-1}\right>$，其值域表示为 $\left\{a_i \mid i < n\right\}$ 或 $\left\{a_0, a_1, \cdots, a_{n-1}\right\}$．特别地，空序列表示为 $\left<\ \right>$，其值域为 $\varnothing$
    2. 无穷序列：$\left<a_i \mid i \in \mathbf N\right>$ 或 $\left<a_i\right>_{i = 0}^{\infty}$，其值域表示为 $\left\{a_i \mid i \in \mathbf N\right\}$ 或 $\left\{a_i\right\}_{i = 0}^{\infty}$
    3. 由 $A$ 的元素组成的所有有穷序列的集合：$A^{<\mathbf N} = {\displaystyle \bigcup_{n \in \mathbf N} A^n}$

## 1.1 数列
1. 数列：以数集作为值域的序列称为数列，从 $1$ 开始计数，一般记为 $a_1, a_2, \cdots, a_n, \cdots$，简记作 $\{a_n\}$
    1. 按定义域分类
        1. 有穷数列：以自然数 $n$ 为定义域的数列
        2. 无穷数列：以自然数集 $\mathbf N$ 为定义域的数列
    2. 按值域分类
        1. 有界数列：存在 $M > 0$，对任意定义域中的 $n$ 都有 $|a_n| < M$
        2. 无界数列：对于任意 $M > 0$，总存在定义域中的 $n$ 使得 $|a_n| > M$
    3. 按各项的的增减趋势分类
        1. 常数列：各项都相等的数列
        2. 递增数列：从第二项起每项都大于前一项的数列
        3. 递减数列：从第二项起每项都小于前一项的数列
        4. 摆动数列：有的项大于其前一项，有的项小于其前一项的数列
2. 通项公式：如果数列 $\{a_n\}$ 的第 $n$ 项（即通项）与 $n$ 之间具有函数关系 $f(n)$，则称这个公式为该数列的通项公式
3. 前 $n$ 项和：对于数列 $\{a_n\}$，称 ${\displaystyle \sum_{i=1}^n a_i}$ 为该数列的前 $n$ 项和，记作 $S_n$
    1. $\{S_n\}$ 也是一个数列，且有 $a_n = \left\{\begin{aligned} & S_1, & n = 1 \\ & S_n - S_{n-1}, & n = 2, 3, 4, \cdots \end{aligned}\right.$
    2. 级数：记 ${\displaystyle \sum_{i=1}^\infty a_i = \lim_{n \to \infty} \sum_{i=1}^n a_i = \lim_{n \to \infty} S_n}$ 为无穷级数

### 1.1.1 等差数列

### 1.1.2 等比数列

### 1.1.3 线性递归数列

## 1.2 函数序列

## 1.3 数列与极限

## 1.4 级数
