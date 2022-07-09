# 5 短语结构文法

## 5.1 Turing 机
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
        ![](../assets/tm.png)
        <style> img[src$="tm.png"] { width: 420px; } </style>
    </figure>

    1. $\text{Turing}$ 机的格局（$\text{ID}$）是一个特殊的符号串 $\alpha_1 q \alpha_2$，其中 $q \in Q, \alpha_1, \alpha_2 \in \Gamma^*$
        1. $q$ 为 $\text{Turing}$ 机的当前状态
        2. $\alpha_1$ 为读写头左边的带上符号串
        3. $\alpha_2$ 为读写头右边的带上符号串，其第一个符号位读写头正在注视的符号
    2. 状态转换
        1. 设 $\text{ID}_i = X_1 X_2 \cdots X_{i-1} q X_i X_{i+1} \cdots X_n$，若有 $\delta(q, X_i) = (p, Y, R)$，则 $\text{ID}_{i} \vdash \text{ID}_{i+1}$，其中 $\text{ID}_{i+1} = X_1 X_2 \cdots X_{i-2} p X_{i-1} Y X_{i+1} \cdots X_n$，向右移动也可类似定义
        2. 用 $\text{ID}_i \vdash^* \text{ID}_{j}$ 表示任意多次转换
    3. $\text{Turing}$ 机接受的语言：$L(M) = \{x \mid sx\sqcup^\infty \vdash^* \alpha_1 t \alpha_2, x \in \Sigma^*, t \in F, \alpha_1, \alpha_2 \in \Gamma^*\}$

2. $\text{Turing}$ 机的变形
    1. 双向无限带：将带的单向无限延伸到双向无限延申．若 $L$ 被一个具有双向无限带的 $\text{Turing}$ 机接受，则 $L$ 也能被一个具有单项无限带的 $\text{Turing}$ 机接受
    2. 多带：多带 $\text{Turing}$ 机用一个控制器控制 $k$ 条带．开始时，多带 $\text{Turing}$ 机将输入串放在第一条带上，其他带均为空白且各带的读写头都指向带的左端单元，一次动作包括一下内容：
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

## 5.2 短语结构文法
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
