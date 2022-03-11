# 1 结构与模型

## 1.1 语言与结构
### 1.1.1 可定义性
1. 定义：设 $\mathfrak A$ 是论域为 $A$ 的 $S-$结构，称 $X\subseteq A^n$ 在结构 $\mathfrak A$ 中可定义当且仅当存在一个公式 $\alpha(x_1, x_2, \cdots, x_n, y_1, y_2, \cdots, y_m)$ 与 $\overline b\in A^m$ 使得 $X = \{\overline a \in A^n | \mathfrak A \vDash \alpha(\overline a, \overline b)\}$，此时称 $\alpha(\overline a, \overline b)$ 定义了 $X$
    1. 设 $C \subseteq A$，如果存在一个公式 $\beta(\overline x, z_1, z_2, \cdots, z_l)$ 与 $\overline b \in C^l$ 使得 $\beta(\overline x, \overline b)$ 定义了 $X$，则称 $X$ 在结构 $\mathfrak A$ 中是 $C-$可定义的，或定义在 $C$ 上，用 $\beta(X, \overline b)$ 表示集合 $\{\overline a\in X^n | \mathfrak A \vDash \beta(\overline a, \overline b)\}$．当 $X \subseteq A$ 时，用 $\beta(X^n, \overline b)$ 或在不引起歧义时用 $\beta(X, \overline b)$ 表示集合 $\{\overline a\in X^n | \mathfrak A \vDash \beta(\overline a, \overline b)\}$
    2. 若集合 $\{(\overline a, \overline b) | f(\overline a) = \overline b\}$ 是 $C-$可定义的，则称函数 $f: A^n \to A^m$ 是 $C-$可定义的
    3. 若 $N \subseteq A$，则 $\mathfrak A_N$ 是一个论域为 $A$ 的 $S-$结构，若 $\overline x = (x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 且 $\alpha(\overline x)$ 是一个 $S-$公式，则存在 $n_1, n_2, \cdots, n_l \in N$ 及 $S-$公式 $\beta(\overline x, y_1, y_2, \cdots, y_l)$ 使得

        $$
        \begin{aligned}
        \alpha(A^n) &= \{\overline a\in A^n | \mathfrak A_B \vDash \alpha(\overline a)\} \\
        &= \{\overline a \in A^n | \mathfrak A \vDash \beta(\overline a, n_1, n_2, \cdots, n_l)\} \\
        &= \beta(M^n, n_1, n_2, \cdots, n_l)
        \end{aligned}
        $$

2. 可定义集：设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构，$C \subseteq A, X \subseteq A^n$，用 $\mathrm{Def}_C(X) = \{Y \subseteq X | Y$ 是 $C-$可定义的$\}$ 表示 $X$ 的 $C-$可定义的子集全体；$\mathrm{Def}(A) = \bigcup_{n\in N_+} \mathrm{Def}_A(A^n)$ 表示全体 $A-$可定义集
3. 闭包：设 $\mathfrak A$ 是论域为 $A$ 的 $S-$结构，$C \subseteq A$ 是一个子集，则 $C$ 在 $A$ 中的可定义闭包为 $\mathrm{dcl}_A(C) = \{b\in A | \{b\}$ 是 $C-$可定义集 $\}$；$C$ 在 $A$ 中的代数闭包为 $\mathrm{acl}_A(C) = \{b\in A |$ 存在一个有限的 $C-$可定义集使得 $b\in C\}$
    1. 设 $b\in A$，则 $b\in \mathrm{dcl}_A(C)$ 当且仅当有可定义函数 $f(x_1, x_2, \cdots, x_n)$ 及 $a_1, a_2, \cdots, a_n \in A$ 使得 $b = f(a_1, a_2, \cdots, a_n)$
    2. $\mathrm{dcl}_A(C) \subseteq \mathrm{acl}_A(C)$
    3. $\mathrm{acl}_A(\mathrm{acl}_A(C)) = \mathrm{acl}_A(C), \mathrm{dcl}_A(\mathrm{dcl}_A(C)) = \mathrm{dcl}_A(C)$
    4. 若 $\mathfrak B$ 是 $\mathfrak A$ 的初等子结构且 $\mathfrak B$ 的论域 $B$ 包含 $C$，则 $\mathrm{acl}_A(C) = \mathrm{acl}_B(C) \subseteq A, \mathrm{dcl}_A(C) = \mathrm{dcl}_B(C) \subseteq A$

### 1.1.2 同态与同构
1. 同态：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果一个映射 $h: A\to B$ 满足
    1. 对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 蕴涵 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$
    2. 对每个 $n$ 元函数符号 $f\in \mathbf F$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $h(f^\mathfrak A(a_1, a_2, \cdots, a_n)) = f^\mathfrak B(h(a_1), h(a_2), \cdots, h(a_n))$
    3. 对每个常元符号 $c\in \mathbf C$，$h(c^\mathfrak A) = c^\mathfrak B$

    则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同态，记作 $h: \mathfrak A \to \mathfrak B$

2. 嵌入与同构
    1. 嵌入：如果同构 $h: \mathfrak A \to \mathfrak B$ 是单射且对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 当且仅当 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的嵌入
    2. 同构：如果嵌入 $h: \mathfrak A \to \mathfrak B$ 是满射，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同构．如果存在 $\mathfrak A$ 到 $\mathfrak B$ 的同构，则称 $\mathfrak A$ 与 $\mathfrak B$ 同构，记作 $\mathfrak A \cong \mathfrak B$
3. 自同构：设 $\mathfrak A$ 是一个 $S-$结构，如果 $\sigma$ 是 $\mathfrak A$ 到 $\mathfrak A$ 的同构，则称 $\sigma$ 是 $\mathfrak A$ 的自同构
    1. 自同构群：令 $\mathrm{Aut}(\mathfrak A) = \{\sigma|\sigma: \mathfrak A \to \mathfrak A$ 为同构$\}$，则 $\mathrm{Aut}(\mathfrak A)$ 在映射复合下 $(\mathrm{Aut}(\mathfrak A), \circ)$ 构成一个群，称之为 $\mathfrak A$ 的自同构群
    2. 设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构且 $N \subseteq A$，则 $\mathrm{Aut}(\mathfrak A_N) = \{\sigma \in \mathrm{Aut}(\mathfrak A) | \sigma(b) = b, \forall b\in N\}$ 是所有保持 $N$ 中各点不变的 $\mathfrak A$ 的自同构，它是 $\mathrm{Aut}(\mathfrak A)$ 的一个子群，也记作 $\mathrm{Aut}(\mathfrak A/N)$
4. 项解释与语义后承
    1. 设 $\mathscr L(S)$ 是一个语言，$\mathfrak A, \mathfrak B$ 是两个 $S-$结构，若 $h: \mathfrak A \to \mathfrak B$ 是一个同态且 $t$ 是一个项，则对任意 $\mathfrak A-$指派 $\overline b$ 都有 $h(t^\mathfrak A[\overline b]) = t^\mathfrak B[h(\overline b)]$
    2. 设 $\mathfrak A, \mathfrak B$ 分别是论域为 $A, B$ 的结构，则 $h: \mathfrak A \to \mathfrak B$ 是一个嵌入当且仅当对任意无量词公式 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 以及对任意 $a_1, a_2, \cdots, a_n \in A$ 有 $\mathfrak A \vDash \alpha(a_1, a_2, \cdots, a_n) \Leftrightarrow \mathfrak B \vDash \alpha(h(a_1), h(a_2), \cdots, h(a_n))$
    3. 设 $\mathfrak A, \mathfrak B$ 分别是论域为 $A, B$ 的结构，$h: \mathfrak A \to B$ 是一个嵌入．如果 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 是一个存在公式，则对任意 $\alpha_1, \alpha_2, \cdots, \alpha_n \in A$ 有 $\mathfrak A \vDash \alpha(a_1, a_2, \cdots, a_n) \Rightarrow \mathfrak B \vDash \alpha(h(a_1), h(a_2), \cdots, h(a_n))$

### 1.1.3 初等子结构
1. 子结构：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果 $A\subseteq B$ 且包含映射 $i: A\to B$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则称 $\mathfrak A$ 是 $\mathfrak B$ 的 $S-$子结构；$\mathfrak B$ 是 $\mathfrak A$ 的膨胀，记作 $\mathfrak A \subseteq \mathfrak B$ 或 $\mathfrak B \supseteq \mathfrak A$
    1. 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是一个 $S-$结构且 $N\subset A$，若 $A$ 有
        1. 对每个 $n$ 元函数符号 $f\in \mathbf F$，有 $f^\mathfrak A[A^N] \subseteq N$
        2. 对每个 $c\in \mathbf C$，有 $c^\mathfrak A \in N$

        则称 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$ 是 $\mathfrak A$ 的子结构，其中 $Z^\mathfrak A \upharpoonright N$ 是 $Z^\mathfrak A$ 在 $N$ 上的限制，也称 $N$ 为 $\mathfrak A$ 的子结构

    2. 对于 $S-$结构 $\mathfrak A = (A, I)$，若 $\mathbf C = \mathbf F = \varnothing$，则 $A$ 中的每个非空子集 $N$ 都可被自然地解释为 $\mathfrak A$ 的子结构 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$
    3. 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果 $h$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则 $h[A]$ 是 $\mathfrak B$ 的子结构

2. 生成子结构：设 $\mathfrak A$ 为论域为 $A$ 的 $S-$结构，对任意 $N \subseteq A$ 存在一个论域包含 $N$ 的 $\mathfrak A$ 的子结构 $\mathfrak N$，使得对于任意论域包含 $N$ 的 $\mathfrak A$ 的子结构 $\mathfrak B$ 都有 $\mathfrak N \subseteq \mathfrak B$，称 $\mathfrak N$ 是由 $N$ 生成的子结构，记作 $\left<N\right>^\mathfrak A$
    1. 若存在 $N_0 \subseteq A$ 为有限集使得 $\mathfrak N = \left<N\right>^\mathfrak A$，则称 $\mathfrak N$ 是有限生成的
    2. 设 $\mathscr L(S)$ 是一个语言，$\mathfrak A$ 为一个论域为 $A$ 的 $S-$结构且 $N\subseteq A$，则 $\left<N\right>^\mathfrak A$ 的论域是 $\overline S = \{t^\mathfrak A[b_1, b_2, \cdots, b_m] | b_1, b_2, \cdots, b_n \in S\}$
    3. 设 $\mathscr L(S)$ 是一个语言，$\mathfrak A$ 为一个论域为 $A$ 的 $S-$结构且 $N\subseteq A$，则 $\left<N\right>^\mathfrak A \leqslant \max\{|N|, |S|, \aleph_0\}$
3. 初等嵌入：设 $\mathfrak A, \mathfrak B$ 分别是论域为 $A, B$ 的结构，则若 $h: \mathfrak A \to \mathfrak B$ 有对任意公式 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 以及对任意 $a_1, a_2, \cdots, a_n \in A$ 有 $\mathfrak A \vDash \alpha(a_1, a_2, \cdots, a_n) \Leftrightarrow \mathfrak B \vDash \alpha(h(a_1), h(a_2), \cdots, h(a_n))$，则称 $h$ 是一个初等嵌入
4. 初等子结构：设 $\mathfrak A, \mathfrak B$ 分别是论域为 $A, B$ 的结构，若存在 $h: \mathfrak A \to \mathfrak B$ 是一个初等嵌入且 $A \subseteq B$，则称 $A$ 是 $B$ 的初等子结构

## 1.2 理论与模型

## 1.3 形式算术
