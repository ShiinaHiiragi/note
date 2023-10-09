# 3 域论

## 3.1 域的扩张
### 3.1.1 单扩张

### 3.1.2 代数扩张

### 3.1.3 可分扩张

## 3.2 多项式理论
### 3.2.1 有限域

### 3.2.2 域上多项式环
1. 一般域上多项式环：设 $F$ 为一个域，$x$ 为一个文字（符号），则称由形如

    $$
    \left\{a_{n} x^{n}+a_{n-1} x^{n-1}+\cdots+a_{1} x+a_{0} \mid n \in \mathbf{N} \cup\{0\}, a_{i} \in F, i=1,2, \cdots, n\right\}
    $$

    的所有元素组成的集合 $F[x]$ 为 $F$ 上的一元多项式环，简称为 $F$ 上的多项式环．在 $F[x]$ 上定义加法和乘法后，$F[x]$ 构成交换幺环．设 $f(x)=a_{n} x^{n}+a_{n-1} x^{n-1}+\cdots+a_{1} x+a_{0}, a_{n} \neq 0, n \geqslant 0$，则称 $n$ 为非零多项式 $f(x)$ 的次数，记为 $\operatorname{deg} f(x)$

    1. 对任意 $f(x) \in F[x]$，存在 $q(x), r(x) \in F[x]$ 使得 $f(x)=q(x) g(x)+r(x)$，其中 $r(x)=0$ 或 $\operatorname{deg} r(x)<\operatorname{deg} g(x)$，且这样的 $q(x), r(x)$ 惟一．作 $F[x]^{*}$ 到 $\mathrm{N} \cup\{0\}$ 的映射 $\delta(f(x))=\operatorname{deg} f(x), \forall f(x) \in F[x]^{\cdot}$，则可知 $F[x]$ 是 $\text{Euclid}$ 环
    2. 设 $f(x) \in F[x]$ 不可约，则 $\langle f(x)\rangle$ 为 $F[x]$ 的极大理想，因此 $F[x] /\langle f(x)\rangle$ 是一个域

2. 有限域上多项式环

### 3.2.3 多项式的分裂域

## 3.3 Galois 理论
