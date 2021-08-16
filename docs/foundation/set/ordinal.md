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

    !!! note
        也可以用非严格的偏序关系定义全序集, 即 $\forall x,y\in a(xry\vee yrx)$, 则$a$ 上的偏序关系 $r$ 是 $a$ 上的全序.

    1. 保序映射: 设 $a,b$ 是全序集, 且有 $f:a\to b$ 使得 $\forall x,y\in a(x<y\to f(x)<f(y))$, 则 $f$ 为 $a$ 到 $b$ 的保序映射
        - 设 $a$ 为全序集, $b$ 为偏序集, $f:a\to b$ 有 $\forall x,y\in a(x<y\to f(x)<f(y))$, 则 $f[a]$ 是 $b$ 中的全序子集
        - 设 $f$ 为全序集 $a$ 到 全序集 $b$ 的保序映射, 则 $f$ 为单射且反向蕴含 $\forall x,y\to a(x<y\leftrightarrow f(x)<f(y))$ 也成立. 此时称 $a$ 与 $b$ 同构: $\left< a,<\right> \cong \left< b,< \right>$
    2. 初始段: 设 $a$ 为全序集, $b\subset a$, 若 $b$ 有 $\forall x\in b\forall y\in a(y<x\to y\in b)$, 则称 $b$ 为 a 的初始段.
    3. 序性质: 全序集在同构之下能保持的性质. 全序间的同构具有自反性, 对称性, 可递性

### 4.1.2 良序
1. 概念: 集合 $a$ 上二元关系若存在以下性质, 则称作 $a$ 上的良序. 带有良序 $r$ 的集合称作 $r-$ 良序集, 良序集 $a$ 连同其上的良序 $r$ 形成良序结构 $\left< a,r \right>$
    - 反自反性: $\forall x\in a\neg (xrx)$
    - 可递性: $\forall x,y,z\in a(xry\wedge yrz\to xrz)$
    - 三分律: $\forall x,y\in a(xry\vee x=y\vee yrx)$
    - 良基性: $\forall b\subset a(b\neq \varnothing \to \exists y\in b\forall x\in b\neg (xry))$

2. 按定义, 良序就是具有良基性的全序, 所以良序集的任一非空子集都有最小元

## 4.2 序数