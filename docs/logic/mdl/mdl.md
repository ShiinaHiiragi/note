# 1 结构与模型

## 1.1 语言与结构
### 1.1.1 可定义性
1. 定义：设 $\mathfrak A$ 是论域为 $A$ 的 $S-$结构，称 $X\subseteq A^n$ 在结构 $\mathfrak A$ 中可定义当且仅当存在一个公式 $\alpha(x_1, x_2, \cdots, x_n, y_1, y_2, \cdots, y_m)$ 与 $\overline b\in A^m$ 使得 $X = \{\overline a \in A^n \mid \mathfrak A \vDash \alpha(\overline a, \overline b)\}$，此时称 $\alpha(\overline a, \overline b)$ 定义了 $X$
    1. 设 $C \subseteq A$，如果存在一个公式 $\beta(\overline x, z_1, z_2, \cdots, z_l)$ 与 $\overline b \in C^l$ 使得 $\beta(\overline x, \overline b)$ 定义了 $X$，则称 $X$ 在结构 $\mathfrak A$ 中是 $C-$可定义的，或定义在 $C$ 上，用 $\beta(X, \overline b)$ 表示集合 $\{\overline a\in X^n \mid \mathfrak A \vDash \beta(\overline a, \overline b)\}$
        1. 当 $X \subseteq A$ 时，用 $\beta(X^n, \overline b)$ 或在不引起歧义时用 $\beta(X, \overline b)$ 表示集合 $\{\overline a\in X^n \mid \mathfrak A \vDash \beta(\overline a, \overline b)\}$
        2. 当 $X \subseteq A^n$ 时，用 $\beta(X, \overline b)$ 表示集合 $\{\overline a\in X \mid \mathfrak A \vDash \beta(\overline a, \overline b)\}$
    2. 若集合 $\{(\overline a, \overline b) \mid f(\overline a) = \overline b\}$ 是 $C-$可定义的，则称函数 $f: A^n \to A^m$ 是 $C-$可定义的
    3. 若 $N \subseteq A$，则 $\mathfrak A_N$ 是一个论域为 $A$ 的 $S-$结构，若 $\overline x = (x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 且 $\alpha(\overline x)$ 是一个 $S-$公式，则存在 $n_1, n_2, \cdots, n_l \in N$ 及 $S-$公式 $\beta(\overline x, y_1, y_2, \cdots, y_l)$ 使得

        $$
        \begin{aligned}
        \alpha(A^n) &= \{\overline a\in A^n \mid \mathfrak A_B \vDash \alpha(\overline a)\} \\
        &= \{\overline a \in A^n \mid \mathfrak A \vDash \beta(\overline a, n_1, n_2, \cdots, n_l)\} \\
        &= \beta(M^n, n_1, n_2, \cdots, n_l)
        \end{aligned}
        $$

2. 可定义集：设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构，$C \subseteq A, X \subseteq A^n$，用 $\mathrm{Def}_C(X) = \{Y \subseteq X \mid Y$ 是 $C-$可定义的$\}$ 表示 $X$ 的 $C-$可定义的子集全体；$\mathrm{Def}(A) = {\displaystyle \bigcup_{n\in \mathbf Z_+} \mathrm{Def}_A(A^n)}$ 表示全体 $A-$可定义集
3. 闭包：设 $\mathfrak A$ 是论域为 $A$ 的 $S-$结构，子集 $C \subseteq A$，则 $C$ 在 $A$ 中的可定义闭包为 $\mathrm{dcl}_A(C) = \{b\in A \mid \{b\}$ 是 $C-$可定义集$\}$；$C$ 在 $A$ 中的代数闭包为 $\mathrm{acl}_A(C) = \{b\in A \mid$ 存在一个有限的 $C-$可定义集 $X$ 使得 $b\in X\}$
    1. 设 $b\in A$，则 $b\in \mathrm{dcl}_A(C)$ 当且仅当有可定义函数 $f(x_1, x_2, \cdots, x_n)$ 及 $a_1, a_2, \cdots, a_n \in A$ 使得 $b = f(a_1, a_2, \cdots, a_n)$
    2. $\mathrm{dcl}_A(C) \subseteq \mathrm{acl}_A(C)$
    3. $\mathrm{acl}_A(\mathrm{acl}_A(C)) = \mathrm{acl}_A(C), \mathrm{dcl}_A(\mathrm{dcl}_A(C)) = \mathrm{dcl}_A(C)$
    4. 若 $\mathfrak B$ 是 $\mathfrak A$ 的初等子结构且 $\mathfrak B$ 的论域 $B$ 包含 $C$，则 $\mathrm{acl}_A(C) = \mathrm{acl}_B(C) \subseteq A, \mathrm{dcl}_A(C) = \mathrm{dcl}_B(C) \subseteq A$

### 1.1.2 同态与同构
1. 同态：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果一个映射 $h: A\to B$ 满足
    1. 对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 蕴含 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$
    2. 对每个 $n$ 元函数符号 $f\in \mathbf F$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $h(f^\mathfrak A(a_1, a_2, \cdots, a_n)) = f^\mathfrak B(h(a_1), h(a_2), \cdots, h(a_n))$
    3. 对每个常元符号 $c\in \mathbf C$，$h(c^\mathfrak A) = c^\mathfrak B$

    则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同态，记作 $h: \mathfrak A \to \mathfrak B$

    1. 称同态 $h: \mathfrak A \to \mathfrak A$ 为结构 $\mathfrak A$ 上的一个自同态
    2. 设 $\mathfrak A, \mathfrak B$ 是两个 $S-$结构，若 $h: \mathfrak A \to \mathfrak B$ 是一个同态且 $t$ 是一个项，则对任意 $\mathfrak A-$指派 $\overline b$ 都有 $h(t^\mathfrak A[\overline b]) = t^\mathfrak B[h(\overline b)]$
    3. 对任意无量词（且无等词）的公式 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 与 $\overline a \in A^n$ 有 $\mathfrak A \vDash \alpha(\overline a)$ 当且仅当 $\mathfrak B \vDash \alpha(h(\overline b))$

2. 嵌入与同构：设 $\mathfrak A, \mathfrak B$ 是论域分别为 $A, B$ 的两个 $S-$结构，$h: A \to B$ 是一个映射．将 $\mathfrak B$ 扩张为论域为 $A$ 的 $\mathfrak B'$ 使得对于新常元 $a \in A$，有 $a^{\mathfrak B'} = h(a)$，记 $\mathfrak B' = (\mathfrak B, h(a))_{a\in A}$
    1. 嵌入：如果同态 $h: \mathfrak A \to \mathfrak B$ 是单射且对每个 $n$ 元关系符号 $R\in \mathbf R$ 与 $(a_1, a_2, \cdots, a_n) \in A^n$，都有 $(a_1, a_2, \cdots, a_n) \in R^\mathfrak A$ 当且仅当 $(h(a_1), h(a_2), \cdots, h(a_n)) \in R^\mathfrak B$，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的嵌入
        1. $h: \mathfrak A \to \mathfrak B$ 是一个嵌入当且仅当对任意无量词公式 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 与 $\overline a \in A^n$ 有 $\mathfrak A \vDash \alpha(\overline a)$ 当且仅当 $\mathfrak B \vDash \alpha(h(\overline b))$
        2. $h: \mathfrak A \to B$ 是一个嵌入，如果 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 是一个存在公式，则对任意 $\overline a \in A^n$ 有 $\mathfrak A \vDash \alpha(\overline a)$ 蕴含 $\mathfrak B \vDash \alpha(h(\overline a))$
        3. $h$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入当且仅当 $(\mathfrak B, h(a))_{a\in A} \vDash \mathrm{Diag}(\mathfrak A)$，当且仅当 $(\mathfrak B, h(a))_{a\in A} \vDash \mathrm{Diag_{el}}(\mathfrak A)$
    2. 初等嵌入与部分嵌入：设 $M \subseteq A, N \subseteq B$
        1. 初等嵌入：若 $\eta: \mathfrak A \to \mathfrak B$ 对于任意的公式 $\alpha(\overline x)$ 与 $\overline a\in A^n$ 都有 $\mathfrak A \vDash \alpha(\overline a)$ 当且仅当 $\mathfrak B \vDash \alpha(\eta(\overline a))$，则称 $\eta$ 是一个初等嵌入；若将条件放宽到 $\Phi \in \{\Pi_{n}^{m}, \Sigma_{n}^{m}, \Delta_{n}^{m}\}$ 层级的公式，则称之为 $\Phi-$初等嵌入
        2. 部分嵌入：设 $\eta: M \to N$ 是一个单射，如果对于任意的 $\overline x = \left(x_1, x_2, \cdots, x_n\right)$，无量词公式 $\alpha(\overline x)$ 以及任意的 $\overline a\in M^n$，都有 $\mathfrak A \vDash \alpha(\overline a)$ 当且仅当 $\mathfrak B \vDash \alpha(\eta(\overline a))$，则称 $\eta$ 是一个部分嵌入．若 $M = A$，则 $\eta$ 是嵌入
        3. 部分初等嵌入：设 $\eta: M \to N$ 是一个单射，如果对于任意的公式 $\alpha(\overline x)$ 以及任意的 $\overline a\in M^n$，都有 $\mathfrak A \vDash \alpha(\overline a)$ 当且仅当 $\mathfrak B \vDash \alpha(\eta(\overline a))$，则称 $\eta$ 是一个部分初等嵌入，显然部分初等嵌入一定是部分嵌入．若 $M = A$，则 $\eta$ 是初等嵌入
    3. 同构：如果嵌入 $h: \mathfrak A \to \mathfrak B$ 是满射，则称 $h$ 是（$\mathfrak A$ 到 $\mathfrak B$）的同构
        1. 如果存在 $\mathfrak A$ 到 $\mathfrak B$ 的同构，则称 $\mathfrak A$ 与 $\mathfrak B$ 同构，记作 $\mathfrak A \cong \mathfrak B$
        2. 部分同构：设 $M \subseteq A, N \subseteq B$，$\eta: M \to N$ 是双射，若 $\eta$ 是部分嵌入，则称 $\eta$ 是部分同构；若 $M = A$，则 $\eta$ 是同构
