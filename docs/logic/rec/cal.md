# 1 可计算理论

## 1.1 可计算模型
### 1.1.1 Turing 机
1. 递归论 $\text{Turing}$ 机模型：设双向无限带 $\text{Turing}$ 机为 $M = (Q, \Sigma, \Gamma, \delta, B, q_s, q_t, q_r)$．其中字母表 $\Sigma = \{0, 1\}$，$q_h = \{q_t, q_r\}$，表示停机状态．从而一台 $\text{Turing}$ 完全由其指令集 $\delta$ 决定而与其物理装置无关
    1. $\text{Turing}$ 机的输入是 $n$ 个自然数，自然数 $m$ 用带上 $m + 1$ 个连续的 $1$ 表示，如果输入为 $n$ 元组 $m_1, m_2, \cdots, m_n$，则用空格 $0$ 隔开数字
    2. $\text{Turing}$ 机的输出是停机时纸带上所有 $1$ 的总数，$1$ 不一定是连续的
2. $\text{Turing}$ 机计算函数：设 $f$ 为 $\mathbf N^n \to \mathbf N$ 的（部分）函数，$M$ 为 $\text{Turing}$ 机．则称 $\text{Turing}$ 机 $M$ 计算函数 $f$ 当且仅当对任意 $n$ 元组 $(x_1, x_2, \cdots, x_n)$，如果 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机且输出为 $f(x_1, x_2, \cdots, x_n)$；如果 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时不会停机
    1. 用 $f(x_1, x_2, \cdots, x_n) \downarrow$ 表示 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$；用 $M(x_1, x_2, \cdots, x_n)\downarrow$ 表示 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机
    2. 如果一个自然数上的函数存在一个计算它的 $\text{Turing}$ 机，则称之为图灵可计算的；如果一个自然数上的关系集合特征函数是图灵可计算的，则称之为图灵可判定的
3. 标准化：对任意 $\text{Turing}$ 机 $M$，都存在 $\text{Turing}$ 机 $M'$ 将其输出标准化，即
    1. 对任意函数 $f$，$f$ 是 $M'$ 可计算的，当且仅当 $f$ 是 $M$ 可计算的且对于任意输入 $\boldsymbol x$，$M$ 与 $M'$ 给出相同的输出
    2. 在 $M'$ 的终止格局中，纸带上所有的 $1$ 是连续的，

### 1.1.2 递归函数
1. 初始函数
    1. 零函数 $Z(x) = 0$
    2. 后继函数 $S(x) = x + 1$
    3. 投射函数 $P_i^n(x_1, x_2, \cdots, x_n) = x_i \ (1 \leqslant i \leqslant n)$
2. 原始递归函数：全体原始递归函数集合 $\mathcal C$ 是满足以下条件的最小自然数上的函数集
    1. 初始函数属于 $\mathcal C$
    2. $\mathcal C$ 对复合封闭：如果 $g_1(x_1, x_2, \cdots, x_n), g_2(x_1, x_2, \cdots, x_n), \cdots, g_m(x_1, x_2, \cdots, x_n)$ 为 $m$ 个 $n$ 元函数，$h(y_1, y_2, \cdots, y_m)$ 为 $m$ 元函数，且 $g_1, g_2, \cdots, g_m, h \in \mathcal C$，则

        $$
        f(x_1, x_2, \cdots, x_n) = h(g_1(x_1, x_2, \cdots, x_n), g_2(x_1, x_2, \cdots, x_n), \cdots, g_m(x_1, x_2, \cdots, x_n)) \in \mathcal C
        $$

    3. $\mathcal C$ 对原始递归封闭：若 $g(x_1, x_2, \cdots, x_{n-1}), h(y, z, x_1, x_2, \cdots, x_{n-1}) \in \mathcal C$ 分别是 $n-1$ 元函数和 $n+1$ 元函数，则如下定义的 $n$ 元函数 $f$ 也属于 $\mathcal C$

        $$
        \begin{aligned}
        f(0, x_2, \cdots, x_n) & = g(x_2, \cdots, x_n)\\
        f(x + 1, x_2, \cdots, x_n) & = h(x, f(x, x_2, \cdots, x_n), x_2, \cdots, x_n)
        \end{aligned}
        $$

    每个原始递归函数 $f$ 都有一个有穷的生成序列 $\left<f_1, f_2, \cdots, f_n\right>$，其中 $f_n = f$．对于任意 $1 \leqslant i \leqslant n$，$f_i$ 是初始函数或是前面的函数通过复合或原始递归得到的

    1. 一个自然数上的关系 $R$ 是原始递归的当且仅当其特征函数是原始递归函数，如果 $R$ 是一元关系，则称 $R$ 是原始递归集
    2. 在不严格的情形下，可以将一个谓词与之在自然数上的标准解释等同起来，因此有原始递归谓词的概念

3. 原始递归函数的性质

### 1.1.3 等价性

## 1.2 递归定理

## 1.3 不可判定性
1. 递归集与递归可枚举集的 $\text{Turing}$ 机刻画
    1. 递归可枚举集合：能被一个 $\text{Turing}$ 机接受的语言
        
        递归集：能被一个完全 $\text{Turing}$ 机（即对所有输入都能停机的 $\text{Turing}$ 机）接受的语言

    2. 递归集与递归可枚举集的性质
        1. 递归集类是递归可枚举集类的真子类
        2. 递归集与递归可枚举集分别对其交与并封闭，递归集对其补集运算封闭
        3. 如果语言 $L$ 与 $\overline L$ 都是递归可枚举集，则 $L$ 与 $\overline L$ 都是递归集

2. 归约：给定两个集合 $A \subseteq \Sigma^*, B \subseteq \Delta^*$，则 $A$ 到 $B$ 的归约是一个可计算函数 $\sigma: \Sigma^* \to \Delta^*$ 使得对一切 $x \in \Sigma^*$ 都有 $x \in A \leftrightarrow \sigma(x) \in B$，此时称 $A$ 通过映射可归约到 $B$，记作 $A \leqslant_m B$，下标 $m$ 表示映射可能是多对一映射
    1. 递归集与递归可枚举集的规约
        1. 如果 $A \leqslant_m B$ 且 $B$ 是递归可枚举集，则 $A$ 也是递归可枚举集
        2. 如果 $A \leqslant_m B$ 且 $B$ 是递归集，则 $A$ 也是递归集
    2. 性质：在给定的字母表 $\Sigma$ 上，递归可枚举集合类的一个性质是一个映射 $P: \{R \mid R \textsf{ 是递归可枚举集合类的子类}\} \to 2$，其中 $2 = \{0, 1\}$ 中，$1$ 表示假，$0$ 表示真．特别地，若某个映射只取 $0$ 或 $1$，则称该映射为平凡性质，否则称为非平凡性质
    3. 停机问题：任意给定的 $\text{Turing}$ 机在任意给定的输入串上是否停机（接受或拒绝）的问题是不可判定的
    4. $\text{Rice}$ 定理：递归可枚举集合类的任何一个非平凡性质都是不可判定的
