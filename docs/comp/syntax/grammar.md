# 1 文法理论

## 1.1 文法与语言
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
        1. 规约：如果 $\alpha \underset{G}{\Rightarrow} \gamma$，则反过来称 $\gamma$ 归约到 $\alpha$，记作 $\gamma \underset{G}{\Leftarrow} \alpha$
        2. 推导：直接推导的扩充，即 $\alpha \overset{*}{\underset{G}{\Rightarrow}} \gamma$ 当且仅当存在 $\beta_1, \beta_2, \cdots, \beta_n$ 使得 $\alpha \underset{G}{\Rightarrow} \beta_1 \underset{G}{\Rightarrow} \beta_2 \underset{G}{\Rightarrow} \cdots \underset{G}{\Rightarrow} \beta_n \underset{G}{\Rightarrow} \gamma$
    2. 文法 $G = (V, T, P, S)$ 所产生的语言记作 $L(G) = \{w \mid S \overset{*}{\Rightarrow} w \wedge w \in T^*\}$
    3. 等价性：对于两个不同的文法 $G_1, G_2$，若 $L(G_1) = L(G_2)$，则称文法 $G_1$ 与 $G_2$ 等价

## 1.2 谱系定理
1. $\text{Chomsky}$ 分类法：对于文法 $G = (V, T, P, S)$，按以下标准分为四类
    1. $0$ 型文法 / 短语结构文法（$\text{PSG}$）：没有其他限制的形式文法，其语言称作短语结构语言（$\text{PSL}$）
    2. $1$ 型文法 / 上下文有关文法（$\text{CSG}$）：$P$ 中的每个产生式 $\alpha \to \beta$ 都有 $|\alpha| \leqslant |\beta|$ 的语言，其语言称作上下文有关语言（$\text{CSL}$）
    3. $2$ 型文法 / 上下文无关文法（$\text{CFG}$）：$P$ 中的每个产生式都具有 $A \to (V \cup T)^*$ 的形式的语言，其语言称作上下文无关语言（$\text{CFL}$）
    4. $3$ 型文法 / 正则文法（$\text{RG}$）：每个产生式都形如 $A \to a$ 或 $A \to aB$ 的语言，其中 $a \in T \cup \{\varepsilon\}, A, B \in V$，其语言称作正则语言（$\text{RL}$）
2. 谱系定理：在同一字母表（例如取字母表 $\Sigma = \{0, 1\}$）上，各语言类之间存在下列关系
    1. 正则语言类真包含于上下文无关语言类中：$\text{RL} \subset \text{CFL}$
    2. 确定的上下文无关语言包含正则语言，但包含于上下文语言之间：$\text{RL} \subset \text{DCFL} \subset \text{CFL}$
    3. 不含 $\varepsilon$ 的上下文无关语言类真包含于上下文有关语言中：$\text{CFL} \subset \text{CSL} \cup \{\varepsilon\}$
    4. 上下文有关语言类真包含于递归集中：$\text{CSL} \subset \text{RS}$
    5. 递归集真包含与递归可枚举集中：$\text{RS} \subset \text{RES}$
    6. 递归可枚举集之外，还存在非递归可枚举集即任何语言

    <figure markdown>
        ![](../assets/spec.png)
        <style> img[src$="spec.png"] { width: 300px; } </style>
    </figure>