3. 自同构：设 $\mathfrak A$ 是一个 $S-$结构，如果 $\sigma$ 是 $\mathfrak A$ 到 $\mathfrak A$ 的同构，则称 $\sigma$ 是 $\mathfrak A$ 的自同构
    1. 自同构群：令 $\mathrm{Aut}(\mathfrak A) = \{\sigma\mid \sigma: \mathfrak A \to \mathfrak A$ 为同构$\}$，则 $\mathrm{Aut}(\mathfrak A)$ 在映射复合下 $(\mathrm{Aut}(\mathfrak A), \circ)$ 构成一个群，称为 $\mathfrak A$ 的自同构群
    2. 设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构且 $N \subseteq A$，则 $\mathrm{Aut}(\mathfrak A_N) = \{\sigma \in \mathrm{Aut}(\mathfrak A) \mid \sigma(b) = b, \forall b\in N\}$ 是所有保持 $N$ 中各点不变的 $\mathfrak A$ 的自同构，它是 $\mathrm{Aut}(\mathfrak A)$ 的一个子群，也记作 $\mathrm{Aut}(\mathfrak A/N)$

### 1.1.3 初等子结构
1. 图：设 $\mathfrak A$ 是一个论域为 $A$ 的 $S-$结构，则必然有 $\mathrm{Diag}(\mathfrak A) \subseteq \mathrm{Diag_{el}}(\mathfrak A)$
    1. $\mathfrak A$ 的原子图 $\mathrm{Diag}(\mathfrak A)=\{\alpha(a_1, a_2, \cdots, a_n) \mid \alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 是无量词的 $S-$公式，$a_i \in A$ 且 $\mathfrak A \vDash \alpha(a_1, a_2, \cdots, a_n)\}$
    2. $\mathfrak A$ 的初等图 $\mathrm{Diag_{el}}(\mathfrak A)=\{\alpha(a_1, a_2, \cdots, a_n) \mid \alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n})$ 是 $S-$公式，$a_i \in A$ 且 $\mathfrak A \vDash \alpha(a_1, a_2, \cdots, a_n)\}$

    其中 $i = 1, 2, \cdots n$ 且 $\alpha(a_1, a_2, \cdots, a_n)$ 是用 $a_1, a_2, \cdots, a_n$ 替换自由变元得到的 $S-$语句

