# 2 集合代数

## 2.1 滤与理想
### 2.1.1 拓扑与滤
1. 拓扑：设 $X$ 为非空集合，$X$ 的子集族 $T \subseteq \mathcal{P}(X)$ 如果满足
    1. $X, \varnothing\in T$
    2. 若 $A, B \in T$，则 $A \cap B \in T$
    3. 若 $S \subseteq T$，则 ${\displaystyle \bigcup_{A \in S} A} \in T$

    则称 $T$ 是 $X$ 的一个拓扑，$T$ 中的元素为开集

    1. 称开集的补集为闭集，既是开集也是闭集的集合为开闭集
    2. 设 $A \subseteq B \subseteq X$，若存在开集 $C$ 使得 $A \subseteq C \subseteq B$，则称 $B$ 是 $A$ 的邻域

2. 设 $X$ 为非空集合，$X$ 的子集族 $F \subseteq \mathcal{P}(X)$ 如果满足
    1. $X \in F$
    2. 若 $A, B \in F$，则 $A \cap B \in F$
    3. 若 $A \in F$ 且 $A \subseteq B$，则 $B \in F$

    则称 $F$ 为 $X$ 上的预滤或滤基

    1. 记 $\mathbf{F}$ 为 $X$ 上的全体预滤，则 $(\mathbf{F}, \subseteq)$ 构成偏序集，对 $F, G \in \mathbf{F}$，定义 $F \leqslant G$ 当且仅当 $G \subseteq F$，称 $F$ 是 $G$ 的细分
    2. 设 $f: X \to Y$，且 $F \subseteq \mathcal P (X)$ 是 $X$ 上的预滤，定义 $f_{F} = \{f[A] \mid A \in F\} = \{A \mid f^{-1}[A] \in F\}$
        1. $G$ 是 $g[Y]$ 上的预滤
        2. 若 $g$ 是满射，则 $G$ 是 $Y$ 上的预滤
    3. 设 $f: X \to Y$，$F \subseteq \mathcal P (X), G \subseteq \mathcal P (Y)$ 分别是 $X, Y$ 上的预滤
        1. 定义 $F \sqcap G = \{f \cap G \mid f \in F, g \in G\}$，则 $F \sqcap G$ 是一个滤
        2. 若 $f_{F} \leqslant G$，则称 $f$ 沿 $F$ 趋近于（或收敛于）$G$，记作 $f(F) \to G$ 或 ${\displaystyle \lim_{F} f = G}$
        3. 若 $Y$ 是一个拓扑空间，对于 $y \in Y$，定义邻域系 $N(y) = \{S \subseteq X \mid$ 存在开集 $U \subseteq S, x \in U \}$，则 $N(y)$ 是一个滤
            1. 若 $f(F) \to N(y)$，则称 $f$ 沿 $F$ 趋近于（或收敛于）$y$，记作 $f(F) \to y$ 或 ${\displaystyle \lim_{F} f = y}$
            2. 若 $X$ 也是一个拓扑空间，则根据 $F$ 的选择可以定义不同种类的函数（或序列）极限

