# 1 可计算理论

## 1.1 可计算模型
### 1.1.1 Turing 机
1. 递归论 $\text{Turing}$ 机模型：设双向无限带 $\text{Turing}$ 机为 $M = (Q, \Sigma, \Gamma, \delta, B, q_s, q_t, q_r)$．其中字母表 $\Sigma = \{0, 1\}$，$q_h = \{q_t, q_r\}$，表示停机状态．从而一台 $\text{Turing}$ 完全由其指令集 $\delta$ 决定而与其物理装置无关
    1. $\text{Turing}$ 机的输入是 $n$ 个自然数，自然数 $m$ 用带上 $m + 1$ 个连续的 $1$ 表示，如果输入为 $n$ 元组 $m_1, m_2, \cdots, m_n$，则用空格 $0$ 隔开数字
    2. $\text{Turing}$ 机的输出是停机时纸带上所有 $1$ 的总数，$1$ 不一定是连续的
2. $\text{Turing}$ 机计算函数：设 $f$ 为 $\mathbf N^n \to \mathbf N$ 的（部分）函数，$M$ 为 $\text{Turing}$ 机．则称 $\text{Turing}$ 机 $M$ 计算函数 $f$ 当且仅当对任意 $n$ 元组 $(x_1, x_2, \cdots, x_n)$．如果 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机且输出为 $f(x_1, x_2, \cdots, x_n)$；如果 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时不会停机
    1. 用 $f(x_1, x_2, \cdots, x_n) \downarrow$ 表示 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$，此时称 $f$ 在 $(x_1, x_2, \cdots, x_n)$ 处收敛；用 $f(x_1, x_2, \cdots, x_n) \uparrow$ 表示 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，此时称 $f$ 在 $(x_1, x_2, \cdots, x_n)$ 处发散
    2. 用 $M(x_1, x_2, \cdots, x_n)\downarrow$ 表示 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机
    3. 如果一个自然数上的函数存在一个计算它的 $\text{Turing}$ 机，则称之为 $\text{Turing}$ 可计算的；如果一个自然数上的关系集合特征函数是 $\text{Turing}$ 可计算的，则称之为 $\text{Turing}$ 可判定的