2. 子结构：设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak B\}_{Z\in S}\right\}$ 是两个 $S-$结构，如果 $A\subseteq B$ 且包含映射 $i: A\to B$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则称 $\mathfrak A$ 是 $\mathfrak B$ 的 $S-$子结构；$\mathfrak B$ 是 $\mathfrak A$ 的膨胀，记作 $\mathfrak A \subseteq \mathfrak B$ 或 $\mathfrak B \supseteq \mathfrak A$
    1. 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是一个 $S-$结构且 $N\subseteq A$，若 $A$ 有
        1. 对每个 $n$ 元函数符号 $f\in \mathbf F$，有 $f^\mathfrak A[A^N] \subseteq N$
        2. 对每个 $c\in \mathbf C$，有 $c^\mathfrak A \in N$

        则称 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$ 是 $\mathfrak A$ 的子结构，其中 $Z^\mathfrak A \upharpoonright N$ 是 $Z^\mathfrak A$ 在 $N$ 上的限制，也称 $N$ 为 $\mathfrak A$ 的子结构．特别地，对于 $S-$结构 $\mathfrak A = (A, I)$，若 $\mathbf C = \mathbf F = \varnothing$，则 $A$ 中的每个非空子集 $N$ 都可自然解释为 $\mathfrak A$ 的子结构 $\left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z\in S}\right\}$

    2. 如果 $h$ 是 $\mathfrak A$ 到 $\mathfrak B$ 的嵌入，则 $h[A]$ 是 $\mathfrak B$ 的子结构
    3. 设 $A \subseteq B$，则 $\mathfrak A \subseteq \mathfrak B$ 当且仅当论域为 $A$ 的 $\mathfrak B_A \vDash \mathrm{Diag}(\mathfrak A)$

3. 生成子结构：设 $\mathfrak A$ 为论域为 $A$ 的 $S-$结构，对任意 $N \subseteq A$ 存在一个论域包含 $N$ 的、$\mathfrak A$ 的子结构 $\mathfrak N$，使得对于任意论域包含 $N$ 的 $\mathfrak A$ 的子结构 $\mathfrak B$ 都有 $\mathfrak N \subseteq \mathfrak B$，称 $\mathfrak N$ 是由 $N$ 生成的子结构，记作 $\left<N\right>^\mathfrak A$
    1. 若存在 $N_0 \subseteq A$ 为有限集使得 $\mathfrak N = \left<N\right>^\mathfrak A$，则称 $\mathfrak N$ 是有限生成的
    2. 设 $N\subseteq A$，则 $\left<N\right>^\mathfrak A$ 的论域是 $\overline N = \{t^\mathfrak A(b_1, b_2, \cdots, b_m) \mid t \in \mathfrak T(N), b_1, b_2, \cdots, b_n \in N\}$
    3. 设 $N\subseteq A$，则 $\left<N\right>^\mathfrak A \leqslant \max\{|N|, |S|, \aleph_0\}$
4. 初等子结构：设 $\mathfrak A, \mathfrak B$ 分别是论域为 $A, B$ 的 $S-$结构，若存在 $h: \mathfrak A \to \mathfrak B$ 是一个初等嵌入（或 $\Phi-$初等嵌入）且 $A \subseteq B$，则称 $\mathfrak A$ 是 $\mathfrak B$ 的初等子结构（或 $\Phi-$初等子结构），记作 $\mathfrak A \prec \mathfrak B$（或 $\mathfrak A \prec_{\Phi} \mathfrak B$）；并称 $\mathfrak B$ 是 $\mathfrak A$ 的初等膨胀，记作 $\mathfrak B \succ \mathfrak A$（或 $\mathfrak B \succ_{\Phi} \mathfrak A$）
    1. 如果 $N \subseteq A$，$N$ 是 $\mathfrak A$ 的子结构，且子结构 $\mathfrak N = \left\{N, \{Z^\mathfrak A \upharpoonright N\}_{Z \in S}\right\}$ 还是 $\mathfrak A$ 的初等子结构，则称集合 $N$ 是 $\mathfrak A$ 的初等子结构
    2. 如果 $H: \mathfrak A \to \mathfrak B$ 是初等嵌入，则存在 $\mathfrak A$ 的初等膨胀 $\overline{\mathfrak A}$ 使得 $H$ 可以被扩张为 $\overline{\mathfrak A}$ 到 $\mathfrak B$ 的同构
    3. $\text{Tarski}-\text{Vaught}$ 判别法：设 $\mathfrak A$ 是 $\mathfrak B$ 的子结构，则 $A \prec B$ 当且仅当对每个公式 $\alpha(x_{m_1}, x_{m_2}, \cdots, x_{m_n}, y)$ 及 $a_1, a_2, \cdots, a_n \in A$ 都有 $\mathfrak B \vDash \exists y \ \alpha(a_1, a_2, \cdots, a_n, y) \to \mathfrak A \vDash \exists y \ \alpha(a_1, a_2, \cdots, a_n, y)$
    4. $\text{Tarski}$ 准则：设 $M \subseteq A$ 非空，则 $M$ 是 $\mathfrak A$ 的初等子结构当且仅当若 $X \subseteq A$ 是非空的 $M-$可定义子集，则 $X \cap M = \varnothing$
