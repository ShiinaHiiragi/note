# 1 数学基础

## 1.1 ZFC 公理
1. 集合论语言 $\mathscr L(S)$，其中 $S = \{=, \in\}$ 且 $\Omega(=) = \Omega(\in) = 2$
    1. 等词公理
        1. $x = x$
        2. $x = y \rightarrow \left(\alpha \rightarrow \alpha^{\prime}\right)$，其中 $\alpha$ 为原子公式且 $\alpha^{\prime}$ 是将 $\alpha$ 中若干个 $x$ 的出现用 $y$ 替换所得
    2. 定义如下缩写记号：
        1. $\neg x \in A$：$x \notin A$
        2. $\forall x \ (x \in A \to \varphi(x))$：$\forall x \in A \ \varphi(x)$

            $\exists x \ (x \in A \wedge \varphi(x))$：$\exists x \in A \ \varphi(x)$

        3. $\forall x \ (x < A \to \varphi(x))$：$\forall x < A \ \varphi(x)$

            $\exists x \ (x < A \wedge \varphi(x))$ 简写为 $\exists x < A \ \varphi(x)$

        4. $\exists x \ (\varphi(x) \wedge \forall y \ (\varphi(y) \to y = x))$：$\exists !x \ \varphi(x)$

2. $\mathbf{ZFC}$ 公理
    1. 存在公理（$\text{Exi}$）：存在一个集合

        $$
        \exists x \ (x = x)
        $$

        1. 本体论承诺：所谈论的世界不是虚无的，它至少存在一个事物
        2. 定义空集 $\varnothing = \left\{x \in X \mid x\neq x \right\}$，由于至少存在一个集合，因此 $\varnothing$ 是集合且唯一

    2. 外延公理（$\text{Ext}$）：两个有相同元素的集合相等，这表明集合是由其元素决定的

        $$
        \forall X \forall Y \forall u \ (u \in X \leftrightarrow u \in Y) \to X = Y
        $$

    3. 分离公理模式（$\text{Sep}$）：令 $\varphi(u)$ 为公式，对任意集合 $X$，存在一个集合 $Y = \{u \in X \mid \varphi(u)\}$

        $$
        \forall x \exists Y \forall u \ (u\in Y \leftrightarrow u \in X \wedge \varphi(u))
        $$

        1. 对于每一公式 $\varphi(u)$，都存在相应的一个分离公理，也被称为概括公理或子集公理．分离公理是对「概括原则」的限制，即集合必须通过已经存在的集合中被分离出来，从而避免 $\text{Russell}$ 悖论的出现
        2. 任意两个集合的交与差仍然是集合，定义如下

            $$
            \begin{aligned}
            & X \cap Y = \left\{u \in X \mid u \in Y\right\} \\
            & X - Y = \left\{u \in X \mid u \notin Y\right\}
            \end{aligned}
            $$

            特别地，对于任意集合 $X \neq \varnothing$，其任意交 $\bigcap X = \left\{u \mid \forall Y \ (Y \in X \to u \in Y)\right\}$ 也是集合

        3. 补集：设 $X$ 是一个基础集，对于任意 $A \subseteq X$，令 $X - A$ 为 $A$（相对于基础集 $X$）而言的补集，记作 $\overline A$ 或 $A'$

    4. 对集公理（$\text{Pai}$）：对任意 $a, b$，存在一个集合只以 $a, b$ 为元素，表示为 $\{a, b\}$．因此单点集 $\{a\} = \{a, a\}$ 是集合

        $$
        \forall a \forall b \exists c \forall x \ (x \in c \leftrightarrow x = a \vee x = b)
        $$

    5. 并集公理（$\text{Uni}$）：对任意集合 $X$，存在集合 $Y$ 有 $u \in Y$ 当且仅当存在 $z \in X$ 使得 $u \in z$

        $$
        \forall X \exists Y \forall u \ (u \in Y \leftrightarrow \exists z \ (z \in X \wedge u \in z))
        $$

        1. 子集：如果 $X$ 的元素都是 $Y$ 的元素，则称 $X$ 是 $Y$ 的子集，表示为 $X \subseteq Y$；如果 $X \subseteq Y$ 且 $X \neq Y$，则称 $X$ 是 $Y$ 的真子集，记作 $X \subset Y$
        2. 并集：这样的 $Y$ 是唯一的，称作 $X$ 的并，记作 $\bigcup X$．特别地，定义 $X \cup Y = \bigcup \{X, Y\}$
        3. 对称差：定义 $X \triangle Y = (X - Y) \cap (Y - X)$

    6. 幂集公理（$\text{Pow}$）：对任意集合 $X$，存在集合 $Y$ 满足 $u \in Y$ 当且仅当 $u \subseteq X$

        $$
        \forall X \exists Y \forall u \ (u \in Y \leftrightarrow u \subseteq X)
        $$

        这样的集合 $Y$ 是唯一的，称作 $X$ 的幂集，记作 $\mathcal P(X)$

    7. 无穷公理（$\text{Inf}$）：存在集合 $X, \varnothing \in X$ 且对任意 $x \in X$，$x$ 的后继 $S(x) \in X$

        $$
        \exists X \ (\varnothing \in X \wedge \forall x \ (x \in X \to S(x) \in X))
        $$

        1. 后继：对任意集合 $x$，记 $x$ 的后继 $S(x) = x \cup \{x\}$
        2. 无穷公理保证了 $\left\{\varnothing, \left\{\varnothing\right\}, \left\{\varnothing, \left\{\varnothing\right\}\right\}, \cdots\right\} \subseteq X$ 是一个集合
        3. 归纳集：如果集合 $X$ 有 $\varnothing \in X \wedge \forall x \ (x \in X \to S(x) \in X)$，则称 $X$ 为归纳集

    8. 正则公理（$\text{Fnd}$）：对任一集合 $x \neq \varnothing$，存在 $y \in x$ 使得 $y \cap x = \varnothing$

        $$
        \forall x \ (x \neq \varnothing \to \exists y \ (y \in x \wedge x \cap y = \varnothing))
        $$

        1. 对任意非空集合 $x$，总有一个元素 $y$ 是关系 $\in$ 限制在 $x$ 上的「最小元」
        2. 任一集合 $X$ 都不属于自身
        3. 无穷下降链：集合 $\left\{x_0, x_1, \cdots, x_n, x_{n+1}, \cdots\right\}$，其中对任意 $n$ 有 $x_{n+1} \in x_n$，正则公理确保不存在无穷下降链

    9. 替换公理模式（$\text{Rep}$）：给定公式 $\psi(x, y)$ 且对任意 $x$ 都有唯一的 $y$ 使得 $\psi(s, y)$ 成立，则对任一集合 $A$，集合 $\{y \mid \exists x \ (x \in A \wedge \psi(x, y))\}$ 存在

        $$
        \forall A \forall x \in A \ \exists !y \ \psi(x, y) \to \exists B \forall x \in A \ \exists y \in B \ \psi(x, y)
        $$

    10. 选择公理（$\mathbf{AC}$）对任一集合 $X \neq \varnothing$，如果有 $\varnothing \neq X$ 且若 $x, y \in X, x \neq y$，则 $x \cap y = \varnothing$，则存在集合 $S$，对任意 $x \in X$，$S \cap x$ 是单点集

        $$
        \forall x \ (\varnothing \notin X \wedge \forall x \in X \ \forall y \in X \ (x \cap y = \varnothing) \to \exists S \forall x \in X \ \exists !y \ (S \cap x = \{y\}))
        $$

        !!! note "选择公理的等价形式"
            - 对任意非空集合的族 $\left\{X_{i}\right\}_{i \in I}$ 都有 ${\displaystyle \prod_{i \in I} X_{i} \neq \varnothing}$
            - 对任意非空集合的族 $\left\{X_{i}\right\}_{i \in I}$，如果 $i \neq j \to X_{i} \cap X_{j}=\varnothing$，则存在集合 $S$，对每一 $i \in I$，都有 $\left|S \cap X_{i}\right|=1$
            - 对任意非空集合的族 $\left\{X_{i}\right\}_{i \in I}$，存在函数 $f$ 满足对每一 $i \in I$，都有 $f\left(X_{i}\right) \in X_{i}$，称 $f$ 为选择函数
            - 对任意不含空集的非空集族 $\mathscr F$ 上都存在选择映射 $f: \mathscr F \to \bigcup \mathscr F$ 使得对任意 $F \in \mathscr F$ 有 $f(F) \in F$
            - 良序原理：每一集合上都存在一个良序
            - $\text{Hausdorff}$ 极大链条件：任何偏序集都存在一个极大链
            - $\text{Zorn}$ 引理：如果偏序集 $X$ 的每个链都有上界, 则 $X$ 有极大元
            - $\text{Tychonoff}$ 定理：任何一族紧空间的积空间都是紧空间

