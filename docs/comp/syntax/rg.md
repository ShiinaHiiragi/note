# 1 正则文法

## 1.1 有穷自动机
1. 一个确定的有穷自动机（$\text{DFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，其中
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

4. 具有输出的有穷自动机：如果 $M_1 = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$ 是一个 $\text{Moore}$ 机，则存在一个 $\text{Mealy}$ 机与之等价
    1. 一个 $\text{Moore}$ 机是一个六元组 $M = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$，其中除 $\Delta$ 是一个输出字母表，$\lambda: Q \to \delta$ 是输出函数外，其他定义与有穷自动机相同
    2. 一个 $\text{Mealy}$ 机是一个六元组 $M = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$，其中除 $\Delta$ 是一个输出字母表，$\lambda: Q \times \Sigma \to \delta$ 是输出函数外，其他定义与有穷自动机相同

## 1.2 正则语言
1. 正则语言的等价性
    1. 有穷自动机与正则表达式的等价性
        1. 设 $r$ 是一个正则表达式，则存在一个具有 $\varepsilon$ 转移的有穷自动机接受 $L(r)$
        2. 设 $L$ 被一个具有 $\varepsilon$ 转移的有穷自动机接受，则 $L$ 也被一个不具有 $\varepsilon$ 转移的非确定有穷自动机接受
        3. 设 $L$ 是一个被非确定的有穷自动机接受的语言，则存在一个确定的有穷自动机也接受语言 $L$
        4. 如果 $L$ 被一个确定的有穷自动机接受，则 $L$ 可用一个正则表达式代表
    2. 有穷自动机与正则文法的等价性
        1. 设 $L$ 被某个正则文法 $G$ 产生，则 $L$ 可被某个确定的有穷自动机接受
        2. 设 $L$ 被某个确定的有穷自动机 $M$ 接受，则 $L$ 可被某个正则文法产生
2. 线性文法：对于文法 $G = (V, T, P, S)$，如果 $P$ 中的表达式都是 $A \to w$ 或 $A \to wB$ 的形式，其中 $A, B \in V, w \in T^*$，则文法 $G$ 称为右线性文法；如果 $P$ 中的表达式都是 $A \to w$ 或 $A \to Bw$ 的形式，则文法 $G$ 称为左线性文法
    1. 任何由右线性文法产生的语言都能被正则文法产生
    2. 任何由左线性文法产生的语言都能被文法 $G = (V, T, P, S)$ 产生，且 $P$ 中的产生式仅为 $A \to a$ 与 $A \to Ba$ 两种形式，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$
    3. 给出正则文法 $G = (V, T, P, S)$ 且 $L(G) = L$．则存在另一文法 $G' = (V, T, P, S)$，其产生式仅为 $A \to a$ 与 $A \to Ba$ 两种形式，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$，使得 $L(G') = L^R$
3. 正则表达式：设 $\Sigma$ 是一个字母表，则 $\Sigma$ 上的正则表达式及其所代表的集合递归定义如下
    1. $\varnothing$ 与 $\varepsilon$ 是一个正则表达式，分别代表空集与 $\{\varepsilon\}$
    2. 对于 $\Sigma$ 中的每个符号 $a$，$a$ 是正则表达式，代表集合 $\{a\}$
    3. 如果 $r, s$ 是正则表达式且分别代表集合 $R, S$，则 $(r + s), (r \cdot s), (r^*)$ 是正则表达式并分别代表集合 $R \cup S, RS, R^*$

    其中 $r \cdot s$ 可简记为 $rs$．正则表达式 $R$ 代表的集合记作 $L(R)$

    1. 正则表达式的简写
        1. 每个正则表达式最外层的括号可以省略
        2. 正则表达式构造的优先次序从高到低依次为 $*$、连接、$+$，符合此种顺序的表达式可以省略对应的括号
        3. 同一种构造连续出现时，按左结合处理，中间的括号可以省略
    2. 单位元与零元：对于任何正则表达式 $r$ 都有
        1. $\varnothing + r = r + \varnothing$
        2. $\varepsilon r = r \varepsilon$
        3. $\varnothing r = r \varnothing = \varnothing$
    3. 正则表达式的等价变换：对于任何正则表达式 $r, s, t$ 都有
        1. $r + s = s + r$
        2. $(r + s) + t = r + (s + t)$
        3. $(rs)t = r(st)$
        4. $r(s + t) = rs + rt$
        5. $(s + t)r = sr + tr$
        6. $(r^*)^* = r^*$
        7. $\varnothing^* = \varepsilon^* = \varepsilon$
    4. 检验正则表达式定理：设 $E$ 是带有变量 $V_1, V_2, \cdots, V_m$ 的正则表达式，通过将 $V_i$ 的每次出现都换成符号 $a_i \ (1 \leqslant i \leqslant m)$ 得到具体表达式 $C$，则从每个属于 $L(C)$ 的串 $a_1, a_2, \cdots, a_k$ 出发将每个符号 $a_i \ (1 \leqslant i \leqslant k)$ 都换成对应的语言 $L(V_i)$ 从而构造出 $L(E)$

4. 泵引理：设 $L$ 是一个正则语言，则存在只依赖于 $L$ 的正整数 $k$，对任何串 $x, y, z \ (xyz \in L)$，只要 $|y| \geqslant k$，就可以将 $y$ 写成 $y = uvw \ (v \neq \varepsilon, |uv| \leqslant k)$ 使得对于任何 $i \geqslant 0$ 都有 $xuv^iwz \in L$
5. 正则语言的封闭性：设 $L_1, L_2$ 是两个 $\Sigma$ 上的正则语言，则
    1. $L_1 \cup L_2$、$L_1 \cap L_2$ 与 $L_1 - L_2$ 是正则语言
    2. $L_1 L_2$、$L_1^*$ 与 $L^R$ 是正则语言
    3. $\Sigma^* - L_1$ 是正则语言
    4. 如果 $L$ 是字母表 $\Sigma$ 上的正则语言，$h: \Sigma \to \Delta$ 是一个同态映射，则 $h[L]$ 也是 $\Delta$ 上的正则语言
6. 可判定性：具有 $n$ 个状态的有穷自动机具有性质：① 它接受的集合非空当且仅当它接受一个长度小于 $n$ 的字符串；② 它接受的集合是无穷的，当且仅当它接受一个长度为 $t$ 的字符串，这里 $n \leqslant t < 2n$
    1. 给定一个有穷自动机 $M$，则 $L(M)$ 是否为空集或是否为有穷集是可判定的
    2. 两个有穷自动机是否等价是可判定的
    3. 给定一个有穷自动机 $M$ 和一个字符串 $x$，则 $x \in L(M)$ 是否成立是可判定的
7. 有穷自动机的极小化