5. 定向集：设 $(I, <)$ 是一个偏序集，如果对任意的 $i, j \in I$ 都存在 $k \in I$ 使得 $i \leqslant k$ 且 $j \leqslant k$，则称 $(I, <)$ 是一个定向集
    1. 设 $(I, <)$ 是一个定向集，$\{\mathfrak A_i \mid i \in I\}$ 是一族 $S-$结构
        1. 如果对任意的 $i, j \in I$ 都有 $i < j$ 蕴含 $\mathfrak A_i \subseteq \mathfrak A_j$，则称 $\{\mathfrak A_i \mid i \in I\}$ 是一条链
        2. 如果对任意的 $i, j \in I$ 都有 $i < j$ 蕴含 $\mathfrak A_i \prec \mathfrak A_j$，则称 $\{\mathfrak A_i \mid i \in I\}$ 是一条初等链
    2. 设 $(I, <)$ 是一个定向集，$\{\mathfrak A_i \mid i \in I\}$ 是一族 $S-$结构，其中 $\mathfrak A_i$ 的论域是 $A_i$．令 $\mathfrak A = {\displaystyle \bigcup_{i \in I} \mathfrak A_i}$，则其论域为 $A = {\displaystyle \bigcup_{i \in I}A_i}$，常元符号 $c$ 解释为 $c^{\mathfrak A_{i_0}}$，其中 $i_0 \in I$；函数符号 $f$ 解释为 ${\displaystyle \bigcup_{i \in I}f^{\mathfrak A_i}}$；关系符号 $R$ 解释为 ${\displaystyle \bigcup_{i \in I}R^{\mathfrak A_i}}$
        1. 若 $\{\mathfrak A_i \mid i \in I\}$ 是一条链，则 $\mathfrak A$ 是一个 $S-$结构，且对每个 $i \in I$ 都有 $\mathfrak A_i \subseteq \mathfrak A$
        2. 若 $\{\mathfrak A_i \mid i \in I\}$ 是一条初等链，则对每个 $i \in I$ 都有 $\mathfrak A_i \prec \mathfrak A$

## 1.2 理论与模型
### 1.2.1 理论与公理
1. 模型：设 $\mathfrak M$ 是一个 $S-$结构，$\Sigma$ 是一个 $S-$语句集，$\sigma$ 是一个 $S-$语句．若 $\mathfrak M \vDash \Sigma$，则称 $\mathfrak M$ 是语句集 $\Sigma$ 的模型
    1. 蕴含：如果 $\Sigma$ 的模型均是 $\{\sigma\}$ 的模型，则 $\Sigma$ 蕴含 $\sigma$，记作 $\Sigma \vDash \sigma$
    2. 模型原理：如果 $\Sigma$ 有一个模型，则 $\Sigma$ 是一致的（或称可满足的或相容的）；如果 $\{\sigma\}$ 一致，则称 $\sigma$ 一致
2. 理论：设 $\mathfrak M$ 是一个 $S-$结构，$\Sigma$ 是一个 $S-$语句集．如果对任意被 $\Sigma$ 蕴含的语句 $\alpha$ 都有 $\alpha \in \Sigma$，则称 $\Sigma$ 是一个 $S-$理论
    1. 若 $S$ 可数，则称 $S-$理论 $T$ 可数
    2. 若 $\Sigma$ 是一个语句集，则 $\Sigma' = \{\sigma \mid \Sigma \vDash \sigma\}$ 是一个 $S-$理论
    3. 设 $T$ 是一个 $S-$理论，如果 $\Sigma \subseteq T$ 且对每个 $\alpha \in T$ 都有 $\Sigma \vDash \alpha$，则称 $\Sigma$ 是 $T$ 的公理
        1. 若 $\Sigma$ 可判定，则称理论 $T$ 是可公理化的；若 $\Sigma$ 可判定且有穷，则称理论 $T$ 是可有穷公理化的
        2. 任何完备的可公理化理论都是可判定的
        3. 设 $\Sigma$ 是理论 $T \supseteq \mathbf{Q}$ 的公理，则由不完备定理有 $T = \operatorname{Th}(\operatorname{Mod}(\Sigma)) \subseteq \operatorname{Th}(\mathfrak{N})$
    4. 若对每个 $S-$语句 $\alpha$ 都有 $\alpha \in \Sigma$ 或 $\neg \alpha \in \Sigma$，则称 $\Sigma$ 是完备的 $S-$理论
        1. 设 $\lambda$ 是基数，若 $S-$理论 $T$ 的基数为 $\lambda$ 的模型都相互同构，则称理论 $T$ 是 $\lambda-$范畴的
        2. $\text{Lo}\acute{\mathrm s}-\text{Vaught}$ 判别法：若 $S-$理论 $T$ 只有无穷模型，且 $T$ 是 $\lambda-$范畴的，其中 $\lambda \geqslant |\mathscr L(S)| = |S|+\aleph_{0}$，则 $T$ 是完备的
    5. 若理论 $T$ 与 $T'$ 相互等价，即 $T \vdash T'$ 且 $T' \vdash T$，则记作 $T \dashv\vdash T'$ 或 $T \equiv T'$
3. 初等等价：设 $\mathfrak M$ 与 $\mathfrak N$ 是两个 $S-$结构，如果 $\mathrm{Th}(\mathfrak M) = \mathrm{Th}(\mathfrak N)$，则称 $\mathfrak M$ 与 $\mathfrak N$ 初等等价，记作 $\mathfrak M \equiv \mathfrak N$
    1. 设 $\mathcal K$ 是一族 $S-$结构，则 $\mathrm{Th}(\mathcal K) = \{\alpha \mid \alpha$ 是 $S-$语句且对任意 $\mathfrak M \in \mathcal K$ 都有 $\mathfrak M \vDash \alpha\}$
        1. 若 $\mathcal K = \{\mathfrak M\}$，则将 $\mathrm{Th}(\mathcal K)$ 记作 $\mathrm{Th}(\mathfrak M)$，并称 $\mathrm{Th}(\mathfrak M)$ 为 $\mathfrak M$ 的理论
        2. $\mathrm{Th}(\mathfrak M)$ 是完备的 $S-$理论
    2. 一个 $S-$理论 $T$ 是完备的当且仅当 $T$ 的模型相互初等等价
4. 初等类：如果 $T$ 是 $S-$理论且 $\mathcal K = \{\mathfrak M \mid \mathfrak M$ 是 $S-$结构且 $\mathfrak M \vDash T\}$，则称 $\mathcal K$ 是一个（广义）初等类，记作 $\mathcal K = \mathrm{Mod}(T)$
    1. 设 $\mathcal K$ 是一族 $S-$结构，则 $\mathcal K$ 是初等类当且仅当 $\mathcal K = \{\mathfrak M \mid \mathfrak M \vDash \mathrm{Th}(\mathcal K)\}$
    2. 如果结构 $\mathfrak M$ 与 $\mathfrak N$ 初等等价且 $\mid \mathfrak M\mid < \aleph_0$，则 $\mathfrak M \cong \mathfrak N$