3. 滤：设 $X$ 为非空集合，$F$ 为 $X$ 上的预滤且 $\varnothing \notin F$（即 $F \subset \mathcal P(X)$），则称 $F$ 为 $X$ 上的滤
    1. 平凡滤：$F=\{X\}$ 是 $X$ 上的滤，也是 $X$ 上最小的滤且是 $X$ 上任何滤的子集，称之为平凡滤
    2. 主滤：令 $A \subseteq X$ 非空，定义 $F=\{S \subseteq X \mid A \subseteq S\}$，则 $F$ 是 $X$ 上的滤，称之为由 $A$ 生成的 $X$ 上的主滤，记作 $P(A)$
    3. 极大滤：对任意滤 $F$，如果不存在滤 $F^{\prime}$ 使得 $F \subset F^{\prime}$，则称 $F$ 为极大滤
    4. $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤：取无穷集 $X$，定义 $F=\{S \subseteq X \mid X-S \textsf{ 有穷}\}$，则 $F$ 是 $S$ 上的滤且不是主滤，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤
    5. 超滤：$X$ 上的滤 $U$ 如果满足对任意 $S \subseteq X$ 都有 $S \in U$ 或 $X-S \in U$，则称 $U$ 为超滤
        1. 集合 $S$ 上的滤 $F$ 是超滤当且仅当 $F$ 是 $S$ 上的极大滤
        2. 超滤存在定理：集合 $X$ 上的任何滤 $F_{0}$，都存在超滤 $G$ 使得 $F_{0} \subseteq G$．该命题无法在 $\mathbf{ZF}$ 内得证
        3. 主超滤：设 $A \subseteq X$ 为非空子集，$F=\{S \subseteq X \mid A \subseteq S\}$ 是主滤，则 $A$ 是单点集当且仅当 $F$ 是（主）超滤
    6. $\kappa-$完全滤：如果集合 $X$ 上的滤 $F$ 满足「若 $F^{\prime} \subseteq F$ 且 $\left|F^{\prime}\right|<\kappa$，则 $\bigcap F^{\prime} \in F$」，则称 $F$ 是 $\kappa-$完全的

    !!! note "有穷交性质"
        对任意集合族 $G$，如果 $G$ 的任意有穷个子集 $H_1, H_2, \cdots, H_n$ 都满足 ${\displaystyle \bigcap_{i=1}^{n} H_i \neq \varnothing}$，则称 $G$ 具有有穷交性质

        1. 任何滤都有有穷交性质

        2. 任取集合 $X$，令 $G \subseteq \mathcal{P}(X)$ 为具有有穷交性质的非空集合族，则存在 $X$ 上的滤 $F$ 使得 $G \subseteq F$，称滤 $F$ 为 $G$ 生成的滤
            1. $G_0 = G$
            2. 若 $n = 2i+ 1$，则 $G_n = {\displaystyle \left\{\left.\bigcap_{1 \leqslant k \leqslant m} A_k \ \right| \ A_1, A_2, \cdots, A_m \in G_{2i}, m \in \mathbf N\right\}}$
            3. 若 $n = 2i + 2$，则 $G_n = \{B \subseteq I \mid$ 存在 $A \in G_{2i+1}$ 使得 $A \subseteq B \}$

            令 $\overline G = {\displaystyle \bigcup_{i \in \mathbf N} G_i}$，则 $\overline G$ 是包含 $G$ 的一个滤

### 2.1.2 理想与对偶性
1. 理想：设 $X$ 为非空集合，$X$ 的子集族 $I \subseteq \mathcal{P}(X)$ 如果满足
    1. $\varnothing \in I$ 且 $X \notin I$
    2. 若 $A, B \in I$，则 $A \cup B \in I$
    3. 若 $A \in I$ 且 $B \subseteq A$，则 $B \in I$

    则称 $I$ 为 $X$ 上的理想

    1. 平凡理想：$I = \{\varnothing\}$ 是 $X$ 上的平凡理想
    2. 主理想：对任意 $A \subseteq X$，定义 $I=\{S \mid S \subseteq A\}$，称为由 $A$ 生成的 $X$ 上的主理想
    3. 极大理想：对任意理想 $I$，如果不存在理想 $I^{\prime}$ 使得 $I \subset I^{\prime}$，则称 $I$ 为极大理想
    4. $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想：对任意无穷集合 $X$，$X$ 的所有有穷集组成的集合族 $I$ 是 $X$ 上的理想且不是主理想，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想
    5. 素理想：$X$ 上的理想 $I$ 如果满足对任意 $S \subseteq X$ 都有 $S \in I$ 或 $X-S \in I$，则称 $I$ 为素理想
    6. $\kappa-$完全理想：如果集合 $X$ 上的理想 $I$ 满足「若 $I^{\prime} \subseteq I$ 且 $\left|I^{\prime}\right|<\kappa$，则 $\bigcup I^{\prime} \in I$」，则称 $I$ 是 $\kappa-$完全的

2. 滤与理想的对偶性
    1. 若 $F$ 是 $X$ 上的滤，$I$ 是 $X$ 上的理想，则 $\{X-S \mid S \in F\}$ 是 $X$ 上的理想，$\{X-S \mid S \in I\}$ 是 $S$ 上的滤
    2. 令 $\kappa$ 为无穷基数，则 $\{S \subseteq \kappa\mid |\kappa-S|<\kappa\}$ 是 $\kappa$ 上的滤，$\{X \subseteq \kappa\mid |X| <\kappa\}$ 是 $\kappa$ 上的理想
    3. 对任意无穷基数 $\kappa$，$\kappa-$完全滤与 $\kappa-$完全理想为对偶概念
        1. 任何滤与理想都是 $\aleph_{0}-$完全的，$\aleph_{1}-$完全的滤和理想在历史上称为 $\sigma-$完全的
        2. 可数完全的滤是对有穷交封闭的，$\aleph_{1}-$完全的滤对可数交封闭

