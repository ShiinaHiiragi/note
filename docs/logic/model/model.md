# 1 结构与模型

## 1.1 语言与结构
### 1.1.1 基本概念
1. 可定义集
2. 设 $I$ 是一个集合，$\left\{ \mathfrak A_i = \left\{A_i, \{Z^{\mathfrak A_i}\}_{Z\in S}\right\}\right\}$ 是一族 $S-$结构，如果
    1. $\bigcap_{i\in I}A_i \neq \varnothing$
    2. 对每个常元符号 $c\in \mathbf C$，对任意 $i, j\in I$ 有 $C^{\mathfrak A_i} = c^{\mathfrak A_j}$
    3. 对每个 $n$ 元函数符号 $f\in \mathbf F$，如果 $(a_1, a_2, \cdots, a_n) \in \bigcap_{i\in I}A_i^n$，对任意的 $i, j\in I$ 有 $f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_j}(a_1, a_2, \cdots, a_n)$

    则定义 $\{\mathfrak A_i|i\in I\}$ 的交为一个以 $\bigcap_{i\in I}A_i$ 为论域的 $S-$结构，记作 $\bigcap_{i\in I}\mathfrak A_i$
    
    1. 对每个常元符号，$c\in \mathbf C$，$c^{\bigcap_{i\in I}\mathfrak A_i} = C^{\mathfrak A_i}$
    2. 对每个 $n$ 元函数符号 $f\in \mathbf F$，$f^{\bigcap_{i\in I}\mathfrak A_i}(a_1, a_2, \cdots, a_n) = f^{\mathfrak A_i}(a_1, a_2, \cdots, a_n)$
    3. 对每个 $n$ 元关系符号 $R\in \mathbf R$，$R^{\bigcap_{i\in I}\mathfrak A_i} = \bigcap_{i\in I}R^{\mathfrak A_i}$

### 1.1.2 同态与同构
1. 同态：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果一个映射 $h: A\to B$ 满足
    1. 对每个常元符号 $c\in \mathbf C$，$h(c^\mathfrak A) = c^\mathfrak B$
    2. 对每个 $n$ 元函数符号 $f\in \mathbf F$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $h(f^\mathfrak A(a_1, a_2, \cdots, a_n)) = f^\mathfrak B(h(a_1), h(a_2), \cdots, h(a_n))$
    3. 对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 蕴涵 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$

    则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同态，记作 $h: \mathfrak A \to \mathfrak B$

2. 嵌入与同构
    1. 嵌入：如果同构 $h: \mathfrak A \to \mathfrak B$ 是单射且对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 当且仅当 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的嵌入
    2. 同构：如果嵌入 $h: \mathfrak A \to \mathfrak B$ 是满射，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同构．如果存在 $\mathfrak A$ 到 $\mathfrak B$ 的同构，则称 $\mathfrak A$ 与 $\mathfrak B$ 同构，记作 $\mathfrak A \cong \mathfrak B$
3. 自同构：设 $\mathfrak A$ 是一个 $S-$结构，如果 $\sigma$ 是 $\mathfrak A$ 到 $\mathfrak A$ 的同构，则称 $\sigma$ 是 $\mathfrak A$ 的自同构
    1. 自同构群：令 $\mathrm{Aut}(\mathfrak A) = \{\sigma|\sigma: \mathfrak A \to \mathfrak A$ 为同构$\}$，则 $\mathrm{Aut}(\mathfrak A)$ 在映射复合下 $(\mathrm{Aut}(\mathfrak A), \circ)$ 构成一个群，称之为 $\mathfrak A$ 的自同构群
    2. 设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构且 $N \subseteq A$，则 $\mathrm{Aut}(\mathfrak A_N) = \{\sigma \in \mathrm{Aut}(\mathfrak A) | \sigma(b) = b, \forall b\in N\}$ 是所有保持 $N$ 中各点不变的 $\mathfrak A$ 的自同构，它是 $\mathrm{Aut}(\mathfrak A)$ 的一个子群，也记作 $\mathrm{Aut}(\mathfrak A/N)$

### 1.1.3 初等子结构
1. 子结构：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果 $A\subseteq B$ 且包含映射 $i: M\to N$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则称 $\mathfrak A$ 是 $\mathfrak B$ 的 $S-$子结构；$\mathfrak B$ 是 $\mathfrak A$ 的膨胀，记作 $\mathfrak A \subseteq \mathfrak B$ 或 $\mathfrak B \supseteq \mathfrak A$
    1. 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是一个 $S-$结构且 $N\subset A$，若 $M$ 有
        1. 对每个 $c\in \mathbf C$，有 $c^\mathfrak A \in N$
        2. 对每个 $n$ 元函数符号 $f\in \mathbf F$，有 $f^\mathfrak A[A^N] \subseteq N$

        则称 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$ 是 $\mathfrak A$ 的子结构，其中 $Z^\mathfrak A \upharpoonright N$ 是 $Z^\mathfrak A$ 在 $N$ 上的限制，也称 $N$ 为 $\mathfrak A$ 的子结构

    2. 对于 $S-$结构 $\mathfrak A = (A, I)$，若 $\mathbf C = \mathbf F = \varnothing$，则 $A$ 中的每个非空子集 $N$ 都可被自然地解释为 $\mathfrak A$ 的子结构 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$
    3. 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果 $h$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则 $h[A]$ 是 $\mathfrak B$ 的子结构

2. 初等子结构

## 1.2 理论与模型

## 1.3 形式算术