3. 集合的运算性质：对于任意集合 $X, Y, Z$
    1. 子集的性质
        1. $\varnothing \subseteq X$
        2. $X \subseteq X$
        3. $X \subseteq Y$ 且 $Y \subseteq X$，则 $X = Y$
        4. $X \subseteq Y$ 且 $Y \subseteq Z$，则 $X \subseteq Z$
    2. 交换律
        1. $X \cup Y = Y \cup X$
        2. $X \cap Y = Y \cap X$
    3. 结合律
        1. $(X \cup Y) \cup Z = X \cup (Y \cup Z)$
        2. $(X \cap Y) \cap Z = X \cap (Y \cap Z)$
    4. 分配律
        1. $X \cap (Y \cup Z) = (X \cap Y) \cup (X \cap Z)$
        2. $X \cup (Y \cap Z) = (X \cup Y) \cap (X \cup Z)$
    5. $\text{De Morgan}$ 律
        1. $X - (Y \cup Z) = (X - Y) \cap (X - Z)$
        2. $X - (Y \cap Z) = (X - Y) \cup (X - Z)$
4. 指标系统：设 $\Gamma$ 是一个集合，$\mathscr X$ 是一个集族，则每一个满射 $\varphi: \Gamma \to \mathscr X$ 称为一个以 $\Gamma$ 为指标集的指标系统．记 $X_\gamma = \varphi(\gamma)$，则 $\varphi = \left\{(\gamma, X_\gamma) \mid \gamma \in \Gamma\right\} \subseteq \Gamma \times \mathscr X$ 常记作 $\mathscr X = \{X_\gamma \mid \gamma \in \Gamma\}$ 或 $\left\{X_\gamma\right\}_{\gamma \in \Gamma}$
    1. 定义并集与交集：

        $$
        \begin{aligned}
        & \bigcup_{\gamma \in \Gamma} X_\gamma = \{x \in \mathscr X \mid \exists \gamma \in \Gamma \ (x \in X_\gamma)\} \\
        & \bigcap_{\gamma \in \Gamma} X_\gamma = \{x \in \mathscr X \mid \forall \gamma \in \Gamma \ (x \in X_\gamma)\}
        \end{aligned}
        $$

    2. 对任意集合的指标系统 $\{X_\gamma\}_{\gamma \in \Gamma}$ 与 $\{Y_\delta\}_{\delta \in \Delta}$
        1. ${\displaystyle \bigcup_{\gamma \in \Gamma} X_\gamma = \bigcup X, \bigcap_{\gamma \in \Gamma}X_\gamma = \bigcap X}$
        2. 若 $\{X_\gamma \mid \gamma \in \Gamma\} = \{Y_\delta \mid \delta \in \Delta\}$，则有 ${\displaystyle \bigcup_{\gamma \in \Gamma}X_\gamma=\bigcup_{\delta \in \Delta} Y_\delta, \bigcap_{\gamma \in \Gamma} X_\gamma = \bigcap_{\delta \in \Delta} Y_\delta}$
    3. 对任意集合的指标系统 $\{X_\gamma\}_{\gamma \in \Gamma}$ 与 $\{Y_\gamma\}_{\gamma \in \Gamma}$
        1. ${\displaystyle \bigcap_{\gamma \in \Gamma} (X_\gamma \cap Y_\gamma) = \bigcap_{\gamma \in \Gamma} X_\gamma \cap \bigcap_{\gamma \in \Gamma} Y_\gamma}, {\displaystyle \bigcup_{\gamma \in \Gamma} (X_\gamma \cup Y_\gamma) = \bigcup_{\gamma \in \Gamma} X_\gamma \cup \bigcup_{\gamma \in \Gamma} Y_\gamma}$
        2. ${\displaystyle \bigcap_{\gamma \in \Gamma} X_\gamma \cup \bigcap_{\gamma \in \Gamma} Y_\gamma \subseteq \bigcap_{\gamma \in \Gamma} (X_\gamma \cup Y_\gamma)}, {\displaystyle \bigcup_{\gamma \in \Gamma} X_\gamma \cap \bigcup_{\gamma \in \Gamma} Y_\gamma \supseteq \bigcup_{\gamma \in \Gamma} (X_\gamma \cap Y_\gamma)}$
        3. ${\displaystyle \bigcap_{\gamma \in \Gamma} X_\gamma \cup \bigcap_{\delta \in \Gamma} Y_\delta = \bigcap_{\gamma, \delta \in \Gamma} (X_\gamma \cup Y_\delta)}, {\displaystyle \bigcup_{\gamma \in \Gamma} X_\gamma \cap \bigcup_{\delta \in \Gamma} Y_\delta = \bigcup_{\gamma, \delta \in \Gamma} (X_\gamma \cap Y_\delta)}$
        4. ${\displaystyle \left(\bigcap_{\gamma \in \Gamma} X_\gamma\right) \times \left(\bigcap_{\delta \in \Gamma} Y_\delta\right) = \bigcap_{\gamma, \delta \in \Gamma} (X_\gamma \times Y_\delta)}, {\displaystyle \left(\bigcup_{\gamma \in \Gamma} X_\gamma\right) \times \left(\bigcup_{\delta \in \Gamma} Y_\delta\right) = \bigcup_{\gamma, \delta \in \Gamma} (X_\gamma \times Y_\delta)}$
    4. 对任意集合的指标系统 $\{X_\gamma\}_{\gamma \in \Gamma}$ 与集合 $A$
        1. ${\displaystyle \forall \gamma_0 \in \Gamma \ \left(\bigcap_{\gamma \in \Gamma} X_\gamma \subseteq X_{\gamma_0} \subseteq \bigcup_{\gamma \in \Gamma} X_\gamma\right)}$
        2. 分配律：${\displaystyle A \cap\left(\bigcup_{\gamma \in \Gamma} X_\gamma \right) = \bigcup_{\gamma \in \Gamma} (A \cap X_\gamma), A \cup \left(\bigcap_{\gamma \in \Gamma} X_\gamma \right) = \bigcap_{\gamma \in \Gamma}(A \cup X_\gamma)}$
        3. $\mathrm{De\ Morgan}$ 律：${\displaystyle A - \left(\bigcup_{\gamma \in \Gamma} X_\gamma \right) = \bigcap_{\gamma \in \Gamma} (A - X_\gamma), A - \left(\bigcap_{\gamma \in \Gamma} X_\gamma\right) = \bigcup_{\gamma \in \Gamma} (A - X_\gamma)}$
    5. 设 $R \subseteq X \times Y$，则对于集合 $X$ 的任何一个非空子集族 $\{Z_\gamma\}_{\gamma \in \Gamma}$ 有

        $$
        \begin{aligned}
        & R\left[\bigcup_{\gamma \in \Gamma} Z_\gamma\right] = \bigcup_{\gamma \in \Gamma} R(Z_\gamma) \\
        & R\left[\bigcap_{\gamma \in \Gamma} Z_\gamma\right]\subseteq \bigcap_{\gamma \in \Gamma} R(Z_\gamma)
        \end{aligned}
        $$

        设映射 $f: X \to Y$，则对于集合 $Y$ 的任何一个非空子集族 $\{Z_\gamma\}_{\gamma \in \Gamma}$ 有 

        $$
        \begin{aligned}
        & f^{-1}\left[\bigcup_{\gamma \in \Gamma}Z_\gamma\right]=\bigcup_{\gamma \in \Gamma}f^{-1}(Z_\gamma) \\
        & f^{-1}\left[\bigcap_{\gamma \in \Gamma}Z_\gamma\right]=\bigcap_{\gamma \in \Gamma}f^{-1}(Z_\gamma)
        \end{aligned}
        $$

    6. 设 $S$ 为非空集合的非空族，$\left\{X_\gamma\right\}_{\gamma \in \bigcup S}$ 为以 $\bigcup S$ 为指标集的指标系统，则有

        $$
        \begin{aligned}
        & {\displaystyle \bigcup_{\gamma \in \bigcup S} X_\gamma = \bigcup_{C \in S} \left(\bigcup_{\gamma \in C} X_\gamma\right)} \\
        & {\displaystyle \bigcap_{\gamma \in \bigcup S} X_\gamma = \bigcap_{C \in S} \left(\bigcap_{\gamma \in C} X_\gamma\right)}
        \end{aligned}
        $$

5. 多重集：对象可重复出现的全体，集合中不同元素个数为 $n$ 时，称之为 $n$ 元多重集
    1. 重数：多重集中对象出现的次数，当表示元素重复任意多次数时，可记为 $\infty$
    2. 若有限多重集 $S$ 有 $a_1, a_2, \cdots, a_n$ 共 $n$ 个不同的元素，且 $a_i$ 的重数为 $p_i$，则 $S = \left\{p_1 \cdot a_1, p_2 \cdot a_2, \cdots, p_n \cdot a_n\right\}$