## 2.2 代数与类
### 2.2.1 环与格
1. 环：设 $R \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. 若 $A, B \in R$，则 $A \cup B \in R$ 且 $A - B \in R$
    2. 若 $A, B \in R$，则 $A \cap B \in R$ 且 $A \triangle B \in R$

    其中之一成立，则称 $R$ 为 $\Omega$ 上的环

2. $\sigma$ 环：设 $C \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. 若 $A, B \in C$，则 $A - B \in C$
    2. 若对 $n \geqslant 1, A_{n} \in C$，则 ${\displaystyle \bigcup_{n=1}^{\infty} A_{n} \in C}$

    则称 $C$ 为 $\Omega$ 上的 $\sigma$ 环

    1. $F$ 为 $\sigma$ 域的充要条件是 $F$ 为一个包含 $\Omega$ 的 $\sigma$ 环
    2. 在 $\sigma$ 环中，对可数集合序列的交集、上限、下限运算也是封闭的

3. 格：设 $L \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. $\varnothing \in L$
    2. 若 $A, B \in R$，则 $A \cup B \in R$ 且 $A \cap B \in R$

    则称 $L$ 为 $\Omega$ 上的格

### 2.2.2 域与 σ 域
1. 半域：设 $S \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. $\varnothing, \Omega \in S$
    2. 当 $A, B \in S$，必有 $A \cap B \in S$
    3. 若 $A \in S$，则 $A'$ 可表为 $S$ 中两两互不相交集合的有穷并

    则称 $S$ 为 $\Omega$ 上的半域或半代数

    1. 域必为半域
    2. 若 $S$ 为半域，则 ${\displaystyle A=\left\{A=\sum_{i \in I} S_{i}:\left\{S_{i}, i \in I\right\} \textsf{ 为 } S \textsf{ 中两两互不相交的有穷族}\right\}}$ 是包含 $S$ 的最小域

2. 域：设 $A \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若 $A, B \in A$ 蕴含 $A' \in A$ 与 $A \cup B \in A$，则称 $A$ 为 $\Omega$ 上的域或代数
    1. 设 $A$ 是域，则有
        1. $\Omega \in A, \varnothing \in A$
        2. 若 $A, B \in A$，则 $A \cap B \in A, A - B \in A, A \triangle B \in A$
        3. 若 $A_{j} \in A, 1 \leqslant j \leqslant n$，则 ${\displaystyle \bigcup_{j=1}^{n} A_{j} \in A, \bigcap_{j=1}^{n} A_{j} \in A}$
    2. 若 $C \subseteq \mathcal{P}(\Omega)$，则必存在包含 $C$ 的最小域 $A$．即 $A$ 为域，$A \supseteq C$ 且对任一域 $A^{\prime} \supseteq C$，必有 $A \subseteq A^{\prime}$
        1. 对任一集族 $C$，包含 $C$ 的最小域称为由 $C$ 张成的域，记为 $A(C)$
        2. $\Omega$ 中由单点集全体张成的域就是由 $\Omega$ 中有穷集及其余集全体构成的集族

3. $\sigma$ 域：设 $F \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. 若 $A \in F$，则 $A' \in F$
    2. 若对每个 $n \geqslant 1$ 都有 $A_{n} \in F$，则 ${\displaystyle \bigcup_{i=1}^{\infty} A_{n} \in F}$

    则称 $F$ 为 $\Omega$ 上的 $\sigma$ 域或 $\sigma$ 代数

    3. $F$ 为 $\sigma$ 域，则 $F$ 为一个域，且当 $n \geqslant 1, A_{n} \in F$ 时，必有 ${\displaystyle \bigcap_{n \geqslant 1} A_{n} \in F, \varliminf_{n \rightarrow \infty} A_{n} \in F, \varlimsup_{{n \rightarrow \infty}} A_{n} \in F}$
    4. 若 $C \subseteq \mathcal{P}(\Omega)$，则必存在包含 $C$ 的最小 $\sigma$ 域
        1. 包含集族 $C$ 的最小 $\sigma$ 域称为由 $C$ 生成的 $\sigma$ 域，记为 $\sigma(C)$
        2. 对 $\Omega$ 的子集族 $C$，若以 $C \cap A$ 表示集族 $\{B A: B \in C\}$，则 $\sigma_{\Omega}(C) \cap A=\sigma_{A}(C \cap A)$

