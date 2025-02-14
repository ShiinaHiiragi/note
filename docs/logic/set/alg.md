# 2 集合代数

## 2.1 滤与理想
1. 有穷交性质：对任意集合族 $G$，如果 $G$ 的任意有穷个子集 $H_1, H_2, \cdots, H_n$ 都满足 ${\displaystyle \bigcap_{i=1}^{n} H_i \neq \varnothing}$，则称 $G$ 具有有穷交性质
    1. 任何滤都有有穷交性质
    2. 任取集合 $X$，令 $G \subseteq \mathcal{P}(X)$ 为具有有穷交性质的非空集合族，则存在 $X$ 上的滤 $F$ 使得 $G \subseteq F$，称滤 $F$ 为 $G$ 生成的滤
        1. $G_0 = G$
        2. 若 $n = 2i+ 1$，则 $G_n = {\displaystyle \left\{\left.\bigcap_{1 \leqslant k \leqslant m} A_k \ \right| \ A_1, A_2, \cdots, A_m \in G_{2i}, m \in \mathbf N\right\}}$
        3. 若 $n = 2i + 2$，则 $G_n = \{B \subseteq I \mid$ 存在 $A \in G_{2i+1}$ 使得 $A \subseteq B \}$

        令 $\overline G = {\displaystyle \bigcup_{i \in \mathbf N} G_i}$，则 $\overline G$ 是包含 $G$ 的一个滤

2. 滤与理想为对偶概念
    1. 滤：设 $X$ 为非空集合，$X$ 的子集族 $F \subseteq \mathcal{P}(X)$ 如果满足
        1. $X \in F$ 且 $\varnothing \notin F$
        2. 若 $A, B \in F$，则 $A \cap B \in F$
        3. 若 $A \in F$ 且 $A \subseteq B$，则 $B \in F$

        则称 $F$ 为 $X$ 上的滤

        1. 平凡滤：$F=\{X\}$ 是 $X$ 上的滤，也是 $X$ 上最小的滤且是 $X$ 上任何滤的子集，称之为平凡滤
        2. 主滤：令 $A \subseteq X$ 非空，定义 $F=\{S \subseteq X \mid A \subseteq S\}$，则 $F$ 是 $X$ 上的滤，称之为由 $A$ 生成的 $X$ 上的主滤
        3. 极大滤：对任意滤 $F$，如果不存在滤 $F^{\prime}$ 使得 $F \subset F^{\prime}$，则称 $F$ 为极大滤
        4. $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤：取无穷集 $X$，定义 $F=\{S \subseteq X \mid X-S \textsf{ 有穷}\}$，则 $F$ 是 $S$ 上的滤且不是主滤，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤

    2. 理想：设 $X$ 为非空集合，$X$ 的子集族 $I \subseteq \mathcal{P}(X)$ 如果满足
        1. $\varnothing \in I$ 且 $X \notin I$
        2. 若 $A, B \in I$，则 $A \cup B \in I$
        3. 若 $A \in I$ 且 $B \subseteq A$，则 $B \in I$

        则称 $I$ 为 $X$ 上的理想

        1. 平凡理想：$I = \{\varnothing\}$ 是 $X$ 上的平凡理想
        2. 主理想：对任意 $A \subseteq X$，定义 $I=\{S \mid S \subseteq A\}$，称为由 $A$ 生成的 $X$ 上的主理想
        3. 极大理想：对任意理想 $I$，如果不存在理想 $I^{\prime}$ 使得 $I \subset I^{\prime}$，则称 $I$ 为极大理想
        4. $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想：对任意无穷集合 $X$，$X$ 的所有有穷集组成的集合族 $I$ 是 $X$ 上的理想，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想
            1. $I$ 不是主理想
            2. $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想是 $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤的对偶

    3. 滤与理想的对偶性
        1. 如果 $F$ 是 $X$ 上的滤，则 $I=\{X-S \mid S \in F\}$ 是 $X$ 上的理想

            如果 $I$ 是 $X$ 上的理想，则 $F=\{X-S \mid S \in I\}$ 是 $S$ 上的滤

        2. 令 $\kappa$ 为无穷基数，则 $\{S \subseteq \kappa\mid |\kappa-S|<\kappa\}$ 是 $\kappa$ 上的滤

            如果 $\kappa$ 是无穷基数，$I=\{X \subseteq \kappa\mid |X| <\kappa\}$ 是 $\kappa$ 上的理想

3. 超滤与素理想为对偶概念
    1. 超滤：$X$ 上的滤 $U$ 如果满足对任意 $S \subseteq X$ 都有 $S \in U$ 或 $X-S \in U$，则称 $U$ 为超滤

        素理想：$X$ 上的理想 $I$ 如果满足对任意 $S \subseteq X$ 都有 $S \in I$ 或 $X-S \in I$，则称 $I$ 为素理想

        !!! note "主超滤"
            设 $A \subseteq X$ 为非空子集，$F=\{S \subseteq X \mid A \subseteq S\}$ 是主滤，则以下命题等价

            1. $A$ 是单点集
            2. $F$ 是超滤
            3. $F$ 是主超滤

    2. 集合 $S$ 上的滤 $F$ 是超滤当且仅当 $F$ 是 $S$ 上的极大滤
    3. 超滤存在定理：集合 $X$ 上的任何滤 $F_{0}$，都存在超滤 $G$ 使得 $F_{0} \subseteq G$．该命题无法在 $\mathbf{ZF}$ 内得证