### 1.2.2 模型与代数结构
1. 群：令 $G = \{\cdot, e\}$，则 $\mathscr L(G)$ 是群的语言，其中 $\cdot \in \mathbf F, e \in \mathbf C, \Omega(\cdot) = 2$．设 $t_1, t_2$ 是 $G-$项，将 $\cdot(t_1, t_2)$ 记作 $t_1 \cdot t_2$
    1. 如果结构 $\mathfrak M = (M, \cdot^\mathfrak M, e^\mathfrak M)$ 是下面三个语句的集合 $Ax_G$ 的模型，则称 $\mathfrak M$ 是一个群，称 $Ax_G$ 为群的公理
        1. $\sigma_1: \forall x \ ((e \cdot x = x) \wedge (x \cdot e = x))$
        2. $\sigma_2: \forall x \forall y \forall z \ (x \cdot (y \cdot z) = (x \cdot y) \cdot z)$
        3. $\sigma_3: \forall x \exists y \ ((x \cdot y = e) \wedge (y \cdot x = e))$

        并将只满足 $\sigma_2$ 的结构称为半群，只满足 $\sigma_1, \sigma_2$ 的结构称为幺半群

    2. 令 $\sigma_4: \forall x \forall y \ (x \cdot y = y \cdot x)$，如果 $\mathfrak M$ 是 $Ax_{AG} = Ax_G \cup \{\sigma_4\}$ 的模型，则称 $\mathfrak M$ 是 $\text{Abel}$ 群或交换群

2. 环：令 $R = \{\cdot, +, o, e\}$，则 $\mathscr L(R)$ 是环的语言，其中 $\cdot, + \in \mathbf F, o, e \in \mathbf C$ 且 $\Omega(\cdot) = \Omega(+) = 2$，将 $+(t_1, t_2)$ 记作 $t_1 + t_2$
    1. 如果结构 $\mathfrak M = (M, \cdot^\mathfrak M, +^\mathfrak M, o^\mathfrak M, e^\mathfrak M)$ 满足如下条件，则称 $\mathfrak M$ 是一个环，将 $\cdot^\mathfrak M$ 与 $+^\mathfrak M$ 分别称为 $\mathfrak M$ 的乘法与加法，将 $o^\mathfrak M$ 与 $e^\mathfrak M$ 分别称为 $\mathfrak M$ 的零元与幺元
        1. $\mathfrak M \upharpoonright \mathscr L(G) \vDash \{\sigma_2\}$，即对 $\{\cdot, e\}$ 构成一个半群
        2. $\mathfrak M \upharpoonright \mathscr L(\{+, o\})$ 是一个 $\text{Abel}$ 群
        3. $\mathfrak M \vDash \forall x \forall y \forall z \ ((x \cdot (y + z) = (x \cdot y) + (x \cdot z)) \wedge ((y + z) \cdot x = (y \cdot x) + (z \cdot x)))$

        若 $\mathfrak M \upharpoonright \mathscr L(\{+, o\})$ 仅是 $\text{Abel}$ 幺半群，则称结构 $\mathfrak M$ 为半环

    2. 设 $\mathfrak M$ 是一个环，且
        1. 若 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \sigma_1$，则称 $\mathfrak M$ 是一个幺环
        2. 若 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \sigma_4$，则称 $\mathfrak M$ 是一个 $\text{Abel}$ 环或交换环
        3. 若 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \{\sigma_1, \sigma_4\}$，则称 $\mathfrak M$ 是一个 $\text{Abel}$ 幺环或交换幺环
        4. 若 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \forall x \forall y \ (\neg (x = o) \to \neg (y = o) \to \neg(x \cdot y = o))$，则称 $\mathfrak M$ 是一个整环
    3. 设 $\mathfrak M$ 是一个幺环，且若 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \forall x \ (\neg (x = o) \to \exists y \ (x \cdot y = e))$，则称 $\mathfrak M$ 是一个体（除环）

3. 域：如果体 $\mathfrak M$ 有 $\mathfrak M \upharpoonright \mathscr L(G) \vDash \sigma_4$，则称 $\mathfrak M$ 是一个域（即 $\text{Abel}$ 除环或交换除环）
    1. 对每个非零的 $a\in M$ 都存在唯一的 $b\in M$ 使得 $a \cdot^\mathfrak M b = e^\mathfrak M$，称 $b$ 为 $a$ 的（乘法逆），记作 $a^{-1}$
    2. 如果域 $\mathfrak M$ 的论域 $M$ 是有限集合，则称 $\mathfrak M$ 是有限域或 $\text{Galois}$ 域．含 $q$ 个元素的有限域通常记作 $F_{q}$ 或 $\mathrm{GF}(q)$
    3. 设 $\mathcal K_{FF} = \{\mathfrak M \mid \mathfrak M$ 是一个 $R-$结构，且是一个有限域$\}$ 不是一个初等类；令 $\overline{\mathcal K_{FF}} = \{\mathfrak M \mid \mathfrak M$ 是一个 $R-$结构且 $\mathfrak M \vDash \mathrm{Th}(\mathcal K_{FF})\}$ 是一个初等类，称之为伪有限域
