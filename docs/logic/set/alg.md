# 2 集合代数

## 2.1 滤与理想
1. 滤：设 $X$ 为非空集合，$X$ 的子集族 $F \subseteq \mathcal{P}(X)$ 如果满足
    1. $X \in F$ 且 $\varnothing \notin F$
    2. 若 $X, Y \in F$，则 $X \cap Y \in F$
    3. 若 $X \in F$ 且 $X \subseteq Y \subseteq X$，则 $Y \in F$

    则称 $F$ 为 $X$ 上的滤

    1. 平凡滤：$F=\{X\}$ 是 $X$ 上的滤，也是 $X$ 上最小的滤且是 $X$ 上任何滤的子集，称之为平凡滤
    2. 主滤：令 $A \subseteq X$ 非空，定义 $F=\{X \subseteq X \mid A \subseteq X\}$，则 $F$ 是 $X$ 上的滤，称之为由 $A$ 生成的 $X$ 上的主滤
    3. 极大滤：对任意滤 $F$，如果不存在滤 $F^{\prime}$ 使得 $F \subset F^{\prime}$，则称 $F$ 为极大滤
    4. 取无穷集 $X$，定义 $F=\{S \subseteq X \mid X-S \textsf{ 有穷}\}$，则 $F$ 是 $S$ 上的滤且不是主滤，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤
    5. 令 $\kappa$ 为无穷基数，则 $\{S \subseteq \kappa\mid |\kappa-S|<\kappa\}$ 是 $\kappa$ 上的滤

2. 理想：设 $X$ 为非空集合，$X$ 的子集族 $I \subseteq \mathcal{P}(X)$ 如果满足
    1. $\varnothing \in I$ 且 $X \notin I$
    2. 若 $X, Y \in I$，则 $X \cup Y \in I$
    3. 若 $X \in I$ 且 $Y \subseteq X$，则 $Y \in I$

    则称 $I$ 为 $X$ 上的理想

    1. 平凡理想：$I = \{\varnothing\}$ 是 $X$ 上的平凡理想
    2. 主理想：对任意 $A \subseteq X$，定义 $I=\{S \mid S \subseteq A\}$，称为由 $A$ 生成的 $X$ 上的主理想
    3. 对任意无穷集合 $X$，$X$ 的所有有穷集组成的集合族 $I$ 是 $X$ 上的理想，是 $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤的对偶，称为 $\text{Fr}\acute{\mathrm e}\text{chet}$ 理想
    4. 如果 $\kappa$ 是无穷基数，$I=\{X \subseteq \kappa\mid |X| <\kappa\}$ 是 $\kappa$ 上的理想

    !!! note "滤与理想的对偶性"
        如果 $F$ 是 $X$ 上的滤，则 $I=\{X-S \mid S \in F\}$ 是 $X$ 上的理想；如果 $I$ 是 $X$ 上的理想，则 $F=\{X-S \mid S \in I\}$ 是 $S$ 上的滤

3. 有穷交性质：对任意集合族 $G$，如果 $G$ 的任意有穷子集 $H$ 都满足 $\cap H \neq \varnothing$，则称 $G$ 具有有穷交性质
    1. 任何滤都有有穷交性质
    2. 任取集合 $X$，令 $G \subseteq \mathcal{P}(X)$ 为具有有穷交性质的非空集合族，则存在 $X$ 上的滤 $F$ 使得 $G \subseteq F$，称滤 $F$ 为 $G$ 生成的滤
4. 超滤与素理想为对偶概念
    1. 超滤：$X$ 上的滤 $U$ 如果满足对任意 $S \subseteq X$ 都有 $S \in U$ 或 $X-S \in U$，则称 $U$ 为超滤

        素理想：$X$ 上的理想 $I$ 如果满足对任意 $S \subseteq X$ 都有 $S \in I$ 或 $X-S \in I$，则称 $I$ 为素理想

        !!! note "主超滤"
            设 $A \subseteq X$ 为非空子集，$F=\{S \subseteq X \mid A \subseteq S\}$ 是主滤，则以下命题等价

            1. $A$ 是单点集
            2. $F$ 是超滤
            3. $F$ 是主超滤

    2. 集合 $S$ 上的滤 $F$ 是超滤当且仅当 $F$ 是 $S$ 上的极大滤
    3. 超滤存在定理：集合 $X$ 上的任何滤 $F_{0}$，都存在超滤 $G$ 使得 $F_{0} \subseteq G$．该命题无法在 $\mathbf{ZF}$ 内得证

