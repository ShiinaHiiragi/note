# 3 上下文无关文法

## 3.1 下推自动机
1. 下推自动机（$\text{PDA}$）是一个七元组 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$，其中
    - $Q$ 是有穷状态机
    - $\Sigma$ 是有穷的输入字母表
    - $\Gamma$ 是有穷的栈符号表
    - $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \times \Gamma \to (Q \times \Gamma)^*$ 是转移函数
    - $q_0 \in Q$ 是初始状态
    - $Z_0$ 是栈底符号
    - $F \subseteq Q$ 是终结状态集

    <figure markdown>
        ![](../assets/pda.png)
        <style> img[src$="pda.png"] { width: 420px; } </style>
    </figure>

    1. 转移函数的一般形式为 $\delta(q, a, Z) = \{(p_1, \gamma_1), (p_2, \gamma_2), \cdots, (p_m, \gamma_m)\}$，其中 $q \in Q, a \in \Sigma \cup \{\varepsilon\}, Z \in \Gamma, p_i \in Q$ 且有 $\gamma_i \in \Gamma^* \ (i = 1, 2, \cdots, m, m \geqslant 0)$，表示当下推自动机的当前状态为 $q$，读头读到输入符号为 $a$ 且栈顶符号为 $Z$ 时
        1. 转移函数执行后状态变为 $p_i$
        2. 栈顶符号由 $Z$ 变为 $\gamma_i$
        3. 当 $a \in \Sigma$ 时，读头越过输入符号 $a$；当 $a = \varepsilon$ 时，读头保持不动
    2. 瞬时描述（$\text{ID}$）：下推自动机的一个瞬时描述是一个三元组 $(q, w, r)$，其中 $q$ 为下推自动机的当前状态，$w$ 为尚未读入的输入符号串，$\gamma$ 为当前在栈中的符号串
        1. 当下推自动机执行一次 $\delta$ 动作后，由一个瞬时描述 $\text{ID}_i$ 转换到下一个瞬时描述 $\text{ID}_{i+1}$，记作 $\text{ID}_i \vdash_M \text{ID}_{i+1}$，在不引发歧义的情况下，$M$ 可以省略
        2. 用 $\vdash_M^*$ 表示任意多次转换，由归纳法定义
            - 对任何瞬时描述 $I$，都有 $I \vdash_M^* I$
            - 如果存在某个瞬时描述 $K$，使得 $I \vdash_M^* K$ 与 $K \vdash_M^* J$，则 $I \vdash_M^* J$

            即存在瞬时描述序列 $K_1, K_2, \cdots, K_n$ 使得 $I = K_1, J = K_n$，且对于任意 $1 \leqslant i < n$ 都有 $K_i \vdash_M^* K_{i+1}$，则有 $I \vdash_M^* J$

2. 下推自动机接受的语言
    1. 接收方式
        1. 设 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ 是一个下推自动机，集合

            $$
            L(M) = \left\{w \mid (q_0, w, Z_0) \vdash^* (p, \varepsilon, \gamma), w \in \Sigma^*, p \in F, \gamma \in \Gamma^*\right\}
            $$

            称为 $M$ 按终结状态方式接受的语言

        2. 设 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ 是一个下推自动机，集合

            $$
            N(M) = \left\{w \mid (q_0, w, Z_0) \vdash^* (p, \varepsilon, \varepsilon), w \in \Sigma^*, p \in Q\right\}
            $$

            称为 $M$ 按空栈方式接受的语言

    2. 等价性
        1. 对于某个按终结状态方式接受语言的下推自动机 $M_1$，存在一个按空栈方式接受语言的下推自动机 $M_2$ 使得 $N(M_2) = L(M_1)$
        2. 对于某个按空栈方式接受语言的下推自动机 $M_1$，存在一个按终结状态方式接受语言的下推自动机 $M_2$ 使得 $L(M_2) = N(M_1)$

