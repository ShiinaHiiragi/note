# 3 不可解度论

## 3.1 不可判定性
1. 递归可枚举集（$\mathrm{r.e}$）
    1. 定义
        1. 如果集合 $A$ 为空集或是某个递归函数 $f: \mathbf N \to \mathbf N$ 的值域，则称 $A$ 为递归可枚举的
        2. 能被一个 $\text{Turing}$ 机接受的语言
    2. 令 $A \subseteq \mathbf N$，则 $A$ 是递归可枚举的当且仅当以下各命题成立
        1. $A = \varnothing$ 或 $A$ 是某个原始递归函数的值域
        2. $A$ 是某个部分递归函数的值域
        3. $A$ 的部分特征函数是部分递归的，其中定义 $A$ 的部分特征函数 $\chi_{A_p}(x) = \left\{\begin{aligned} & 1, & x \in A \\ & \textsf{无定义}, & x \notin A \end{aligned}\right.$
        4. $A$ 是某个部分递归函数的定义域，此时可用 $W_{e}$ 表示 $\Phi_{e}$ 所确定的递归可枚举集
        5. 存在一个二元递归谓词 $R(x, y)$ 使得 $A$ 具有形式 $A = \{x \mid \exists y \ R(x, y)\}$
    3. 假定 $A, B \subseteq \mathbf N^k$ 都是递归可枚举的
        1. $A \cup B, A \cap B$ 都是递归可枚举的
        2. 集合 $C = \{\overline x \in \mathbf N^{k-1} \mid \exists y \ ((\overline x, y) \in A)\}$ 也是递归可枚举的，即递归可枚举关系对存在量词封闭
2. 可判定性：如果一个问题的集合是递归的，则称该问题是可判定的或可解的，否则称其为不可判定的或不可解的
    1. 停机问题：任意给定的 $\text{Turing}$ 机在任意给定的输入串上是否停机（接受或拒绝）的问题是不可判定的
        1. 集合 $K = \{e \mid \Phi_e(e)$ 有定义$\}$ 是递归可枚举的，但不是递归的
        2. 集合 $K_0 = \{\mathrm{enc}(x, y) \mid \Phi_x(y) \downarrow\}$ 不是递归的
    2. 递归集类是递归可枚举集类的真子类，递归可枚举集不对补集运算封闭

## 3.2 不可解度
### 3.2.1 多一度
1. 多一归约与一一归约：设 $A, B$ 为两个集合，如果存在一个递归全函数 $g: \mathbf N \to \mathbf N$ 满足对任意 $x$ 都有 $x \in A$ 当且仅当 $g(x) \in B$，则称集合 $A$ 可以多一归约或 $m-$归约到集合 $B$，记作 $A \leqslant_m B$；如果 $A \leqslant_m B$ 且 $g$ 为单射，则称集合 $A$ 可以一一归约或 $1-$归约到集合 $B$，记作 $A \leqslant_1 B$
    1. 递归集与递归可枚举集的归约：设 $A \leqslant_m B$
        1. 若 $B$ 是递归可枚举集，则 $A$ 也是递归可枚举集
        2. 若 $B$ 是递归集，则 $A$ 也是递归集
    2. 指标集：令 $A \subseteq \mathbf N$，如果对任意 $x, y$ 有 $(x \in A \wedge \Phi_x = \Phi_y) \rightarrow y \in A$，则称 $A$ 是指标集
        1. $\text{Rice}$ 定理：如果 $A$ 是非平凡的指标集，即 $A \neq \varnothing, \mathbf N$，则或者 $K \leqslant_1 A$，或者 $K \leqslant_1 \mathbf N - A$．因此一个指标集是递归的当且仅当其是平凡的
        2. $\text{Rice} - \text{Shapiro}$ 定理：令 $\mathcal A$ 是 $\mathbf N$ 到 $\mathbf N$ 的部分递归函数的集合且有 $A = \{e \mid \phi_e \in \mathcal A\}$ 是递归可枚举的，则部分递归函数 $\psi: \mathbf N \to \mathbf N \in \mathcal A$ 当且仅当存在 $\psi$ 的有穷限制属于 $\mathcal A$
2. 多一度与一一度：称集合 $A$ 多一等价于集合 $B$ 或 $A \equiv_{m} B$ 当且仅当 $A \leqslant_{m} B$ 且 $B \leqslant_{m} A$；称 $A$ 多一等价于 $B$ 或 $A \equiv_{1} B$ 当且仅当 $A \leqslant_{1} B$ 且 $B \leqslant_{1} A$，分别称各自的等价类为多一度（或 $m-$度）和一一度（或 $1-$度）
    1. 联算子：定义 $A \oplus B=\{2 x: x \in A\} \cup\{2 x+1: x \in B\}$ 为集合 $A$ 和 $B$ 的联，若 $a$ 和 $b$ 分别是集合 $A$ 和 $B$ 的 $m-$度，则函数 $(\mathbf{a}, \mathbf{b}) \mapsto A \oplus B \textsf{ 的 } m-\textsf{度 }$ 是良定义的，称为联算子
        1. $A \leqslant_{m} A \oplus B$ 且 $B \leqslant_{m} A \oplus B$
        2. 若 $A \leqslant_{m} C$ 且 $B \leqslant_{m} C$，则 $A \oplus B \leqslant_{m} C$
        3. 若 $A \equiv_{m} C$ 且 $B \equiv_{m} D$，则 $A \oplus B \equiv_{m} C \oplus D$
        4. 若 $A$ 和 $B$ 都是递归可枚举的，则 $A \oplus B$ 也是

        $m-$度、$\leqslant_{m}$ 和联算子构成上半格

    2. 设 $A$ 是一个集合，若 $A$ 是递归可枚举的，且对任何递归可枚举集 $B$ 都有 $B \leqslant_{m} A$，则称 $A$ 为 $m-$完全的；若 $A$ 是递归可枚举的，且对任何递归可枚举集 $B$ 都有 $B \leqslant_{1} A$，则称 $A$ 为 $1-$完全的
        1. 集合 $K_{0}=\left\{\langle x, y\rangle: x \in W_{y}\right\}$ 是 $1-$完全的
        2. 集合 $K=\left\{x: x \in W_{x}\right\}$ 是 $1-$完全的
    3. 称集合 $A$ 递归同构于集合 $B$ 或 $A \cong B$ 当且仅当存在一个递归双射 $f: \mathbf{N} \rightarrow \mathbf{N}$，使得 $f[A]=B$
        1. 一个 $A$ 到 $B$ 的部分递归同构 $h$ 是一个从 $A$ 到 $B$ 的有穷函数，满足 ① $h$ 是单射；② 对任一 $x \in \operatorname{dom}(h), x \in A$ 当且仅当 $h(x) \in B$
        2. $A \cong B$ 当且仅当 $A \equiv_{1} B$
    4. 一个集合 $A$ 是 $m-$完全的，当且仅当它是 $1-$完全的

3. 单集：设 $A$ 是一个集合，若
    1. $A$ 是递归可枚举的
    2. $\overline{A}$ 是无穷的
    3. 对任一无穷的递归可枚举集 $B$ 有 $B \cap A \neq \varnothing$

    则称 $A$ 为单集

    1. 产生集与创造集：称集合 $A$ 为产生集当且仅当存在一个递归函数 $p$ 使得若 $W_{x} \subseteq A$，则 $p(x) \in A - W_{x}$，此时称函数 $p$ 为集合 $A$ 的一个产生函数；称集合 $A$ 为创造集当且仅当是递归可枚举的，且其补集 $\overline{A}$ 是一个产生集
        1. 如果 $P$ 是一个产生集，则 $\overline{K} \leqslant_{1} P$
            1. 如果 $P$ 是一个产生集，则 $P$ 不是递归可枚举的，且 $P$ 有一个无穷的递归可枚举子集
            2. 如果 $P$ 是一个产生集且 $P \leqslant_{m} A$，则 $A$ 也是一个产生集
            3. 每一个产生集 $P$ 都有一个一一的产生函数
        2. 如果 $A$ 是一个创造集，则 $A$ 是 $1-$完全的
    2. 如果 $A$ 是一个单集，则 $A$ 既不是递归的，也不是 $m-$完全的
    3. 单集存在

### 3.2.2 Turing 度
1. 相对可计算性：全体相对于 $A$ 的部分递归函数（或 $A-$部分递归函数）的集合为最小的包含所有初始函数和 $A$ 的特征函数 $\chi_{A}$，并且对复合、原始递归和极小化封闭的函数集合；一个 $A-$部分递归的全函数称为 $A-$递归函数
    1. 相对化通用函数定理：存在自然数 $z$，满足对所有 $A \subseteq \mathbf{N}$，对所有 $x, y \in \mathbf{N}$ 有 $\Phi_{z}^{A}(x, y)=\Phi_{x}^{A}(y)$
    2. 相对化 $s-m-n$ 定理：对任意 $m, n \geqslant 1$，存在 $m+1$元的递归单射 $s_{n}^{m}$ 使得对任意集合 $A \subseteq \mathbf{N}$ 和任意自然数 $x, \overline{y}$，都有 $\Phi_{s_{n}^{m}(x, \overline{y})}^{A}(\overline{z})=\Phi_{x}^{A}(\overline{y}, \overline{z})$
    3. 相对化递归定理：对所有集合 $A \subseteq \mathbf{N}$ 与 $x, y \in \mathbf{N}$，如果 $f(x, y)$ 是 $A-$递归的，则存在递归函数 $n(y)$ 使得 $\Phi_{n(y)}^{A}=\Phi_{f(n(y), y)}^{A}$

    !!! note "相对可计算性的 $\text{Turing}$ 机版本"
        称部分函数 $\psi$ 为相对于 $A$ $\text{Turing}$ 可计算的（或 $A-\text{Turing}$可计算的）当且仅当存在一台带信息源的 $\text{Turing}$ 机 $M$，使得若 $M$ 的信息源纸带上存放 $\chi_{A}$，则对所有自然数 $x$ 和 $y$ 有 $\psi(x)=y$，当且仅当 $M$ 对输入 $x$ 停机并输出 $y$

        1. 一个部分函数 $\psi$ 是 $A-$部分递归的，当且仅当 $\psi$ 是 $A-\text{Turing}$可计算的
        2. 若带信息源的 $\text{Turing}$ 机在计算 $\Phi_{e}^{A}(x)$ 时询问了自然数 $n$ 是否属于信息源 $A$，则称该计算过程使用了 $n$，将使用函数 $u(A ; e, x, s)$ 和 $u(A ; e, x)$ 定义为

            $$
            \begin{aligned}
            u(A ; e, x, s) &= \left\{\begin{aligned}
            & 1+v, & \textsf{若 } \Phi_{e, s}^{A}(x) \downarrow \textsf{ 且 } v \textsf{ 是计算过程中使用了的最大的自然数} \\
            & 0, & \textsf{否则}
            \end{aligned}\right. \\
            u(A ; e, x) &= \left\{\begin{aligned}
            & u(A ; e, x, s), & \textsf{ 如果存在 } s \textsf{ 使得 } \Phi_{e, s}^{A}(x) \downarrow \\
            & \uparrow, & \textsf{ 否则 }
            \end{aligned}\right.
            \end{aligned}
            $$

2. 使用函数：对有穷序列 $\sigma \in 2^{<\omega}$，规定 $\Phi_{e, s}^{\sigma}(x)=y$ 当且仅当对某个集合 $A \supseteq \sigma$，使得 $\Phi_{e, s}^{A}(x)=y$，且在计算过程中仅使用了小于 $\sigma$ 长度的自然数 $z$．这里将集合 $A$ 等同于其特征函数，同时规定 $\Phi_{e}^{\sigma}(x)=y$ 当且仅当 $(\exists s)\left[\Phi_{e, s}^{\sigma}(x)=y\right]$
    1. 对任意 $e, \sigma, x, s$
        1. 集合 $\left\{\langle e, \sigma, x, s\rangle: \Phi_{e, s}^{\sigma}(x) \downarrow\right\}$ 是递归的
        2. 集合 $\left\{\langle e, \sigma, x\rangle: \Phi_{e}^{\sigma}(x) \downarrow\right\}$ 是递归可枚举的
    2. 使用原理
        1. 如果 $\Phi_{e}^{A}(x)=y$，则 $(\exists s)(\exists \sigma \subseteq A)\left[\Phi_{e, s}^{\sigma}(x)=y\right]$
        2. 如果 $\Phi_{e, s}^{\sigma}(x)=y$，则 $(\forall t \geqslant s)(\forall \tau \supseteq \sigma)\left[\Phi_{e, t}^{\top}(x)=y\right]$
        3. 如果 $\Phi_{e}^{\sigma}(x)=y$，则 $(\forall A \supseteq \sigma)\left[\Phi_{e}^{A}(x)=y\right]$
    3. 对任何自然数子集 $A$ 和 $B$，令 $v=u(A ; e, x, s)$，则 $\left[\Phi_{e, s}^{A}(x)=y \wedge A \upharpoonright v=B \upharpoonright v\right] \Rightarrow \Phi_{e, s}^{B}(x)=y$
3. 设 $A, B$ 为自然数的集合
    1. 称集合 $B$ 是 $A-$递归的当且仅当 $B$ 的特征函数是 $A-$递归的，即存在 $e, \chi_{B}=\Phi_{e}^{A}$．$B$ 是 $A-$递归的也称作 $B$ 递归于 $A$，或 $B$ 可以 $\text{Turing}$ 归约到 $A$，通常记作 $B \leqslant_{T} A$
    2. 称 $B$ 是 $A-$递归可枚举的（或 $B$ 递归可枚举于 $A$）当且仅当存在 $e, B=W_{e}^{A}$，其中 $W_{e}^{A}$ 表示 $\Phi_{e}^{A}$ 的定义域
    3. 称 $B$ 是 $\Sigma_{1}^{A}$ 的（或 $B$ 具有 $\Sigma_{1}^{A}$ 的形式）当且仅当 $B=\{x: \left.(\exists \overline{y}) R^{A}(x, \overline{y})\right\}$，其中 $R^{A}(x, \overline{y})$ 是一个 $A-$递归的谓词

    若 $B \leqslant_{m} A$，则 $B \leqslant_{T} A$

    1. $B \leqslant_{T} A$ 当且仅当 $B$ 和 $\overline{B}$ 都是 $A-$递归可枚举的
    2. 下列命题等价
        1. $B$ 是 $A-$递归可枚举的
        2. $B=\varnothing$ 或 $B$ 是某个 $A-$递归（全）函数的值域
        3. $B$ 是 $\Sigma_{1}^{A}$ 的

4. $\text{Turing}$ 等价与 $\text{Turing}$ 度：令 $A, B$ 为自然数的集合，称集合 $A$ 和 $B$ $\text{Turing}$ 等价或 $A \equiv_{T} B$ 当且仅当 $A \leqslant_{T} B$ 且 $B \leqslant_{T} A$；称包含集合 $A$ 的等价类为 $A$ 的 $\text{Turing}$ 度，记作 $\operatorname{deg}(A)=\left\{B: B \equiv_{T} A\right\}$
    1. 通常用 $\mathcal{D}$ 表示所有 $\text{Turing}$ 度的类，用 $\mathcal{R}$ 表示所有递归可枚举度的类，用 $\mathbf{a}, \mathbf{b}$ 等表示集合的 $\text{Turing}$ 度
    2. 若 $\text{Turing}$ 度 $\mathbf{a}$ 包含一个递归可枚举集，则称其为递归可枚举的
    3. 若 $A$ 是 $B-$递归可枚举的且 $B \leqslant_{T} C$，则 $A$ 是 $C-$递归可枚举的
5. $\text{Turing}$ 跃迁
    1. $\text{Turing}$ 归约：称 $\text{Turing}$ 度 $\mathbf{a}$ $\text{Turing}$ 归约到 $\text{Turing}$ 度 $\mathbf{b}$，或简单称为 $\mathbf{a}$ $\text{Turing}$ 小于等于 $\mathbf{b}$，记作 $\mathbf{a} \leqslant_{T} \mathbf{b}$ （或 $\mathbf{a} \leqslant \mathbf{b}$）当且仅当存在 $A \in \mathbf{a}$ 和 $B \in \mathbf{b}$，使得 $A \leqslant_{T} B$
        1. 定义 $\mathbf{a} \vee \mathbf{b}=\operatorname{deg}(A \oplus B)$，其中 $A \in \mathbf{a}$ 且 $B \in \mathbf{b}$，称 $\vee$ 为 $\mathcal{D}$ 上的联算子
        2. 整体度结构 $\left(\mathcal{D}, \leqslant_{T}, \vee\right)$ 与局部度结构 $\left(\mathcal{R}, \leqslant_{T}, \vee\right)$ 是上半格
    2. 跃迁算子：令 $A$ 为自然数的集合
        1. 称集合 $K^{A}=\left\{e: \Phi_{e}^{A}(e) \downarrow\right\}$ 为 $A$ 的跃迁，记作 $A^{\prime}$
        2. 递归地定义 $A$ 的 $n-$次跃迁 $A^{(n)}$ 如下为 $A^{(0)}=A$ 且 $A^{(n+1)}=(A^{(n)})^{\prime}$
    3. 跃迁定理
        1. $A^{\prime}$ 是 $A-$递归可枚举的
        2. $A^{\prime} \not\leqslant_{T} A$
        3. $B$ 是 $A-$递归可枚举的当且仅当 $B \leqslant_{1} A^{\prime}$
        4. $B \leqslant_{T} A$ 当且仅当 $B^{\prime} \leqslant_{1} A^{\prime}$
        5. 如果 $B \equiv_{T} A$，则 $B^{\prime} \equiv_{1} A^{\prime}$，于是有 $B^{\prime} \equiv_{T} A^{\prime}$
    4. $\text{Turing}$ 度序列：令 $\mathbf{0}^{(n)}$ 表示 $\varnothing^{(n)}$，则 $\mathbf{0}<\mathbf{0}^{\prime}<\mathbf{0}^{\prime \prime}<\cdots<\mathbf{0}^{(n)}<\cdots$ 构成一个严格递增的度序列，其最初几项的代表元为
        1. $\mathbf{0}=\{B: B$ 递归 $\}$
        2. $\mathbf{0}^{\prime}=\operatorname{deg}(K)=\operatorname{deg}\left(K_{0}\right)$
        3. $\mathbf{0}^{\prime \prime}=\operatorname{deg}(\operatorname{Fin})=\operatorname{deg}(\operatorname{Tot})$，其中 $\operatorname{Fin} = \left\{x: W_{x}\right.$ 是有穷的$\}, \operatorname{Tot} = \left\{e: \Phi_{e}\right.$ 是全函数$\}$
        4. $\mathbf{0}^{\prime \prime \prime}=\operatorname{deg}(\operatorname{Rec})$，其中 $\operatorname{Rec} = \left\{x: W_{x}\right.$ 是递归的$\}$
6. $\text{Post}$ 问题：是否存在非递归但又不完全的递归可枚举 $\text{Turing}$ 度？
    1. $\text{Kleene}-\text{Post}$ 定理：存在两个互不归约且小于等于 $\mathbf{0}^{\prime}$ 的 $\text{Turing}$ 度 $\mathbf{a}$ 和 $\mathbf{b}$
    2. $\text{Friedberg}-\text{Muchnik}$ 定理：存在两个互不归约的递归可枚举度 $\mathbf{a}$ 和 $\mathbf{b}$
    3. $\text{Sacks}$ 分裂定理：每个非递归的递归可枚举集 $A$，都有一个递归可枚举的分裂 $\left(A_{0}, A_{1}\right)$
        1. 假设 $A, A_{0}, A_{1}$ 都是自然数的子集，称 $\left(A_{0}, A_{1}\right)$ 是 $A$ 的一个递归可枚举的分裂当且仅当
            1. $A_{0}, A_{1}$ 都是递归可枚举的
            2. $A_{0}, A_{1}$ 不能互相 $\text{Turing}$ 归约，即 $A_{0} \not\leqslant_{T} A_{1}, A_{1} \not\leqslant_{T} A_{0}$
            3. $A=A_{0} \sqcup A_{1}$，即 $A=A_{0} \cup A_{1}$ 并且 $A_{0} \cap A_{1}=\varnothing$
        2. 如果 $\left(A_{0}, A_{1}\right)$ 是 $A$ 的一个分裂，则 $\operatorname{deg}(A)=\operatorname{deg}\left(A_{0}\right) \vee \operatorname{deg}\left(A_{1}\right)$ 且 $\operatorname{deg}\left(A_{i}\right)<\operatorname{deg}(A)$，其中 $i=0,1$

## 3.3 算术分层
1. $\Sigma_1-$集：如果集合 $A$ 是一个递归关系的投影，则称 $A$ 是 $\Sigma_1-$形式的，此时 $A$ 是递归可枚举集

    $\Delta_1-$集：如果集合 $A$ 及其补集 $\mathbf N - A$ 都是 $\Sigma_1$ 的，则称 $A$ 是 $\Delta_1$形式的，此时 $A$ 是递归集

    1. 如果 $R \subseteq \mathbf N^{n+1}$ 是 $n + 1$ 元递归关系，且 $A = \{x \mid \exists y_1 \exists y_2 \cdots \exists y_n \ R(x, y_1, y_2, \cdots, y_n)\}$，则 $A$ 是 $\Sigma_1$ 的
    2. 单值化：如果 $R \subseteq \mathbf N^2$ 是递归可枚举的关系，则存在一个部分递归函数 $\Phi$ 满足 $\Phi(x) \downarrow \wedge R(x,\Phi(x))$，当且仅当 $\exists y \ R(x, y)$
    3. 部分函数 $\psi$ 是部分递归的当且仅当其图像 $G = \{(x, y) \mid y = \psi(x)\}$ 是递归可枚举的
    4. 递归可枚举集能行地、一致地对交和并封闭，即存在递归函数 $f, g$ 使得 $W_{f(x, y)} = W_x \cap W_y$，且 $W_{g(x, y)} = W_x \cup W_y$

2. 一阶算术的公式分层：在 $\textbf{PA}$ 的标准模型 $\mathfrak N$ 中，设 $n \geqslant 1$
    1. 称一个公式 $\varphi$ 是 $\Sigma_{0}^{0}$ 或 $\Pi_{0}^{0}$ 的当且仅当 $\varphi$ 中的所有量词都是有界量词
    2. 称公式 $\varphi$ 是 $\Sigma_{n}^{0}$ 的当且仅当 $\varphi$ 等价于一个形如 $\exists y \psi$ 的公式，其中 $\psi$ 是 $\Pi_{n-1}^{0}$ 的
    3. 称公式 $\varphi$ 是 $\Pi_{n}^{0}$ 的当且仅当 $\varphi$ 等价于一个形如 $\forall y \psi$ 的公式，其中 $\psi$ 是 $\Sigma_{n-1}^{0}$ 的
    4. 称公式 $\varphi$ 是 $\Delta_{n}^{0}$ 的当且仅当 $\varphi$ 既等价于一个形如 $\Sigma_{n}^{0}$ 的公式，又等价于一个形如 $\Pi_{n}^{0}$ 的公式

    其中上标 $0$ 表示 $\varphi$ 是一阶算术中的公式，不引起歧义时可省略上标

    1. 称集合 $B \subseteq \mathbf{N}$ 分别是 $\Sigma_{n}$ 的、$\Pi_{n}$ 的或 $\Delta_{n}$ 的当且仅当 $B$ 具有一个 $\Sigma_{n}、\Pi_{n}$ 或 $\Delta_{n}$ 的定义，即 $B=\{n \in \mathbf{N}: \mathfrak{N} \models \varphi(n)\}$
    2. 称集合 $B$ 是算术的当且仅当存在某个自然数 $n$，使得 $B$ 是 $\Sigma_{n}$的
    3. 对固定的集合 $A \subseteq \mathbf{N}$，通过在语言中添加新的一元谓词符号 $\dot{A}$，可以类似定义 $\Sigma_{n}^{A}、\Pi_{n}^{A}$ 和 $\Delta_{n}^{A}$ 的公式和集合

3. 分层定理：对任一 $n>0$，$\left\{\Delta_{n}\right.$ 集合$\} \subsetneq\left\{\Sigma_{n}\right.$ 集合$\}$ 且 $\left\{\Delta_{n}\right.$ 集合$\} \subsetneq\left\{\Pi_{n}\right.$ 集合$\}$
    1. 令 $A$ 和 $B$ 为自然数的子集
        1. $A$ 是 $\Sigma_{n}$ 的，当且仅当它的补集 $\overline{A}$ 是 $\Pi_{n}$ 的
        2. 如果 $A$ 是 $\Sigma_{n}$ 的或是 $\Pi_{n}$ 的，则对所有的 $m>n$，$A$ 都既是 $\Sigma_{m}$的，也是 $\Pi_{m}$ 的
        3. 如果 $A$ 和 $B$ 都是 $\Sigma_{n}$ 的（或都是 $\Pi_{n}$ 的），则 $A \cup B$ 和 $A \cap B$ 都是 $\Sigma_{n}$ 的（或都是 $\Pi_{n}$ 的）
        4. 如果 $R$ 是一个 $\Sigma_{n}$ 的关系且 $n>0$，则集合 $A=\{x:(\exists y) R(x, y)\}$ 是 $\Sigma_{n}$ 的
        5. 如果 $B \leqslant_{m} A$，$A$ 是 $\Sigma_{n}$ 的且 $n>0$，则 $B$ 也是 $\Sigma_{n}$ 的
        6. 如果 $R$ 是 $\Sigma_{n}$ 的（或是 $\Pi_{n}$ 的），则由下式定义的集合 $A$ 和 $B$ 也是 $\Sigma_{n}$ 的（或是 $\Pi_{n}$ 的）

            $$
            \begin{aligned}
            & \langle x, y\rangle \in A \ \leftrightarrow \ (\forall z<y) R(x, y, z), \\
            & \langle x, y\rangle \in B \ \leftrightarrow \ (\exists z<y) R(x, y, z)
            \end{aligned}
            $$

    2. 称集合 $A$ 是 $\Sigma_{n}-$完全的当且仅当 $A$ 是 $\Sigma_{n}$ 的，且对任一 $\Sigma_{n}$ 的集合 $B$ 都有 $B \leqslant_{m} A$，类似可定义 $\Pi_{n}-$完全集，于是
        1. 令 $B$ 是自然数的子集，则下述命题等价
            1. $B$ 是 $\Sigma_{n+1}$ 的
            2. $B$ 递归可枚举于某个 $\Pi_{n}$ 集
            3. $B$ 递归可枚举于某个 $\Sigma_{n}$ 集
        2. 当 $n>0$ 时，$\varnothing^{(n)}$ 是 $\Sigma_{n}$ 完全的
        3. 一个集合 $B$ 是 $\Sigma_{n+1}$ 的当且仅当 $B$ 递归可枚举于 $\varnothing^{(n)}$
        4. 一个集合 $B$ 是 $\Delta_{n+1}$ 的当且仅当 $B \leqslant_{T} \varnothing^{(n)}$，即 $B$ 递归于 $\varnothing^{(n)}$
    3. $\text{Sch}\ddot{\mathrm{o}}\text{nfeld}$ 极限引理：令 $B$ 是自然数的一个子集，则下述命题等价
        1. $B$ 是 $\Delta_{2}$ 的
        2. $B \leqslant_{T} K$
        3. 存在二元递归（全）函数 $f(x, s)$，使得对任一自然数 $x$，都有 ${\displaystyle \chi_{B}(x)=\lim _{s \rightarrow \infty} f(x, s)}$
