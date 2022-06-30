# 2 序数与基数

## 2.1 序数理论
- 良序集：集合 $A$ 上的全序 $\leqslant$ 若有 $A$ 的每一非空子集都有最小元，则称之为良序，称 $(A, \leqslant)$ 为良序集

## 2.2 势
1. 如果存在一个以集合 $X$ 为定义域，以集合 $Y$ 为值域的双射，则称集合 $X$ 与 $Y$ 等势，记作 $|X| = |Y|$ 或 $X \approx Y$；如果存在集合 $X$ 到 $Y$ 的单射，则称 $X$ 的势小于等于 $Y$ 的势，记作 $|X| \leqslant |Y|$ 或 $X \preccurlyeq Y$
    1. 定义 $|X| < |Y| := |X| \leqslant |Y| \wedge |X| \neq |Y|$
    2. 关系 $\approx$ 是一个等价关系；关系 $\preccurlyeq$ 是一个偏序关系
2. $\text{Cantor} - \text{Bernstein}$ 定理：如果 $|X| \leqslant |Y| \wedge |Y| \leqslant |X|$，则 $|X| = |Y|$
3. 有穷集与无穷集：对于任意集合 $X$，如果存在 $n \in \mathbf N$，使得 $|X| = n$，则称 $X$ 是有穷的；如果对任意 $n \in \mathbf N$ 都有 $|X| \neq n$，则称 $X$ 是无穷的
    1. 集合 $X$ 是有穷的等价于下列三个命题：
        1. 存在 $X$ 上的全序 $\leqslant$ 满足 $X$ 的每一非空子集在 $\leqslant$ 下有最大元和最小元
        2. $X$ 的每一非空子集族都有 $\subseteq$ 关系下的极大元
        3. $X$ 是 $\text{Dedekind}$ 有穷的，即不存在由 $X$ 到其真子集的单射
    2. 每一无穷集合都有一个可数子集
4. 如果 $|X| = |\mathbf N|$，则称 $X$ 是可数的或可数无穷的
    1. 有穷集或可数集称作至多可数的
    2. 不是可数集的集合被称作不可数的
5. 可数集的性质
    1. 如果 $A_1, A_2, \cdots, A_n$ 都是可数的，则 ${\displaystyle \bigcup_{k \leqslant n}} A_k$ 是可数的；一般地，如果 $A_1, A_2, \cdots, A_n, \cdots$ 都是可数的，则 ${\displaystyle \bigcup_{n \in \mathbf N}} A_n$ 是可数的
    2. 如果 $A_1, A_2, \cdots, A_n$ 都是可数的，则 $A_1 \times A_2 \times \cdots \times A_n$ 是可数的；特别地，对任意 $n > 0$，$\mathbf N^n$ 是可数的
    3. 如果 $A$ 是可数的，则 $A^{< \mathbf N}$ 是可数的
    4. 如果 $A$ 是可数的，则 $A$ 的所有有穷子集组成的集合是可数的
    5. 如果 $A$ 是可数的，则 $A$ 上等价关系的等价类是至多可数的
6. 可数集与不可数集合例举
    1. 自然数集合 $\mathbf N$、整数集合 $\mathbf Z$，有理数集合 $\mathbf Q$ 是可数无穷的
    2. 实数集合 $\mathbf R$ 是不可数的
    3. $\text{Cantor}$ 定理：$2^{\mathbf N}$ 是不可数的

## 2.3 基数理论
