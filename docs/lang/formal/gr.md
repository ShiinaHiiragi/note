# 1 形式文法与自动机

## 1.1 文法理论
### 1.1.1 文法与语言
1. 字符串：给定的字母表 $\Sigma$ 是一个有限非空符号集，定义字母表 $\Sigma$ 上的字符串 $x$

    $$
    L \ni x := \varepsilon \mid xa
    $$

    其中 $a \in \Sigma$，由 $\Sigma$ 上字符串组成的任何集合 $L$ 都称作字母表 $\Sigma$ 上的语言

    1. 字符串的长度：字符串 $x$ 包含的字符个数，记作 $|x|$
    2. 字符串的操作：设 $x, y$ 是 $\Sigma$ 上的字符串
        1. $xy$ 也是 $\Sigma$ 的字符串，称为 $x$ 与 $y$ 的连接，表示 $n$ 个 $x$ 连接时简写作 $x^n$
        2. $x^R$ 是 $x$ 中各符号次序倒写的结果，称为字符串 $x$ 的逆转
    3. 前缀与后缀：设 $x, y, z$ 是 $\Sigma$ 上的字符串，则称 $y$ 为 $xyz$ 的子串
        1. 称 $x$ 为 $xy$ 的前缀，当 $y \neq \varepsilon$ 时，称 $x$ 是 $xy$ 的真前缀
        2. 称 $y$ 为 $xy$ 的后缀，当 $x \neq \varepsilon$ 时，称 $y$ 是 $xy$ 的真后缀
        3. 设 $L$ 是字母表 $\Sigma$ 上的语言，若 $L$ 中任何字符串都不是另一个字符串的前缀，则称 $L$ 具有前缀性质
    4. 同态：设 $\Sigma, \Delta$ 是两个字母表，$h: \Sigma \to \Delta^*$，如果对于一切 $x, y \in \Sigma^*$ 都有 $h(xy) = h(x)h(y)$，则称 $h$ 为从 $\Sigma$ 到 $\Delta^*$ 的一个同态映射

2. 语言的运算
    1. 连接运算：设 $L_1, L_2$ 为字母表 $\Sigma_1, \Sigma_2$ 上的语言，则 $L_1$ 与 $L_2$ 的连接定义为 $L_1 L_2 = \left\{xy \mid x \in L_1, y \in L_2\right\}$
    2. 闭包运算：设 $L$ 为字母表 $\Sigma$ 上的语言，则 $L$ 的闭包 $L^*$ 定义为
        1. $L^0 = \{\varepsilon\}$
        2. $\forall n \geqslant 1: L^n = LL^{n-1}$
        3. $L^* = {\displaystyle \bigcup_{n \in \mathbf N} L^n}$

        语言的正闭包定义为 $L^+ = L^* - \{\varepsilon\}$，$\Sigma^*$ 表示字母表 $\Sigma$ 上的所有字符串

    3. 逆运算：设 $L$ 为字母表 $\Sigma$ 上的语言，则 $L$ 的逆定义为 $L^R = \{x \mid x^R \in L\}$
    4. 同态：设 $\Sigma, \Delta$ 是两个字母表，$h: \Sigma \to \Delta^*$ 是同态映射
        1. 对于任意 $L \subset \Sigma^*$，$L$ 的同态像定义为 $h[L] = {\displaystyle \bigcup_{x \in L} \{h(x)\}}$
        2. 对于任意 $w \in \Delta^*$，$w$ 的同态原像定义为 $h^{-1}(w) = \{x \mid h(x) = w\}$
        3. 对于任意 $L \subset \Delta^*$，$L$ 的同态原像定义为 $h^{-1}[L] = \{x \mid h(x) \in L\}$ 并称 $h^{-1}[L]$ 为 $L$ 的逆同态

3. 形式文法：一个文法 $G$ 是一个四元组 $G = (V, T, P, S)$，其中
    - $V$ 是变元的有限集
    - $T$ 是终结符的有限集
    - $P$ 是产生式的有限集，且每个产生式都是 $(V \cup T)^+ \to (V \cup T)^*$ 的形式，分别称为产生式的左部与右部
    - $S \in V$ 称为文法 $G$ 的开始符号

    如果有若干个左部相同而右部不同的产生式：

    $$
    \begin{aligned}
    & \alpha \to \beta_1 \\
    & \alpha \to \beta_2 \\
    & \cdots \\
    & \alpha \to \beta_n
    \end{aligned}
    $$

    则可简写为 $\alpha \to \beta_1 \mid \beta_2 \mid \cdots \mid \beta_n$

    1. 直接推导：对于给定文法 $G = (V, T, P, S)$，定义两个字符串之间的推导关系．若 $\alpha = \alpha_1\alpha_2\alpha_3, \gamma = \alpha_1\beta\alpha_3$，且 $\alpha_2 \to \beta$ 是 $P$ 中的一个产生式，则称由 $\alpha$ 直接推导出 $\gamma$，记作 $\alpha \underset{G}{\Rightarrow} \gamma$．在不引发歧义的条件下可以省略 $G$
        1. 归约：如果 $\alpha \underset{G}{\Rightarrow} \gamma$，则反过来称 $\gamma$ 归约到 $\alpha$，记作 $\gamma \underset{G}{\Leftarrow} \alpha$
        2. 推导：直接推导的扩充，即 $\alpha \overset{*}{\underset{G}{\Rightarrow}} \gamma$ 当且仅当存在 $\beta_1, \beta_2, \cdots, \beta_n$ 使得 $\alpha \underset{G}{\Rightarrow} \beta_1 \underset{G}{\Rightarrow} \beta_2 \underset{G}{\Rightarrow} \cdots \underset{G}{\Rightarrow} \beta_n \underset{G}{\Rightarrow} \gamma$
    2. 文法 $G = (V, T, P, S)$ 所产生的语言记作 $L(G) = \{w \mid S \overset{*}{\Rightarrow} w \wedge w \in T^*\}$
    3. 等价性：对于两个不同的文法 $G_1, G_2$，若 $L(G_1) = L(G_2)$，则称文法 $G_1$ 与 $G_2$ 等价