5. 对任意无穷基数 $\kappa$，$\kappa-$完全滤与 $\kappa-$完全理想是对偶概念
    1. $\kappa-$完全滤：如果集合 $X$ 上的滤 $F$ 满足「若 $F^{\prime} \subseteq F$ 且 $\left|F^{\prime}\right|<\kappa$，则 $\bigcap F^{\prime} \in F$」，则称 $F$ 是 $\kappa$-完全的

        $\kappa-$完全理想：如果集合 $X$ 上的理想 $I$ 满足「若 $I^{\prime} \subseteq I$ 且 $\left|I^{\prime}\right|<\kappa$，则 $\bigcup I^{\prime} \in I$」，则称 $I$ 是 $\kappa$-完全的

    2. 任何滤与理想都是 $\aleph_{0}-$完全的，$\aleph_{1}-$完全的滤和理想在历史上称为 $\sigma-$完全的．可数完全的滤对有穷交封闭的，$\aleph_{1}-$完全的滤对可数交封闭

## 2.2 环与域
### 2.2.1 环
1. 环：设 $\mathscr{R} \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若 $A, B \in \mathscr{R}$ 蕴含 $A - B \in \mathscr{R}$ 与 $A \cup B \in \mathscr{R}$，则称 $\mathscr{R}$ 为 $\Omega$ 上的环
2. $\sigma$ 环：设 $\mathscr{C}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若有
    1. 若 $A \in \mathscr{C}, B \in \mathscr{C}$，则 $A - B \in \mathscr{C}$
    2. 若对 $n \geqslant 1, A_{n} \in \mathscr{C}$，则 ${\displaystyle \bigcup_{n=1}^{\infty} A_{n} \in \mathscr{C}}$

    则称 $\mathscr{C}$ 为 $\Omega$ 上的 $\sigma$ 环

    1. $\mathscr{F}$ 为 $\sigma$ 域的充要条件是 $\mathscr{F}$ 为一个包含 $\Omega$ 的 $\sigma$ 环
    2. 在 $\sigma$ 环中，对可列集合序列的交集、上限、下限运算也是封闭的

### 2.2.2 域
1. 域：设 $\mathscr{A} \subseteq \mathcal{P}(\Omega)$ 是一个非空集族，若 $A, B \in \mathscr{A}$ 蕴含 $A' \in \mathscr{A}$ 与 $A \cup B \in \mathscr{A}$，则称 $\mathscr{A}$ 为 $\Omega$ 上的域或代数
    1. 设 $\mathscr{A}$ 是域，则有
        1. $\Omega \in \mathscr{A}, \varnothing \in \mathscr{A}$
        2. 若 $A, B \in \mathscr{A}$，则 $A B \in \mathscr{A}, A - B \in \mathscr{A}, A \triangle B \in \mathscr{A}$
        3. 若 $A_{j} \in \mathscr{A}, 1 \leqslant j \leqslant n$，则 ${\displaystyle \bigcup_{j=1}^{n} A_{j} \in \mathscr{A}, \bigcap_{j=1}^{n} A_{j} \in \mathscr{A}}$
    2. 若 $\mathscr{C} \subseteq \mathcal{P}(\Omega)$，则必存在包含 $\mathscr{C}$ 的最小域 $\mathscr{A}$．即 $\mathscr{A}$ 为域，$\mathscr{A} \supseteq \mathscr{C}$ 且对任一域 $\mathscr{A}^{\prime} \supseteq \mathscr{C}$，必有 $\mathscr{A} \subseteq \mathscr{A}^{\prime}$
        1. 对任一集族 $\mathscr{C}$，包含 $\mathscr{C}$ 的最小域称为由 $\mathscr{C}$ 张成的域，记为 $\mathscr{A}(\mathscr{C})$
        2. $\Omega$ 中由单点集全体张成的域就是由 $\Omega$ 中有限集及其余集全体构成的集族
2. 半域：设 $\mathscr{S}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若有
    1. $\varnothing, \Omega \in \mathscr{S}$
    2. 当 $A, B \in \mathscr{S}$，必有 $A \cap B \in \mathscr{S}$
    3. 若 $A \in \mathscr{S}$，则 $A'$ 可表为 $\mathscr{S}$ 中两两互不相交集合的有限并

    则称 $\mathscr{S}$ 为 $\Omega$ 上的半域或半代数

    1. 域必为半域
    2. 若 $\mathscr{S}$ 为半域，则 ${\displaystyle \mathscr{A}=\left\{A=\sum_{i \in I} S_{i}:\left\{S_{i}, i \in I\right\} \textsf{ 为 } \mathscr{S} \textsf{ 中两两互不相交的有限族}\right\}}$ 是包含 $\mathscr{S}$ 的最小域

