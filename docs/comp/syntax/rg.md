# 1 正则文法

## 1.1 有穷自动机
1. 一个有穷自动机（$\text{FA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，其中
    - $Q$ 是有穷状态机
    - $\Sigma$ 是有穷的输入字母表
    - $\delta: Q \times \Sigma \to Q$ 是转移函数
    - $q_0 \in Q$ 是初始状态
    - $F \subseteq Q$ 是终结状态集

    通常用矩阵或转移图表示

    1. 对于有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\hat \delta: Q \times \Sigma^* \to Q$ 定义为

        $$
        \begin{aligned}
        & \hat \delta(q, \varepsilon) = q \\
        & \hat \delta(q, wa) = \delta(\hat \delta(q, w), a)
        \end{aligned}
        $$

        在不引发歧义的情况下，可以用 $\delta$ 表示 $\hat \delta$

    2. 给定有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \in F \ (x \in \Sigma^*)$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

2. 一个非确定的有穷自动机（$\text{NFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，除转移函数 $\delta: Q \times \Sigma \to \mathcal P(Q)$ 外，其他定义与有穷自动机相同
    1. 对于非确定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\hat \delta: Q \times \Sigma^* \to \mathcal P(Q)$ 定义为

        $$
        \begin{aligned}
        & \hat \delta(q, \varepsilon) = \{q\} \\
        & \hat \delta(q, wa) = \{p \mid p \in \delta(r, a), r \in \hat \delta(q, w)\}
        \end{aligned}
        $$

        在此基础上继续扩充为 $\hat \delta: \mathcal P(Q) \times \Sigma^* \to \mathcal P(Q)$，定义 $\hat \delta(\{p_1, p_2, \cdots, p_n\}, w) = {\displaystyle \bigcup_{i=1}^n \hat \delta(p_i, w)}$，其中 $p_i \in Q \ (i = 1, 2, \cdots, k, k \geqslant 1), w \in \Sigma^*$

    2. 给定非确定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \cap F \neq \varnothing$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

3. 具有 $\varepsilon$ 转移的有穷自动机（$\varepsilon-\text{NFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，除转移函数 $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \to \mathcal P(Q)$ 外，其他定义与有穷自动机相同
    1. 闭包：在一个具有 $\varepsilon$ 转移的有穷自动机中，对于状态 $q$，其闭包 $\overline q$ 定义为满足以下条件的最小集合
        1. $q \in \overline q$
        2. $p \in \overline q \to \delta(p, \varepsilon) \in \overline q$

        并进一步规定对于状态集 $P$，其闭包 $\overline P = {\displaystyle \bigcup_{q \in P} \overline q}$

    2. 对于一个具有 $\varepsilon$ 转移的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \to \mathcal P(Q)$ 定义为

        $$
        \begin{aligned}
        & \hat \delta(q, \varepsilon) = \overline q \\
        & \hat \delta(q, wa) = \overline{\bigcup_{r \in \hat \delta(q, w)} \delta(r, a)}
        \end{aligned}
        $$

        其中 $q \in Q, a \in \Sigma, w \in \Sigma^*$

    3. 给定具有 $\varepsilon$ 转移的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \cap F \neq \varnothing$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

4. 等价性
    1. 设 $L$ 被一个具有 $\varepsilon$ 转移的有穷自动机接受，则 $L$ 也被一个不具有 $\varepsilon$ 转移的非确定有穷自动机接受
    2. 设 $L$ 是一个被非确定的有穷自动机接受的语言，则存在一个确定的有穷自动机也接受语言 $L$

## 1.2 正则语言
1. 线性文法：对于文法 $G = (V, T, P, S)$，如果 $P$ 中的表达式都是 $A \to w$ 或 $A \to wB$ 的形式，其中 $A, B \in V, w \in T^*$，则文法 $G$ 称为右线性文法；如果 $P$ 中的表达式都是 $A \to w$ 或 $A \to Bw$ 的形式，则文法 $G$ 称为左线性文法
    1. 任何由右线性文法产生的语言都能被正则文法产生
    2. 任何由左线性文法产生的语言都能被文法 $G = (V, T, P, S)$ 产生，且 $P$ 中的产生式仅为 $A \to a$ 与 $A \to Ba$ 两种形式，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$
    3. 给出正则文法 $G = (V, T, P, S)$ 且 $L(G) = L$．则存在另一文法 $G' = (V, T, P, S)$，其产生式仅为 $A \to a$ 与 $A \to Ba$ 两种形式，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$，使得 $L(G') = L^R$
2. 泵引理

## 1.3 正则表达式
