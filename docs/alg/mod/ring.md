# 2 环论

## 2.1 环的性质
### 2.1.1 环
1. 环：令 $M = \{\cdot, +, o, e\}$，结构 $\mathfrak M = (R, \cdot^\mathfrak M, +^\mathfrak M, o^\mathfrak M, e^\mathfrak M)$ 是一个环，则将 $\mathfrak M$ 看作代数结构时记作 $\{R; +, \cdot\}$，称 $+$ 与 $\cdot$ 为加法运算与乘法运算
    1. 零元：将 $R$ 对于加法做成的群的单位元记为 $0$，称为 $R$ 的零元
    2. 负元：设 $a \in R$，将 $a$ 在加法运算下的逆记为 $-a$，称为 $a$ 的负元
    3. 将 $m$ 个 $a$ 连加得到的结果记为 $m a$ 并规定 $0 a=0$，$(-n) a= -(n a)$；将 $m$ 个 $a$ 连乘得到的结果记为 $a^{m}$；将 $a+(- b)$ 简写成 $a-b$
        1. $(m+n) a=m a+n a, \ m(-a)=-(m a), \ (m n) a=m(n a)$
        2. $m(a+b)=m a+m b, \ \forall a, b \in R, m, n \in \mathbf{Z}$
        3. $a^{m} a^{n}=a^{m+n},\left(a^{m}\right)^{n}=a^{m n}, \ \forall m, n \in \mathbf{N}, a \in R$
        4. ${\displaystyle \left(\sum_{i=1}^{n} a_{i}\right)\left(\sum_{j=1}^{m} b_{j}\right)=\sum_{i=1}^{n} \sum_{j=1}^{m} a_{i} b_{j}}$
        5. $\forall a, b \in R$，有 $a 0=0 a=0$，其中 $0$ 为 $R$ 的零元；此外，$(-a) b=a(-b)=-a b,(-a)(-b)=a b$
2. 特征：设 $R$ 为无零因子环，若 $R$ 中所有的非零元都是无穷阶的，则称 $R$ 的特征为 $0$；若 $R$ 中所有的非零元都是有限 $p$ 阶的（$p$ 为质数），则称 $R$ 的特征为 $p$．环 $R$ 的特征记为 $\operatorname{Ch} R$
    1. 零因子：设 $R$ 为一个环，$a, b \in R$，且 $a \neq 0, b \neq 0$，若 $a b =0$，则称 $a, b$ 为 $R$ 中的一个左、右零因子，都简称为零因子
        1. 一个环 $R$ 没有零因子，当且仅当 $R$ 满足左右消去律
        2. 设 $R \neq\{0\}$，且为无零因子环，则 $R$ 中所有的非零元对于 $R$ 的加法具有相同的阶，且当这一共同的阶有限时必为质数
    2. 设无零因子的交换环 $R$ 的特征为质数 $p$，则 $(a+b)^{p}=a^{p}+b^{p},(a-b)^{p}=a^{p}-b^{p}, \ \forall a, b \in R$

### 2.1.2 理想
1. 子环：设 $R$ 为环，若 $R$ 的非空子集 $R_{0}$ 对于 $R$ 的加法与乘法也构成环，则称 $R_{0}$ 为 $R$ 的子环
2. 理想：若子环 $R_{0}$ 满足 $r a \in R_{0}, \forall r \in R, a \in R_{0} \ \left(a r \in R_{0}, \forall a \in R_{0}, r \in R\right)$，则称 $R_{0}$ 为 $R$ 的左理想（右理想）．若 $R$ 的子环 $I$ 既是 $R$ 的左理想，又是 $R$ 的右理想，则称 $I$ 为 $R$ 的双边理想，简称理想
    1. 设 $R$ 为一个环
        1. $R$ 的非空子集 $R_{0}$ 为 $R$ 的子环的充要条件是 $\forall a, b \in R_{0}$ 有 $a-b \in R_{0}, a b \in R_{0}$
        2. $R$ 的非空子集 $I$ 为 $R$ 的理想的充分必要条件是 $\forall a, b \in I, \forall x, y \in R$，有 $a-b \in I, x a, a y \in I$
    2. 任何环 $R$ 至少有两个理想：$R$ 本身和 $\{0\}$，称为平凡理想．如果 $R$ 是交换环，则左理想、右理想和理想三个概念一致
    3. 设 $R$ 为环，$R_{i}, i \in X$ 为 $R$ 的一簇理想，则 ${\displaystyle \bigcap_{i \in X} R_{i}}$ 也是 $R$ 的理想
        1. 设 $A$ 为 $R$ 的非空子集，所有 $R$ 中包含 $A$ 的理想之交仍为 $R$ 的理想，称为由 $A$ 生成的理想，记为 $\langle A\rangle$
        2. 若 $R$ 为交换幺环，则 $\langle A\rangle$ 是由所有形如 ${\displaystyle \sum_{i=1}^{n} x_{i} a_{i}, n \in \mathrm{N}, x_{i} \in R, \ a_{i} \in A, i=1,2, \cdots, n}$ 的元素组成的集合，记为 $L$
        3. 当 $A$ 只包含一个元素 $a$ 时，记 $\langle A\rangle$ 为 $\langle a\rangle$，称为由 $a$ 生成的主理想
3. 商环：设 $I$ 为环 $R$ 的理想，在 $R$ 中定义关系 $\sim$ 为 $a \sim b \leftrightarrow a-b \in I$，则关系 $\sim$ 是 $R$ 中的等价关系，且对于 $R$ 的加法和乘法都是同余关系．将 $a \in R$ 所在的等价类记为 $a+I$，在商集合 $R / \sim=R / I$ 上定义加法和乘法如下

    $$
    \begin{aligned}
    (a+I)+(b+I)&=(a+b)+I \\
    (a+I)(b+I)&=a b+I
    \end{aligned}
    $$

    则 $R / I$ 对于上述运算构成一个环，称为 $R$ 对于理想 $I$ 的商环

    1. 若 $R$ 为交换环，则 $R / I$ 也是交换环
    2. 若 $R$ 为幺环，则 $R / I$ 也是幺环，且 $1+I$ 为单位元

## 2.2 环同态

## 2.3 环实例
### 2.3.1 唯一析因环

### 2.3.2 主理想整环

### 2.3.3 欧几里得环