3. 标准化：对任意 $\text{Turing}$ 机 $M$，都存在 $\text{Turing}$ 机 $M'$ 将其输出标准化，即
    1. 对任意函数 $f$，$f$ 是 $M'$ 可计算的，当且仅当 $f$ 是 $M$ 可计算的且对于任意输入 $\overline x$，$M$ 与 $M'$ 给出相同的输出
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

        3. 假设 $P_1, P_2, \cdots, P_n$ 是一元谓词且都是原始递归的，且对任意 $x$ 有且只有一个 $P_i$ 使得 $P_i(x)$ 成立．则 $g_1(x), g_2(x), \cdots, g_n(x)$ 都是原始递归函数，定义函数

            $$
            f(x) = \left\{\begin{aligned}
            & g_1(x), & P_1(x) \\
            & g_2(x), & P_2(x) \\
            & \cdots \\
            & g_n(x), & P_n(x)
            \end{aligned}\right.
            $$

    2. 如果函数 $f$ 为从 $g$ 和 $h$ 经强递归得到的且 $g$ 和 $h$ 都是原始递归的，则 $f$ 也是原始递归的
        1. 历史函数：对任何一个全函数 $f: \mathbf{N}^{k+1} \rightarrow \mathbf{N}$，令 $F(\overline{x}, n)=p_0^{f(\overline{x}, 0)+1} p_1^{f(\overline{x}, 1)+1} \cdots p_n^{f(\overline{x}, n)+1}$，则称 $F$ 为 $f$ 的历史函数，其中 $p_n$ 表示第 $n$ 个质数
        2. 强递归：设 $f, g, h$ 是三个函数，若

            $$
            \begin{aligned}
            f(\overline{x}, 0) & =g(\overline{x}) \\
            f(\overline{x}, y+1) & =h(\overline{x}, y, F(\overline{x}, y))
            \end{aligned}
            $$

            称函数 $f$ 为从 $g$ 和 $h$ 经强递归得到的

    3. 除法的定义
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

    4. $\text{Ackermann}$ 函数
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

            此时 $\text{Ackermann}$ 函数的解析式为 $A(x, y) = 2 \uparrow^{x-2} (y + 3) - 3$

        3. $\text{Ackermann}$ 函数不是原始递归的：对任意原始递归函数 $f(x_1, x_2, \cdots, x_n)$ 都存在自然数 $r$ 使得 $f(x_1, x_2, \cdots, x_n) < A(r, x)$，其中 $x = \max(x_1, x_2, \cdots, x_n)$

3. 有界极小算子与正则 $\mu-$算子
    1. 有界极小算子：令 $P(\overline x, z)$ 为一个 $(k + 1)$ 元的性质，定义

        $$
        \mu z \leqslant y \ P(\overline x, z) = \left\{\begin{aligned}
        & \textsf{最小的满足 }P(\overline x, z) \textsf{ 且小于等于 } y \textsf{ 的 } z, & \textsf{如果它存在} \\
        & y + 1, & \textsf{否则}
        \end{aligned}\right.
        $$

        其中 $\mu$ 读作「最小的」

        1. 如果 $f(\overline x, y)$ 是原始递归的，则有界和 ${\displaystyle \sum_{y \leqslant z} f(\overline x, y)}$ 与有界积 ${\displaystyle \prod_{y \leqslant z} f(\overline x, y)}$ 都是原始递归的
        2. 如果 $P(\overline x, z)$ 是一个原始递归谓词
            - 谓词 $\exists z \leqslant y \ P(\overline x, z)$ 与 $\forall z \leqslant y \ P(\overline x, z)$ 都是原始递归的
            - 定义函数 $f(\overline x, y) = \mu z \leqslant y \ P(\overline x, z)$，则 $f(\overline x, y)$ 也是原始递归的

    2. 正则 $\mu-$算子：令 $f: \mathbf N^{n+1} \to \mathbf N$ 为一个全函数，如果 $n$ 元函数 $g(x_1, x_2, \cdots, x_n)$ 满足正则性条件：

        $$
        \forall x_1 \forall x_2 \cdots \forall x_n \exists y \ f(x_1, x_2, \cdots, x_n, y) = 0
        $$

        且 $g(x_1, x_2, \cdots, x_n)$ 是使得 $f(x_1, x_2, \cdots, x_n, y) = 0$ 的最小的 $y$，则称 $g$ 是从 $f$ 通过正则极小化得到的，记作 $g(x_1, x_2, \cdots, x_n) = \mu y[f(x_1, x_2, \cdots, x_n, y) = 0]$

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
        1. 如果集合 $A$ 与其补集 $\mathbf N - A$ 都是递归可枚举的，则集合 $A$ 与 $\mathbf N - A$ 都是递归的
        2. 能被一个完全 $\text{Turing}$ 机（即对所有输入都能停机的 $\text{Turing}$ 机）接受的语言
    2. 假定 $A, B \subseteq \mathbf N^k$ 都是递归的
        1. $\mathbf N^k - A, A \cap B, A \cup B$ 都是递归的
        2. 递归谓词对有界量词封闭
6. 部分递归函数：全体部分递归函数集合 $\mathcal P$ 定义为
    1. 初始函数都属于 $\mathcal P$
    2. $\mathcal P$ 对复合运算与原始递归运算封闭
    3. 取极小：假设 $g \in \mathcal P$ 是 $n + 1$ 元递归函数，则 $n$ 元函数 $f(x_1, x_2, \cdots, x_n) = \mu y[g(x_1, x_2, \cdots, x_n, y) = 0]$ 也属于 $\mathcal P$

    由于 $\mu$ 算子是一种无界搜索，因此部分递归函数不一定是全函数

    4. 部分递归函数是对原始递归函数的真扩张：$\text{Ackermann}$ 函数是部分递归全函数
    5. 全体部分递归全函数的类恰好是递归函数的类
        1. $\text{Kleene}$ 正规型定理：存在原始递归函数 $U: \mathbf N \to \mathbf N$ 和原始递归谓词 $T(e, x, z)$ 使得对任意部分递归函数 $f: \mathbf N \to \mathbf N$ 都存在一个自然数 $e$ 满足 $f(x) = U(\mu z \ T(e, x, z))$
        2. 通用函数定理：存在一个通用的部分递归函数，即存在一个二元的部分递归函数 $\Phi: \mathbf N^2 \to \mathbf N$ 满足对任何一元递归函数 $f: N \to N$ 都存在一个自然数 $e$，使得对所有 $x$ 都有 $f(x) = T(e, x)$．对于递归函数，这样的通用函数不存在
    6. 部分递归函数实质地扩张了递归函数类：存在一个部分递归函数 $f(x)$，使得对任何递归函数 $g(x)$，都存在自然数 $n \in \mathrm{dom}(f)$ 使得 $f(n) \neq g(n)$

### 1.1.3 等价性
1. 一个函数是 $\text{Turing}$ 可计算的当且仅当它是部分递归的
    1. 任何部分递归函数都是 $\text{Turing}$ 可计算的
        1. 每个初始函数都是 $\text{Turing}$ 可计算的
        2. 任何一台标准的 $\text{Turing}$ 机 $M_1$ 都可以被一台纸带是单向无穷的 $\text{Turing}$ 机 $M_2$ 所模拟
        3. $\text{Turing}$ 可计算函数对复合运算、原始递归与极小算子封闭
    2. 任何 $\text{Turing}$ 可计算函数都是部分递归的
        1. $\text{Turing}$ 机的编码和解码是能行的：用 $M_e$ 表示 $\text{G}\ddot{\mathrm o}\text{del}$ 数为 $e$ 的 $\text{Turing}$ 机，称 $e$ 为 $\text{Turing}$ 机或 $\text{Turing}$ 可计算函数的指标

            !!! note "$\text{Turing}$ 机与递归函数" 
                - 用 $\Phi_e^{(n)}$ 表示由 $M_e$ 计算的 $n$ 元部分函数，将 $\Phi_e^{(1)}$ 简写为 $\Phi_e$．用 $M_{e_1} = M_{e_2}$ 表示 $M_{e_1}$ 与 $M_{e_2}$ 计算的是同一个部分函数
                - 用 $\Phi_{e, s}(x) \downarrow = y$ 表示存在 $y$，$M_e$ 对于输入 $x$ 在 $s$ 步之内停机，且输入为 $y$（$x, y, e < s$）；如果不存在这样的 $y$，则记为 $\Phi_{e, s}(x) \uparrow$
                - 若 $W_e$ 是部分递归函数 $\Phi_e$ 的定义域，则用 $W_e$ 表示 $\Phi_e$ 所确定的递归可枚举集；令 $W_{e, s} = \mathrm{dom}(\Phi_{e, s})$，$W_{e, s}$ 是有穷的且 $W_e = {\displaystyle \bigcup_{s \in \mathbf N} W_{e, s}}$

        1. 关于 $\text{Turing}$ 机的谓词是原始递归的：「$e$ 是一个 $\text{Turing}$ 机程序的编码」「$\text{Turing}$ 机 $e$ 中包含四元组 $s$」「状态 $q$ 是 $\text{Turing}$ 机 $e$ 的停机状态」与「$c$ 是一个格局的编码」
        2. 定义 $\text{Kleene}$ 谓词 $T(e, x, z)$ 为 $z$ 是程序 $e$ 对输入 $x$ 的计算过程的编码，则 $T$ 是原始递归的

2. $\text{Church}-\text{Turing}$ 论题：直观可计算函数类就是部分递归函数构成的类，也就是 $\text{Turing}$ 可计算函数类

## 1.2 递归定理
1. 参数定理（$\text{Kleene} \ s-m-n$ 定理的一般形式）：令 $m, n \in \mathbf N^+$，则存在原始递归的单射 $s_n^m: \mathbf N^{m+1} \to \mathbf N$，使得对任意 $x \in \mathbf N, \overline y \in \mathbf N^m$ 都有 $\Phi_{s_n^m(x, \overline y)}^{(n)} (\overline z) = \Phi_x^{(m+n)} (\overline y, \overline z)$
    1. $s-m-n$ 定理：令 $\Phi: \mathbf N^2 \to \mathbf N$ 为一个二元部分递归函数，则存在一个原始递归函数 $g: \mathbf N \to N$ 使得对所有的 $e, x$ 有 $\Phi_{g(e)}(x) = \Phi(e, x)$
    2. 填充引理：每一部分递归函数 $\Phi_e$ 都有无穷多个指标，即 $I = \{i \mid \Phi_i = \Phi_e\}$ 是无穷的，且可以能行地找出一个无穷子集 $A_e \subseteq I$
2. 递归定理：令 $f$ 为一个递归函数，则存在一个自然数 $n$ 使得 $\Phi_{f(n)} = \Phi_n$
    1. 假定 $f$ 是一个递归函数，则存在任意大的自然数 $n$ 使得 $\Phi_{f(n)} = \Phi_n$
    2. 带参数的递归定理：如果 $f(x, y)$ 是一个递归函数，则存在一个单射递归函数 $n(y)$ 使得 $\Phi_{n(y)} = \Phi_{f(n(y), y)}$

## 1.3 不可判定性
1. 递归可枚举集（$\mathrm{r.e}$）
    1. 定义
        1. 如果集合 $A$ 为空集或是某个递归全函数 $f: \mathbf N \to \mathbf N$ 的值域，则称 $A$ 为递归可枚举的
        2. 能被一个 $\text{Turing}$ 机接受的语言
    2. 令 $A \subseteq \mathbf N$，则 $A$ 是递归可枚举的当且仅当以下各命题成立
        1. $A = \varnothing$ 或 $A$ 是某个原始递归函数的值域
        2. $A$ 是某个部分递归函数的值域
        3. $A$ 的部分特征函数是部分递归的，其中定义 $A$ 的部分特征函数 $\chi_{A_p}(x) = \left\{\begin{aligned} & 1, & x \in A \\ & \textsf{无定义}, & x \notin A \end{aligned}\right.$
        4. $A$ 是某个部分递归函数的定义域
        5. 存在一个二元递归谓词 $R(x, y)$ 使得 $A$ 具有形式 $A = \{x \mid \exists y \ R(x, y)\}$
    3. 假定 $A, B \subseteq \mathbf N^k$ 都是递归可枚举的
        1. $A \cup B, A \cap B$ 都是递归可枚举的
        2. 集合 $C = \{\overline x \in \mathbf N^{k-1} \mid \exists y \ ((\overline x, y) \in A)\}$ 也是递归可枚举的，即递归可枚举关系对存在量词封闭
2. $\Sigma_1-$集：如果集合 $A$ 是一个递归关系的投影，则称 $A$ 是 $\Sigma_1-$形式的
    1. 一个集合 $A$ 是递归可枚举集当且仅当 $A$ 是 $\Sigma_1-$集
        1. 如果 $R \subseteq \mathbf N^{n+1}$ 是 $n + 1$ 元递归关系，且 $A = \{x \mid \exists y_1 \exists y_2 \cdots \exists y_n \ R(x, y_1, y_2, \cdots, y_n)\}$，则 $A$ 是 $\Sigma_1$ 的
        2. 单值化：如果 $R \subseteq \mathbf N^2$ 是递归可枚举的关系，则存在一个部分递归函数 $\Phi$ 满足 $\Phi(x) \downarrow \wedge R(x,\Phi(x))$，当且仅当 $\exists y \ R(x, y)$
        3. 部分函数 $\psi$ 是部分递归的当且仅当其图像 $G = \{(x, y) \mid y = \psi(x)\}$ 是递归可枚举的
        4. 递归可枚举集能行地、一致地对交和并封闭，即存在递归函数 $f, g$ 使得 $W_{f(x, y)} = W_x \cap W_y$，且 $W_{g(x, y)} = W_x \cup W_y$
    2. 如果集合 $A$ 及其补集 $\mathbf N - A$ 都是 $\Sigma_1$ 的，则 $A$ 是 $\Delta_1$ 的，此时 $A$ 为递归集
3. 可判定性：如果一个问题的集合是递归的，则称该问题是可判定的或可解的，否则称其为不可判定的或不可解的
    1. 停机问题：任意给定的 $\text{Turing}$ 机在任意给定的输入串上是否停机（接受或拒绝）的问题是不可判定的
        1. 集合 $K = \{e \mid \Phi_e(e)$ 有定义$\}$ 是递归可枚举的，但不是递归的
        2. 集合 $K_0 = \{\mathrm{enc}(x, y) \mid \Phi_x(y) \downarrow\}$ 不是递归的
    2. 递归集类是递归可枚举集类的真子类，递归可枚举集不对补集运算封闭
4. 归约
    1. 多一归约与一一归约：设 $A, B$ 为两个集合
        1. 如果存在一个递归全函数 $g: \mathbf N \to \mathbf N$ 满足对任意 $x$ 都有 $x \in A$ 当且仅当 $g(x) \in B$，则称集合 $A$ 可以多一归约或 $m-$归约到集合 $B$，记作 $A \leqslant_m B$
        2. 如果 $A \leqslant_m B$ 且 $g$ 为单射，则称集合 $A$ 可以一一归约或 $1-$归约到集合 $B$，记作 $A \leqslant_1 B$
    2. 递归集与递归可枚举集的归约：设 $A \leqslant_m B$
        1. 若 $B$ 是递归可枚举集，则 $A$ 也是递归可枚举集
        2. 若 $B$ 是递归集，则 $A$ 也是递归集
    3. 指标集：令 $A \subseteq \mathbf N$，如果对任意 $x, y$ 有 $(x \in A \wedge \Phi_x = \Phi_y) \rightarrow y \in A$，则称 $A$ 是指标集
        1. $\text{Rice}$ 定理：如果 $A$ 是非平凡的指标集，即 $A \neq \varnothing, \mathbf N$，则或者 $K \leqslant_1 A$，或者 $K \leqslant_1 \mathbf N - A$．因此一个指标集是递归的当且仅当其是平凡的
        2. $\text{Rice} - \text{Shapiro}$ 定理：令 $\mathcal A$ 是 $\mathbf N$ 到 $\mathbf N$ 的部分递归函数的集合且有 $A = \{e \mid \phi_e \in \mathcal A\}$ 是递归可枚举的，则部分递归函数 $\psi: \mathbf N \to \mathbf N \in \mathcal A$ 当且仅当存在 $\psi$ 的有穷限制属于 $\mathcal A$
5. $\text{Hilbert}$ 第十问题：对任意 $\text{Diophantus}$ 方程，即只有有穷个未知数的整系数方程 $P(x_1, x_2, \cdots, x_n) = 0$，是否有整数解是不可判定的