### 1.1.2 谱系定理
1. $\text{Chomsky}$ 分类法：对于文法 $G = (V, T, P, S)$，按以下标准分为四类
    1. $0$ 型文法/短语结构文法（$\text{PSG}$）：无其他限制的形式文法，其语言称作短语结构语言（$\text{PSL}$）
    2. $1$ 型文法/上下文有关文法（$\text{CSG}$）：$P$ 中的各产生式 $\alpha \to \beta$ 都有 $|\alpha| \leqslant |\beta|$ 的语言，其语言称作上下文有关语言（$\text{CSL}$）
    3. $2$ 型文法/上下文无关文法（$\text{CFG}$）：$P$ 中的各产生式都具有 $A \to (V \cup T)^*$ 的形式的语言，其语言称作上下文无关语言（$\text{CFL}$）
    4. $3$ 型文法/正则文法（$\text{RG}$）：各产生式都形如 $A \to a$ 或 $A \to aB$ 的语言，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$，其语言称作正则语言（$\text{RL}$）
2. 谱系定理：在同一字母表（例如取字母表 $\Sigma = \{0, 1\}$）上，各语言类之间存在以下关系
    1. 正则语言类真包含于上下文无关语言类中：$\text{RL} \subset \text{CFL}$
    2. 确定的上下文无关语言包含正则语言，但包含于上下文语言之间：$\text{RL} \subset \text{DCFL} \subset \text{CFL}$
    3. 不含 $\varepsilon$ 的上下文无关语言类真包含于上下文有关语言中：$\text{CFL} \subset \text{CSL} \cup \{\varepsilon\}$
    4. 上下文有关语言类真包含于递归集中：$\text{CSL} \subset \text{RS}$
    5. 递归集真包含与递归可枚举集中：$\text{RS} \subset \text{RES}$
    6. 递归可枚举集之外，还存在非递归可枚举集即任何语言

    <figure markdown>
        ![](../assets/spec.svg)
        <style> img[src$="spec.svg"] { width: 300px; } </style>
    </figure>

