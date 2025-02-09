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
    3. 对任一无穷的递归可枚举集 $B$ 有 $B \cap A \neq \emptyset$

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
1. 相对可计算性
2. $\text{Turing}$ 归约
3. $\text{Turing}$ 度
4. $\text{Turing}$ 跃迁

## 3.3 算术分层
1. $\Sigma_1-$集：如果集合 $A$ 是一个递归关系的投影，则称 $A$ 是 $\Sigma_1-$形式的，此时 $A$ 是递归可枚举集

    $\Delta_1-$集：如果集合 $A$ 及其补集 $\mathbf N - A$ 都是 $\Sigma_1$ 的，则称 $A$ 是 $\Delta_1$形式的，此时 $A$ 是递归集

    1. 如果 $R \subseteq \mathbf N^{n+1}$ 是 $n + 1$ 元递归关系，且 $A = \{x \mid \exists y_1 \exists y_2 \cdots \exists y_n \ R(x, y_1, y_2, \cdots, y_n)\}$，则 $A$ 是 $\Sigma_1$ 的
    2. 单值化：如果 $R \subseteq \mathbf N^2$ 是递归可枚举的关系，则存在一个部分递归函数 $\Phi$ 满足 $\Phi(x) \downarrow \wedge R(x,\Phi(x))$，当且仅当 $\exists y \ R(x, y)$
    3. 部分函数 $\psi$ 是部分递归的当且仅当其图像 $G = \{(x, y) \mid y = \psi(x)\}$ 是递归可枚举的
    4. 递归可枚举集能行地、一致地对交和并封闭，即存在递归函数 $f, g$ 使得 $W_{f(x, y)} = W_x \cap W_y$，且 $W_{g(x, y)} = W_x \cup W_y$

2. 一阶算术的公式分层
3. 分层定理
4. 极限引理

## 3.4 典型构造