6. 类与真类：令 $\varphi(u)$ 为一个性质，$\{u \mid \varphi(u)\}$ 不一定是集合，这样的对象被称为类，不是集合的类被称为真类
    1. 每个集合都是类，例如 $\left\{x \mid x \neq x\right\}$
    2. 用 $\mathbf V = \left\{x \mid x = x\right\}$ 表示「所有集合」的类，$x \in \mathbf V$ 不是集合论语言的公式，而只是公式 $x = x$ 的一种记法

## 1.2 关系与映射
### 1.2.1 关系
1. 有序对：设 $a, b$ 为集合，则 $a, b$ 组成的有序对定义为 $(a, b) = \left\{\{a\}, \{a, b\}\right\}$
    1. 由对集公理可知，对于任意集合 $a, b$，$(a, b)$ 是集合
    2. 任何两个有序对 $(a_1, b_1), (a_2, b_2)$ 有 $(a_1, b_1) = (a_2, b_2)$ 当且仅当 $a_1 = a_2 \wedge b_1 = b_2$
    3. 假设 $(x_1, x_2, \cdots, x_{n-1})$ 已有定义，则 $n$ 元序组定义为 $(x_1, x_2, \cdots, x_n) = \left((x_1, x_2, \cdots, x_{n-1}), x_n\right)$
2. $\text{Descartes}$ 积：设 $X, Y$ 为集合，则 $X$ 与 $Y$ 的 $\text{Descartes}$ 积定义为 $X \times Y = \left\{(x, y) \mid x \in X \wedge y \in Y\right\}$，也称作直积．特别地，若 $X = Y$，则将 $X \times X$ 记作 $X^2$
    1. 对于任意集合 $X, Y, Z$
        1. $(X \cup Y) \times Z = (X \times Z) \cup (Y \times Z)$
        2. $(X \cap Y) \times Z = (X \times Z) \cap (Y \times Z)$
        3. $(X - Y) \times Z = (X \times Z) - (Y \times Z)$
    2. $n$ 个集合 $X_1, X_2, \cdots, X_n$ 的 $\text{Descartres}$ 积定义为

        $$
        X_1 \times X_2 \times \cdots \times X_n = \left\{(x_1, x_2, \cdots, x_n) \mid x_1 \in X_1 \wedge x_2 \in X_2 \wedge \cdots \wedge x_n \in X_n\right\}
        $$

        特别地，定义 $X^n = \small \underbrace{\normalsize X \times X \times \cdots \times X}_{\normalsize n} \normalsize$