4. 线性空间：设结构 $\mathfrak M = (F, +^\mathfrak M, \times^\mathfrak M, 0^\mathfrak M, 1^\mathfrak M)$ 是一个域，$\mathrm{VF} = \{+, 0\} \cup F$，其中 $\{+\} \cup F \subseteq \mathbf F, 0 \in \mathbf C$ 且 $\Omega(+) = 2$，$\Omega[F] = \{1\}$．如果结构 $\mathfrak V = (V, +^\mathfrak V, 0^\mathfrak V, \{\sigma^\mathfrak V \mid \sigma \in F\})$ 有
    1. $(V, +, 0)$ 是一个 $\text{Abel}$ 群
    2. 对任意的 $x \in V$ 有 $0^\mathfrak{MV}(x) = 0^\mathfrak V, 1^\mathfrak{MV}(x) = x$
    3. 每个 $\sigma \in F$ 都解释为群结构 $(V, +, 0)$ 到 $(V, +, 0)$ 的同态 $\sigma^\mathfrak V: V\to V$
    4. 对任意的 $\sigma, \gamma \in F$ 及任意的 $x \in V$，有 $\sigma^\mathfrak V(x) +^\mathfrak V \gamma^\mathfrak V(x) = (\sigma +^\mathfrak M \gamma)^\mathfrak V(x)$ 且 $\sigma^\mathfrak V(\gamma^\mathfrak V(x)) = (\sigma \times^\mathfrak M \gamma)^\mathfrak V(x)$

    则称 $V$ 是 $F$ 上的线性空间

    !!! note "代数系统"
        代数学上通常将模型的论域 $A$ 与定义在 $A$ 上的函数符号 $f_1, f_2, \cdots, f_k$ 构成集合 $\{A; f_1, f_2, \cdots, f_k\}$ 称作代数系统

        1. 称论域 $A$ 为该系统的载集合，或简称载集，$f_i$ 为代数运算符，简称作运算符
        2. $n$ 元运算符对集合 $A$ 封闭，即对任意 $\Omega(f_i) = n, 1 \leqslant i \leqslant k$，都有 $(a_1, a_2, \cdots, a_n) \in A^{n}$ 蕴含 $f_i(a_1, a_2, \cdots, a_n) \in A^{n}$
            1. 若 $A$ 中的二元运算符 $\circ$ 有 $(a \circ b) \circ c=a \circ \left(b \circ c\right)$ 对 $\forall a, b, c \in A$ 均成立，则称该运算满足结合律
            2. 若 $A$ 中的二元运算符 $\circ$ 有 $a \circ b=b \circ a$ 对 $\forall a, b \in A$ 均成立，则称该运算满足交换律
            3. 若 $A$ 中的二元运算符 $\circ$ 与 $+$ 有 $a \circ (b+c)=a \circ b+a \circ c$ 对 $\forall a, b, c \in A$ 均成立，则称 $\circ$ 满足对 $+$ 的结合律，简称作满足分配律
        3. 模型的同态与同构定义对代数系统仍有效

## 1.3 紧致性定理
1. $\text{Henkin}$ 性质：若语句集 $\Sigma$ 对形如 $\exists x \ \alpha(x)$ 的公式，$\exists x \ \alpha(x) \in \Sigma$ 蕴含存在常元 $c$ 使得 $\alpha(c) \in \Sigma$，则称 $\Sigma$ 具有 $\text{Henkin}$ 性质
    1. 设 $\Sigma$ 是一个语句集，若 $\Sigma$ 的任意有限子集 $\Sigma_{0}$ 都有模型，则称 $\Sigma$ 是有限一致的（或称有限可满足的或有限相容的）
        1. 如果语句集 $\Sigma$ 是有限一致的，则对任意的语句 $\sigma$，语句集 $\Sigma \cup \{\sigma\}$ 和 $\Sigma \cup\{\neg \sigma\}$ 至少有一个是有限一致的
        2. 设语句集 $\Sigma$ 是有限一致的，若 $\exists x \ \alpha(x) \in \Sigma$ 且常元符号 $c$ 没有在 $\Sigma$ 的语句中出现过，则 $\Sigma \cup\{\alpha(c)\}$ 是有限一致的
    2. 如果 $\Sigma$ 是有限一致的，且对任意的语句 $\sigma$ 都有 $\sigma \in \Sigma$ 或者 $\neg \sigma \in \Sigma$，则称 $\Sigma$ 是极大有限一致的
        1. 如果语句集 $\Sigma$ 是有限一致的，则存在极大有限一致的语句集 $\Sigma^{\prime}$ 使得 $\Sigma \subseteq \Sigma^{\prime}$
        2. 设语句集 $\Sigma$ 极大有限一致，则对于任意的语句 $\sigma$
            1. $\sigma \in \Sigma$ 当且仅当 $\neg \sigma \notin \Sigma$
            2. 如果任意结构都满足 $\sigma$，则 $\sigma \in \Sigma$
        3. 如果语句集 $\Sigma$ 是极大有限一致的，则对任意的语句 $\sigma_{1}, \sigma_{2}$，有 $\sigma_{1} \wedge \sigma_{2} \in \Sigma$ 当且仅当 $\left\{\sigma_{1}, \sigma_{2}\right\} \subseteq \Sigma$
    3. 设 $\beta$ 是公式，若 $x$ 不是 $\beta$ 的自由变元，则对任意的结构 $\mathfrak{A}$ 和 $\mathfrak{A}-$指派 $\overline{b}$ ，有 $\mathfrak{A} \vDash \beta[\overline{b}]$ 当且仅当 $\mathfrak{A} \vDash(\exists x \beta)[\overline{b}]$
