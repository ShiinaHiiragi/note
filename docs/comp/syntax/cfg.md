# 3 上下文无关文法

## 3.1 下推自动机

## 3.2 上下文无关语言
1. 语法分析树：上下文无关文法 $G = (V, T, P, S)$ 满足下列要求的一棵树称为关于 $G$ 的语法分析树
    1. 树的每个节点带有一个 $V \cup T \cup \{\varepsilon\}$ 的符号标记：根结点的标记是 $S$，树的非叶结点只能以 $V$ 中符号作为标记
    2. 如果结点 $n$ 带有标记 $A$，结点 $n_1, n_2, \cdots, n_k$ 是结点 $n$ 从左到右的子结点并分别带有标记 $X_1, X_2, \cdots, X_k$，则 $A \to X_1 X_2 \cdots X_k$ 必须是 $P$ 中的一个产生式
    3. 如果结点带有标记 $\varepsilon$，则该结点是其父结点唯一的叶结点

    对于一棵语法分析树，将其叶结点上的标记从左到右收集起来组成的字符串称为该语法分析树的边缘

    1. 设 $G = (V, T, P, S)$ 是一个上下文无关文法，则 $S \overset{*}{\Rightarrow} \alpha \ (\alpha \in V \cup T)$ 当且仅当在 $G$ 中存在一棵以 $\alpha$ 为边缘的语法分析树
    2. 二义性：对于某个上下文无关语言，若有某个字符串 $w \in L(G)$，存在两棵不同的语法分析树都以 $w$ 为边缘，则称该文法是有二义性的
        1. 如果某些上下文无关语言，无论用什么上下文无关文法去产生，该文法都是有二义性的，则称这种语言为固有二义性的上下文无关语言
        2. 对于上下文无关文法 $G$，如果从开始符号 $S$ 推高过程的每一步都只能替换句型中最左边的变元，则称此推导过程为最左推导；如果从开始符号 $S$ 推高过程的每一步都只能替换句型中最右边的变元，则称此推导过程为最右推导

2. 上下文无关文法的化简
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
3. 上下文无关语言的范式
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

## 3.3 确定上下文无关语言