3. $\sigma$ 域：设 $\mathscr{F}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若有
    1. 若 $A \in \mathscr{F}$，则 $A' \in \mathscr{F}$
    2. 若对每个 $n \geqslant 1$ 都有 $A_{n} \in \mathscr{F}$，则 ${\displaystyle \bigcup_{i=1}^{\infty} A_{n} \in \mathscr{F}}$

    则称 $\mathscr{F}$ 为 $\Omega$ 上的 $\sigma$ 域或 $\sigma$ 代数

    1. $\mathscr{F}$ 为 $\sigma$ 域，则 $\mathscr{F}$ 为一个域，且当 $n \geqslant 1, A_{n} \in \mathscr{F}$ 时，必有 ${\displaystyle \bigcap_{n \geqslant 1} A_{n} \in \mathscr{F}, \varliminf_{n \rightarrow \infty} A_{n} \in \mathscr{F}, \varlimsup_{{n \rightarrow \infty}} A_{n} \in \mathscr{F}}$
    2. 若 $\mathscr{C} \subseteq \mathcal{P}(\Omega)$，则必存在包含 $\mathscr{C}$ 的最小 $\sigma$ 域
        1. 包含集族 $\mathscr{C}$ 的最小 $\sigma$ 域称为由 $\mathscr{C}$ 生成的 $\sigma$ 域，记为 $\sigma(\mathscr{C})$
        2. 对 $\Omega$ 的子集族 $\mathscr{C}$，若以 $\mathscr{C} \cap A$ 表示集族 $\{B A: B \in \mathscr{C}\}$，则 $\sigma_{\Omega}(\mathscr{C}) \cap A=\sigma_{A}(\mathscr{C} \cap A)$

4. $\text{Borel}$ 域：若 $E$ 为拓扑空间，$\mathscr{B}_{E}$ 为 $E$ 中开集全体生成的 $\sigma$ 域，这一 $\sigma$ 域就称为 $E$ 上的 $\text{Borel}$ 域，$\mathscr{B}_{E}$ 中的集称为 $E$ 中的 $\text{Borel}$ 集．$n$ 维 $\text{Euclid}$ 空间 $\mathbf{R}^{n}$ 中的 $\text{Borel}$ 点集又称为 $n$ 维 $\text{Borel}$ 点集

### 2.2.3 单调类
1. 单调类：设 $\mathscr{M}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若对任一集合序列 $\{A_{n}, n \geqslant 1\} \subseteq \mathscr{M}$，且
    1. 当 $\left\{A_{n}\right\}$ 递增时，即 $A_{n} \subseteq A_{n+1}$，必有 ${\displaystyle \bigcup_{n=1}^{\infty} A_{n} \in \mathscr{M}}$
    2. 当 $\left\{A_{n}\right\}$ 递减时，即 $A_{n} \supseteq A_{n+1}$，必有 ${\displaystyle \bigcap_{n=1}^{\infty} A_{n} \in \mathscr{M}}$

    则称 $\mathscr{M}$ 为 $\Omega$ 上的单调类

    1. 若非空 $\mathscr{C} \subseteq \mathcal{P}(\Omega)$，则必存在包含 $\mathscr{C}$ 的最小单调类 $\mathscr{M}(\mathscr{C})$，也称为由 $\mathscr{C}$ 生成的单调类
    2. $F$ 为 $\sigma$ 域的充要条件是 $\mathscr{F}$ 既是域又是单调类
    3. 单调类定理：若 $\mathscr{A}$ 为域，则 $\sigma(\mathscr{A})=\mathscr{M}(\mathscr{A})$

2. $\pi$ 类：设 $\mathscr{C}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若当 $A, B \in \mathscr{C}$ 时必有 $A B \in \mathscr{C}$，则称 $\mathscr{C}$ 为 $\Omega$ 上的 $\pi$ 类

    $\lambda$ 类：设 $\mathscr{D}$ 是 $\mathcal{P}(\Omega)$ 的非空子集族，若它满足

    1. 当 $A \in \mathscr{D}$ 时必有 $A' \in \mathscr{D}$
    2. 当 $A, B \in \mathscr{D}$ 且 $A B=\varnothing$ 时，必有 $A+B \in \mathscr{D}$
    3. 对递增序列 $\left\{A_{n}, n \geqslant 1\right\} \subseteq \mathscr{D}$，必有 ${\displaystyle \lim _{n \to \infty} A_{n} \in \mathscr{D}}$

    则称 $\mathscr{D}$ 为 $\Omega$ 上的 $\lambda$ 类

    1. $F$ 为 $\sigma$ 域的充要条件是它同时为 $\lambda$ 类和 $\pi$ 类
    2. 对 $\mathcal{P}(\Omega)$ 的任一子类 $\mathscr{C}$，必存在包含 $\mathscr{C}$ 的最小 $\lambda$ 类 $\lambda(\mathscr{C})$
    3. 若 $\mathscr{C}$ 为 $\pi$ 类，则 $\lambda(\mathscr{C})=\sigma(\mathscr{C})$
    4. 若 $\mathscr{D}$ 是 $\lambda$ 类，又 $\mathscr{C}$ 为 $\pi$ 类，$\mathscr{D} \supseteq \mathscr{C}$，则 $\mathscr{D} \supseteq \sigma(\mathscr{C})$
