# 1 可计算理论

## 1.1 可计算模型
### 1.1.1 Turing 机
1. 递归论 $\text{Turing}$ 机模型：设双向无限带 $\text{Turing}$ 机为 $M = (Q, \Sigma, \Gamma, \delta, B, q_s, q_t, q_r)$．其中字母表 $\Sigma = \{0, 1\}$，$q_h = \{q_t, q_r\}$，表示停机状态．从而一台 $\text{Turing}$ 完全由其指令集 $\delta$ 决定而与其物理装置无关
    1. $\text{Turing}$ 机的输入是 $n$ 个自然数，自然数 $m$ 用带上 $m + 1$ 个连续的 $1$ 表示，如果输入为 $n$ 元组 $m_1, m_2, \cdots, m_n$，则用空格 $0$ 隔开数字
    2. $\text{Turing}$ 机的输出是停机时纸带上所有 $1$ 的总数，$1$ 不一定是连续的
2. $\text{Turing}$ 机计算函数：设 $f$ 为 $\mathbf N^n \to \mathbf N$ 的（部分）函数，$M$ 为 $\text{Turing}$ 机．则称 $\text{Turing}$ 机 $M$ 计算函数 $f$ 当且仅当对任意 $n$ 元组 $(x_1, x_2, \cdots, x_n)$，如果 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机且输出为 $f(x_1, x_2, \cdots, x_n)$；如果 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时不会停机
    1. 用 $f(x_1, x_2, \cdots, x_n) \downarrow$ 表示 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$，此时称 $f$ 在 $(x_1, x_2, \cdots, x_n)$ 处收敛；用 $f(x_1, x_2, \cdots, x_n) \uparrow$ 表示 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，此时称 $f$ 在 $(x_1, x_2, \cdots, x_n)$ 处发散
    2. 用 $M(x_1, x_2, \cdots, x_n)\downarrow$ 表示 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机
    3. 如果一个自然数上的函数存在一个计算它的 $\text{Turing}$ 机，则称之为 $\text{Turing}$ 可计算的；如果一个自然数上的关系集合特征函数是 $\text{Turing}$ 可计算的，则称之为 $\text{Turing}$ 可判定的
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

    1. 一个自然数上的关系 $R$ 是原始递归的当且仅当其特征函数是原始递归函数，如果 $R$ 是一元关系，则称 $R$ 是原始递归集．在不严格的情形下，可以将一个谓词与之在自然数上的标准解释等同起来，因此有原始递归谓词的概念
        1. 若 $A, B \subseteq \mathbf N^k$ 都是原始递归集合，则 $\mathbf N^k - A, A \cup B, A \cap B$ 也是原始递归集合
        2. 如果 $f_1, f_2$ 都是原始递归函数，且 $P$ 是原始递归谓词，则函数

            $$
            f(x) = \left\{\begin{aligned}
            & f_1(x), & P(x) \\
            & f_2(x), & \neg P(x)
            \end{aligned}\right.
            $$

            也是原始递归的

        3. 假设 $P_1, P_2, \cdots, P_n$ 是一元谓词且都是原始递归的，且对任意 $x$ 有且只有一个 $P_i$ 使得 $P_i(x)$ 成立．灵 $g_1(x), g_2(x), \cdots, g_n(x)$ 都是原始递归函数，定义函数

            $$
            f(x) = \left\{\begin{aligned}
            & g_1(x), & P_1(x) \\
            & g_2(x), & P_2(x) \\
            & \cdots \\
            & g_n(x), & P_n(x)
            \end{aligned}\right.
            $$

    2. 除法的定义
        1. 商函数：定义

            $$
            \mathrm{quo}(x, y) = \left\{\begin{aligned}
            & q, x \neq 0 \wedge \exists r < x \ (y = xq + r) \\
            & 0, x = 0
            \end{aligned}\right.
            $$

            可知 $\mathrm{quo}(x, y)$ 是原始递归函数

        2. 余数函数：定义

            $$
            \mathrm{rem}(x, y) = \left\{\begin{aligned}
            & r, x \neq 0, \exists q \leqslant y \ (y = xq + r) \wedge r < x \\
            & 0, x = 0
            \end{aligned}\right.
            $$

            可知 $\mathrm{rem}(x, y)$ 是原始递归函数

    3. $\text{Ackman}$ 函数
        1. 三元函数 $\Phi(n, x, y)$ 递归定义：

            $$
            \begin{aligned}
            \Phi(0, 0, y) & = y, \\
            \Phi(0, x + 1, y) & = \Phi(0, x, y) + 1 \\
            \Phi(1, 0, y) & = 0 \\
            \Phi(n + 2, 0, y) & = 1 \\
            \Phi(n + 1, x + 1, y) & = \Phi(n, \Phi(n + 1, x, y), y)
            \end{aligned}
            $$

        2. 二元函数版本 $A(x, y)$ 递归定义：

            $$
            \begin{aligned}
            A(0, y) & = y + 1 \\
            A(x + 1, 0) & = A(x, 1) \\
            A(x + 1, y + 1) & = A(x, A(x + 1, y))
            \end{aligned}
            $$

        3. $\text{Ackman}$ 函数不是原始递归的：对任意原始递归函数 $f(x_1, x_2, \cdots, x_n)$ 都存在自然数 $r$ 使得 $f(x_1, x_2, \cdots, x_n) < A(r, x)$，其中 $x = \max(x_1, x_2, \cdots, x_n)$

3. 有界极小算子与正则 $\mu-$算子
    1. 有界极小算子：令 $P(\vec x, z)$ 为一个 $(k + 1)-$元的性质，定义

        $$
        \mu z \leqslant y \ P(\vec x, z) = \left\{\begin{aligned}
        & \textsf{最小的满足 }P(\vec x, z) \textsf{ 且小于等于 } y \textsf{ 的 } z, & \textsf{如果它存在} \\
        & y + 1, & \textsf{否则}
        \end{aligned}\right.
        $$

        其中 $\mu$ 读作「最小的」

        1. 如果 $f(\vec x, y)$ 是原始递归的，则有界和 ${\displaystyle \sum_{y \leqslant z} f(\vec x, y)}$ 与有界积 ${\displaystyle \prod_{y \leqslant z} f(\vec x, y)}$ 都是原始递归的
        2. 如果 $P(\vec x, z)$ 是一个原始递归谓词
            - 谓词 $\exists z \leqslant y \ P(\vec x, z)$ 与 $\forall z \leqslant y \ P(\vec x, z)$ 都是原始递归的
            - 定义函数 $f(\vec x, y) = \mu z \leqslant y \ P(\vec x, z)$，则 $f(\vec x, y)$ 也是原始递归的

    2. 正则 $\mu-$算子：令 $f: \mathbf N^{n+1} \to \mathbf N$ 唯一个全函数，如果 $n$ 元函数 $g(x_1, x_2, \cdots, x_n)$ 满足正则性条件：$\forall x_1 \forall x_2 \cdots \forall x_n$，且 $g(x_1, x_2, \cdots, x_n)$ 是使得 $f(x_1, x_2, \cdots, x_n, y) = 0$ 的最小的 $y$，则称 $g$ 是从 $f$ 通过正则极小化得到的，记作 $g(x_1, x_2, \cdots, x_n) = \mu y[f(x_1, x_2, \cdots, x_n, y) = 0]$

4. $\text{G}\ddot{\mathrm o}\text{del}$ 编码：对于有穷序列 $\left<a_0, a_1, \cdots, a_n\right>$，定义 $\text{G}\ddot{\mathrm o}\text{del}$ 数 $\mathrm{enc}(a_0, a_1, \cdots, a_n) = p_0^{a_0+1} p_1^{a_1+1} \cdots p_n^{a_n+1}$，其中 $p(n) = p_n$ 表示第 $n$ 个质数，空序列的 $\text{G}\ddot{\mathrm o}\text{del}$ 数为 $1$
    1. 长度函数：定义 $\mathrm{lh}: \mathbf N \to \mathbf N$ 为 $\mathrm{lh}(a) = \mu k \leqslant a \ (p_k \nmid a)$
        1. $\mathrm{lh}(1) = 0$
        2. 对任意的 $\text{G}\ddot{\mathrm o}\text{del}$ 数 $a = \mathrm{enc}(a_0, a_1, \cdots, a_n)$，都有 $\mathrm{lh}(a) = n + 1$
    2. 分量函数：定义 $(a)_i = \mu k \leqslant a \ [p_i^{k+2} \nmid a]$，对任意的 $\text{G}\ddot{\mathrm o}\text{del}$ 数 $a = \mathrm{enc}(a_0, a_1, \cdots, a_n)$，都有 $(a)_i = a_i$
    3. 串接函数：对 $a, b \in \mathbf N$ 定义 $a \widehat{\ \ \ } b = a \cdot {\displaystyle \prod_{i < \mathrm{lh}(b)} p_{\mathrm{lh}(a) + i}^{(b)_i + 1}}$
    4. 以下函数和谓词是原始递归的
        1. 全体有穷序列的 $\text{G}\ddot{\mathrm o}\text{del}$ 数构成的集合
        2. 谓词「$x$ 整除 $y$」「$x$ 是质数」「$x$ 是合数」
        3. 函数 $p(n), \mathrm{lh}(a), (a)_i, a \widehat{\ \ \ } b$，其中 $\mathrm{enc}(a_0, a_1, \cdots, a_n) \widehat{\ \ \ } \mathrm{enc}(b_0, b_1, \cdots, b_m) = \mathrm{enc}(a_0, a_1, \cdots, a_n, b_0, b_1, \cdots, b_m)$

5. 递归函数：全体递归函数的集合为最小的包含所有初始函数且对复合、原始递归与正则极小化封闭的函数集合
    1. 谓词 $R$ 是递归的当且仅当其特征函数是递归函数，如果 $R$ 是一元谓词，则称 $R$ 是递归集
    2. 假定 $A, B \subseteq \mathbf N^k$ 都是递归的
        1. $\mathbf N^k - A, A \cap B, A \cup B$ 都是递归的
        2. 递归谓词对有界量词封闭
6. 部分递归函数：全体部分递归函数集合 $\mathcal P$ 定义为
    1. 初始函数都属于 $\mathcal P$
    2. $\mathcal P$ 对复合运算与原始递归运算封闭
    3. 取极小：假设 $g \in \mathcal P$ 是 $n + 1$ 元递归函数，则 $n$ 元函数 $f(x_1, x_2, \cdots, x_n) = \mu y[g(x_1, x_2, \cdots, x_n, y) = 0]$ 也属于 $\mathcal P$

    由定义可知部分递归函数不一定是全函数

    1. 部分递归函数是对原始递归函数的真扩张：$\text{Ackman}$ 函数是部分递归全函数
    2. 全体部分递归全函数的类恰好是递归函数的类
        1. $\text{Kleene}$ 正规型定理：存在原始递归函数 $U: \mathbf N \to N$ 和原始递归谓词 $T(e, x, z)$ 使得对任意部分递归函数 $f: \mathbf N \to \mathbf N$ 都存在一个自然数 $e$ 满足 $f(x) = U(\mu z \ T(e, x, z))$
        2. 通用函数定理：存在一个通用的部分递归函数，即存在一个二元的部分递归函数 $\Phi: \mathbf N^2 \to \mathbf N$ 满足对任何一元递归函数 $f: N \to N$ 都存在一个自然数 $e$，使得对所有 $x$ 都有 $f(x) = T(e, x)$．对于递归函数，这样的通用函数不存在
    3. 部分递归函数实质地扩张了递归函数类：存在一个部分递归函数 $f(x)$，使得对任何递归函数 $g(x)$，都存在自然数 $n \in \mathrm{dom}(f)$ 使得 $f(n) \neq g(n)$

### 1.1.3 等价性
1. 一个函数是 $\text{Turing}$ 可计算的当且仅当它是部分递归的
    1. 任何部分递归函数都是 $\text{Turing}$ 可计算的
        1. 每个初始函数都是 $\text{Turing}$ 可计算的
        2. 任何一台标准的 $\text{Turing}$ 机 $M_1$ 都可以被一台纸带是单向无穷的 $\text{Turing}$ 机 $M_2$ 所模拟
        3. $\text{Turing}$ 可计算函数对复合运算、原始递归与极小算子封闭
    2. 任何 $\text{Turing}$ 可计算函数都是部分递归的
2. $\text{Church}-\text{Turing}$ 论题：直观可计算函数类就是部分递归函数构成的类，也就是 $\text{Turing}$ 可计算函数类

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