3. 确定的下推自动机：一个下推自动机 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ 若有
    1. 对于每个 $q \in Q, a \in \Sigma \cup \{\varepsilon\}, A \in \Gamma$，$\delta(q, a, A)$ 至多包含一个元素
    2. 对于每个 $a \in \Sigma$，若 $\delta(q, a, A)$ 非空，则 $\delta(q, \varepsilon, A)$ 为空\

    则称 $M$ 为确定的下推自动机（$\text{DPDA}$），其接受的语言称为确定的上下文无关语言（$\text{DCFL}$）

## 3.2 上下文无关语言
1. 下推自动机与上下文无关文法的等价性
    1. 设 $L$ 是一个上下文无关文法，则存在一个下推自动机 $M$ 使得 $N(M) = L$
    2. 给定一个下推自动机 $N$，则 $N(M)$ 是上下文无关文法
2. 语法分析树：上下文无关文法 $G = (V, T, P, S)$ 满足下列要求的一棵树称为关于 $G$ 的语法分析树
    1. 树的每个节点带有一个 $V \cup T \cup \{\varepsilon\}$ 的符号标记：根结点的标记是 $S$，树的非叶结点只能以 $V$ 中符号作为标记
    2. 如果结点 $n$ 带有标记 $A$，结点 $n_1, n_2, \cdots, n_k$ 是结点 $n$ 从左到右的子结点并分别带有标记 $X_1, X_2, \cdots, X_k$，则 $A \to X_1 X_2 \cdots X_k$ 必须是 $P$ 中的一个产生式
    3. 如果结点带有标记 $\varepsilon$，则该结点是其父结点唯一的叶结点

    对于一棵语法分析树，将其叶结点上的标记从左到右收集起来组成的字符串称为该语法分析树的边缘

    1. 设 $G = (V, T, P, S)$ 是一个上下文无关文法，则 $S \overset{*}{\Rightarrow} \alpha \ (\alpha \in V \cup T)$ 当且仅当在 $G$ 中存在一棵以 $\alpha$ 为边缘的语法分析树
    2. 二义性：对于某个上下文无关语言，若有某个字符串 $w \in L(G)$，存在两棵不同的语法分析树都以 $w$ 为边缘，则称该文法是有二义性的
        1. 如果某些上下文无关语言，无论用什么上下文无关文法去产生，该文法都是有二义性的，则称这种语言为固有二义性的上下文无关语言
        2. 对于上下文无关文法 $G$，如果从开始符号 $S$ 推高过程的每一步都只能替换句型中最左边的变元，则称此推导过程为最左推导；如果从开始符号 $S$ 推高过程的每一步都只能替换句型中最右边的变元，则称此推导过程为最右推导

3. 上下文无关文法的化简
    1. 设 $G = (V, T, P, S)$ 是一个上下文无关文法
        1. 无用符号：定义两类符号 $X$ 为无用符号：
            - $X \in V \cup T$，但 $X$ 不出现在任何由 $S$ 推导出的字符串中
            - $X \in V$，但 $X$ 不能推导出任何终结符串
        2. 可为空：对于 $A \in V$，若有 $A \overset{*}{\Rightarrow} \varepsilon$，则称 $A$ 是可为空的
        3. 单一产生式：$P$ 中形如 $A \to B \ (A, B \in V)$ 的产生式
    2. 每个不含 $\varepsilon$ 的上下无关语言都可由一个不带无用符号、不带 $\varepsilon-$产生式且不带单一产生式的上下文无关文法产生
        1. 给出上下文无关文法 $G = (V, T, P, S)$，且 $L(G) \neq \varnothing$．则存在与 $G$ 等价的文法 $G' = (V', T, P', S)$ 使得对 $V'$ 中的每一个 $A$ 都有 $A \overset{*}{\Rightarrow} w \ (w \in T^*)$
        2. 给出上下文无关文法 $G = (V, T, P, S)$，存在一个与 $G$ 等价的文法 $G' = (V', T', P', S)$ 使得对 $V' \cup T'$ 中的每一个 $X$ 都有 $S \overset{*}{\Rightarrow} \alpha X \beta \ (\alpha, \beta \in (V' \cup T')^*)$
        3. 给出上下文无关文法 $G = (V, T, P, S)$，则对任何 $A \in V$，$A$ 是否可为空是可判定的