## 1.2 正则文法
### 1.2.1 有穷自动机
1. 一个确定的有穷自动机（$\text{DFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，其中
    - $Q$ 是有穷状态机
    - $\Sigma$ 是有穷的输入字母表
    - $\delta: Q \times \Sigma \to Q$ 是转移函数
    - $q_0 \in Q$ 是初始状态
    - $F \subseteq Q$ 是终结状态集

    通常用矩阵或转移图表示

    1. 对于有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\widehat \delta: Q \times \Sigma^* \to Q$ 定义为

        $$
        \begin{aligned}
        & \widehat \delta(q, \varepsilon) = q \\
        & \widehat \delta(q, wa) = \delta(\widehat \delta(q, w), a)
        \end{aligned}
        $$

        在不引发歧义的情况下，可以用 $\delta$ 表示 $\widehat \delta$

    2. 给定有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \in F \ (x \in \Sigma^*)$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

2. 一个非确定的有穷自动机（$\text{NFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，除转移函数 $\delta: Q \times \Sigma \to \mathcal P(Q)$ 外，其他定义与有穷自动机相同
    1. 对于非确定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\widehat \delta: Q \times \Sigma^* \to \mathcal P(Q)$ 定义为

        $$
        \begin{aligned}
        & \widehat \delta(q, \varepsilon) = \{q\} \\
        & \widehat \delta(q, wa) = \{p \mid p \in \delta(r, a), r \in \widehat \delta(q, w)\}
        \end{aligned}
        $$

        在此基础上继续扩充为 $\widehat \delta: \mathcal P(Q) \times \Sigma^* \to \mathcal P(Q)$，定义 $\widehat \delta(\{p_1, p_2, \cdots, p_n\}, w) = {\displaystyle \bigcup_{i=1}^n \widehat \delta(p_i, w)}$，其中 $p_i \in Q \ (i = 1, 2, \cdots, k, k \geqslant 1), w \in \Sigma^*$

    2. 给定非确定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \cap F \neq \varnothing$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

3. 具有 $\varepsilon$ 转移的有穷自动机（$\varepsilon-\text{NFA}$）是一个五元组 $M = (Q, \Sigma, \delta, q_0, F)$，除转移函数 $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \to \mathcal P(Q)$ 外，其他定义与有穷自动机相同
    1. 闭包：在一个具有 $\varepsilon$ 转移的有穷自动机中，对于状态 $q$，其闭包 $\overline q$ 定义为满足以下条件的最小集合
        1. $q \in \overline q$
        2. $p \in \overline q \to \delta(p, \varepsilon) \in \overline q$

        并进一步规定对于状态集 $P$，其闭包 $\overline P = {\displaystyle \bigcup_{q \in P} \overline q}$

    2. 对于一个具有 $\varepsilon$ 转移的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，其扩充转移函数 $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \to \mathcal P(Q)$ 定义为

        $$
        \begin{aligned}
        & \widehat \delta(q, \varepsilon) = \overline q \\
        & \widehat \delta(q, wa) = \overline{\bigcup_{r \in \widehat \delta(q, w)} \delta(r, a)}
        \end{aligned}
        $$

        其中 $q \in Q, a \in \Sigma, w \in \Sigma^*$

    3. 给定具有 $\varepsilon$ 转移的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，若 $\delta(q_0, x) \cap F \neq \varnothing$，则称字符串 $x$ 被 $M$ 接受．被 $M$ 而接受的全部字符串构成的集合称为被有穷自动机 $M$ 接受的语言，记作 $L(M)$

4. 具有输出的有穷自动机：如果 $M_1 = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$ 是一个 $\text{Moore}$ 机，则存在一个 $\text{Mealy}$ 机与之等价
    1. 一个 $\text{Moore}$ 机是一个六元组 $M = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$，其中除 $\Delta$ 是一个输出字母表，$\lambda: Q \to \delta$ 是输出函数外，其他定义与有穷自动机相同
    2. 一个 $\text{Mealy}$ 机是一个六元组 $M = (Q, \Sigma, \Delta, \delta, \lambda, q_0)$，其中除 $\Delta$ 是一个输出字母表，$\lambda: Q \times \Sigma \to \delta$ 是输出函数外，其他定义与有穷自动机相同
5. 有穷自动机的极小化
    1. 对于给定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，定义状态集 $Q$ 上的等价关系：对于 $p, q \in Q$，若对于每个 $x \in \Sigma^*$ 都有 $\delta(p, x) \in F$ 当且仅当 $\delta(q, x) \in F$，则称 $p, q$ 等价，记作 $p \equiv q$，否则称 $p, q$ 为可区别的
    2. 商自动机：对于给定的有穷自动机 $M = (Q, \Sigma, \delta, q_0, F)$，定义有穷自动机 $M / \equiv = (Q', \Sigma, \delta', q_0', F')$，其中

        $$
        \begin{aligned}
        & Q' = \{[p] \mid p \in Q\} \\
        & \delta'([p], a) = [\delta(p, a)], [p] \in Q', a \in \Sigma \\
        & q_0' = [q_0] \\
        & F' = \{[p] \mid p \in F\}
        \end{aligned}
        $$

        1. 可证明该定义是相容的，即若 $[p] = [q]$，即 $\delta'([p], a) = \delta'([q], a)$，则必然有 $[\delta(p, a)] = [\delta(q, a)]$
        2. 通过对 $|x|$ 归纳，可将 $\delta'$ 的定义推广到字符串 $x \in \Sigma^*$，即有 $\delta'([p], x) = [\delta(p, x)]$
        3. 任意的有穷自动机 $M$ 与其商自动机 $M / \equiv$ 等价，即 $L(M) = L(M / \equiv)$

    3. 设 $A$ 为正则语言，$A \subset \Sigma^*$，$M$ 是一个接受 $A$ 且没有不可到达状态的确定有穷自动机．设 $M'$ 是 $M$ 通过合并等价状态的商自动机，则 $M'$ 是接受 $A$ 的具有最少状态数的有穷自动机

6. 有穷自动机的同构：设两个确定的有穷自动机 $M = (Q_m, \Sigma, \delta_m, q_m, F_m)$ 与 $N = (Q_n, \Sigma, \delta_n, q_n, F_n)$，如果在其状态集之间存在一个一对一的映射 $f: Q_m \to Q_n$ 有
    1. $f(q_m) = q_n$
    2. 对一切 $p \in Q_m, a \in \Sigma$ 有 $f(\delta_m(p, a)) = \delta_n(f(p), a)$
    3. $p \in F_m \leftrightarrow f(p) \in F_n$

    则称 $M$ 与 $N$ 同构

    1. 设 $M = (Q, \Sigma, \delta, q_0, F)$ 是一个有穷自动机，定义 $\Sigma^*$ 上的等价关系：$x, y \in \Sigma^*$，则 $x R_M y$ 当且仅当 $\delta(q_0, x) = \delta(q_0, y)$
        1. $R_M$ 是一个右不变的等价关系，即对于任何 $x, y, z \in \Sigma^*$ 都有 $x R_M y \rightarrow xz R_M yz$
        2. 细分 $L(M)$，即若 $x R_M y$，则有 $x \in L(M) \leftrightarrow y \in L(M)$
        3. 具有有穷指数，$R_M$ 的指数为 $M$ 的状态数

        具有右不变、细分 $A$ 以及具有有穷指数三个性质的关系称为关于 $A$ 的 $\text{Myhill} - \text{Nerode}$ 关系，因此 $R_M$ 是关于 $L(M)$ 的 $\text{Myhill} - \text{Nerode}$ 关系

    2. 设 $R$ 是 $\Sigma^*$ 上关于 $A$ 的 $\text{Myhill} - \text{Nerode}$ 关系，定义有穷自动机 $M_R = (Q, \Sigma, \delta, q_0, F)$ 如下

        $$
        \begin{aligned}
        & Q = \{[x] \mid x \in \Sigma^*\} \\
        & q_0 = [\varepsilon] \\
        & F = \{[x] \mid x \in A\} \\
        & \delta([x], a) = [xa], a \in \Sigma
        \end{aligned}
        $$

        则 $L(M_R) = A$

    3. 设 $A \subseteq \Sigma^*$，定义在 $\Sigma^*$ 上关于 $A$ 的等价关系 $R_A$：$x R_A y$ 当且仅当对任意 $z \in \Sigma^*$ 都有 $xz \in A \leftrightarrow yz \in A$．则 $R_A$ 具有性质
        1. $R_A$ 是右不变的
        2. $R_A$ 细分 $A$
        3. 设 $R$ 是满足 $M^*$ 上任何满足上述两点的等价关系，则 $R$ 细分 $R_A$
    4. $\text{Myhill} - \text{Nerode}$ 定理：设 $A \subseteq \Sigma^*$，则一下三个命题等价
        1. $A$ 是一个在字母表 $\Sigma$ 上的正则语言
        2. 在 $\Sigma^*$ 上存在一个关于 $A$ 的 $\text{Myhill} - \text{Nerode}$ 关系
        3. 关系 $R_A$ 具有有穷指数
    5. 对于任何正则语言 $A$，构造的自动机 $M_{R_A}$ 是接受 $A$ 的状态数最少的确定有穷自动机，且该自动机在同构意义下唯一

7. 可判定性：具有 $n$ 个状态的有穷自动机具有性质 ① 它接受的集合非空当且仅当它接受一个长度小于 $n$ 的字符串；② 它接受的集合是无穷的，当且仅当它接受一个长度为 $t$ 的字符串，这里 $n \leqslant t < 2n$
    1. 给定一个有穷自动机 $M$，则 $L(M)$ 是否为空集或是否为有穷集是可判定的
    2. 两个有穷自动机是否等价是可判定的
    3. 成员资格问题：给定一个有穷自动机 $M$ 和一个字符串 $x$，则 $x \in L(M)$ 是否成立是可判定的

### 1.2.2 正则语言
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
5. 正则语言的封闭性：设 $L_1, L_2$ 是两个 $\Sigma$ 上的正则语言
    1. $L_1 \cup L_2$、$L_1 \cap L_2$ 与 $L_1 - L_2$ 是正则语言
    2. $L_1 L_2$、$L_1^*$ 与 $L^R$ 是正则语言
    3. $\Sigma^* - L_1$ 是正则语言
    4. 如果 $L$ 是字母表 $\Sigma$ 上的正则语言，$h: \Sigma \to \Delta$ 是一个同态映射，则 $h[L]$ 也是 $\Delta$ 上的正则语言

## 1.3 上下文有关文法
### 1.3.1 线性有界自动机
1. 线性有界自动机（$\text{LBA}$）是一种特殊的非确定 $\text{Turing}$ 机，由一个九元组表示：$M = (Q, \Sigma, \Gamma, \delta, \not \!c, \$, s, t, r)$
    1. $\not \!c, \$$ 分别为左、右端标记，表示 $\text{Turing}$ 机读写头的移动范围
    2. 线性有界自动机接受的语言记作 $L(M) = \{w \mid w \in \Sigma^*, s \not \!c w \$ \vdash_M^* \alpha t \beta, \alpha, \beta \in \Gamma^*\}$
2. 线性有界自动机与上下文有关文法的关系
    1. 如果 $L$ 是上下文有关语言，则 $L$ 可被某个线性有界自动机 $M$ 接受
    2. 设 $M$ 是一个线性有界自动机，则 $L(M) - \{\varepsilon\}$ 是一个上下文有关语言

### 1.3.2 上下文有关语言
1. 上下文有关文法的等价形式
    1. $1^\circ$ 型文法：对于文法 $G = (V, T, P, S)$，若 $P$ 中的每个产生式都是 $\alpha_1 A \alpha_2 \to \alpha_1 \beta \alpha_2$ 的形式，其中 $A \in V, \alpha_1, \alpha_2 \in (V \cup T)^*, \beta \in (V \cup T)^+$，则称之为 $1^\circ$ 型文法
    2. $1$ 型文法与 $1^\circ$ 型文法等价，即对于每个 $1$ 型文法 $G_1$ 都有一个 $1^\circ$ 型文法与之等价，反之亦然
2. 上下文有关语言的封闭性：设 $L_1, L_2$ 是两个上下文有关语言
    1. $L_1 \cup L_2$ 是上下文有关语言
    2. $L_1 L_2$ 与 $L_1^+$ 是上下文有关语言
3. 上下文有关语言与递归集
    1. 每一个上下文无关语言都是递归集
    2. 存在一个递归集不是上下文无关语言

## 1.4 上下文无关文法
### 1.4.1 下推自动机
1. 下推自动机（$\text{PDA}$）是一个七元组 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$，其中
    - $Q$ 是有穷状态机
    - $\Sigma$ 是有穷的输入字母表
    - $\Gamma$ 是有穷的栈符号表
    - $\delta: Q \times (\Sigma \cup \{\varepsilon\}) \times \Gamma \to (Q \times \Gamma)^*$ 是转移函数
    - $q_0 \in Q$ 是初始状态
    - $Z_0$ 是栈底符号
    - $F \subseteq Q$ 是终结状态集

    <figure markdown>
        ![](../assets/pda.svg)
        <style> img[src$="pda.svg"] { width: 360px; } </style>
    </figure>

    1. 转移函数的一般形式为 $\delta(q, a, Z) = \{(p_1, \gamma_1), (p_2, \gamma_2), \cdots, (p_m, \gamma_m)\}$，其中 $q \in Q, a \in \Sigma \cup \{\varepsilon\}, Z \in \Gamma, p_i \in Q$ 且有 $\gamma_i \in \Gamma^* \ (i = 1, 2, \cdots, m, m \geqslant 0)$，表示当下推自动机的当前状态为 $q$，读头读到输入符号为 $a$ 且栈顶符号为 $Z$ 时
        1. 转移函数执行后状态变为 $p_i$
        2. 栈顶符号由 $Z$ 变为 $\gamma_i$
        3. 当 $a \in \Sigma$ 时，读头越过输入符号 $a$；当 $a = \varepsilon$ 时，读头保持不动
    2. 格局（$\text{ID}$）：下推自动机的一个格局是一个三元组 $(q, w, r)$，其中 $q$ 为下推自动机的当前状态，$w$ 为尚未读入的输入符号串，$\gamma$ 为当前在栈中的符号串
        1. 当下推自动机执行一次 $\delta$ 动作后，由一个格局 $\text{ID}_i$ 转换到下一个格局 $\text{ID}_{i+1}$，记作 $\text{ID}_i \vdash_M \text{ID}_{i+1}$，在不引发歧义的情况下，$M$ 可以省略
        2. 用 $\vdash_M^*$ 表示任意多次转换，由归纳法定义
            - 对任何格局 $I$，都有 $I \vdash_M^* I$
            - 如果存在某个格局 $K$，使得 $I \vdash_M^* K$ 与 $K \vdash_M^* J$，则 $I \vdash_M^* J$

            即存在格局序列 $K_1, K_2, \cdots, K_n$ 使得 $I = K_1, J = K_n$，且对于任意 $1 \leqslant i < n$ 都有 $K_i \vdash_M^* K_{i+1}$，则有 $I \vdash_M^* J$

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
    2. 对于每个 $a \in \Sigma$，若 $\delta(q, a, A)$ 非空，则 $\delta(q, \varepsilon, A)$ 为空

    则称 $M$ 为确定的下推自动机（$\text{DPDA}$），其接受的语言称为确定的上下文无关语言（$\text{DCFL}$）

    1. 确定的下推自动机的标准形式
        1. 每个确定的上下文无关语言都可由下述确定的下推自动机所接受：在 $M$ 中，一切 $\delta(q, a, X) = (p, \gamma)$ 都有 $|\gamma| \leqslant 2$
        2. 每个确定的上下文无关语言 $L$ 都能被下述确定的下推自动机 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ 所接受：对每个 $\delta(q, a, X) = (p, \gamma)$，$\gamma$ 只能有如下三种形式
            - $\gamma = \varepsilon$
            - $\gamma = X$
            - $\gamma = YX \ (X, Y \in \Gamma)$
    2. 设 $M$ 是一个确定的下推自动机，则存在等价的确定的下推自动机 $M'$ 能扫描完整个输入串

### 1.4.2 上下文无关语言
1. 下推自动机与上下文无关文法的等价性
    1. 设 $L$ 是一个上下文无关文法，则存在一个下推自动机 $M$ 使得 $N(M) = L$
    2. 给定一个下推自动机 $N$，则 $N(M)$ 是上下文无关文法
2. 语法分析树：上下文无关文法 $G = (V, T, P, S)$ 满足以下要求的一棵树称为关于 $G$ 的语法分析树
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
        1. 无用符号：定义两类符号 $X$ 为无用符号
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

6. 封闭性
    1. 设 $L_1, L_2$ 是两个 $\Sigma$ 上的上下文无关语言
        1. $L_1 \cup L_2$ 是上下文无关语言
        2. $L_1 L_2$ 与 $L_1^*$ 是上下文无关语言
        3. $L_1 \cap L_2$ 与 $\Sigma^* - L_1$ 不一定是上下文无关语言
        4. 设 $R$ 是一个正则语言，则 $L \cap R$ 是上下文无关语言
    2. 设 $L_1, L_2$ 是两个 $\Sigma$ 上确定的上下文无关语言
        1. $L_1 \cup L_2$ 不一定是确定的上下文无关语言
        2. $L_1 L_2$ 与 $L_1^*$ 不一定是确定的上下文无关语言
        3. $\Sigma^* - L_1$ 是确定的上下文无关语言
        4. 设 $R$ 是一个正则语言，则 $L \cap R$ 是确定的上下文无关语言
        5. $\text{MIN}(L), \text{MAX}(L)$ 是确定的上下文无关语言，其中

            $$
            \begin{aligned}
            & \text{MIN}(L) = \{x \mid x \in L, \textsf{ 但 } L \textsf{ 中没有任何 } w \textsf{ 是 } x \textsf{ 的真前缀}\} \\
            & \text{MAX}(L) = \{x \mid x \in L, \textsf{ 但 } x \textsf{ 不是 } L \textsf{ 中任何字的真前缀}\}
            \end{aligned}
            $$

7. 可判定性
    1. 对于给定的上下文无关文法 $G$，以下命题是否成立是可判定的
        1. $L(G)$ 为空集或有穷集
        2. 成员资格问题：给定一个字符串 $x$，则 $x \in L(G)$
    2. 给定 $\Sigma$ 上确定的上下文无关语言 $L$ 与正则语言 $R$，以下命题是否成立是可判定的
        1. $L = R$
        2. $R \subseteq L$
        3. $\Sigma^* - L = \varnothing$
        4. $L$ 是正则语言
8. 不可判定性
    1. 有效计算历史：给定 $\text{Turing}$ 机 $M$ 与输入串 $x$，定义 $M$ 在 $x$ 上的有效计算历史 $\text{VALCOMPH}(M, x)$ 是形如 $\sharp \alpha_0 \sharp \alpha_1^R \sharp \alpha_2 \sharp \alpha_3^R \sharp \cdots \sharp \alpha_N \sharp$ 的字符串，其中 $\alpha_i \ (i = 0, 1, \cdots, N)$ 是 $M$ 在 $x$ 上的格局，$\alpha_0$ 是初始格局，$\alpha_N$ 是 $M$ 在 $x$ 上到达接受状态或拒绝状态时的格局，对于任何 $0 \leqslant i < N$ 有 $\alpha_i \vdash_M \alpha_{i+1}$，$\sharp$ 是一个用于分隔的，区别于 $M$ 的带符号和状态符号的特殊符号
        1. 给定 $\text{Turing}$ 机 $M$ 与输入串 $x$，其无效计算集合（即 $\text{VALCOMPH}(M, x)$ 关于 $(\Gamma \cup Q \cup \{\sharp\})^*$ 的补集）$\text{INVALCOMPS}(M, x)$ 是一个上下文无关语言
        2. 对于任意给定的上下文无关文法 $G = (V, T, P, S)$，$L(G) = T^*$ 是否成立的问题是不可判定的
        3. 设 $G_1, G_2$ 是任意两个 $\Sigma$ 上的上下文无关文法，$R$ 是任意一个正则语言，则以下命题是否成立是不可判定的
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
    3. 设 $L$ 是一个上下文无关语言，$L_1, L_2$ 是两个确定的上下文无关语言，则以下命题是否成立是不可判定的
        1. $L$ 是确定的上下文无关语言
        2. $L_1 \cap L_2 = \varnothing$
        3. $L_1 \subseteq L_2$
        4. $L_1 \cap L_2$ 是确定的上下文无关语言
        5. $L_1 \cap L_2$ 是上下文无关语言
        6. $L_1 \cup L_2$ 是确定的上下文无关语言

### 1.4.3 LR(0) 文法
1. 项目：$G = (V, T, P, S)$ 是一个上下文无关文法，若干 $A \to \alpha \beta \in P \ (\alpha, \beta \in (V \cup T)^*)$，则 $A \to \alpha.\beta$ 称作一个项目，当 $\beta = \varepsilon$ 时称之为完全项目，否则称之为非完全项目
2. 给出上下文无关文法 $G = (V, T, P, S)$，$I$ 为 $G$ 中的一个项目集，则 $I$ 的闭包 $\overline I$ 定义为满足以下条件的最小集合
    1. $I \subseteq \overline I$
    2. 若 $A \to \alpha.B \gamma \in \overline I$ 且 $B \to \beta \in P$，则 $B \to .\beta \in \overline I$
3. 识别文法 $G$ 的可行前缀的有穷自动机的算法
    1. 输入上下文无关文法 $G = (V, T, P, S)$，输出有穷自动机 $M = (Q, V \cup T, \delta, I_0, Q)$，其中 $Q$ 是项目集组成的集合
    2. 基本步骤
        1. 由 $G$ 构造等价的文法 $G' = (V \cup  \{S'\},  T, P \cup \{S' \to S\}, S')$
        2. 求初始项目集 $I_0 = \overline{J_0}$，其中 $J_0 = \{S' \to .S\}$
        3. 对于项目集 $I$，有 $\delta(I, x) = \overline J$，其中 $J = \{A \to \alpha x.\beta \mid A \to \alpha .x \beta \in I, x \in V \cup T\}$
        4. 重复第三步，直到没有新的项目集出现
    3. 由算法确定的有穷自动机 $M$ 具有如下性质：$\delta(I_0, \gamma)$ 的项目集中包含项目 $A \to \alpha .\beta$ 当且仅当 $A \to \alpha.\beta$ 对 $\gamma$ 是有效的
4. $\text{LR}(0)$ 文法：给出上下文无关文法 $G$，如果满足
    1. $G$ 的开始符号不出现在任何产生式的右部
    2. 对于 $G$ 的每一个可行前缀，当 $A \to \alpha.$ 是一个对 $\gamma$ 有效的完全项目时，则既没有其他的完全项目，也没有原点右边唯一个终结符的任何项目对 $\gamma$ 有效

    则称 $G$ 为 $\text{LR}(0)$ 文法

    1. 设 $G$ 是一个 $\text{LR}(0)$ 文法，则存在一个确定的下推自动机 $M$ 使得 $N(M) = L(G)$
    2. 设 $M = (Q, \Sigma, \Gamma, \delta, q_0, Z_0, F)$ 是一个确定的下推自动机，由 $M$ 定义 $G_M = (V, \Sigma, P, S)$，其中

        $$
        V = \{S\} \cup \{[qXp] \mid q, p \in Q, x \in \Gamma\} \cup \{A_{qaY} \mid q \in Q, a \in \Sigma \cup \{\varepsilon\}, Y \in \Gamma\}
        $$

        $P$ 中的产生式为

        1. 对一切 $p \in Q$ 有 $S \to [Q_0Z_0p]$
        2. 如果 $\delta(q, a, Y) = (p, \varepsilon)$，则 $[qYp] \to A_{qaY}$
        3. 如果 $\delta(q, a, Y) = (p, X_1 X_2 \cdots X_k) \ (k \geqslant 1)$，则对于每一状态序列 $p_1, p_2, \cdots, p_{k+1}$ 都有 $[qYP_{k+1}] = A_{qaY} [p_1X_1p_2] [p_2X_2p_3] \cdots [p_kX_kp_{k+1}]$
        4. 对于一切 $q, a$ 与 $Y$，有 $A_{qaY} \to a$

        此时 $L(G_M) = N(M)$

    3. 设 $M$ 是一个确定的下推自动机
        1. 若 $\gamma$ 是 $G_M$ 的一个可行前缀且 $\gamma \in V^*$，则 $(q_0, D(\gamma), Z_0) \ | \!\overset{N(\gamma)}{\unicode{x2014}\unicode{x2014}} \ (p, \varepsilon, \beta)$，且其动作序列为 $m(\gamma)$
        2. 则 $G_M$ 是一个 $\text{LR}(0)$ 文法
    4. $L$ 由一个 $\text{LR}(0)$ 文法产生当且仅当 $L$ 是一个具有前缀性质的确定的上下文无关语言

### 1.4.4 LR(k) 文法
1. 项目：$G = (V, T, P, S)$ 是一个上下文无关文法，$G$ 的一个 $\text{LR}(k)$ 项目是形如 $\left<A \to \alpha .\beta, \{a_1, a_2, \cdots, a_k\}\right>$ 的二元组，其中 $\alpha_i \in T \cup \{\$\} \ (i = 1, 2, \cdots, n)$ 称为前景符，当 $\beta = \varepsilon$ 时称之为完全项目，否则称之为非完全项目
2. 给出 $\text{LR}(1)$ 项目 $\left<A \to \alpha .\beta, \{a\}\right>$，若有一个最右推导 $S \overset{*}{\Rightarrow} \delta Ay \overset{*}{\Rightarrow} \delta \alpha \beta y$，其中 $\delta \alpha = \gamma$ 且 $a$ 是 $y$ 的第一个符号或 $y = \varepsilon \wedge a = \$$，则称该 $\text{LR}(1)$ 项目对可行前缀 $\gamma$ 是有效的
    1. 若对每个 $i \ (i = 1, 2, \cdots, n)$，$\left<A \to \alpha.\beta, \{a_i\}\right>$ 对 $\gamma$ 都是有效的，则称 $\left<A \to \alpha.\beta, \{a_1, a_2, \cdots, a_n\}\right>$ 对 $\gamma$ 都是有效的
    2. 对于上下文无关文法 $G = (V, T, P, S)$，定义函数 $F: (V \cup T')^+ \to 2^{T'} \ (T' = T \cup \{\$\})$ 有 $F(\sigma) = \{a_1, a_2, \cdots, a_i\}$．其中 $\alpha_i \in T'$ 且有 $\sigma \overset{*}{\Rightarrow} a_i y$
    3. 给出上下文无关文法 $G = (V, T, P, S)$，$I$ 为 $G$ 中的一个 $\text{LR}(1)$ 项目集，则 $I$ 的闭包 $\overline I$ 定义为满足以下条件的最小集合
        1. $I \subseteq \overline I$
        2. 若 $\left<A \to \alpha.B \gamma, u\right> \in \overline I$ 且 $B \to \beta \in P$，则 $\left<B \to .\beta, \{F(\gamma a) \mid a \in u\}\right> \in \overline I$
3. 识别文法 $G$ 的可行前缀的有穷自动机的算法
    1. 输入上下文无关文法 $G = (V, T, P, S)$，输出有穷自动机 $M = (Q, V \cup T, \delta, I_0, Q)$，其中 $Q$ 是 $G$ 的 $\text{LR}(1)$ 项目集组成的集合
    2. 基本步骤
        1. 由 $G$ 构造等价的文法 $G' = (V \cup  \{S'\},  T, P \cup \{S' \to S\}, S')$
        2. 求 $\text{LR}(1)$ 初始项目集 $I_0 = \overline{J_0}$，其中 $J_0 = \{\left<S' \to .S, \{\$\}\right>\}$
        3. 对于 $\text{LR}(1)$ 项目集 $I$，有 $\delta(I, x) = \overline J$，其中 $J = \{\left<A \to \alpha x.\beta, u\right> \mid \left<A \to \alpha x.\beta, u\right> \in I, x \in V \cup T\}$
        4. 重复第三步，直到没有新的 $\text{LR}(1)$ 项目集出现
4. $\text{LR}(1)$ 文法：给出上下文无关文法 $G$，如果满足
    1. $G$ 的开始符号不出现在任何产生式的右部
    2. 对于 $G$ 的每一个可行前缀，对 $\gamma$ 有效的 $\text{LR}(1)$  项目集 $I$ 中若包含某个完全项目 $\left<A \to \alpha., \{a_1, a_2, \cdots, a_n\}\right>$ 满足
        1. 在 $I$ 中没有任何 $a_i \ (1 \leqslant i \leqslant n)$ 会紧接着出现在某个项目的原点右边
        2. 如果 $\left<B \to \beta., b_1, b_2, \cdots, b_k\right>$ 是 $I$ 中的另一个完全项目，那么 $\{a_1, a_2, \cdots, a_n\} \cap \{b_1, b_2, \cdots, b_k\} = \varnothing$

    则称 $G$ 为 $\text{LR}(1)$ 文法

    1. 设 $G$ 是一个 $\text{LR}(1)$ 文法，则存在一个确定的下推自动机 $M$ 使得 $N(M) = L(G)\{\$\}$
    2. $L\{\$\}$ 别一个以空栈方式接受的确定的下推自动机 $M$ 接受当且仅当 $KL$ 是一个确定的上下文无关语言
    3. 设 $G = (V, T \cup \{\$\}, P, S)$ 为 $\text{LR}(0)$ 文法，若 $G$ 有
        1. 若 $A \to \alpha \in P$，则 $\alpha \in (V \cup T)^*$ 或 $\alpha \in (V \cup T)^* \{\$\}$
        2. $L(G) \subseteq T^*\{\$\}$

        则 $G' = (V, T, P', S)$ 为 $\text{LR}(1)$ 文法且 $L(G') \{\$\} = L(G)$，其中 $P' = \{A \to a \mid a \in (V \cup T)^*, A \to \alpha \in P \vee A \to \alpha\$ \in P\}$

    4. 每个确定的上下文无关语言都可由一个 $\text{LR}(1)$ 产生

## 1.5 短语结构文法
### 1.5.1 Turing 机
1. 一个确定的单带 $\text{Turing}$ 机（$\text{TM}$）是一个八元组 $M = (Q, \Sigma, \Gamma, \delta, B, s, t, r)$，其中
    - $Q$ 是有穷状态集
    - $\Sigma$ 是有穷输入字母表
    - $\Gamma$ 是有穷带字母表且 $\Gamma \supseteq \Sigma$，表示带上可以放置的所有符号
    - $\delta: Q \times \Gamma \to Q \times \Gamma \times \left\{L, R\right\}$ 是转移函数，$L$ 表示读写头左移，$R$ 表示读写头右移
    - $B \in \Gamma - \Sigma$ 是空白符号，一般用 $\sqcup$ 表示，输入字母表一定不能出现
    - $s \in Q$ 是初始状态
    - $t \in Q$ 是接收状态
    - $r \in Q$ 是拒绝状态

    <figure markdown>
        ![](../assets/tm.svg)
        <style> img[src$="tm.svg"] { width: 320px; } </style>
    </figure>

    1. $\text{Turing}$ 机的格局（$\text{ID}$）是一个特殊的符号串 $\alpha_1 q \alpha_2$，其中 $q \in Q, \alpha_1, \alpha_2 \in \Gamma^*$
        1. $q$ 为 $\text{Turing}$ 机的当前状态
        2. $\alpha_1$ 为读写头左边的带上符号串
        3. $\alpha_2$ 为读写头右边的带上符号串，其第一个符号位读写头正在注视的符号
    2. 状态转换
        1. 设 $\text{ID}_i = X_1 X_2 \cdots X_{i-1} q X_i X_{i+1} \cdots X_n$，若有 $\delta(q, X_i) = (p, Y, R)$，则 $\text{ID}_{i} \vdash \text{ID}_{i+1}$，其中 $\text{ID}_{i+1} = X_1 X_2 \cdots X_{i-2} p X_{i-1} Y X_{i+1} \cdots X_n$，向右移动也可类似定义
        2. 用 $\text{ID}_i \vdash^* \text{ID}_{j}$ 表示任意多次转换
    3. $\text{Turing}$ 机接受的语言：$L(M) = \{x \mid sx\sqcup^\infty \vdash^* \alpha_1 t \alpha_2, x \in \Sigma^*, t \in F, \alpha_1, \alpha_2 \in \Gamma^*\}$
    4. 判定机：对所有输入停机的 $\text{Turing}$ 机

2. $\text{Turing}$ 机的变形
    1. 双向无限带：将带的单向无限延伸到双向无限延申．若 $L$ 被一个具有双向无限带的 $\text{Turing}$ 机接受，则 $L$ 也能被一个具有单项无限带的 $\text{Turing}$ 机接受
    2. 多带：多带 $\text{Turing}$ 机用一个控制器控制 $k$ 条带．开始时，多带 $\text{Turing}$ 机将输入串放在第一条带上，其他带均为空白且各带的读写头都指向带的左端单元，一次动作包括以下内容
        1. 改变状态
        2. 在各读写头指向的单元上，可分别写上不同的符号
        3. 各读写头可以独立地左右移动或静止不动

        设 $L$ 被一个多带 $\text{Turing}$ 机接受，则 $L$ 也能被某个单带 $\text{Turing}$ 机接受

    3. 非确定的 $\text{Turing}$ 机：其 $\delta$ 函数具有下述形式

        $$
        \delta(p, Z) = \{(q_1, X_1, A_1), (q_2, X_2, A_2), \cdots, (q_m, X_m, A_m)\}
        $$

        表示 $\text{Turing}$ 机在状态为 $p$ 且读写头指向符号 $Z$ 时，可以有 $m$ 种不同的选择．若 $L$ 被一个非确定的 $\text{Turing}$ 机接受，则 $L$ 也能被某个确定的 $\text{Turing}$ 机接受

    4. 双栈机：一种特殊的三带 $\text{Turing}$ 机
        1. 其中一条时输入带，只能读而不能写
        2. 另外两条单向无限带起栈的作用：当读写头右移时，可写任意非空白符号；当读写头左移时，只能写空白符 $\sqcup$

        双栈机与任何单带 $\text{Turing}$ 机等价

    5. 作为枚举器的 $\text{Turing}$ 机：一种特殊的多带 $\text{Turing}$ 机
        1. 枚举器没有输入串的概念，而是用一条带作为输出带．这条带上符号一经打印就不能改动，且带头一直向右，永不回头
        2. 枚举器 $M$ 输出的语言记作 $G(M)$，
            - 设有某个枚举器 $M_1$，则存在 $\text{Turing}$ 机 $M_2$ 使得 $L(M_2) = G(M_1)$
            - 设有某个 $\text{Turing}$ 机 $M_1$，则存在枚举器 $M_2$ 使得 $G(M_2) = L(M_1)$

### 1.5.2 短语结构语言
1. 通用 $\text{Turing}$ 机
    1. $\text{Turing}$ 机的编码方案：设 $\text{Turing}$ 机有 $n$ 个状态，对应编码分别为 $0, 00, \cdots, 0^n$，有 $m$ 个带符号，其中前 $k$ 个为 $\Sigma$ 中的符号，对应的编码为 $0, 00, \cdots, 0^k, \cdots, 0^m$，在此基础上整个 $\text{Turing}$ 机由 $0^n 1 0^m 1 0^k 1 0^s 1 0^t 1 0^r 1 0^v 11$ 开头
        1. $n$ 表示状态总数，$m$ 表示带符号总数
        2. $k$ 表示输入字母总数
        3. $0^s, 0^r, 0^t$ 分别表示开始状态、接受状态与拒接状态在状态集中的具体编号
        4. $0^v$ 表示空白符在 $m$ 个带符号中的具体编号

        后面紧接 $M$ 的 $\delta$ 函数编码，$\delta(p, a) = (q, b, R)$ 的编码为 $0
        ^p 1 0^a 1 0^q 1 0^b 100$，$0^p, 0^a, 0^q, 0^b$ 分别表示 $p, a, q, b$ 的编码．每个函数项之间用 $1$ 隔开，最后用 $11$ 表示 $\text{Turing}$ 机编码结束

    2. 通用 $\text{Turing}$ 机 $U$ 接受的集合为 $L(U) = \{M \sharp x \mid x \in L(M)\}$，其中 $M$ 是 $\text{Turing}$ 机编码，$x$ 是 $M$ 的输入串，$\sharp$ 作为特殊符号用于隔开 $M$ 与 $x$

2. $\text{Turing}$ 机与短语结构文法的等价性
    1. 设 $G$ 是一个短语结构文法，则存在一个 $\text{Turing}$ 机 $M$ 使得 $L(M) = L(G)$
    2. 设 $M$ 是一个 $\text{Turing}$ 机，则存在一个短语结构文法 $G$ 使得 $L(G) = L(M)$