2. 超积：设 $I$ 是一个集合，$\mathcal{U}$ 是 $I$ 上的一个滤，$\left\{\mathfrak{A}_{i} \mid i \in I\right\}$ 是一族结构，其中每个 $\mathfrak{A}_{i}$ 的论域是 $A_{i}$
    1. 令 ${\displaystyle \prod_{i \in I} A_{i}=\left\{\left.f: I \to \bigcup_{i \in I} A_{i} \ \right| \ f(i) \in A_{i}\right\}}$
        1. 若 $f \in {\displaystyle \prod_{i \in I} A_{i}}$ 且 $f(i)=a_{i}$，则用 $\left(a_{i}\right)_{i \in I}$ 来表示 $f$
        2. 定义 ${\displaystyle \prod_{i \in I} A_{i}}$ 上的关系 $\sim_{\mathcal{U}}$ 为 $s \sim_{\mathcal{U}} t$ 当且仅当 $\{i \in I \mid s(i)=t(i)\} \in \mathcal{U}$，则 $\sim_{\mathcal{U}}$ 是等价关系
    2. 用 $[t]$ 表示 $t \in {\displaystyle \prod_{i \in I} A_{i}}$ 的等价类，用 ${\displaystyle \prod_{i \in I} A_{i} / \sim_{\mathcal{U}}}$ 表示 ${\displaystyle \prod_{i \in I} A_{i}}$ 关于等价关系 $\sim \mathcal{U}$ 的等价类的集合 ${\displaystyle \left\{[t] \left| t \in \prod_{i \in I} A_{i}\right\}\right.}$，则 $\mathfrak{A}={\displaystyle \left\{\prod_{i \in I} A_{i} / \sim_{\mathcal{U}},\left\{Z^{\mathfrak{A}}\right\}_{Z \in L}\right\}}$ 是一个 $S-$结构
        1. 若 $c$ 是常元符号，令 $c_{i}=c^{\mathfrak{A}_{i}}$，则 $\left(c_{i}\right)_{i \in I} \in {\displaystyle \prod_{i \in I} A_{i}}$，将 $c$ 解释为 $\left(c_{i}\right)_{i \in I}$ 的等价类 $\left[\left(c_{i}\right)_{i \in I}\right]$
        2. 若 $f$ 是 $n$ 元函数，对任意 $t_{1}, \cdots, t_{n} \in {\displaystyle \prod_{i \in I} A_{i}}$，令 $f^{\mathfrak{A}}\left(\left[t_{1}\right], \cdots,\left[t_{n}\right]\right)=\left[\left(f^{\mathfrak{A}_{i}}\left(t_{1}(i), \cdots, t_{n}(i)\right)\right)_{i \in I}\right]$
        3. 若 $R$ 是 $n$ 元关系，对任意 $t_{1}, \cdots, t_{n} \in {\displaystyle \prod_{i \in I} A_{i}}$ 都有 $\left(\left[t_{1}\right], \cdots,\left[t_{n}\right]\right) \in R^{\mathfrak{A}}$ 当且仅当 $\left\{i \in I \mid\left(t_{1}(i), \cdots, t_{n}(i)\right) \in R^{\mathfrak{A}}\right\} \in \mathcal{U}$

        设 $\mathcal{U}$ 是 $I$ 上的超滤，若对结构 $\mathfrak{B}$ 与每个 $i \in I$ 都有 $\mathfrak{A}_{i}= \mathfrak{B}$，则将 ${\displaystyle \prod_{i \in I} \mathfrak{A}_{i} / \sim_{\mathcal{U}}}$ 记作 $\mathfrak{B}^{I} / \sim_{\mathcal{U}}$ 或 $\operatorname{Ult}_{I} \mathfrak{B}$，称作 $\mathfrak{B}$ 的超幂

    3. $\text{Lo}\acute{\mathrm s}$ 超积定理：设 $I$ 是一个集合，$\mathcal{U}$ 是 $I$ 上的一个滤，$\{\mathfrak{A}_i \mid i \in I\}$ 是一族结构，$\left[s_{1}\right], \cdots,\left[s_{n}\right] \in {\displaystyle \prod_{i \in I} A_{i} / \sim_{\mathcal{U}}}$，$\alpha\left(x_{1}, \cdots, x_{n}\right)$ 是一个正公式，则 ${\displaystyle \prod_{i \in I} \mathfrak{A}_{i} / \sim_{\mathcal{U}}} \vDash \alpha\left(\left[s_{1}\right], \cdots,\left[s_{n}\right]\right)$ 当且仅当 $\left\{i \in I \mid \mathfrak{A}_{i} \vDash \alpha\left(s_{1}(i), \cdots, s_{n}(i)\right)\right\} \in \mathcal{U}_{0}$．若 $\mathcal{U}$ 是 $I$ 上的一个超滤，则上式对任意公式 $\alpha\left(x_{1}, \cdots, x_{n}\right)$ 均成立
        1. 若 $\mathcal{U}$ 是集合 $I$ 上的一个超滤，$\mathfrak{B}$ 是一个结构，则 $\mathfrak{B}^{I} / \sim_{\mathcal{U}}$ 与 $\mathfrak{B}$ 初等等价
        2. 设 $\mathcal{K}$ 是一族 $S-$结构，则 $\mathcal{K}$ 是初等类当且仅当 $\mathcal{K}$ 关于初等等价关系和超积封闭
    4. $\text{Keisler}-\text{Shelah}$ 同构定理：两个结构 $\mathfrak{A}$ 和 $\mathfrak{B}$ 初等等价当且仅当存在集合 $I$ 及 $I$ 上的超滤 $\mathcal{U}$ 使得 $\mathfrak{A}^{I} / \sim_{\mathcal{U}} \cong \mathfrak{B}^{I} / \sim_{\mathcal{U}}$
    5. 设 $\mathfrak{C}$ 是一族结构，构造序列 $\left\{\mathfrak{C}_{n} \mid n \in \mathbf{N}\right\}$ 使得
        1. $\mathfrak{C}_{0}=\mathfrak{C}$
        2. 若 $n=2 i+1$，则 $\mathfrak{C}_{n}=\left\{\mathfrak{A} \mid \mathfrak{A}\right.$ 是结构且存在 $\mathfrak{B} \in \mathfrak{C}_{2 i}$ 使得 $\left.\mathfrak{A} \equiv \mathfrak{B}\right\}$
        3. 若 $n=2 i+2$，则 $\mathfrak{C}_{n}=\left\{\mathfrak{A} \mid \mathfrak{A}\right.$ 是 $\mathfrak{C}_{2 i+1}$ 中一族结构的超积$\}$

        则 ${\displaystyle \overline{\mathfrak{C}}=\bigcup_{n \in \mathbf{N}} \mathfrak{C}_{n}}$ 是包含 $\mathfrak{C}$ 的最小的初等类，称之为 $\mathfrak{C}$ 的初等类闭包

        4. 设 $\mathfrak{A}$ 是一个结构，如果对任意的语句 $\sigma$ 都有 $\mathfrak{A} \vDash \sigma$ 蕴含着存在有限结构 $\mathfrak{A}_{0} \vDash \sigma$，则称 $\mathfrak{A}$ 是伪有限的
        5. 如果 $\mathfrak{A}$ 是伪有限的，并且不是有限的，则称 $\mathfrak{A}$ 是严格伪有限的
        6. $\mathfrak{A}$ 是伪有限的当且仅当 $\mathfrak{A}$ 与一族有限结构的超积初等等价