### 2.2.3 单调类
1. 单调类：设 $M$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若对任一集合序列 $\{A_{n}, n \geqslant 1\} \subseteq M$，且
    1. 当 $\left\{A_{n}\right\}$ 递增时，即 $A_{n} \subseteq A_{n+1}$，必有 ${\displaystyle \bigcup_{n=1}^{\infty} A_{n} \in M}$
    2. 当 $\left\{A_{n}\right\}$ 递减时，即 $A_{n} \supseteq A_{n+1}$，必有 ${\displaystyle \bigcap_{n=1}^{\infty} A_{n} \in M}$

    则称 $M$ 为 $\Omega$ 上的单调类

    1. 若非空 $C \subseteq \mathcal{P}(\Omega)$，则必存在包含 $C$ 的最小单调类 $M(C)$，也称为由 $C$ 生成的单调类
    2. $F$ 为 $\sigma$ 域的充要条件是 $F$ 既是域又是单调类
    3. 单调类定理：若 $A$ 为域，则 $\sigma(A)=M(A)$

2. $\pi$ 类：设 $C$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若当 $A, B \in C$ 时必有 $A \cap B \in C$，则称 $C$ 为 $\Omega$ 上的 $\pi$ 类

    $\lambda$ 类：设 $D$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若它满足

    1. 当 $A \in D$ 时必有 $A' \in D$
    2. 当 $A, B \in D$ 且 $A \cap B=\varnothing$ 时，必有 $A+B \in D$
    3. 对递增序列 $\left\{A_{n}\right\}_{n \geqslant 1} \subseteq D$，必有 ${\displaystyle \lim _{n \to \infty} A_{n} \in D}$

    则称 $D$ 为 $\Omega$ 上的 $\lambda$ 类

    1. $F$ 为 $\sigma$ 域的充要条件是它同时为 $\lambda$ 类和 $\pi$ 类
    2. 对 $\mathcal{P}(\Omega)$ 的任一子类 $C$，必存在包含 $C$ 的最小 $\lambda$ 类 $\lambda(C)$
    3. 若 $C$ 为 $\pi$ 类，则 $\lambda(C)=\sigma(C)$
    4. 若 $D$ 是 $\lambda$ 类，又 $C$ 为 $\pi$ 类，$D \supseteq C$，则 $D \supseteq \sigma(C)$

3. $\mathscr{L}$ 类：设 $L$ 为 $\Omega$ 上的函数族，当 $X \in L$ 时，$X^{+}, X^{-} \in L$．若 $\Omega$ 上的函数族 $H$ 有
    1. $1 \in H$
    2. $H$ 是线性空间
    3. 设 $X_{n} \geqslant 0, X_{n} \in H, X_{n} \uparrow X$ 且 $X$ 有界或 $X \in L$，则 $X \in H$

    则称其为 $H$ 上的 $\mathscr{L}$ 类

## 2.3 描述集合论
### 2.3.1 投影集层谱
1. $\text{Borel}$ 域：若 $E$ 为拓扑空间，则称 $E$ 中全体开集生成的 $\sigma$ 域为 $E$ 上的 $\text{Borel}$ 域，记作 $B_{E}$，称其中的集合为 $E$ 中的 $\text{Borel}$ 集
    1. 称 $n$ 维 $\text{Euclid}$ 空间 $\mathbf{R}^{n}$ 中的 $\text{Borel}$ 点集为 $n$ 维 $\text{Borel}$ 点集
        1. 通常记实数集 $\mathbf{R} = \omega^{\omega} = \{f \mid f: \omega \to \omega\}$
        2. $\omega^{\omega}$ 上存在一个自然的拓扑：对任意 $\sigma \in \omega^{< \omega}$，取其所有尾节扩张 $[\sigma]^{\prec} = \{f \in \omega^{< \omega} \mid \sigma \prec f\}$，则通常将以 $\{[\sigma]^{\prec} \mid \sigma \in \omega^{< \omega}\}$ 为拓扑基生成的拓扑空间作为 $\text{Baire}$ 空间
    2. 正则性：设 $X \in B_{E}$ 是 $\text{Borel}$ 集
        1. $\text{Lebesgue}$ 可测性：对于任意实数集 $A$ 都有 $\mu^{*}(A)=\mu^{*}(A \cap X)+\mu^{*}(A-X)$，其中 $\mu^{*}$ 是外测度
        2. $\text{Baire}$ 性质：存在一个开集 $U$ 使得 $X \triangle U$ 是第一纲集
        3. 完全集性质：集合 $X$ 或者是可数的，或者包含一个非空完全集；若 $X$ 是闭集也不含有孤立点，则称 $X$ 是完全集
    3. 分析集：集合 $A$ 是分析集当且仅当 $A$ 是一个 $\text{Borel}$ 集的投影，即存在 $B \subseteq \mathbf R^{n+1}$ 使得 $A = \{\overline x \in \mathbf R^{n} \mid \exists y \ (\overline x, y) \in B\}$
        1. 称集合为余分析集当且仅当其补集为分析集，集合为 $\text{Borel}$ 集当且仅当它既是分析集也是余分析集
        2. 任意分析集都具有正则性质