4. 对任意无穷基数 $\kappa$，$\kappa-$完全滤与 $\kappa-$完全理想为对偶概念
    1. $\kappa-$完全滤：如果集合 $X$ 上的滤 $F$ 满足「若 $F^{\prime} \subseteq F$ 且 $\left|F^{\prime}\right|<\kappa$，则 $\bigcap F^{\prime} \in F$」，则称 $F$ 是 $\kappa-$完全的

        $\kappa-$完全理想：如果集合 $X$ 上的理想 $I$ 满足「若 $I^{\prime} \subseteq I$ 且 $\left|I^{\prime}\right|<\kappa$，则 $\bigcup I^{\prime} \in I$」，则称 $I$ 是 $\kappa-$完全的

    2. 任何滤与理想都是 $\aleph_{0}-$完全的，$\aleph_{1}-$完全的滤和理想在历史上称为 $\sigma-$完全的．可数完全的滤是对有穷交封闭的，$\aleph_{1}-$完全的滤对可数交封闭

## 2.2 环与域
### 2.2.1 环
1. 环：设 $R \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若 $A, B \in R$ 蕴含 $A - B \in R$ 与 $A \cup B \in R$，则称 $R$ 为 $\Omega$ 上的环
2. $\sigma$ 环：设 $C \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. 若 $A \in C, B \in C$，则 $A - B \in C$
    2. 若对 $n \geqslant 1, A_{n} \in C$，则 ${\displaystyle \bigcup_{n=1}^{\infty} A_{n} \in C}$

    则称 $C$ 为 $\Omega$ 上的 $\sigma$ 环

    1. $F$ 为 $\sigma$ 域的充要条件是 $F$ 为一个包含 $\Omega$ 的 $\sigma$ 环
    2. 在 $\sigma$ 环中，对可数集合序列的交集、上限、下限运算也是封闭的

### 2.2.2 域
1. 域：设 $A \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若 $A, B \in A$ 蕴含 $A' \in A$ 与 $A \cup B \in A$，则称 $A$ 为 $\Omega$ 上的域或代数
    1. 设 $A$ 是域，则有
        1. $\Omega \in A, \varnothing \in A$
        2. 若 $A, B \in A$，则 $A \cap B \in A, A - B \in A, A \triangle B \in A$
        3. 若 $A_{j} \in A, 1 \leqslant j \leqslant n$，则 ${\displaystyle \bigcup_{j=1}^{n} A_{j} \in A, \bigcap_{j=1}^{n} A_{j} \in A}$
    2. 若 $C \subseteq \mathcal{P}(\Omega)$，则必存在包含 $C$ 的最小域 $A$．即 $A$ 为域，$A \supseteq C$ 且对任一域 $A^{\prime} \supseteq C$，必有 $A \subseteq A^{\prime}$
        1. 对任一集族 $C$，包含 $C$ 的最小域称为由 $C$ 张成的域，记为 $A(C)$
        2. $\Omega$ 中由单点集全体张成的域就是由 $\Omega$ 中有穷集及其余集全体构成的集族
2. 半域：设 $S \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. $\varnothing, \Omega \in S$
    2. 当 $A, B \in S$，必有 $A \cap B \in S$
    3. 若 $A \in S$，则 $A'$ 可表为 $S$ 中两两互不相交集合的有穷并

    则称 $S$ 为 $\Omega$ 上的半域或半代数

    1. 域必为半域
    2. 若 $S$ 为半域，则 ${\displaystyle A=\left\{A=\sum_{i \in I} S_{i}:\left\{S_{i}, i \in I\right\} \textsf{ 为 } S \textsf{ 中两两互不相交的有穷族}\right\}}$ 是包含 $S$ 的最小域

3. $\sigma$ 域：设 $F \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若有
    1. 若 $A \in F$，则 $A' \in F$
    2. 若对每个 $n \geqslant 1$ 都有 $A_{n} \in F$，则 ${\displaystyle \bigcup_{i=1}^{\infty} A_{n} \in F}$

    则称 $F$ 为 $\Omega$ 上的 $\sigma$ 域或 $\sigma$ 代数

    1. $F$ 为 $\sigma$ 域，则 $F$ 为一个域，且当 $n \geqslant 1, A_{n} \in F$ 时，必有 ${\displaystyle \bigcap_{n \geqslant 1} A_{n} \in F, \varliminf_{n \rightarrow \infty} A_{n} \in F, \varlimsup_{{n \rightarrow \infty}} A_{n} \in F}$
    2. 若 $C \subseteq \mathcal{P}(\Omega)$，则必存在包含 $C$ 的最小 $\sigma$ 域
        1. 包含集族 $C$ 的最小 $\sigma$ 域称为由 $C$ 生成的 $\sigma$ 域，记为 $\sigma(C)$
        2. 对 $\Omega$ 的子集族 $C$，若以 $C \cap A$ 表示集族 $\{B A: B \in C\}$，则 $\sigma_{\Omega}(C) \cap A=\sigma_{A}(C \cap A)$
    3. $\text{Borel}$ 域：若 $E$ 为拓扑空间，$B_{E}$ 为 $E$ 中开集全体生成的 $\sigma$ 域，称为 $E$ 上的 $\text{Borel}$ 域
        1. $B_{E}$ 中的集称为 $E$ 中的 $\text{Borel}$ 集
        2. $n$ 维 $\text{Euclid}$ 空间 $\mathbf{R}^{n}$ 中的 $\text{Borel}$ 点集又称为 $n$ 维 $\text{Borel}$ 点集

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

    则称其为 $H$ 上的 $\mathscr{L}$ 类．若 $\pi$ 类 $C \subseteq \mathcal{P}(\Omega)$，又 $H$ 为 $\Omega$ 上的一个 $\mathscr{L}$ 类，且 $H \supseteq \left\{I_{A}, A \in C\right\}$，则 $H$ 包含 $\Omega$ 上一切属于 $L$ 的 $\sigma(C)$ 可测函数