3. 紧致性定理：设 $S$ 可数，则 $S-$语句集 $\Sigma$ 是有限一致的当且仅当 $\Sigma$ 是一致的
    1. 若 $\mathscr L(S^{*})$ 是一个语言，$\Sigma^{*}$ 是一个有限一致的 $S^{*}-$语句集，则 $\Sigma^{*}$ 有一个基数不超过 $\left|S^{*}\right|$ 的模型
    2. 设 $\Sigma$ 与 $\Gamma$ 是两个语句集，若 $\Sigma \vDash \bigvee \Gamma$，即对每个结构 $\mathfrak{A} \vDash \Sigma$，都存在 $\gamma \in \Gamma$ 使得 $\mathfrak{A} \vDash \gamma$，则存在 $\Sigma$ 的有限子集 $\Sigma_{0}$ 及 $\Gamma$ 的有限子集 $\Gamma_{0}$，使得 $\Sigma_{0} \vDash \bigvee \Gamma_{0}$
    3. 设 $\mathcal{T}$ 是全体完备一致的 $S-$理论集合．设 $\Sigma$ 是语句集，则将 $\{T \in \mathcal{T} \mid \Sigma \subseteq T\}$ 记作 $[\Sigma]$；若 $\Sigma=\{\sigma\}$，则 $[\Sigma]$ 也记作 $[\sigma]$
        1. 令 $\tau=\{X \subseteq \mathcal{T} \mid$ 存在语句集 $\Sigma$ 使得 $X$ 的补集 $\mathcal{T} - X=[\Sigma]\} \subseteq \mathcal{P}(\mathcal{T})$，则 $(\mathcal{T}, \tau)$ 是一个紧致的、完全不连通的空间
        2. $\mathcal{T}$ 是紧空间等价于紧致性定理成立

4. 设 $T$ 是一个理论，用 $S_{n}(T)$ 表示 $T$ 的全体完全 $n-$型构成的集合
    1. 设 $I$ 是一个指标集，$\Sigma\left(x_{i}\right)_{i \in I}$ 是一个公式集
        1. 若 $\Sigma\left(x_{i}\right)_{i \in I}$ 是一致的，则称 $\Sigma\left(x_{i}\right)_{i \in I}$ 是一个 $I-$型；若 $T$ 是一个理论（不必是完备的）且 $T \cup \Sigma\left(x_{i}\right)_{i \in I}$ 是一致的，则称 $\Sigma$ 是 $T$ 的 $I-$型．当 $I=\{0, \cdots, n-1\}$ 时，称 $T$ 的 $I-$型为 $T$ 的 $n-$型
        2. 设 $\Sigma\left(x_{i}\right)_{i \in I}$ 是理论 $T$ 的 $I-$型，若对任意的 $i_{1}, \cdots, i_{n} \in I$ 及任意的公式 $\alpha\left(x_{i_{1}}, \cdots, x_{i_{n}}\right)$，总有 $\alpha\left(x_{i_{1}}, \cdots, x_{i_{n}}\right) \in \Sigma$ 或 $\neg \alpha\left(x_{i_{1}}, \cdots, x_{i_{n}}\right) \in \Sigma$，则称 $\Sigma$ 是 $T$ 的完全 $I-$型．类似地，也可定义 $T$ 的完全 $n-$型
        3. 设 $\mathfrak{A}$ 是一个结构，$T=\operatorname{Th}(\mathfrak{A})$，则 $\Sigma\left(x_{i}\right)_{i \in I}$ 是 $T$ 的 $I-$型当且仅当对每个有限的 $\Sigma_{0} \subseteq \Sigma$，都有 $\mathfrak{A} \vDash \exists \overline{x} \ \left(\bigwedge \Sigma_{0}(\overline{x})\right)$，其中 $\overline{x}=x_{i_{1}}, \cdots, x_{i_{n}}$ 是所有的出现在 $\Sigma_{0}$ 中的自由变元
    2. 在 $S_{n}(T)$ 上引入一个拓扑 $\tau$，即 $X \subseteq S_{n}(T)$ 是闭集当且仅当存在 $T$ 的一个 $n-$型 $\Sigma\left(x_{0}, \cdots, x_{n-1}\right)$，使得 $X=\left\{p\left(x_{0}, \cdots, x_{n-1}\right) \in S_{n}(T) \mid \Sigma\right. \subseteq p\}$，并将 $X$ 记作 $[\Sigma]$，将 $[\{\alpha\}]$ 记作 $[\alpha]$
        1. $\left(S_{n}(T), \tau\right)$ 是一个紧致的、完全不连通的 $\text{Hausdorff}$ 空间
        2. $X \subseteq S_{n}(T)$ 是开闭集当且仅当存在公式 $\alpha\left(x_{0}, \cdots, x_{n-1}\right)$，使得 $X=[\{\alpha\}]$
5. $\text{L}\ddot{\mathrm o}\text{wenheim}-\text{Skolem}$ 定理
    1. 下行 $\text{L}\ddot{\mathrm o}\text{wenheim}-\text{Skolem}$ 定理：设 $\mathfrak{A}$ 是一个论域为 $A$ 的 $S-$结构，$M \subseteq A$，则存在 $B \subseteq A$ 使得 $B$ 是 $\mathfrak{A}$ 的初等子结构有 $M \subseteq B$ 且 $|B| \leqslant \max \left\{|M|,|S|, \aleph_{0}\right\}$，即 $|B| \leqslant |M|$ 且 $|B| \leqslant |\mathscr L(S)|$
    2. 上行 $\text{L}\ddot{\mathrm o}\text{wenheim}-\text{Skolem}$ 定理：设 $\mathfrak{A}$ 是一个论域为 $A$ 的 $S-$结构，其中 $A$ 是无穷集合，$\lambda \geqslant|A|\oplus |S|$，则存在基数为 $\lambda$ 的 $S-$结构 $\mathfrak{B}$ 使得 $\mathfrak{A} \prec \mathfrak{B}$
        1. 设 $T$ 是一个 $S-$理论，且 $T$ 有一个无穷模型．若无穷基数 $\lambda \geqslant |S|$，则存在 $T$ 的基数为 $\lambda$ 的模型
        2. 设结构 $\mathfrak{A}_{1}$ 和 $\mathfrak{A}_{2}$ 初等等价，则存在结构 $\mathfrak{B}$ 及初等嵌入 $g_{1}$ : $\mathfrak{A}_{1} \to \mathfrak{B}$ 和初等嵌入 $g_{2}: \mathfrak{A}_{2} \to \mathfrak{B}$
        3. 设结构 $\mathfrak{A}_{1}$ 和 $\mathfrak{A}_{2}$ 初等等价，则存在结构 $\mathfrak{B}$ 使得 $\mathfrak{A}_{1} \prec \mathfrak{B}$ 且 $\mathfrak{A}_{2} \prec \mathfrak{B}$