2. $\text{Borel}$ 集层谱：对 $\alpha < \omega_1$，递归定义 $\mathbf{\Pi}_{\alpha}^{0}, \mathbf{\Sigma}_{\alpha}^{0}, \mathbf{\Delta}_{\alpha}^{0}$
    1. 所有开集都是 $\mathbf{\Sigma}_{1}^{0}$ 的，所有闭集都是 $\mathbf{\Pi}_{1}^{0}$ 的
    2. 集合 $X$ 为 $\mathbf{\Pi}_{\alpha}^{0}$ 的当且仅当其补集为 $\mathbf{R} - X$ 为 $\mathbf{\Sigma}_{\alpha}^{0}$ 的
    3. 集合 $X$ 为 $\mathbf{\Delta}_{\alpha}^{0}$ 的当且仅当 $X$ 既是 $\mathbf{\Pi}_{\alpha}^{0}$ 的也是 $\mathbf{\Sigma}_{\alpha}^{0}$ 的
    4. 对 $\alpha > 1$，集合 $X$ 是 $\mathbf{\Sigma}_{\alpha}^{0}$ 的当且仅当存在集合序列 $\left<X_{i}\right>_{i < \omega}$ 使得 $X = {\displaystyle \bigcup_{i < \omega} X_{i}}$，其中每个 $X_i$ 都是某个 $\mathbf{\Pi}_{\beta_i}^{0}$ 集合且 $\beta_i < \alpha$

    细体字版 $\text{Borel}$ 集层谱扩展了算术层谱，增加了额外 $\text{Borel}$ 集

    1. $\alpha < \beta$ 蕴含 $\mathbf{\Sigma}_{\alpha}^{0} \subsetneq \mathbf{\Delta}_{\beta}^{0}$ 与 $\mathbf{\Pi}_{\alpha}^{0} \subsetneq \mathbf{\Delta}_{\beta}^{0}$
    2. 闭集即 $\mathbf{\Pi}_{1}^{0}$ 的集合
    3. $\text{Borel}$ 集即 ${\displaystyle \bigcup_{\alpha < \omega_1} \mathbf{\Sigma}_{\alpha}^{0} = \bigcup_{\alpha < \omega_1} \mathbf{\Pi}_{\alpha}^{0}}$ 的集合

3. 投影集层谱：对 $n < \omega$，递归定义 $\mathbf{\Pi}_{n}^{1}, \mathbf{\Sigma}_{n}^{1}, \mathbf{\Delta}_{n}^{1}$
    1. 所有分析集为 $\mathbf{\Sigma}_{1}^{1}$ 的
    2. 集合 $X \subseteq \mathbf{R}^{n}$ 为 $\mathbf{\Pi}_{n}^{1}$ 的当且仅当存在 $\mathbf{\Sigma}_{n}^{1}$ 集合 $Y$ 使得 $X = \mathbf{R}^{n} - Y$
    3. 集合 $X$ 为 $\mathbf{\Delta}_{n}^{1}$ 的当且仅当 $X$ 既是 $\mathbf{\Pi}_{n}^{1}$ 的也是 $\mathbf{\Sigma}_{n}^{1}$ 的
    4. 集合 $X \subseteq \mathbf{R}^{n}$ 是 $\mathbf{\Sigma}_{n + 1}^{1}$ 的当且仅当它是某个 $\mathbf{\Pi}_{n}^{1}$ 集的投影，即存在 $\mathbf{\Pi}_{n}^{1}$ 的集合 $Y \subseteq \mathbf R^{n+1}$ 使得 $X = \{\overline x \in \mathbf R^{n} \mid \exists y \ (\overline x, y) \in Y\}$

    细体字版投影集层谱等价于分析层谱；粗体字投影集层谱等价于以实数为参数的分析层谱

    1. $n < m$ 蕴含 $\mathbf{\Sigma}_{n}^{1} \subsetneq \mathbf{\Delta}_{m}^{1}$ 与 $\mathbf{\Pi}_{n}^{1} \subsetneq \mathbf{\Delta}_{m}^{1}$
    2. 余分析集即 $\mathbf{\Pi}_{1}^{1}$ 的集合
    3. $\text{Borel}$ 集即 $\mathbf{\Delta}_{1}^{1}$ 的集合