4. 上下文无关语言的范式
    1. $\text{Chomsky}$ 范式（$\text{CNF}$ 定理）：任何不含 $\varepsilon$ 的上下无关语言，都可由产生式仅为 $A \to BC$ 或 $A \to a$ 形式的文法产生，其中 $A, B, C \in V, a \in T$
    2. $\text{Greibach}$ 范式（$\text{GNF}$ 定理）：任何不含 $\varepsilon$ 的上下无关语言，都可由产生式仅为 $A \to a \alpha$ 形式的文法产生，其中 $a \in T, \alpha \in V^+ \cup \{\varepsilon\}$
        1. 设 $G = (V, T, P, S)$ 是一个上下文无关文法，从 $P$ 中删除形如 $A \to \alpha_1 B \alpha_2$（$A, B \in V, \alpha_1, \alpha_2 \in (V \cup T)^*$，且有 $B \to \beta_1 \mid \beta_2 \mid \cdots \mid \beta_r$）的产生式，增加一组 $A \to \alpha_1 \beta_1 \alpha_2 \mid \alpha_1 \beta_2 \alpha_2 \mid \cdots \mid \alpha_1 \beta_r \alpha_2$ 后，所得的文法 $G_1$ 与 $G_2$ 等价
        2. 设 $G = (V, T, P, S)$ 是一个上下文无关文法，若 $P$ 中有如下形式的一组产生式

            $$
            \begin{aligned}
            & A \to A \alpha_1 \mid A \alpha_2 \mid \cdots \mid A \alpha_r \\
            & A \to \beta_1 \mid \beta_2 \mid \cdots \mid \beta_r
            \end{aligned}
            $$

            则可引入新变元 $B$，用如下一组产生式

            $$
            \begin{aligned}
            & A \to \beta_i \\
            & A \to \beta_i B \ (i = 1, 2, \cdots, s) \\
            & B \to a_j \\
            & B \to a_j B \ (j = 1, 2, \cdots, r)
            \end{aligned}
            $$

            来替换，所得的文法 $G'$ 与 $G$ 等价

5. 泵引理：对每个上下文无关语言 $L$，都存在 $k \in \mathbf N$ 使得对每一个 $z \in L$，只要 $|Z| \geqslant k$，就可将 $z$ 划分为五个子串 $z = uvwxy$，其中 $|vx| \geqslant 1, |vwx| \leqslant k$，且对于任何 $i \geqslant 0$ 都有 $uv^i wx^i y \in L$
    1. 泵引理的逆否形式：设 $L$ 是一个字符串的集合，假设对一切 $k \in \mathbf N$，存在 $z \in L$，只要 $|Z| \geqslant k$，将 $z$ 划分为五个子串 $z = uvwxy$，其中 $|vx| \geqslant 1, |vwx| \leqslant k$，并有某个 $i \geqslant 0$ 使得 $uv^i wx^i y \notin L$，则 $L$ 不是上下文无关语言
    2. $\text{Ogden}$ 引理：对每个上下文无关语言 $L$，都存在 $k \in \mathbf N$，对每个 $z \in L$，在 $z$ 中标出不少于 $k$ 个的特殊位置，将 $z$ 写成 $z = uvwxy$ 且满足
        1. $v$ 或 $x$ 中至少有一个符号处于特殊位置
        2. $vwx$ 中至多有 $k$ 个符号处于特殊位置

        则对于任何 $i \geqslant 0$，$uv^i wx^i y \in L$

6. 封闭性：设 $L_1, L_2$ 是两个上下文无关语言
    1. $L_1 L_2$ 与 $L_1^*$ 是上下文无关语言
    2. $L_1 \cup L_2$ 是上下文无关语言
    3. $L_1 \cap L_2$ 与 $\Sigma^* - L_1$ 不一定是上下文无关语言
    4. 设 $R$ 是一个正则语言，则 $L \cap R$ 是上下文无关语言
