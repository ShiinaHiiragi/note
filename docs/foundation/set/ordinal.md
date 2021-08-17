# 4 序数

- 序列: 设 $f:n\to a$ 为 $a$ 的有限序列, $f:\omega \to a$ 为 $a$的无限序列.
    - 有限序列记作 $\left< a_i|i\in n\right>$.
    - 无限序列记作 $\left< a_i|i\in \omega \right>$ 或 $\left< a_i\right>^{\infty}_{i=1}$

## 4.1 良序结构与超限归纳法
### 4.1.1 全序集与偏序集
1. 偏序集中, 元素的公共向下延伸是可能的间接序结构
    1. 相容: 设 $a$ 是偏序集, $x,y\in a$. 若 $\exists z\in a(z\leqslant x\wedge z\leqslant y)$, 则称 $x$ 与 $y$ 在 $a$ 中相容, 否则称不相容.
    2. 反链: 设 $a$ 是偏序集, $b\subset a$, 若 $b$ 中任意两个元素都不相容, 则称 $b$ 为 $a$ 中反链.
2. 全序集: $a$ 上的二元严格偏序关系 $r$ 若有 $\forall x,y\in a(xry\vee x=y\vee yrx)$, 则 $r$ 是 $a$ 上的全序. 带有全序 $r$ 的集合称作 $r-$ 全序集 (链), 全序集连同其上的全序 $r$ 形成全序结构 $\left< a,r\right>$

    !!! note "其他定义方式"
        也可以用非严格的偏序关系定义全序集, 即 $\forall x,y\in a(xry\vee yrx)$, 则$a$ 上的偏序关系 $r$ 是 $a$ 上的全序.

    1. 保序映射: 设 $a,b$ 是全序集, 且有 $f:a\to b$ 使得 $\forall x,y\in a(x<y\to f(x)<f(y))$, 则 $f$ 为 $a$ 到 $b$ 的保序映射
        - 设 $a$ 为全序集, $b$ 为偏序集, $f:a\to b$ 有 $\forall x,y\in a(x<y\to f(x)<f(y))$, 则 $f[a]$ 是 $b$ 中的全序子集
        - 设 $f$ 为全序集 $a$ 到 全序集 $b$ 的保序映射, 则 $f$ 为单射且反向蕴含 $\forall x,y\to a(x<y\leftrightarrow f(x)<f(y))$ 也成立. 此时称 $a$ 与 $b$ 同构: $\left< a,<\right> \cong \left< b,< \right>$
    2. 初始段: 设 $a$ 为全序集, $b\subset a$, 若 $b$ 有 $\forall x\in b\forall y\in a(y<x\to y\in b)$, 则称 $b$ 为 a 的初始段.
        - 若 $b\neq a$, 则称 $b$ 为 $a$ 的真初始段.
        - 设 $a$ 为全序集, 若 $x\in a$, 记 $a_x=\{ t\in a|t<x\}$, 则 $a_x$ 为 $a$ 的一个 (以 $x$ 为端点的) 初始段. 对于全序集而言, 不是所有的初始段都能用 $a_x$ 的形式表示
    3. 序性质: 全序集在同构之下能保持的性质. 全序间的同构具有自反性, 对称性, 可递性

### 4.1.2 良序
1. 概念: 集合 $a$ 上二元关系若存在以下性质, 则称作 $a$ 上的良序. 带有良序 $r$ 的集合称作 $r-$ 良序集, 良序集 $a$ 连同其上的良序 $r$ 形成良序结构 $\left< a,r \right>$
    - 反自反性: $\forall x\in a\neg (xrx)$
    - 可递性: $\forall x,y,z\in a(xry\wedge yrz\to xrz)$
    - 三分律: $\forall x,y\in a(xry\vee x=y\vee yrx)$
    - 良基性: $\forall b\subset a(b\neq \varnothing \to \exists y\in b\forall x\in b\neg (xry))$

2. 按定义, 良序就是具有良基性的全序, 所以良序集的任一非空子集都有最小元
    1. 若 $\left< a,r\right>$ 是良序结构且 $b\subset a$, 则子结构 $\left< b,r \cap b^2\right>$ 也是良序结构.
    2. 一般来说, 良序 $r$ 的逆关系 $r^{-1}$ 不是同一集合上的良序; 当 $a$ 为有限集合时, $a$ 上良序 $r$ 的逆序仍为良序
    3. 设 $b$ 是良序集 $a$ 的真初始段, 则 $\exists x\in a$ 使得 $b=a_x=\{t\in a|t<x\}$
3. 良序指标集: 对集族 $A$ 的每个集合赋予「指标」, 指标集为 $I$, 则该集族可表示为 $A=\{a_i|i\in I\}$. $I$ 不一定可数, 当集族可数时, 指标集通常为 $\omega$
    
    !!! note "不交化"
        当指标集 $I$ 为良序集时, 对于集族 $A=\{a_i|i\in I\}$. 存在元素互不相交的集族 $B=\{b_i|i\in I\}$ 使得 $\forall i\in I(b_i\subset a_i)$, $\cup A=\cup B$, 则 $B$ 为 $A$ 的不交族.

        **命题**: 设 $A=\{a_i|i\in I\}, B=\{b_i|i\in I\}$, 其中指标集 $I$ 时良序集且 $b_i=a_i-\bigcup_{j<i}a_j$, 那么 $B$ 是 $A$ 的不交族

### 4.1.3 超限归纳法
1. 超限归纳法: 设 $a$ 是良序集, $p(x)$ 是集合 $x$ 的某个性质. 若 $\forall x\in a((\forall y<xp(y))\to p(x))$, 则 $\forall x\in ap(x)$
    1. 通常的数学归纳法是此归纳法的特殊情形 $a=N$; 一般情况下, $a$ 可以是某个良序集的任一子集.
    2. 用超限归纳法证明命题 $\forall x\in ap(x)$: 先对 $a$ 的最小元 $x_0$ 直接验证 $p(x_0)$ 成立, 然后任取 $x\in a$, 归纳假设 $\forall y<xp(y)$, 再证明 $p(x)$ 成立.
2. 良序集基本定理: 对任意良序集 $a$ 与 $b$, 有 $a\cong b\vee \exists y\in b(a\cong b_y)\vee \exists x\in a(b\cong a_x)$
    1. 良序集基本定理的引理
        - 设 $a$ 是良序集, 若映射 $f:a\to a$是保序的, 即 $x_1<x_2\to f(x_1)<f(x_2)$, 则对任意 $x\in a$ 有 $x\leqslant f(x)$.
        - 良序集与它的任一真初始段不同构
        - 设 $a,b$ 为良序集, 以下三种情况至多出现一种: ① $a\cong b$; ② $a\cong b_y, y\in b$; ③ $b\cong a_x, x\in a$.
    2. 推论: 若 $a,b$ 是良序集, 则有 $a\preccurlyeq b\wedge b\preccurlyeq a$.

## 4.2 序数
### 4.2.1 序数