# 1 测度论

## 1.1 外测度与内测度
1. 外测度：设 $E$ 为 $\mathbf{R}^{n}$ 中任一点集，对于每一列覆盖 $E$ 的开区间 ${\displaystyle \bigcup_{i=1}^{\infty} I_{i} \supset E}$，作出其的体积总和 ${\displaystyle \mu=\sum_{i=1}^{\infty}\left|I_{i}\right|}$（$\mu$ 可以等于 $\infty$, 不同的区间列一般有不同的 $\mu$），所有这一切的 $\mu$ 组成一个下方有界的数集，其下确界（完全由 $E$ 确定）称为 $E$ 的勒贝格外测度，简称 $L$ 外测度或外测度，记为 $m^{*} E$，即 ${\displaystyle m^{*} E=\inf _{E \subset \bigcup_{i=1}^{\infty} I_{i}} \sum_{i=1}^{\infty}\left|I_{i}\right|}$
    1. 外测度的性质
        1. 非负性：$m^{*} E \geqslant 0$，当 $E$ 为空集时，$m^{*} E=0$
        2. 单调性：设 $A \subset B$，则 $m^{*} A \leqslant m^{*} B$
        3. 次可数可加性：${\displaystyle m^{*}\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leqslant \sum_{i=1}^{\infty} m^{*} A_{i}}$
    2. 设 $E \subset \mathbf{R}^{n}$，则 $m^{*} I=m^{*}(I \cap E)+m^{*}\left(I \cap E'\right)$ 式对 $\mathbf{R}^{n}$ 中任何开区间都成立的充要条件是对 $\mathbf{R}^{n}$ 中的任何点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$
2. 内测度：设 $E$ 为 $\mathbf{R}^n$ 中的有界集，$I$ 为任一包含 $E$ 的开区间，则称 $|I|-m^*(I-E)$ 为 $E$ 的内测度，记为 $m_{*} E$
    1. $m_{*} E$ 与 $I$ 的选择无关
    2. $0 \leqslant m_{*} E \leqslant m^{*} E$ 恒成立

## 1.2 可测性
### 1.2.1 可测集
1. $L$ 可测集：设 $E$ 为 $\mathbf{R}^{n}$ 中的点集，如果对任一点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$，则称 $E$ 是 $L$ 可测的．此时 $E$ 的 $L$ 外测度 $m^{*} E$ 称为 $E$ 的 $L$ 测度，记为 $m E$，记 $L$ 可测集全体为 $\mathscr{M}$
    1. 集合 $E$ 可测的充要条件是对于任意 $A \subset E, B \subset E'$ 总有 $m^{*}(A \cup B)=m^{*} A+m^{*} B$
    2. $S$ 可测的充要条件是 $S'$ 可测
    3. 设 $S_{1}, S_{2}$ 可测，则 $S_{1} \cup S_{2}$ 可测且当 $S_{1} \cap S_{2}=\varnothing$ 时，对于任意 $T$ 总有 $m^{*}\left[T \cap\left(S_{1} \cup S_{2}\right)\right]=m^{*}\left(T \cap S_{1}\right)+m^{*}\left(T \cap S_{2}\right)$
        1. 设 $S_{i}\ (i=1,2, \cdots, n)$ 可测，则 ${\displaystyle \bigcup_{i=1}^{n} S_{i}}$ 也可测，且当 $S_{i} \cap S_{j}=\varnothing(i \neq j)$ 时，对于任意集合 $T$ 总有 ${\displaystyle m^{*}\left(T \cap\left(\bigcup_{i=1}^{n} S_{i}\right)\right)=\sum_{i=1}^{n} m^{*}\left(T \cap S_{i}\right)}$
        2. 设 $S_{i}\ (i=1,2, \cdots, n)$ 可测，则 ${\displaystyle \bigcap_{i=1}^{n} S_{i}}$ 也可测

    4. 设 $\left\{S_{i}\right\}$ 是一列互不相交的可测集，则 ${\displaystyle \bigcup_{i=1}^{\infty} S_{i}}$ 也是可测集且 ${\displaystyle m\left(\bigcup_{i=1}^{\infty} S_{i}\right)=\sum_{i=1}^{\infty} m S_{i}}$
        1. 设 $\left\{S_{i}\right\}$ 是一列可测集合，则 ${\displaystyle \bigcup_{i=1}^{\infty} S_{i}}$ 也是可测集合
        2. 设 $\left\{S_{i}\right\}$ 是一列可测集合，则 ${\displaystyle \bigcap_{i=1}^{\infty} S_{i}}$ 也是可测集合
    5. 设 $\left\{S_{i}\right\}$ 是一列递增的可测集合 $S_{1} \subset S_{2} \subset \cdots \subset S_{n} \subset \cdots$，令 ${\displaystyle S=\bigcup_{i=1}^{\infty} S_{i}=\lim _{n \rightarrow \infty} S_{n}}$，则 ${\displaystyle m S=\lim _{n \rightarrow \infty} m S_{n}}$

        设 $\left\{S_{i}\right\}$ 是一列递降的可测集合 $S_{1} \supset S_{2} \supset \cdots \supset S_{n} \supset \cdots$，令 ${\displaystyle S=\bigcap_{i=1}^{\infty} S_{i}=\lim _{n \rightarrow \infty} S_{n}}$，则 $m S_{1}<\infty$ 时，${\displaystyle m S=\lim _{n \rightarrow \infty} m S_{n}}$

    !!! note "利用外测度与内测度定义可测集"
        设 $E$ 为 $\mathbf{R}^n$ 中有界集，如果 $m^* E=m_{*} E$，则称 $E$ 是 $L$ 可测的．又设 $E$ 是 $\mathbf{R}^n$ 中的无界集，如果对任何开区间 $I$，有界集 $E \cap I$ 都是 $L$ 可测的，则称 $E$ 是 $L$ 可测的．对 $L$ 可测集 $E$，不管它有界或无界，一律称 $m^* E$ 为它的 $L$ 测度，简记为 $m E$

2. 常见的可测集
    1. 零测度集：凡外测度为零之集皆可测，称为零测度集
        1. 零测度集之任何子集仍为零测度集
        2. 有限个或可数个零测度集之和集仍为零测度集
    2. 区间 $I$（不论开、闭或半开半闭区间）都是可测集合，且 $m I=|I|$
    3. 凡开集、闭集皆可测

### 1.2.2 可测集类
1. $\sigma$ 代数
2. 可测集类

### 1.2.3 可测函数

### 1.2.4 不可测集