7. 可判定性：对于给定的上下文无关文法 $G = (V, T, P, S)$
    1. $L(G)$ 是否为空集或是否为有穷集是可判定的
    2. 成员资格问题：给定一个字符串 $x$，则 $x \in L(G)$ 是否成立是可判定的
8. 不可判定性
    1. 有效计算历史：给定 $\text{Turing}$ 机 $M$ 与输入串 $x$，定义 $M$ 在 $x$ 上的有效计算历史 $\text{VALCOMPH}(M, x)$ 是形如 $\sharp \alpha_0 \sharp \alpha_1^R \sharp \alpha_2 \sharp \alpha_3^R \sharp \cdots \sharp \alpha_N \sharp$ 的字符串，其中 $\alpha_i \ (i = 0, 1, \cdots, N)$ 是 $M$ 在 $x$ 上的瞬时描述，$\alpha_0$ 是初始瞬时描述，$\alpha_N$ 是 $M$ 在 $x$ 上到达接受状态或拒绝状态时的瞬时描述，对于任何 $0 \leqslant i < N$ 有 $\alpha_i \vdash_M \alpha_{i+1}$，$\sharp$ 是一个用于分隔的，区别于 $M$ 的带符号和状态符号的特殊符号
        1. 给定 $\text{Turing}$ 机 $M$ 与输入串 $x$，其无效计算集合（即 $\text{VALCOMPH}(M, x)$ 关于 $(\Gamma \cup Q \cup \{\sharp\})^*$ 的补集）$\text{INVALCOMPS}(M, x)$ 是一个上下文无关语言
        2. 对于任意给定的上下文无关文法 $G = (V, T, P, S)$，$L(G) = T^*$ 是否成立的问题是不可判定的
        3. 设 $G_1, G_2$ 是任意两个 $\Sigma$ 上的上下文无关文法，$R$ 是任意一个正则语言，则下列命题是否成立是不可判定的
            - $L(G_1) = L(G_2)$
            - $L(G_2) \subseteq L(G_1)$
            - $L(G_1) = R$
            - $R \subseteq L(G_1)$
            - $L(G_1) \cap L(G_2) = \varnothing$
            - $\Sigma^* - L(G_1)$ 是一个上下文无关语言
            - $L(G_1) \cap L(G_2)$ 是一个上下文无关语言
        4. 给定 $\text{Turing}$ 机 $M$，其可接受计算集合 $\text{ACCOMPS}(M) = \{\text{VALCOMPH}(M, x) \mid x \in L(M) \}$ 是两个上下文无关语言的交集，其补集是一个上下文无关语言
        5. 设 $\text{Turing}$ 机在每个输入串上至少能做两个动作，则 $L(M)$ 有穷当且仅当 $\text{ACCOMPS}(M)$ 是一个上下文无关语言
    2. $\text{Post}$ 对应问题（$\text{PCP}$）：$\text{PCP}$ 的一个实例是包含在字母表 $\Sigma$ 上的两个字符串表 $A = w_1, w_2, \cdots, w_k$ 与 $B = x_1, x_2, \cdots, x_k$，其中 $w_i, x_i \in \Sigma^* \ (i = 1, 2, \cdots, k, k \geqslant 1)$．若存在一个整数序列 $i_1, i_2, \cdots, i_m \ (m \geqslant 1)$，使得 $w_{i_1} w_{i_2} \cdots w_{i_m} = x_{i_1} x_{i_2} \cdots x_{i_m}$，则称 $\text{PCP}$ 的这个实例有解，且 $i_1, i_2, \cdots, i_m$ 是一组解
        1. $\text{PCP}$ 是不可判定的
        2. 如果 $\text{PCP}$ 是可判定的，则 $\text{MPCP}$（$\text{PCP}$ 的修正型，即在 $\text{PCP}$ 问题中要求 $i_1 = 1$）是可判定的
        3. 对任意给出的一个上下文无关文法 $G$，$G$ 是否具有二义性是不可判定的