3. 指标系统的 $\text{Descartes}$ 积
    1. 投射与自然投射
        1. 投射：设 $X_1, X_2, \cdots, X_n$ 是 $n \ (n\geqslant 1)$ 个集合，从 $X=X_1\times X_2\times \cdots, X_n$ 到其第 $i \ (1 \leqslant i \leqslant n)$ 个坐标集 $X_i$ 的投射 $p_i: X \to X_i$ 定义为 $\forall X = (a_1, a_2, \cdots, a_n) \in X \ (p_i(X) = a_i)$，即

            $$
            p_i=\{((a_1, a_2, \cdots, a_n), a_i) \mid (a_1, a_2, \cdots, a_n)\in X\} \subseteq X \times X_\gamma
            $$

        2. 自然投射：设 $R$ 是集合 $X$ 中的一个等价关系，从集合 $X$ 到其商集 $X/R$ 的自然投射 $p:X\to X/R$ 定义为 $p=\{(X, [X]) \mid X\in X\}\subseteq X\times X/R$

    2. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 的 $\text{Descartes}$ 积为 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} = \left\{ \left. x: \Gamma\to {\displaystyle \bigcup_{\gamma \in \Gamma}X_\gamma} \ \right| \ \forall \gamma \in \Gamma \ (x(i)\in X_\gamma)\right\}$
        1. 对于每一个 $\gamma \in \Gamma$，集合 $X_\gamma$ 为 $\text{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $\gamma$ 个坐标集
        2. 对于 $\gamma \in \Gamma$，定义 $p_\alpha: {\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} \to X_\gamma$，使得对于任意 $x\in {\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 有 $p_\alpha(x)=x(\alpha)$，称为 $\text{Descartes}$ 积的第 $\alpha$ 个投射
    3. 设给定了集族 $\{X_\gamma\}_{\gamma \in \Gamma}$，则 $\text{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} \neq \varnothing \leftrightarrow \forall \gamma \in \Gamma \ (X_\gamma\neq \varnothing)$
    4. 给定两个集族 $\{X_\gamma\}_{\gamma \in \Gamma}, \{Y_\gamma\}_{\gamma \in \Gamma}$，且 $\forall \gamma \in \Gamma \ (Y_\gamma \subseteq X_\gamma)$．若对于任意 $\gamma \in \Gamma$，都有 $Y_\gamma \neq \varnothing$，则对于任意 $\alpha \in \Gamma$ 有 $p_\alpha\left({\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}\right) = Y_\alpha$
        1. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 对每一个 $\gamma \in \Gamma$ 有 $X_\gamma\neq \varnothing$，则对于任意 $\alpha \in \Gamma$，$\text{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $\alpha$ 个投影 $p_\alpha$ 都是满射
        2. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 对每一个 $\gamma \in \Gamma$ 有 $X_\gamma\neq \varnothing$，又设 $\varnothing \neq \Gamma_1 \subseteq \Gamma$，集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 满足条件：对于每一个 $\gamma \in \Gamma_1$ 有 $\varnothing \neq a_i\subseteq X_\gamma$，则对于每一个 $\alpha \in \Gamma$ 有

            $$
            p_\alpha\left({\displaystyle \bigcap_{\gamma \in \Gamma_1}p^{-1}_i(a_i)}\right) =
            \left\{\begin{aligned}
            & x_\alpha, & \alpha\in \Gamma-\Gamma_1 \\
            & a_\alpha, & \gamma \in \Gamma_1
            \end{aligned}\right.
            $$

            其中 $p_\alpha$ 是 $\text{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $\alpha$ 个投射

4. 关系：对于集合 $R$，如果存在 $X, Y$ 使得 $R \subseteq X \times Y$，则称 $R$ 为二元关系，用 $R(x, y)$ 或 $xRy$ 表示 $(x, y) \in R$．其中定义域（或称作投影）定义为 $\mathrm{dom}(R) = \left\{x \mid \exists y \ R(x, y)\right\}$，值域定义为 $\mathrm{ran}(R) = \left\{y \mid \exists x \in X \ R(x, y)\right\}$
    1. 像与逆像：集合 $A \subseteq X$ 在关系 $R$ 下的像定义为 $R[A] = \left\{y \in \mathrm{ran}(R) \mid \exists x \in A \ (R(x, y))\right\}$；集合 $B \subseteq Y$ 在关系 $R$ 下的逆像（也称作原像）定义为 $R^{-1}[B] = \left\{x \in \mathrm{dom}(R) \mid \exists y \in B \ (R(x, y))\right\}$
        1. $R[A \cup B] = R[A] \cup R[B]$
        2. $R[A \cap B] \subseteq R[A] \cap R[B]$
        3. $R[A - B] \supseteq R[A] - R[B]$
        4. 对于任意映射 $f$ 有 $f[A \cap B] \subseteq f[A] \cap f[B], f^{-1}[A \cap B] = f^{-1}[A] \cap f^{-1}[B]$

        对于集合 $\mathscr{A} \subseteq \mathcal{P}(X)$，定义关系 $R$ 下的像为 $R[\mathscr{A}] = \left\{R[A] \in \mathcal{P}(Y) \mid A \in \mathscr{A}\right\}$；对于集合 $\mathscr{B} \subseteq \mathcal{P}(Y)$，定义关系 $R$ 下的逆像（也称作原像）为 $R^{-1}[\mathscr{B}] = \left\{R^{-1}[B] \in \mathcal{P}(X) \mid B \in \mathscr{B}\right\}$

    2. 逆关系与复合关系：定义二元关系 $R$ 的逆为 $R^{-1} = \left\{(x, y) \mid R(y, x)\right\}$；复合为 $S \circ R = \left\{(x, z) \mid \exists y \ (R(x, y) \wedge S(y, z))\right\}$
        1. $(R^{-1})^{-1} = R, (S \circ R)^{-1} = R^{-1} \circ S^{-1}$
        2. $X \circ (Y \circ Z) = (X \circ Y) \circ Z$
        3. $(X \cup Y) \circ Z = (X \circ Z) \cup (Y \circ Z), Z \circ (X \cup Y) = (Z \circ X) \cup (Z \circ Y)$
        4. $(X \cap Y) \circ Z \subseteq (X \circ Z) \cap (Y \circ Z), Z \circ (X \cap Y) \subseteq (Z \circ X) \cap (Z \circ Y)$
        5. $\mathrm{dom}(R^{-1}) = \mathrm{ran}(R), \mathrm{ran}(R^{-1}) = \mathrm{dom}(R)$
        6. $\mathrm{dom}(S \circ R) \subseteq \mathrm{dom}(R), \mathrm{ran}(S \circ R) \subseteq \mathrm{ran}(S)$
    3. 幂：设 $R^0$ 为 $X$ 上的恒等关系，定义 $R^{n+1} = R^{n} \circ R$，设 $m, n \in \mathbf N$
        1. $R^m \circ R^n = R^{m+n}$
        2. $(R^{m})^{n} = R^{mn}$
    4. 二元关系的性质：令 $R \subseteq X^2$
        1. 自反性：$R$ 是自反的当且仅当对于任意 $x \in X$ 有 $(x, x) \in R$；$R$ 是反自反的当且仅当对于任意 $x \in X$ 有 $R(x, x) \notin R$
        2. 对称性：$R$ 是对称的当且仅当对于任意 $x, y \in X$ 有 $(x, y) \in R \to (y, x) \in R$；$R$ 是反对称的当且仅当对于任意 $x, y \in X$ 有 $(x, y) \in R \wedge (y, x) \in R \to x = y$
        3. 传递性：$R$ 是传递的当且仅当对于任意 $x, y, z \in X$ 有 $(x, y) \in R \wedge (y, z) \in R \to (x, z) \in R$
    5. $n$ 元关系：对于任一集合 $R$，如果存在 $X_1, X_2, \cdots, X_n$ 使得 $R \subseteq X_1 \times X_2 \times \cdots \times X_n$，则称 $R$ 为 $n$ 元关系，用 $R(X_1, X_2, \cdots, X_n)$ 表示 $(X_1, X_2, \cdots, X_n) \in R$．特别地，如果 $R \subseteq X^n$，则称 $R$ 是 $X$ 上的 $n$ 元关系

5. 等价关系：二元关系 $R$ 是等价的当且仅当 $R$ 是自反、对称且是传递的，用 $\sim$ 表示
    1. 等价类：设 $\sim$ 是集合 $X$ 上的等价关系，对任意 $x \in X$，定义 $x$ 关于 $\sim$ 的等价类为 $[x]_{\sim} = \left\{t \in X \mid t \sim x\right\}$
        1. 商集：设 $\sim$ 是集合 $X$ 上的等价关系，则 $X / \sim = \left\{[x]_{\sim} \mid x \in X\right\}$ 称为 $X$ 的商集．易知 $X / \sim$ 是 $X$ 的一个划分
        2. 对任意 $x, y \in X$，有 $[x]_{\sim} = [y]_{\sim}$ 或 $[x]_{\sim} \cap [y]_{\sim} = \varnothing$ 成立
    2. 划分：令 $X$ 为集合，$S \subseteq \mathcal P(X)$，如果 $S$ 有 ① 对所有 $a, b \in S$，有 $a \neq b \to a \cap b = \varnothing$；② $\bigcup S = X$，则称 $S$ 是 $X$ 的划分
        1. 令 $S$ 为 $X$ 的划分，定义 $X$ 上的二元关系 $\sim_S = \left\{(x, y) \in X^2 \mid \exists c \in S \ (s \in c \wedge y \in c)\right\}$，易知 $\sim_S$ 是等价关系

            !!! note "等价关系与划分的对应"
                1. 设 $\sim_1, \sim_2$ 是 $X$ 上的等价关系，则 $\sim_1 = \sim_2$ 当且仅当 $X / \sim_1 = X / \sim_2$
                2. 设 $\sim$ 为 $X$ 上的等价关系，则 $\sim_{X / \sim} = \sim$ 且 $X / \sim_S = S$

                总而言之，集合 $X$ 上的所有等价关系与划分形成一一对应

        2. 划分的积：设 $\sim_1, \sim_2$ 是 $X$ 上的等价关系，对应的划分为 $S_1, S_2$．定义 $S_1 \cdot S_2 = X / (\sim_1 \cap \sim_2)$ 为划分的积，其中 $\sim_1 \cap \sim_2$ 为等价关系
        3. 划分的和：设 $\sim_1, \sim_2$ 是 $X$ 上的等价关系，对应的划分为 $S_1, S_2$．定义 $S_1 + S_2 = X / \left(t(\sim_1 \cup \sim_2)\right)$ 为划分的和，其中 $\sim_1 \cup \sim_2$ 为自反对称关系

    3. 细分：设 $R_1, R_2 \subseteq X^2$ 为两个二元关系，如果 $R_1 \subseteq R_2$，则称 $R_1$ 细分 $R_2$
        1. 对任意 $x, y \in X$，有 $x R_1 y \to x R_2 y$
        2. 如果 $R_1, R_2$ 都是等价关系，则对任何 $x \in X$，$x$ 对 $R_1$ 的等价类包含在 $x$ 对 $R_2$ 的等价类中
        3. 设 $S_1, S_2$ 是 $X$ 的两个划分，则
            - $S_1 \cdot S_2$ 细分 $S_1$ 与 $S_2$，$S_1$ 与 $S_2$ 细分 $t(S_1 \cup S_2)$
            - 设 $S$ 为 $X$ 的划分，若 $S$ 细分 $S_1$ 与 $S_2$，则 $S$ 细分 $S_1 \cdot S_2$
            - 设 $S$ 为 $X$ 的划分，若 $S_1$ 与 $S_2$ 细分 $S$，则 $S_1 + S_2$ 细分 $S$

6. 序：令 $\prec, \leqslant$ 为 $X$ 上的二元关系
    1. 拟序：如果 $\prec$ 具有自反性与传递性，则称 $\prec$ 是 $X$ 上的拟序
    2. 偏序：如果拟序关系 $\leqslant$ 具有反对称性，则称 $\leqslant$ 是 $X$ 上的偏序或序，用 $(X, \leqslant)$ 表示
        1. 用 $x \geqslant y$ 表示 $x \leqslant^{-1} y$；用 $x < y$ 表示 $x \leqslant y \wedge x \neq y$，用 $x > y$ 表示 $x \geqslant y \wedge x \neq y$
        2. 极大元与极小元：如果 $a \in X$ 且 $\forall x \in X \ (\neg (a > x))$，则称 $a$ 为 $X$ 的极小元；反之如果 $a \in X$ 且 $\forall x \in X \ (\neg (a < x))$，则称 $a$ 为 $X$ 的极大元
        3. 最小元与最大元：如果 $a \in X$ 且 $\forall x \in X \ (a \leqslant x)$，则称 $a$ 为 $X$ 的最小元；反之如果 $a \in X$ 且 $\forall x \in X \ (a \geqslant x)$，则称 $a$ 为 $X$ 的最大元
        4. 上界与下界：设 $X_0 \subseteq X$，若存在 $a \in X$ 使得对于任意 $x \in X_0$ 都有 $a \geqslant x$，则称 $a$ 为 $X_0$ 在 $X$ 中的上界；若存在 $a \in X$ 使得对于任意 $x \in X_0$ 都有 $a \leqslant x$，则称 $a$ 为 $X_0$ 在 $X$ 中的下界
        5. 上确界与下确界：设 $X_0 \subseteq X$，若 $X_0$ 在 $X$ 中所有上界的集合有最小元 $a_0$，则称 $a_0$ 是 $X_0$ 的上确界，记作 $\sup(X_0)$ 或 ${\displaystyle \sup_{x \in X_0}\left\{x\right\}}$；若 $X_0$ 在 $X$ 中所有下界的集合有最大元 $a_0$，则称 $a_0$ 是 $X_0$ 的下确界，记作 $\inf(X_0)$ 或 ${\displaystyle \inf_{x \in X_0}\left\{x\right\}}$
            - 函数（包括序列）的上下界或上下确界一般指其值域的上下界或上下确界
            - 设数集有上（下）确界，则此上（下）确界唯一

        !!! note "逆关系的序"
            如果 $R$ 是 $X$ 上的序，则 $R^{-1}$ 也是 $X$ 上的序，令 $X_0 \subseteq X$

            1. $x$ 是 $X_0$ 在序 $R$ 下的极小元当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的极大元
            2. $x$ 是 $X_0$ 在序 $R$ 下的最小元当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的最大元
            3. $x$ 是 $X_0$ 在序 $R$ 下的上确界当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的下确界

    3. 全序：如果偏序关系 $\leqslant$ 还具有连接性，即对所有 $x, y \in X$ 有 $x \leqslant y$ 或 $y \leqslant x$，则称 $\leqslant$ 是 $X$ 上的全序或线序
        1. 全序集的性质
            - 全序集的任意两个元素是可比较的
            - 全序集中极小元与最小元、极大元与最大元是同一的
        2. 完备全序集：具有最小上界性质的稠密线序集合
            - 实数集合 $(\mathbf R, <^{\mathbf R})$ 是完备全序集
            - 任何包含可数稠密子集的无端点完备全序集都与 $(\mathbf R, <^{\mathbf R})$ 同构
        3. 最小上界性质：全序集 $(X, \leqslant)$ 如果有「对任意 $X$ 的非空子集 $Y$，如果 $Y$ 有上界，则 $Y$ 在 $X$ 中有上确界」，则称 $X$ 有最小上界性质
            - 有理数集合 $(\mathbf Q, \leqslant^{\mathbf Q})$ 没有最小上界性质
            - 实数集合 $(\mathbf R, \leqslant^{\mathbf R})$ 有最小上界性质

7. 关系的闭包：设 $R \subseteq X^2$ 的二元关系，定义 $R$ 的自反（对称、传递）闭包 $R'$，满足以下条件
    1. $R'$ 是自反的（对称的、传递的）
    2. $R \subseteq R'$
    3. 对任一自反（对称、传递）关系 $R''$，若 $R \subseteq R''$，则 $R' \subseteq R''$

    分别记三种 $R'$ 为 $r(R), s(R)$ 与 $t(R)$

    4. 设 $R \subseteq X^2$ 为二元关系
        1. $R$ 是自反的当且仅当 $r(R) = R$
        2. $R$ 是对称的当且仅当 $s(R) = R$
        3. $R$ 是传递的当且仅当 $t(R) = R$
    5. 设 $R_1, R_2 \subseteq X^2$ 且 $R_1 \subseteq R_2$，则
        1. $r(R_1) \subseteq r(R_2)$
        2. $s(R_1) \subseteq s(R_2)$
        3. $t(R_1) \subseteq t(R_2)$
    6. 设 $R \subseteq X^2$ 为二元关系
        1. $R$ 是自反的，则 $s(R)$ 与 $t(R)$ 都是自反的
        2. $R$ 是对称的，则 $r(R)$ 与 $t(R)$ 都是对称的
        3. $R$ 是传递的，则 $r(R)$ 是传递的
    7. 设 $R \subseteq X^2$ 为二元关系
        1. $r(s(R)) = s(r(R))$
        2. $r(t(R)) = t(r(R))$
        3. $s(t(R)) \subseteq t(s(R))$
    8. 求闭包的一般表达式：设 $R \subseteq X^2$ 为二元关系
        1. 设 $I_X$ 为集合 $X$ 上的恒等关系，则 $r(R) = R \cup I_X$
        2. $s(R) = R \cup R^{-1}$
        3. $t(R) = {\displaystyle \bigcup_{n \in \mathbf Z_+} R^n}$，进一步当 $|X| = n \in \mathbf Z_+$ 时，则 $t(R) = {\displaystyle \bigcup_{i=1}^n R^i}$

### 1.2.2 映射
1. 二元关系 $f$ 若有 $(x, y) \in f \wedge (x, z) \in f \to y = x$，则称 $f$ 是映射，其中 $y$ 称作 $f$ 在 $x$ 处的值，记作 $f(x) = y$ 或 $f: x \mapsto y$．若 $\mathrm{dom}(f) = X, \mathrm{ran}(f) \subseteq Y$，则称 $f$ 是 $X$ 到 $Y$ 的映射或算子，记作 $f: X \to Y$ 或 $x \mapsto f(x)$
    1. 映射的等同：令 $f, g$ 为映射，$f = g$ 当且仅当 $\mathrm{dom}(f) = \mathrm{dom}(g)$ 且对于所有 $x \in \mathrm{dom}(f)$ 都有 $f(x) = g(x)$
    2. 特殊映射：设 $f: X \to Y$ 是一个映射
        1. 函数：当 $X, Y$ 均为数集时，称 $f$ 为函数
        2. 泛函：当 $X \neq \varnothing$ 且 $Y$ 为数集时，称 $f$ 为泛函
        3. 变换：当 $X = Y \neq \varnothing$ 时，称 $f$ 为 $X$ 上的变换
    3. 映射的种类：设 $f: X \to Y$ 是一个映射
        1. 单射：对于所有的 $x_1, x_2 \in X$，若 $x_1 \neq x_2$，则 $f(x_1) \neq f(x_2)$
        2. 满射：$\mathrm{ran}(f) = Y$ 的映射
        3. 双射：既是单射又是满射的映射
    4. 映射例举
        1. 恒等映射：对任意集合 $X$，定义 $\mathrm{id}_X: X \to X$ 为 $\mathrm{id}_X(x) = x$，作为关系被称为 $X$ 上的恒等关系
        2. 嵌入映射：对任意集合 $X$，定义 $X_{0} \subseteq X$ 到 $X$ 的嵌入映射 $i(x)=x, \forall x \in X_0$
        3. 特征映射：对任意集合 $X$，定义特征映射（或示性映射）$I_X(x) = \left\{\begin{aligned} & 1, & x \in X \\ & 0, & x \notin X \end{aligned}\right.$

            !!! note "特征映射的性质"
                - ${\displaystyle I_{\alpha} \bigcup=\bigvee I_{A_{\alpha}}\left(\bigvee I_{A_{\alpha}} \triangleq \sup I_{A_{\alpha}}\right), \  I_{\sum A_{\alpha}}=\sum I_{A_{\alpha}}}$
                - ${\displaystyle I_{\alpha} A_{\alpha}=\bigwedge I_{A_{\alpha}}\left(\bigwedge I_{A_{\alpha}} \triangleq \inf I_{A_{\alpha}}\right)}$
                - $I_{A'}=1-I_{A}$
                - $I_{A-B}=I_{A}-I_{B}$
                - $I_{A \triangle B}=\left|I_{A}-I_{B}\right|=I_{A}+I_{B} \pmod{2}$

        4. 部分映射：在定义域的某些点上没有定义的映射，与之相对的是全映射

    5. 限制与扩张：对任意映射 $f$ 与集合 $A$，称映射 $g = f \upharpoonright A = \left\{(x, y) \in f \mid x \in A\right\}$ 为 $f$ 到 $A$ 上的限制，$f$ 是 $g$ 的扩张或延拓

2. 逆映射与复合映射
    1. 逆映射：一个映射是可逆的当且仅当它是单射，如果 $f$ 是可逆的，则 $f^{-1}$ 也是可逆的且 $(f^{-1})^{-1} = f$．当 $f$ 为函数时，称 $f^{-1}$ 为 $f$ 的反函数
    2. 复合映射：令 $f, g$ 为映射，则复合 $h = g \circ f$ 也是映射，且 $h$ 的定义域为 $\mathrm{dom}(h) = \mathrm{dom}(f) \cap f^{-1}[\mathrm{dom}(g)]$
        1. 对于所有 $x \in \mathrm{dom}(h)$ 均有 $h(x) = g(f(x))$
        2. 简记 $[f^n](x) = \small \underbrace{\normalsize f \circ f \circ \cdots \circ f}_{\normalsize n} \normalsize (x)$，并将其与 $f^n(x)$ 区分
3. 相容性：对于映射 $f, g$，如果对所有的 $x \in \mathrm{dom}(f) \cap \mathrm{dom}(g)$ 都有 $f(x) = g(x)$，则称映射 $f, g$ 是相容的
    1. 如果映射的集合 $\mathscr F$ 中任意两个映射都是相容的，则称 $\mathscr F$ 为相容的系统
    2. 映射 $f, g$ 相容当且仅当 $f \cap g$ 是映射，当且仅当 $f \upharpoonright \left(\mathrm{dom}(f) \cap \mathrm{dom}(g)\right) = g \upharpoonright \left(\mathrm{dom}(f) \cap \mathrm{dom}(g)\right)$
4. 令 $X, Y$ 是集合，$X$ 到 $Y$ 的所有映射组成的集合定义为 $Y^X = \left\{f \mid f: X \to Y\right\}$
    1. 对任意集合 $X, Y$，$X^Y$ 都是集合
    2. 对任意集合 $X$，有 $\varnothing^{X} = \varnothing$
    3. 注意到 $\varnothing$ 到任意集合 $Y$ 都有一个空函数 $\varnothing_Y$，因此对任意集合 $Y$，有 $Y^{\varnothing} = \left\{\varnothing_{Y}\right\}$

## 1.3 数系
### 1.3.1 自然数集
1. 定义自然数：

    $$
    \begin{aligned}
    & 0 = \varnothing \\
    & 1 = 0 \cup \{0\} = \{\varnothing\} \\
    & 2 = 1 \cup \{1\} = \{\varnothing, \{\varnothing\}\} \\
    & 3 = 2 \cup \{2\} = \{\varnothing, \{\varnothing\}, \{\varnothing, \{\varnothing\}\}\} \\
    & \cdots
    \end{aligned}
    $$

    则可定义全体自然数的集合 $\mathbf N = \{n \mid \forall X \ (X$ 是归纳集 $\to n \in X)\}$

    1. 由分离公理与无穷公理可知，$\mathbf N$ 是一个集合且唯一
    2. $\mathbf N$ 是归纳集并且是任何归纳集的子集
    3. $\mathbf N$ 上的归纳原理：令 $\varphi(x)$ 为一性质
        1. 第一归纳原理：$(\varphi(0) \wedge \forall n \in N \ (\varphi(n) \to \varphi(n + 1))) \to \forall n \in \mathbf N \ \varphi(n)$
        2. 第二归纳原理：$\forall n \in N \ (\forall k < n \ \varphi(k) \to \varphi(n)) \to \forall n \in \mathbf N \ \varphi(n)$

2. $\mathbf N$ 上的序：定义 $x \underline\in y = x \in y \vee x = y$
    1. 对所有自然数 $m, n, k$ 有
        1. $0 \underline\in n$ 且 $n \notin n$
        2. $n \subset n + 1$ 且 $n \in n + 1$
        3. $k \in n + 1$ 当且仅当 $k \underline\in n$
        4. $m \in n$ 当且仅当 $m \subset n$
        5. 如果 $m \in n$，则 $m + 1 \underline\in n$
        6. 如果 $k \in m \wedge m \in n$ 则 $k \in n$
        7. 如果 $x \in n$，则 $x \in \mathbf N$
    2. 对任意 $m, n \in \mathbf N$，定义 $m \leqslant n = m \underline\in n$ 且 $m < n = m \in n$
    3. $(N, \underline\in)$ 是一个全序集，$(\mathbf N \leqslant)$ 是一个良序集
3. 递归定理：对任意集合 $A$，任意 $a \in A$ 以及任意映射 $h: A \times \mathbf N \to A$，存在唯一的映射 $f: \mathbf N \to A$ 满足 ① $f(0) = a$；② 对所有 $n \in N$，有 $f(n + 1) = g(f(n), n)$
    1. 推广到带参数的递归定理：令 $a: P \to A, g: P \times A \times \mathbf N \to A$ 为映射，则存在唯一的映射 $f: P \times \mathbf N \to A$ 有 ① $\forall p \in P \ (f(p, 0) = a(p))$；② $\forall n \in \mathbf N \ \forall p \in P \ (f(p, n + 1) = g(p, f(p, n), n))$
    2. 定义加法：存在唯一的函数 $+: \mathbf N \times \mathbf N \to \mathbf N$ 满足
        1. 对所有 $m \in \mathbf N$ 有 $+(m, 0) = m$
        2. 对所有 $m, n \in \mathbf N$ 有 $+(m, S(n)) = S(+(m, n))$

        通常将 $+(m, n)$ 写作 $m + n$

    3. 定义乘法：存在唯一的函数 $\cdot: \mathbf N \times \mathbf N \to \mathbf N$ 满足
        1. 对所有 $m \in \mathbf N$ 有 $\cdot(m, 0) = 0$
        2. 对所有 $m, n \in \mathbf N$ 有 $\cdot(m, S(n)) = +(\cdot(m, n), m)$

        通常将 $\cdot(m, n)$ 写作 $m \cdot n$ 或 $mn$

    4. 定义乘方：存在唯一的函数 $p: \mathbf N \times \mathbf N \to \mathbf N$ 满足
        1. 对所有 $m \in \mathbf N$ 有 $p(m, 0) = 1$
        2. 对所有 $m, n \in \mathbf N$ 有 $p(m, S(n)) = \cdot(p(m, n), n)$

        通常将 $p(m, n)$ 写作 $m^n$，幂运算具有右结合性

    !!! note "常用运算符号"
        3. 定义累加符号为 ${\displaystyle \sum_{i = k}^n f(i) = f(k) + f(k + 1) + \cdots + f(n)}$，具有如下性质
            - ${\displaystyle \sum_{k=0}^n a_k =\sum_{j=0}^n a_j}$
            - ${\displaystyle \sum_{k=0}^n a_k =\sum_{j=N}^{n+N} a_{j-N}}$
            - ${\displaystyle \sum_{k=0}^n a_k+\sum_{k=0}^n b_k=\sum_{k=0}^n\left(a_k+b_k\right)}$
            - ${\displaystyle \left(\sum_{j=1}^m a_j\right)\left(\sum_{k=1}^n b_k\right)=\sum_{j=1}^m \sum_{k=1}^n a_j b_k}$
            - ${\displaystyle \sum_{j=1}^m \sum_{k=1}^n a_{j k}=\sum_{k=1}^n \sum_{j=1}^m a_{j k}}$
        4. 定义累乘符号为 ${\displaystyle \prod_{i = k}^n f(i) = f(k) f(k + 1) \cdots f(n)}$
            - ${\displaystyle \prod_{k=0}^n a_k=\prod_{j=0}^n a_j}$
            - ${\displaystyle \prod_{k=0}^n a_k=\prod_{j=N}^{n+N} a_{j-N}}$
            - ${\displaystyle \prod_{k=0}^n a_k \prod_{k=0}^n b_k=\prod_{k=0}^n a_k b_k}$
            - ${\displaystyle \prod_{j=1}^m \prod_{k=1}^n a_{j k}=\prod_{k=1}^n \prod_{j=1}^m a_{j k}}$

        对于二元运算符 $*$，默认其运算具有左结合性：$a * b * c = (a * b) * c$

4. 自然数集 $\mathbf N$ 的性质
    1. $\mathbf N$ 上的加法
        1. 加法交换律：$\forall m, n \in \mathbf N \ (m + n = n + m)$
        2. 加法结合律：$\forall m, n, k \in \mathbf N \ ((m + n) + k = m + (n + k))$
        3. 零元：$\forall m \in \mathbf N \ (m + 0 = m)$
    2. $\mathbf N$ 上的乘法
        1. 乘法交换律：$\forall m, n \in \mathbf N \ (m \cdot n = n \cdot m)$
        2. 乘法结合律：$\forall m, n, k \in \mathbf N \ ((m \cdot n) \cdot k = m \cdot (n \cdot k))$
        3. 乘法对加法的分配律：$\forall m, n, k \in \mathbf N \ (m \cdot (n + k) = m \cdot n+m \cdot k)$
        4. 单位元：$\forall m \in \mathbf N \ (m \cdot 1 = m)$
    3. 自然数集上的序
        1. 反自反性：$\forall n \in \mathbf N \ (n \nless n)$
        2. 传递性：$\forall m, n \in \mathbf N \ ((m < n \wedge n < k) \to m < k)$
        3. 三歧性：$\forall m, n \in \mathbf N \ (m < n \vee m = n \vee n < m)$
        4. 加法保序性：$\forall m, n, k \in \mathbf N \ (m < n \to m + k < n + k)$
        5. 乘法保序性：$\forall m, n, k \in \mathbf N \ ((m < n \wedge k \neq 0)\to mk < nk)$

### 1.3.2 整数集
1. 整数集合：定义关系 $\sim$ 是 $\mathbf N \times \mathbf N$ 上的等价关系 $(m_1, n_1) \sim (m_2, n_2)$ 当且仅当 $m_1 +^{\mathbf N} n_2 = m_2 +^{\mathbf N} n_1$，令 $\mathbf Z = \mathbf N \times \mathbf N / \sim$．特别地，$0^{\mathbf Z} = [(0, 0)]$
2. 定义整数集合上的序与运算
    1. 序：$[(m_1, n_1)] \leqslant^{\mathbf Z} [(m_2, n_2)] \leftrightarrow m_1 +^{\mathbf N} n_2 \leqslant^{\mathbf N} m_2 +^{\mathbf N} n_1$
    2. 加法：$[(m_1, n_1)] +^{\mathbf Z} [(m_2, n_2)] = [(m_1 +^{\mathbf N} m_2), n_1 +^{\mathbf N} n_2]$
    3. 乘法：$[(m_1, n_1)] \cdot^{\mathbf Z} [(m_2, n_2)] = [(m_1 \cdot^{\mathbf N} m_2 +^{\mathbf N} n_1 \cdot^{\mathbf N} n_2, m_1 \cdot^{\mathbf N} n_2 +^{\mathbf N} n_1 \cdot^{\mathbf N} m_2)]$
3. 零元：对任意整数 $a$，存在唯一的整数 $a'$ 使得 $a +^{\mathbf N} a' = 0^{\mathbf Z}$
    1. 相反数与减法：将整数 $a'$ 记作 $-a$，定义 $a -^{\mathbf Z} b = a +^{\mathbf Z} (-b)$
    2. 绝对值：设 $a \in \mathbf Z$，定义绝对值

        $$
        |a| = \left\{\begin{aligned}
        & a, & a \geqslant^{\mathbf Z} 0^{\mathbf Z} \\
        & -a, & a <^{\mathbf Z} 0^{\mathbf Z}
        \end{aligned}\right.
        $$

        于是对于任意整数，$|a| \geqslant^{\mathbf Z} 0^{\mathbf Z}$

4. 将 $\mathbf Z$ 看作 $\mathbf N$ 的扩张，称 $\mathbf N$ 嵌入 $\mathbf Z$ 中：存在函数 $f: \mathbf N \to \mathbf Z$ 为 $f(n) = [(n, 0)]$ 使得
    1. $f$ 是单射且 $f(0) = 0^{\mathbf Z}$
    2. 对任意 $m, n \in \mathbf N$ 有 $m \leqslant^{\mathbf N} n$ 当且仅当 $f(m) \leqslant^{\mathbf Z} f(n)$
    3. 对任意 $m, n \in \mathbf N$ 有 $f(m +^{\mathbf N} n) = f(m) +^{\mathbf Z} f(n)$ 且 $f(m \cdot^{\mathbf N} n) = f(m) \cdot^{\mathbf Z} f(n)$

### 1.3.3 有理数集
1. 有理数集合：令 $\mathbf Z_+ = \{a \in \mathbf Z \mid a >^{\mathbf Z} 0^{\mathbf Z}\}$，如果 $\sim$ 是集合 $\mathbf Z \times \mathbf Z_+$ 上的等价关系 $(a_1, b_1) \sim (a_2, b_2)$ 当且仅当 $a_1 \cdot^{\mathbf Z} b_2 = a_2 \cdot^{\mathbf Z} b_1$，则定义有理数集合 $\mathbf Q = \mathbf Z \times \mathbf Z_+ / \sim$．特别地，$0^{\mathbf Q} = [(0^{\mathbf Z}, a)], 1^{\mathbf Q} = [(a, a)]$
2. 定义有理数集合上的序与运算
    1. 序：$[(a_1, b_1)] \leqslant^{\mathbf Q} [(a_2, b_2)] \leftrightarrow a_1 \cdot^{\mathbf Z} b_2 \leqslant^{\mathbf Z} a_2 \cdot^{\mathbf Z} b_1$
    2. 加法：$[(a_1, b_1)] +^{\mathbf Q} [(a_2, b_2)] = [(a_1 \cdot^{\mathbf Z} b_2 +^{\mathbf Z} a_2 \cdot^{\mathbf Z} b_1, b_1 \cdot^{\mathbf Z} b_2]$
    3. 乘法：$[(a_1, b_1)] \cdot^{\mathbf Q} [(a_2, b_2)] = [(a_1 \cdot^{\mathbf Z} a_2, b_1 \cdot^{\mathbf Z} b_2)]$
3. 本原元
    1. 零元：对任意有理数 $p$，存在唯一的有理数 $p'$ 使得 $p +^{\mathbf Q} p' = 0^{\mathbf Q}$，记唯一的 $p'$ 为 $-p$
    2. 单位元：对任意有理数 $p \neq 0^{\mathbf Q}$，存在唯一的有理数 $p'$ 使得 $p \cdot^{\mathbf Q} p' = 1^{\mathbf Q}$
        1. 倒数：记唯一的 $p'$ 为 $p^{-1}$ 或 $\dfrac 1p$，称之为 $p$ 的倒数
        2. 除法：定义 $p \div^{\mathbf Q} q = p \cdot^{\mathbf Q} q^{-1}$
4. 将 $\mathbf Q$ 看作 $\mathbf Z$ 的扩张，称 $\mathbf Z$ 嵌入 $\mathbf Q$ 中：存在函数 $f: \mathbf Z \to \mathbf Q$ 为 $f(a) = [(a, 1)]$ 使得
    1. $f$ 是单射且 $f(0^{\mathbf Z}) = 0^{\mathbf Q}$
    2. 对任意 $a, b \in \mathbf Z$ 有 $a \leqslant^{\mathbf Z} b$ 当且仅当 $f(a) \leqslant^{\mathbf Q} f(b)$
    3. 对任意 $a, b \in \mathbf Z$ 有 $f(a +^{\mathbf Z} b) = f(a) +^{\mathbf Q} f(b)$ 且 $f(a \cdot^{\mathbf Z} b) = f(a) \cdot^{\mathbf Q} f(b)$
5. 有理数集的性质
    1. $\text{Archimedes}$ 性质：$\forall r \in \mathbf Q \ \exists k \in \mathbf N \ (|r| \leqslant^{\mathbf Q} k^{\mathbf Q})$
    2. 稠密性：如果全序集 $(X, <)$ 至少有两个元素，且对任意 $a, b \in X$，如果 $a < b$，则存在 $x \in X$ 有 $a < x < b$
        1. 有理数集合 $(\mathbf Q, <)$ 是稠密的
        2. 令 $(P, <_P)$ 为可数的无端点稠密线序，则 $(P, <_p)$ 与 $(\mathbf Q, <)$ 同构
6. 分数：设 $p = [(a, b)] \in \mathbf Q$，则定义分数 $p = \dfrac{a}{b}$，读作 $b$ 分之 $a$．其中 $b$ 称作分母，$a$ 称作分子
    1. 既约分数：满足 $(a, b) = 1$ 的分数
        1. 约分：将任一分数化作既约分数的过程
        2. 通分：把异分母分数化作与原分数相等的同分母分数
    2. 百分数：分母 $b = 100^{\mathbf Z}$ 的特殊分数，此时有 $a\% = \dfrac{a}{100^{\mathbf Z}} \times 100^{\mathbf Z}\%$
    3. 比例：形如 $p = a : b$ 的式子，其中 $a$ 称作前项，$b$ 称作后项，$p$ 称作比值

        !!! note "比例的性质"
            1. 设 $a : b = c : d$，则有
                - 交叉积：$a \cdot^{\mathbf Z} d = b \cdot^{\mathbf Z} c$
                - 更比定理：$a : c = b : d$
                - 反比定理：$d : c = b : a$
                - 合比定理：$(a+^{\mathbf Z}b) : a = (c+^{\mathbf Z}d) : c$
                - 分比定理：$(a-^{\mathbf Z}b) : a = (c-^{\mathbf Z}d) : c$
                - 合分比定理：$(a+^{\mathbf Z}b) : (a-^{\mathbf Z}b) = (c+^{\mathbf Z}d) : (c-^{\mathbf Z}d)$
            2. 比例链：若几个比相等 $a_1 : b_2 = a_2 : b_2 = \cdots = a_n : b_n$，则可简写为比例链 $a_1 : a_2 : \cdots : a_n = b_1 : b_2 : \cdots : b_n$
            3. 等比公式：若 $a_1 : a_2 : \cdots : a_n = b_1 : b_2 : \cdots : b_n$，则

                $$
                \dfrac{a_1}{b_1}=\dfrac{a_1+^{\mathbf Z}a_2+^{\mathbf Z}\cdots+^{\mathbf Z}a_n}{b_1+^{\mathbf Z}b_2+^{\mathbf Z}\cdots+^{\mathbf Z}b_n}=\dfrac{\lambda_1 a_1+^{\mathbf Z}\lambda_2 a_2+^{\mathbf Z}\cdots+^{\mathbf Z}\lambda_n a_n}{\lambda_1 b_1+^{\mathbf Z}\lambda_2 b_2+^{\mathbf Z}\cdots+^{\mathbf Z}\lambda_n b_n}=\dfrac{\sqrt{a_1^2+^{\mathbf Z}a_2^2+^{\mathbf Z}\cdots+^{\mathbf Z}a_n^2}}{\sqrt{b_1^2+^{\mathbf Z}b_2^2+^{\mathbf Z}\cdots+^{\mathbf Z}b_n^2}}
                $$

                其中 $\lambda_i$ 是一组任意不全为零的常数，$b_i$ 都不等于零 $(i = 1,2, \cdots, n)$.

### 1.3.4 实数集
1. 实数集合：如果集合 $A \subseteq$ 有
    1. $A \neq \varnothing$ 且 $A \neq \mathbf Q$
    2. $A$ 是向下封闭的，即如果 $p \in A$ 且 $q < p$，则 $q \in A$
    3. $A$ 没有最大元，即如果 $p \in A$，则存在 $q \in A, p < q$

    则称 $A$ 是 $\text{Dedekind}$ 分割，全体分割的集合记为 $\mathbf R$，其中的元素被称为实数．特别地，对于任意 $p \in \mathbf Q$，定义 $p^{\mathbf R} = \left\{q \in \mathbf Q \mid q <^{\mathbf Q} p\right\}$

2. 实数集合的序与运算
    1. 实数集合上的序定义为 $x_1 \leqslant^{\mathbf R} x_2$ 当且仅当 $x_1 \subseteq x_2$
    2. 实数集合上的加法定义为 $x +^{\mathbf R} y = \left\{p +^{\mathbf Q} q \mid p \in x, q \in y\right\}$
    3. 实数集合上的乘法定义
        1. 如果 $x = 0^{\mathbf R}$ 或 $y = 0^{\mathbf R}$，则 $x \cdot^{\mathbf R} y = 0^{\mathbf R}$
        2. 如果 $x >^{\mathbf R} 0^{\mathbf R}, y >^{\mathbf R} 0^{\mathbf R}$，则 $x \cdot^{\mathbf R} y = \left\{r \mid r \leqslant p \cdot^{\mathbf R} q, p \in x, q \in y, p, q >^{\mathbf Q} 0^{\mathbf Q}\right\}$
        3. 其他情况由 $x >^{\mathbf R} 0^{\mathbf R}, y >^{\mathbf R} 0^{\mathbf R}$ 定义：$x \cdot^{\mathbf R} y = \left\{\begin{aligned} & (-x) \cdot^{\mathbf R} (-y), & x <^{\mathbf R} 0^{\mathbf R}, y <^{\mathbf R} 0^{\mathbf R} \\ & -((-x) \cdot^{\mathbf R} y), & x <^{\mathbf R} 0^{\mathbf R}, y >^{\mathbf R} 0^{\mathbf R} \\ & -(x \cdot^{\mathbf R} (-y)), & x >^{\mathbf R} 0^{\mathbf R}, y <^{\mathbf R} 0^{\mathbf R} \end{aligned}\right.$
3. 本原元
    1. 零元：对任意实数 $x$，存在唯一的实数 $x'$ 使得 $x +^{\mathbf R} x' = 0^{\mathbf x}$，记唯一的 $x'$ 为 $-x$
    2. 单位元：对任意实数 $x \neq 0^{\mathbf R}$，存在唯一的实数 $x'$ 使得 $x \cdot^{\mathbf R} x' = 1^{\mathbf R}$，记唯一的 $x'$ 为 $\dfrac 1x$
5. 将 $\mathbf R$ 看作 $\mathbf Q$ 的扩张，称 $\mathbf Q$ 嵌入 $\mathbf R$ 中：存在函数 $f: \mathbf Q \to \mathbf R$ 为 $f(p) = p^{\mathbf R}$ 使得
    1. $f$ 是单射且 $f(0^{\mathbf Q}) = 0^{\mathbf R}$
    2. 对任意 $p, q \in \mathbf Q$ 有 $p \leqslant^{\mathbf Q} q$ 当且仅当 $f(p) \leqslant^{\mathbf R} f(q)$
    3. 对任意 $p, q \in \mathbf Q$ 有 $f(p +^{\mathbf Q} q) = f(p) +^{\mathbf R} f(q)$ 且 $f(p \cdot^{\mathbf Q} q) = f(p) \cdot^{\mathbf R} f(q)$
6. 实数集合子集的区间表示

    <div class="text-table">

    |                       集合                        |       区间表示       |     名称     |
    | :-----------------------------------------------: | :------------------: | :----------: |
    | $\left\{w \mid x \leqslant^{\mathbf R} w \leqslant^{\mathbf R} y\right\}$ |       $[x, y]$       |    闭区间    |
    |         $\left\{w \mid x <^{\mathbf R} w <^{\mathbf R} y\right\}$         |       $(x, y)$       |    开区间    |
    |     $\left\{w \mid x \leqslant^{\mathbf R} w <^{\mathbf R} y\right\}$     |       $[x, y)$       | 半开半闭区间 |
    |     $\left\{w \mid x <^{\mathbf R} w \leqslant^{\mathbf R} y\right\}$     |       $(x, y]$       | 半开半闭区间 |
    |       $\left\{w \mid w \geqslant^{\mathbf R} x\right\}$       |    $[x, +\infty)$    | 半开半闭区间 |
    |           $\left\{w \mid w >^{\mathbf R} x\right\}$           |    $(x, +\infty)$    |    开区间    |
    |       $\left\{w \mid w \leqslant^{\mathbf R} x\right\}$       |    $(-\infty, x]$    | 半开半闭区间 |
    |           $\left\{w \mid w <^{\mathbf R} x\right\}$           |    $(-\infty, x)$    |    开区间    |
    |                    $\mathbf R$                    | $(-\infty, +\infty)$ |    开区间    |

    </div>

7. 实数的分类

    $$
    \textsf{实数（无限小数）} \left\{\begin{aligned}
    & \textsf{有理数（无限循环小数）} \left\{\begin{aligned}
    & \textsf{正有理数} \\
    & \textsf{零} \\
    & \textsf{负有理数}
    \end{aligned}\right. \\
    & \textsf{无理数（无限不循环小数）} \left\{\begin{aligned}
    & \textsf{正无理数} \\
    & \textsf{负无理数}
    \end{aligned}\right.
    \end{aligned}\right.
    $$

8. $\text{Archimedes}$ 性质：$\forall x \in \mathbf R \ \exists r \in \mathbf Q \ (|x| \leqslant^{\mathbf R} r^{\mathbf R})$

### 1.3.5 复数集
1. 复数集合：定义集合 $\mathbf C = \mathbf R \times \mathbf R$，称集合 $\mathbf C$ 为复数集．特别地，对于任意 $x \in \mathbf R$，定义 $x^{\mathbf C} = (x, 0^{\mathbf R})$
2. 复数集合的相关概念
    1. 复数集合上没有定义序关系
    2. 设 $z = (x, y) \in \mathbf C$，则称 $x$ 为 $z$ 的实部，记作 $\text{Re}(z)$；$y$ 为$z$ 的虚部，记作 $\text{Im}(z)$
    3. 设 $\mathrm i = (0^{\mathbf R}, 1^{\mathbf R}) \in \mathbf C$，记 $(x, y) = x^{\mathbf C} +^{\mathbf C} y^{\mathbf C} \cdot^{\mathbf C} \mathrm i$，称之为复数 $(x, y)$ 的代数形式
3. 复数集合的运算
    1. 复数集合上的加法定义为 $(x_1, y_1) +^{\mathbf C} (x_2, y_2) = (x_1 +^{\mathbf R} x_2, y_1 +^{\mathbf R} y_2)$
    2. 复数集合上的乘法定义为 $(x_1, y_1) \cdot^{\mathbf C} (x_2, y_2) = (x_1 \cdot^{\mathbf R} x_2 -^{\mathbf R} y_1 \cdot^{\mathbf R} y_2, x_1 \cdot^{\mathbf R} y_2 +^{\mathbf R} y_1 \cdot^{\mathbf R} x_2)$
4. 本原元
    1. 零元：对任意复数 $z$，存在唯一的复数 $z'$ 使得 $z +^{\mathbf C} z' = 0^{\mathbf C}$，记唯一的 $z'$ 为 $-z$
    2. 单位元：对任意复数 $z \neq 0^{\mathbf C}$，存在唯一的复数 $z'$ 使得 $z \cdot^{\mathbf C} z' = 1^{\mathbf C}$，记唯一的 $z'$ 为 $\dfrac 1z$
5. 将 $\mathbf C$ 看作 $\mathbf R$ 的扩张，称 $\mathbf R$ 嵌入 $\mathbf C$ 中：存在函数 $f: \mathbf R \to \mathbf C$ 为 $f(x) = x^{\mathbf C}$ 使得
    1. $f$ 是单射且 $f(0^{\mathbf R}) = 0^{\mathbf C}$
    2. 对任意 $x, y \in \mathbf R$ 有 $x \leqslant^{\mathbf R} y$ 当且仅当 $f(x) \leqslant^{\mathbf C} f(y)$
    3. 对任意 $x, y \in \mathbf R$ 有 $f(x +^{\mathbf R} y) = f(x) +^{\mathbf C} f(y)$ 且 $f(x \cdot^{\mathbf R} y) = f(x) \cdot^{\mathbf C} f(y)$
6. 共轭复数：若 $x, y \in \mathbf R, w \in \mathbf C, z = x^{\mathbf C} +^{\mathbf C} y^{\mathbf C} \cdot^{\mathbf C} \mathrm i \in \mathbf C$，则定义 $\overline z = x^{\mathbf C} -^{\mathbf C} y^{\mathbf C} \cdot^{\mathbf C} \mathrm i$ 为 $z$ 的共轭复数
    1. $\overline{z +^{\mathbf C} w} = \overline z +^{\mathbf C} \overline w, \overline{z \cdot^{\mathbf C} w} = \overline z \cdot^{\mathbf C} \overline w$
    2. 设 $z +^{\mathbf C} \overline z = (2^{\mathbf R} \cdot^{\mathbf R} \text{Re}(z))^{\mathbf C}, z -^{\mathbf C} \overline z = 2^{\mathbf C} \cdot^{\mathbf C} \mathrm i \cdot^{\mathbf C} \text{Im}(z)^{\mathbf C}$
    3. 对于任意 $z \in \mathbf C$，存在 $x \in \mathbf R$ 使得 $z \cdot^{\mathbf C} \overline z = x^{\mathbf C}$ 且 $x \geqslant^{\mathbf R} 0^{\mathbf R}$
7. 模：设 $z, w \in \mathbf C, x^{\mathbf C} = z \cdot^{\mathbf C} \overline z$，定义模 $|z| = \sqrt{x}$
    1. $|\overline z| = |z|, |\text{Re}(z)| \leqslant^{\mathbf R} |z|$
    2. $|z| \geqslant^{\mathbf R} 0^{\mathbf R}$，等号成立当且仅当 $z^{\mathbf C} = 0^{\mathbf C}$
    3. $|z +^{\mathbf C} w| \leqslant^{\mathbf R} |z| +^{\mathbf R} |w|, |z \cdot^{\mathbf C} w| = |z| \cdot^{\mathbf R} |w|$
