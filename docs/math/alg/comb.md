# 4 组合理论

## 4.1 计数原理
1. 加法原理与乘法原理
    1. 加法原理：若有穷集合 $S_1, S_2, \cdots, S_n$ 有 $S_i \cup S_j = \varnothing \ (1 \leqslant i, j \leqslant n, i \neq j)$，则 $|S_1| + |S_2| + \cdots + |S_n| = |S_1 \cup S_2 \cup \cdots \cup S_n|$
    2. 容斥原理：加法原理的推广，对于有穷集合 $S_1, S_2, \cdots, S_n$ 有

        $$
        \left|\bigcup_{i=1}^n S_i\right| = \sum_{i=1}^n |S_i| - \sum_{1 \leqslant i < j \leqslant n} |S_i \cap S_j| + \sum_{1 \leqslant i < j < k \leqslant n} |S_i \cap S_j \cap S_k| - \cdots + (-1)^{n-1}|S_1 \cap S_2 \cap \cdots \cap S_n|
        $$

    3. 乘法原理：对于集合 $S_1, S_2, \cdots, S_n$，有 $|S_1| \times |S_2| \times \cdots \times |S_n| = |S_1 \times S_2 \times \cdots \times S_n|$，其中 $S_i$ 可以为无穷集

2. 抽屉原理：如果 $n$ 是自然数，则不存在 $n$ 到其真子集 $X \subset n$ 上的双射
    1. 设 $a_1, a_2, \cdots, a_n \in \mathbf N$ 且 $\dfrac{a_1 + a_2 + \cdots + a_n}{n} > r - 1$，则 $a_n$ 中至少有一个数不小于 $r$
    2. 设 $a_1, a_2, \cdots, a_n \in \mathbf N, q_1, q_2, \cdots, q_n \in \mathbf Z_+$，若 ${\displaystyle \sum_{i=1}^n a_i = \sum_{i=1}^n q_i - n + 1}$，则 $a_1 > q_1 \vee a_2 > q_2 \vee \cdots \vee a_n > q_n$
3. 多重集

## 4.2 排列
1. 排列数：从 $n$ 个元素的集合 $S$ 中有序选取的 $r$ 个元素称为 $S$ 的一个 $r-$排列，不同的排列总数记为 $A_n^r$
    1. $A_n^r = \left\{\begin{aligned} & \dfrac{n!}{(n - r)!}, & r \leqslant n \\ & 0, & r > n \end{aligned}\right.$
    2. $A_n^r = (n - r + 1) A_n^{r-1} = \dfrac{n}{n - r} A_{n-1}^r = n A_{n-1}^{r-1}$
2. 环排列数：从 $n$ 个元素的集合 $S$ 上选取 $r$ 个元素排成一个环形，这样的排列称为 $S$ 的一个 $r-$环排列，其环排列数为 $\dfrac{C_n^r}{r}$
3. 多重集的排列

## 4.3 组合
1. 组合数：从 $n$ 个元素的集合 $S$ 中无序选取 $r$ 个元素组成 $S$ 的子集称为 $S$ 的一个 $r-$组合，不同的组合总数记为 $C_n^r$
    1. $C_n^r = \dfrac{A_n^r}{r!} = \left\{\begin{aligned} & \dfrac{n!}{r!(n-r)!}, & r \leqslant n \\ & 0, r > n \end{aligned}\right.$
    2. 组合数恒等式：对于 $n$ 个元素的集合 $S$ 的 $r-$组合数，设 $m, k \in \mathbf Z_+$
        1. $C_n^r = C_n^{n-r} = \dfrac{n}{r} C_{n-1}^{r-1}$，其中 $r \leqslant n$
        2. $C_n^r C_r^k = C_n^r C_{n-r}^{r-k}$，其中 $r \geqslant k$
        3. $\text{Pascal}$ 公式：$C_n^r = C_{n-1}^r + C_{n-1}^{k-1}$．由此可知 ${\displaystyle \sum_{k=0}^m C_{n+k}^k = C_{n+m+1}^m}$
        4. $\text{Vandermonde}$ 等式：${\displaystyle \sum_{i=0}^r} C_m^i C_n^{r-i} = C_{m+n}^r$，其中 $r \leqslant \min\{m, n\}$
        5. ${\displaystyle \sum_{i=0}^m} C_m^i C_n^i = C_{m+n}^m$，其中 $m \leqslant n$，当 $m = n$ 时原式即为 ${\displaystyle \sum_{k=0}^n \left(C_n^k\right)^2 = C_{2n}^n}$
        6. ${\displaystyle \sum_{r=1}^n rC_n^r = n\cdot 2^{n-1}, \sum_{r=1}^n r^2C_n^r = n(n+1)\cdot 2^{n-2}}$
2. 二项式定理
3. 多重集的组合

## 4.4 生成函数