4. 假设 $\operatorname{Con}(\mathbf{ZFC} +$存在不可达基数$)$，则存在 $\mathbf{V}$ 的脱殊扩张 $\mathbf{V}[G]$ 使得所有以可数序数序列为参数可定义的实数集具有正则性质
    1. 若 $\mathbf{V} = \mathbf{L}$，则存在一个不满足完全集性质的 $\mathbf{\Pi}_{1}^{1}$ 集与不可测且没有 $\text{Baire}$ 性质的 $\mathbf{\Sigma}_{2}^{1}$ 集
    2. 在 $\mathbf{L}(R)^{\mathbf{V}[G]}$ 中，所有实数集都具有正则性质
    3. $\mathbf{ZFC}$ 中无法证明投影集不具有正则性质；$\mathbf{ZF}$ 中无法证明任何集合不具有正则性质

### 2.3.2 无穷博弈
1. $\text{Gale}-\text{Stewart}$ 博弈：对任意非空集合 $X$，记由函数 $S_1, S_2: X^{<\omega} \to X$ 通过

    $$
    x_{i} = \left\{\begin{aligned}
    & S_1(x_0, x_1, ..., x_{2k-1}), & i = 2k \\
    & S_2(x_0, x_1, ..., x_{2k}), & i = 2k+1
    \end{aligned}\right.
    $$

    定义的无穷序列 $x = \left<x_i\right>_{i < \omega}$ 为 $S_1 \# S_2$

    1. 设集合 $A \subseteq X^{\omega}$，若 $\exists S_1 \forall S_2 \ (S_1 \# S_2 \in A) \vee \exists S_1 \forall S_2 \ (S_1 \# S_2 \notin A)$，则称博弈 $G_{X}(A)$ 是被决定的
        1. 开集都是被决定的，一般地，所有 $\text{Borel}$ 集都是被决定的
        2. 若所有 $\mathbf{\Delta}_{n}^{1}$ 集合都是被决定的，则所有 $\mathbf{\Sigma}_{n}^{1}$ 集合都具有正则性质
    2. 设公式层级 $\Phi \in \{\Sigma_{n}^{m}, \Pi_{n}^{m}, \Delta_{n}^{m}\}$，$\varphi(X), \psi(X)$ 是任意 $\Phi$ 公式
        1. 若 $\exists S_1 \forall S_2 \ \varphi \left(S_1 \# S_2\right) \vee \exists S_1 \forall S_2 \ \neg \varphi\left(S_1 \# S_2\right)$，则称 $\Phi-$博弈是被决定的
        2. 若 $\theta(X) = \phi(X) \wedge \neg \psi(X)$ 且 $\exists S_1 \forall S_2 \ \theta \left(S_1 \# S_2\right) \vee \exists S_1 \forall S_2 \ \neg \theta\left(S_1 \# S_2\right)$，则称 $\Phi_{\rho}-$博弈是被决定的

2. 决定公理（$\mathrm{AD}$）：对任意实数集 $A \subseteq \omega^{\omega}$，$G_{\omega}(A)$ 是被决定的
    1. 假设 $\mathrm{AD}$ 成立，那么
        1. 所有实数集都具有正则性质
        2. $\omega_1$ 在 $\mathbf{L}$ 是不可达基数，因此 $\operatorname{Con} (\mathbf{ZF} + \mathrm{AD}) \to \operatorname{Con} (\mathbf{ZFC}\;+$ 存在不可达基数$)$
    2. 决定性公理与选择公理不一致：假设 $\mathbf{AC}$ 成立，则存在 $A \subseteq \omega^{\omega}$，$G_{\omega}(A)$ 不是被决定的
3. 投影集决定公理（$\mathrm{PD}$）：所有投影集都是被决定的
    1. 假设 $\mathrm{PD}$ 成立，则所有投影集都具有正则性质
    2. 假设 $\mathrm{PD}^{\mathbf{L}(\mathbf{R})}$ 成立，则所有 $\mathbf{L}(\mathbf{R})$ 中的集合都具有正则性质
