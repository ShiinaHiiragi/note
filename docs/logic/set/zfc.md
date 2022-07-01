# 1 数学基础

## 1.1 ZFC 公理
1. 集合论语言 $\mathscr L(S)$，其中 $S = \{=, \in\}$ 且 $\Omega(=) = \Omega(\in) = 2$．定义如下缩写记号：
    1. $\neg x \in A$：$x \notin A$
    2. $\forall x \ (x \in A \to \varphi(x))$：$\forall x \in A \ \varphi(x)$
    3. $\exists x \ (x \in A \wedge \varphi(x))$：$\exists x \in A \ \varphi(x)$
    4. $\exists x \ (\varphi(x) \wedge \forall y \ (\varphi(y) \to y = x))$：$\exists !x \ \varphi(x)$
2. $\text{ZFC}$ 公理
    1. 存在公理（$\text{Exi}$）：存在一个集合

        $$
        \exists x \ (x = x)
        $$

        1. 本体论承诺：所谈论的世界不是虚无的，它至少存在一个事物
        2. 定义空集 $\varnothing := \left\{x \in X \mid x\neq x \right\}$，由于至少存在一个集合，因此 $\varnothing$ 是集合且唯一

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

        !!! note "选择公理的第二形式"
            对任意不含空集的非空集族 $\mathscr F$ 上都存在选择映射 $f: \mathscr F \to \bigcup \mathscr F$ 使得对任意 $F \in \mathscr F$ 有 $f(F) \in F$

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

5. 类与真类：令 $\varphi(u)$ 为一个性质，$\{u \mid \varphi(u)\}$ 不一定是集合，这样的对象被称为类，不是集合的类被称为真类
    1. 每个集合都是类，例如 $\left\{x \mid x \neq x\right\}$
    2. 用 $\mathbf V = \left\{x \mid x = x\right\}$ 表示「所有集合」的类，$x \in \mathbf V$ 不是集合论语言的公式，而只是公式 $x = x$ 的一种记法

## 1.2 关系与映射
### 1.2.1 关系
1. 有序对：设 $a, b$ 为集合，则 $a, b$ 组成的有序对定义为 $(a, b) := \left\{\{a\}, \{a, b\}\right\}$
    1. 由对集公理可知，对于任意集合 $a, b$，$(a, b)$ 是集合
    2. 任何两个有序对 $(a_1, b_1), (a_2, b_2)$ 有 $(a_1, b_1) = (a_2, b_2)$ 当且仅当 $a_1 = a_2 \wedge b_1 = b_2$
    3. 假设 $(x_1, x_2, \cdots, x_{n-1})$ 已有定义，则 $n$ 元序组定义为 $(x_1, x_2, \cdots, x_n) := \left((x_1, x_2, \cdots, x_{n-1}), x_n\right)$
2. $\text{Descartes}$ 积：设 $X, Y$ 为集合，则 $X$ 与 $Y$ 的 $\text{Descartes}$ 积定义为 $X \times Y := \left\{(x, y) \mid x \in X \wedge y \in Y\right\}$．特别地，若 $X = Y$，则将 $X \times X$ 记作 $X^2$
    1. 对于任意集合 $X, Y, Z$
        1. $(X \cup Y) \times Z = (X \times Z) \cup (Y \times Z)$
        2. $(X \cap Y) \times Z = (X \times Z) \cap (Y \times Z)$
        3. $(X - Y) \times Z = (X \times Z) - (Y \times Z)$
    2. $n$ 个集合 $X_1, X_2, \cdots, X_n$ 的 $\text{Descartres}$ 积定义为

        $$
        X_1 \times X_2 \times \cdots \times X_n = \left\{(x_1, x_2, \cdots, x_n) \mid x_1 \in X_1 \wedge x_2 \in X_2 \wedge \cdots \wedge x_n \in X_n\right\}
        $$

        特别地，定义 $X^n = \underbrace{X \times X \times \cdots \times X}_{n}$

3. 指标系统的 $\text{Descartes}$ 积
    1. 投射与自然投射
        1. 投射：设 $X_1, X_2, \cdots, X_n$ 是 $n \ (n\geqslant 1)$ 个集合，从 $X=X_1\times X_2\times \cdots, X_n$ 到其第 $i \ (1 \leqslant i \leqslant n)$ 个坐标集 $X_i$ 的投射 $p_i: X \to X_i$ 定义为 $\forall X = (a_1, a_2, \cdots, a_n) \in X \ (p_i(X) = a_i)$，即

            $$
            p_i=\{((a_1, a_2, \cdots, a_n), a_i) \mid (a_1, a_2, \cdots, a_n)\in X\} \subseteq X \times X_\gamma
            $$

        2. 自然投射：设 $R$ 是集合 $X$ 中的一个等价关系，从集合 $X$ 到其商集 $X/R$ 的自然投射 $p:X\to X/R$ 定义为 $\forall X\in X: p(X)=[X]$，即 $p=\{(X, [X]) \mid X\in X\}\subseteq X\times X/R$

    2. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 的 $\text{Descartes}$ 积为 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} = \left\{ \left. x: \Gamma\to {\displaystyle \bigcup_{\gamma \in \Gamma}X_\gamma} \ \right| \ \forall \gamma \in \Gamma \ (x(i)\in X_\gamma)\right\}$
        1. 对于每一个 $\gamma \in \Gamma$，集合 $X_\gamma$ 为 $\text{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $i$ 个坐标集
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

4. 关系：对于集合 $R$，如果存在 $X, Y$ 使得 $R \subseteq X \times Y$，则称 $R$ 为二元关系，用 $R(x, y)$ 或 $xRy$ 表示 $(x, y) \in R$
    1. 定义域与值域：定义域定义为 $\mathrm{dom}(R) := \left\{x \mid \exists y \ R(x, y)\right\}$，值域定义为 $\mathrm{ran}(R) := \left\{y \mid \exists x in X \ R(x, y)\right\}$
    2. 像与逆像：集合 $X$ 在关系 $R$ 下的像定义为 $R[X] := \left\{y \in \mathrm{ran}(R) \mid \exists x \in X \ (R(x, y))\right\}$；集合 $Y$ 在关系 $R$ 下的逆像定义为 $R^{-1}[Y] := \left\{x \in \mathrm{dom}(R) \mid \exists y \in Y \ (R(x, y))\right\}$
        1. $R[X \cup Y] = R[X] \cup R[Y]$
        2. $R[X \cap Y] \subseteq R[X] \cap R[Y]$
        3. $R[X - Y] \supseteq R[X] - R[Y]$
        4. 对于任意映射 $f$ 有 $f[X \cap Y] \subseteq f[X] \cap f[Y], f^{-1}[X \cap Y] = f^{-1}[X] \cap f^{-1}[Y]$
    3. 逆关系与复合关系：二元关系 $R$ 的逆定义为 $R^{-1} := \left\{(x, y) \mid R(y, x)\right\}$；复合定义为 $S \circ R = \left\{(x, z) \mid \exists y \ (R(x, y) \wedge S(y, z))\right\}$
        1. $(R^{-1})^{-1} = R, (S \circ R)^{-1} = R^{-1} \circ S^{-1}$
        2. $X \circ (Y \circ Z) = (X \circ Y) \circ Z$
        3. $(X \cup Y) \circ Z = (X \circ Z) \cup (Y \circ Z), Z \circ (X \cup Y) = (Z \circ X) \cup (Z \circ Y)$
        4. $(X \cap Y) \circ Z \subseteq (X \circ Z) \cap (Y \circ Z), Z \circ (X \cap Y) \subseteq (=- (Z \circ X) \cap (Z \circ Y)$
        5. $\mathrm{dom}(R^{-1}) = \mathrm{ran}(R), \mathrm{ran}(R^{-1}) = \mathrm{dom}(R)$
        6. $\mathrm{dom}(S \circ R) \subseteq \mathrm{dom}(R), \mathrm{ran}(S \circ R) \subseteq \mathrm{ran}(S)$
    4. $n$ 元关系：对于任一集合 $R$，如果存在 $X_1, X_2, \cdots, X_n$ 使得 $R \subseteq X_1 \times X_2 \times \cdots \times X_n$，则称 $R$ 为 $n$ 元关系，用 $R(X_1, X_2, \cdots, X_n)$ 表示 $(X_1, X_2, \cdots, X_n) \in R$．特别地，如果 $R \subseteq X^n$，则称 $R$ 是 $X$ 上的 $n$ 元关系
5. 二元关系：令 $R \subseteq X^2$
    1. 自反性：$R$ 是自反的当且仅当对于任意 $x \in X$ 有 $(x, x) \in R$；$R$ 是反自反的当且仅当对于任意 $x \in X$ 有 $R(x, x) \notin R$
    2. 对称性：$R$ 是对称的当且仅当对于任意 $x, y \in X$ 有 $(x, y) \in R \to (y, x) \in R$；$R$ 是反对称的当且仅当对于任意 $x, y \in X$ 有 $(x, y) \in R \wedge (y, x) \in R \to x = y$
    3. 传递性：$R$ 是传递的当且仅当对于任意 $x, y, z \in X$ 有 $(x, y) \in R \wedge (y, z) \in R \to (x, z) \in R$
6. 等价关系：$R$ 是等价的当且仅当 $R$ 是自反、对称且是传递的，用 $\sim$ 表示
    1. 等价类：设 $\sim$ 是集合 $X$ 上的等价关系，对任意 $x \in X$，定义 $x$ 关于 $\sim$ 的等价类为 $[x]_{\sim} := \left\{t \in X \mid t \sim x\right\}$
        1. 对任意 $x, y \in X$，有 $[x]_{\sim} = [y]_{\sim}$ 或 $[x]_{\sim} \cap [y]_{\sim} = \varnothing$ 成立
        2. 商集：设 $\sim$ 是集合 $X$ 上的等价关系，则 $X / \sim = \left\{[x]_{\sim} \mid x \in X\right\}$ 称为 $X$ 的商集．易知 $X / \sim$ 是 $X$ 的一个划分
    2. 划分：令 $X$ 为一个集合，$S \subseteq \mathcal P(X)$，如果 $S$ 有 ① 对所有 $a, b \in S$，有 $a \neq b \to a \cap b = \varnothing$；② $\bigcup S = X$，则称 $S$ 是 $X$ 的划分

        !!! note "等价关系与划分的对应"
            令 $S$ 为 $X$ 的划分，定义 $X$ 上的二元关系 $~_S = \left\{(x, y) \in X^2 \mid \exists c \in S \ (s \in c \wedge y \in c)\right\}$

            1. $\sim_S$ 是等价关系，且 $X / \sim_S = S$
            2. 如果 $\sim$ 是 $X$ 上的等价关系且 $S = X / \sim$，则 $\sim_S = \sim$

            总而言之，集合 $X$ 上的所有等价关系与划分形成一一对应

7. 序：令 $\prec, \leqslant$ 为 $X$ 上的二元关系
    1. 拟序：如果 $\prec$ 具有自反性与传递性，则称 $\prec$ 是 $X$ 上的拟序
    2. 偏序：如果拟序关系 $\leqslant$ 具有反对称性，则称 $\leqslant$ 是 $X$ 上的偏序或序，用 $(X, \leqslant)$ 表示
        1. 用 $x \geqslant y$ 表示 $x \leqslant^{-1} y$；用 $x < y$ 表示 $x \leqslant y \wedge x \neq y$，用 $x > y$ 表示 $x \geqslant y \wedge x \neq y$
        2. 极大元与极小元：如果 $a \in X$ 且 $\forall x \in X \ (\neg (a > x))$，则称 $a$ 为 $X$ 的极小元；反之如果 $a \in X$ 且 $\forall x \in X \ (\neg (a < x))$，则称 $a$ 为 $X$ 的极大元
        3. 最小元与最大元：如果 $a \in X$ 且 $\forall x \in X \ (a \leqslant x)$，则称 $a$ 为 $X$ 的最小元；反之如果 $a \in X$ 且 $\forall x \in X \ (a \geqslant x)$，则称 $a$ 为 $X$ 的最大元
        4. 上界与下界：设 $X_0 \subseteq X$，若存在 $a \in X$ 使得对于任意 $x \in X_0$ 都有 $a \geqslant x$，则称 $a$ 为 $X_0$ 在 $X$ 中的上界；若存在 $a \in X$ 使得对于任意 $x \in X_0$ 都有 $a \leqslant x$，则称 $a$ 为 $X_0$ 在 $X$ 中的下界
        5. 上确界与下确界：设 $X_0 \subseteq X$，若 $X_0$ 在 $X$ 中所有上界的集合有最小元 $a_0$，则称 $a_0$ 是 $X_0$ 的上确界，记作 $\sup(X_0)$；若 $X_0$ 在 $X$ 中所有下界的集合有最大元 $a_0$，则称 $a_0$ 是 $X_0$ 的下确界，记作 $\inf(X_0)$

        !!! note "逆关系的序"
            如果 $R$ 是 $X$ 上的序，则 $R^{-1}$ 也是 $X$ 上的序，令 $X_0 \subseteq X$

            1. $x$ 是 $X_0$ 在序 $R$ 下的极小元当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的极大元
            2. $x$ 是 $X_0$ 在序 $R$ 下的最小元当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的最大元
            3. $x$ 是 $X_0$ 在序 $R$ 下的上确界当且仅当 $x$ 是 $X_0$ 在序 $R^{-1}$ 下的下确界

    3. 全序：如果偏序关系 $\leqslant$ 还具有连接性，即对所有 $x, y \in X$ 有 $x \leqslant y$ 或 $y \leqslant x$，则称 $\leqslant$ 是 $X$ 上的全序或线序
        1. 全序集的任意两个元素是可比较的
        2. 全序集中极小元与最小元、极大元与最大元是同一的

### 1.2.2 映射
1. 二元关系 $f$ 若有 $(x, y) \in f \wedge (x, z) \in f \to y = x$，则称 $f$ 是一个映射，其中 $y$ 称作 $f$ 在 $x$ 处的值，记作 $f(x) = y$ 或 $f: x \mapsto y$．如果 $\mathrm{dom}(f) = X, \mathrm{ran}(f) \subseteq Y$，则称 $f$ 是 $X$ 到 $Y$ 的映射，记作 $f: X \to Y$
    1. 函数：对于映射 $f: X \to Y$，当 $X, Y$ 均为数集时，称 $f$ 为函数
    2. 映射的等同：令 $f, g$ 为映射，$f = g$ 当且仅当 $\mathrm{dom}(f) = \mathrm{dom}(g)$ 且对于所有 $x \in \mathrm{dom}(f)$ 都有 $f(x) = g(x)$
    3. 等同映射：对任意集合 $X$ 定义 $\mathrm{id}_X: X \to X$ 为 $\mathrm{id}_X(x) = x$
2. 映射的种类：设 $f: X \to Y$ 是一个映射
    1. 单射：对于所有的 $x_1, x_2 \in X$，若 $x_1 \neq x_2$，则 $f(x_1) \neq f(x_2)$
    2. 满射：$\mathrm{ran}(f) = Y$ 的映射
    3. 双射：既是单射又是满射的映射
3. 逆映射与复合映射
    1. 一个映射是可逆的当且仅当它是单射，如果 $f$ 是可逆的，则 $f^{-1}$ 也是可逆的且 $(f^{-1})^{-1} = f$
    2. 令 $f, g$ 为映射，则复合 $h = g \circ f$ 也是映射，且 $h$ 的定义域为 $\mathrm{dom}(h) = \mathrm{dom}(f) \cap f^{-1}[\mathrm{dom}(g)]$．且对于所有 $x \in \mathrm{dom}(h)$ 均有 $h(x) = g(f(x))$
4. 限制与扩张：对任意映射 $f$ 与集合 $A$，$g = f \upharpoonright A = \left\{(x, y) \in f \mid x \in A\right\}$ 是一个映射，称作 $f$ 到 $A$ 上的限制，$f$ 是 $g$ 的扩张
5. 相容性：对于映射 $f, g$，如果对所有的 $x \in \mathrm{dom}(f) \cap \mathrm{dom}(g)$ 都有 $f(x) = g(x)$，则称映射 $f, g$ 是相容的
    1. 如果映射的集合 $\mathscr F$ 中任意两个映射都是相容的，则称 $\mathscr F$ 为相容的系统
    2. 映射 $f, g$ 相容当且仅当 $f \cap g$ 是映射，当且仅当 $f \upharpoonright \left(\mathrm{dom}(f) \cap \mathrm{dom}(g)\right) = g \upharpoonright \left(\mathrm{dom}(f) \cap \mathrm{dom}(g)\right)$
6. 令 $X, Y$ 是集合，$X$ 到 $Y$ 的所有映射组成的集合定义为 $Y^X = \left\{f \mid f: X \to Y\right\}$
    1. 对任意集合 $X, Y$，$X^Y$ 都是集合
    2. 对任意集合 $X$，有 $\varnothing^{X} = \varnothing$；对任意集合 $Y$，有 $Y^{\varnothing} = \left\{\varnothing_{Y}\right\}$

## 1.3 实数理论
### 1.3.1 自然数集
1. $\text{Peano}$ 公理：满足下列五条公理的集合 $\mathbf N$ 称作自然数集．其中，$0$ 与「后继」作为抽象的初始概念没有定义
    1. $0 \in \mathbf N$
    2. 若 $n \in \mathbf N$，则 $n$ 有且仅有一个后继 $S(n) \in \mathbf N$
    3. 对任一 $n \in \mathbf N$，都有 $S(n) \neq 0$
    4. 对任意 $n, m \in \mathbf N$，若 $x \neq y$，则 $S(x) \neq S(y)$
    5. （归纳公理）设 $M \subseteq \mathbf N$，若 $0 \in M$，每当 $n \in M$ 也有 $S(n) \in M$，则 $M = \mathbf N$
2. 定义自然数：

    $$
    \begin{aligned}
    & 0 = \varnothing \\
    & 1 = 0 \cup \{0\} = \{\varnothing\} \\
    & 2 = 1 \cup \{1\} = \{\varnothing, \{\varnothing\}\} \\
    & 3 = 2 \cup \{2\} = \{\varnothing, \{\varnothing\}, \{\varnothing, \{\varnothing\}\}\} \\
    & \cdots
    \end{aligned}
    $$

3. 定义全体自然数的集合 $\mathbf N := \{n \mid \forall X \ (X$ 是归纳集 $\to n \in X)\}$
    1. 由分离公理与无穷公理可知，$\mathbf N$ 是一个集合且唯一
    2. $\mathbf N$ 是归纳集并且是任何归纳集的子集
    3. $\mathbf N$ 上的归纳原理：令 $\varphi(x)$ 为一性质
        1. 第一归纳原理：$(\varphi(0) \wedge \forall n \in N \ (\varphi(n) \to \varphi(n + 1))) \to \forall n \in \mathbf N \ \varphi(n)$
        2. 第二归纳原理：$\forall n \in N \ (\forall k < n \ \varphi(k) \to \varphi(n)) \to \forall n \in \mathbf N \ \varphi(n)$
4. $\mathbf N$ 上的序：定义 $x \underline\in y := x \in y \vee x = y$
    1. 对所有自然数 $m, n, k$ 有
        1. $0 \underline\in n$ 且 $n \notin n$
        2. $n \subset n + 1$ 且 $n \in n + 1$
        3. $k \in n + 1$ 当且仅当 $k \underline\in n$
        4. $m \in n$ 当且仅当 $m \subset n$
        5. 如果 $m \in n$，则 $m + 1 \underline\in n$
        6. 如果 $k \in m \wedge m \in n$ 则 $k \in n$
        7. 如果 $x \in n$，则 $x \in \mathbf N$
    2. 对任意 $m, n \in \mathbf N$，定义 $m \leqslant n := m \underline\in n$ 且 $m < n := m \in n$
    3. $(N, \underline\in)$ 是一个全序集，$(\mathbf N \leqslant)$ 是一个良序集
5. 递归定理：对任意集合 $A$，任意 $a \in A$ 以及任意映射 $h: A \times \mathbf N \to A$，存在唯一的映射 $f: \mathbf N \to A$ 满足 ① $f(0) = a$；② 对所有 $n \in N$，有 $f(n + 1) = g(f(n), n)$
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

        通常将 $p(m, n)$ 写作 $m^n$

6. 自然数集 $\mathbf N$ 的性质
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
1. 整数集合：定义关系 $\sim$ 是 $\mathbf N \times \mathbf N$ 上的等价关系：$(m_1, n_1) \sim (m_2, n_2)$ 当且仅当 $m_1 +_{\mathbf N} n_2 = m_2 +_{\mathbf N} n_1$，令 $\mathbf Z := \mathbf N \times \mathbf N / \sim$．特别地，$0_{\mathbf Z} = [(0, 0)]$
2. 定义整数集合上的序与运算
    1. 序：$[(m_1, n_1)] \leqslant_{\mathbf Z} [(m_2, n_2)] \leftrightarrow m_1 +_{\mathbf N} n_2 \leqslant_{\mathbf N} m_2 +_{\mathbf N} n_1$
    2. 加法：$[(m_1, n_1)] +_{\mathbf Z} [(m_2, n_2)] := [(m_1 +_{\mathbf N} m_2), n_1 +_{\mathbf N} n_2]$
    3. 乘法：$[(m_1, n_1)] \cdot_{\mathbf Z} [(m_2, n_2)] := [(m_1 \cdot_{\mathbf N} m_2 +_{\mathbf N} n_1 \cdot_{\mathbf N} n_2, m_1 \cdot_{\mathbf N} n_2 +_{\mathbf N} n_1 \cdot_{\mathbf N} m_2)]$
3. 零元：对任意整数 $a$，存在唯一的整数 $a'$ 使得 $a +_{\mathbf N} a' = 0_{\mathbf Z}$
    1. 相反数与减法：将整数 $a'$ 记作 $-a$，定义 $a -_{\mathbf Z} b := a +_{\mathbf Z} (-b)$
    2. 绝对值：设 $a \in \mathbf Z$，定义绝对值

        $$
        |a| := \left\{\begin{aligned}
        & a, & a \geqslant_{\mathbf Z} 0_{\mathbf Z} \\
        & -a, & a <_{\mathbf Z} 0_{\mathbf Z}
        \end{aligned}\right.
        $$

        于是对于任意整数，$|a| \geqslant_{\mathbf Z} 0_{\mathbf Z}$

4. 将 $\mathbf Z$ 看作 $\mathbf N$ 的扩张，称 $\mathbf N$ 嵌入 $\mathbf Z$ 中：存在函数 $f: \mathbf N \to \mathbf Z$ 为 $f(n) = [(n, 0)]$ 使得
    1. $f$ 是单射且 $f(0) = 0_{\mathbf Z}$
    2. 对任意 $m, n \in \mathbf N$ 有 $m \leqslant_{\mathbf N} n$ 当且仅当 $f(m) \leqslant_{\mathbf Z} f(n)$
    3. 对任意 $m, n \in \mathbf N$ 有 $f(m +_{\mathbf N} n) = f(m) +_{\mathbf Z} f(n)$ 且 $f(m \cdot_{\mathbf N} n) = f(m) \cdot_{\mathbf Z} f(n)$

### 1.3.3 有理数集
1. 有理数集合：令 $\mathbf Z_+ = \{a \in \mathbf Z \mid a >_{\mathbf Z} 0_{\mathbf Z}\}$，如果 $\sim$ 是集合 $\mathbf Z \times \mathbf Z_+$ 上的等价关系：$(a_1, b_1) \sim (a_2, b_2)$ 当且仅当 $a_1 \cdot_{\mathbf Z} b_2 = a_2 \cdot_{\mathbf Z} b_1$，则定义有理数集合 $\mathbf Q := \mathbf Z \times \mathbf Z_+ / \sim$．特别地，$0_{\mathbf Q} = [(0_{\mathbf Z}, a)], 1_{\mathbf Q} = [(a, a)]$
2. 定义有理数集合上的序与运算
    1. 序：$[(a_1, b_1)] \leqslant_{\mathbf Q} [(a_2, b_2)] \leftrightarrow a_1 \cdot_{\mathbf Z} b_2 \leqslant_{\mathbf Z} a_2 \cdot_{\mathbf Z} b_1$
    2. 加法：$[(a_1, b_1)] +_{\mathbf Q} [(a_2, b_2)] := [(a_1 \cdot_{\mathbf Z} b_2 +_{\mathbf Z} a_2 \cdot_{\mathbf Z} b_1, b_1 \cdot_{\mathbf Z} b_2]$
    3. 乘法：$[(a_1, b_1)] \cdot_{\mathbf Q} [(a_2, b_2)] := [(a_1 \cdot_{\mathbf Z} a_2, b_1 \cdot_{\mathbf Z} b_2)]$
3. 本原元
    1. 零元：对任意有理数 $p$，存在唯一的有理数 $p'$ 使得 $p +_{\mathbf Q} p' = 0_{\mathbf Q}$，记唯一的 $p'$ 为 $-p$
    2. 单位元：对任意有理数 $p \neq 0_{\mathbf Q}$，存在唯一的有理数 $p'$ 使得 $p \cdot_{\mathbf Q} p' = 1_{\mathbf Q}$
        1. 倒数：记唯一的 $p'$ 为 $p^{-1}$ 或 $\dfrac 1p$，称之为 $p$ 的倒数
        2. 除法：定义 $p \div_{\mathbf Q} q := p \cdot_{\mathbf Q} q^{-1}$
4. 将 $\mathbf Q$ 看作 $\mathbf Z$ 的扩张，称 $\mathbf Z$ 嵌入 $\mathbf Q$ 中：存在函数 $f: \mathbf Z \to \mathbf Q$ 为 $f(a) = [(a, 1)]$ 使得
    1. $f$ 是单射且 $f(0_{\mathbf Z}) = 0_{\mathbf Q}$
    2. 对任意 $a, b \in \mathbf Z$ 有 $a \leqslant_{\mathbf Z} b$ 当且仅当 $f(a) \leqslant_{\mathbf Q} f(b)$
    3. 对任意 $a, b \in \mathbf Z$ 有 $f(a +_{\mathbf Z} b) = f(a) +_{\mathbf Q} f(b)$ 且 $f(a \cdot_{\mathbf Z} b) = f(a) \cdot_{\mathbf Q} f(b)$
5. $\text{Archimedes}$ 性质：$\forall r \in \mathbf Q \ \exists k \in \mathbf N \ (|r| \leqslant_{\mathbf Q} k_{\mathbf Q})$
6. 稠密性：如果全序集 $(X, <)$ 至少有两个元素，且对任意 $a, b \in X$，如果 $a < b$，则存在 $x \in X$ 有 $a < x < b$
    1. 有理数集合 $(\mathbf Q, <)$ 是稠密的
    2. 令 $(P, <_P)$ 为可数的无端点稠密线序，则 $(P, <_p)$ 与 $(\mathbf Q, <)$ 同构
7. 分数：设 $p = [(a, b)] \in \mathbf Q$，则定义分数 $p := \dfrac{a}{b}$，读作 $b$ 分之 $a$．其中 $b$ 称作分母，$a$ 称作分子
    1. 既约分数：满足 $(a, b) = 1$ 的分数
        1. 约分：将任一分数化作既约分数的过程
        2. 通分：把异分母分数化作与原分数相等的同分母分数
    2. 百分数：分母 $b = 100_{\mathbf Z}$ 的特殊分数，此时有 $a\% = \dfrac{a}{100_{\mathbf Z}} \times 100_{\mathbf Z}\%$
    3. 比例：形如 $p = a : b$ 的式子，其中 $a$ 称作前项，$b$ 称作后项，$p$ 称作比值

### 1.3.4 实数集
1. 实数集合：如果集合 $A \subseteq$ 有
    1. $A \neq \varnothing$ 且 $A \neq \mathbf Q$
    2. $A$ 是向下封闭的，即如果 $p \in A$ 且 $q < p$，则 $q \in A$
    3. $A$ 没有最大元，即如果 $p \in A$，则存在 $q \in A, p < q$\

    则称 $A$ 是 $\text{Dedekind}$ 分割，全体分割的集合记为 $\mathbf R$，其中的元素被称为实数．特别地，对于任意 $p \in \mathbf Q$，定义 $p_{\mathbf R} := \left\{q \in \mathbf Q \mid q <_{\mathbf Q} p\right\}$

2. 实数集合的序与运算
    1. 实数集合上的序定义为 $x_1 \leqslant_{\mathbf R} x_2$ 当且仅当 $x_1 \subseteq x_2$
    2. 实数集合上的加法定义为 $x +_{\mathbf R} y := \left\{p +_{\mathbf Q} q \mid p \in x, q \in y\right\}$
    3. 实数集合上的乘法定义
        1. 如果 $x = 0_{\mathbf R}$ 或 $y = 0_{\mathbf R}$，则 $x \cdot_{\mathbf R} y = 0_{\mathbf R}$
        2. 如果 $x >_{\mathbf R} 0_{\mathbf R}, y >_{\mathbf R} 0_{\mathbf R}$，则 $x \cdot_{\mathbf R} y := \left\{r \mid r \leqslant p \cdot_{\mathbf R} q, p \in x, q \in y, p, q >_{\mathbf Q} 0_{\mathbf Q}\right\}$
        3. 其他情况由 $x >_{\mathbf R} 0_{\mathbf R}, y >_{\mathbf R} 0_{\mathbf R}$ 定义：$x \cdot_{\mathbf R} y := \left\{\begin{aligned} & (-x) \cdot_{\mathbf R} (-y), & x <_{\mathbf R} 0_{\mathbf R}, y <_{\mathbf R} 0_{\mathbf R} \\ & -((-x) \cdot_{\mathbf R} y), & x <_{\mathbf R} 0_{\mathbf R}, y >_{\mathbf R} 0_{\mathbf R} \\ & -(x \cdot_{\mathbf R} (-y)), & x >_{\mathbf R} 0_{\mathbf R}, y <_{\mathbf R} 0_{\mathbf R} \end{aligned}\right.$
3. 本原元
    1. 零元：对任意实数 $x$，存在唯一的实数 $x'$ 使得 $x +_{\mathbf R} x' = 0_{\mathbf x}$，记唯一的 $x'$ 为 $-x$
    2. 单位元：对任意实数 $x \neq 0_{\mathbf R}$，存在唯一的实数 $x'$ 使得 $x \cdot_{\mathbf R} x' = 1_{\mathbf R}$，记唯一的 $x'$ 为 $\dfrac 1x$
5. 将 $\mathbf R$ 看作 $\mathbf Q$ 的扩张，称 $\mathbf Q$ 嵌入 $\mathbf R$ 中：存在函数 $f: \mathbf Q \to \mathbf R$ 为 $f(p) = p_{\mathbf R}$ 使得
    1. $f$ 是单射且 $f(0_{\mathbf Q}) = 0_{\mathbf R}$
    2. 对任意 $p, q \in \mathbf Q$ 有 $p \leqslant_{\mathbf Q} q$ 当且仅当 $f(p) \leqslant_{\mathbf R} f(q)$
    3. 对任意 $p, q \in \mathbf Q$ 有 $f(p +_{\mathbf Q} q) = f(p) +_{\mathbf R} f(q)$ 且 $f(p \cdot_{\mathbf Q} q) = f(p) \cdot_{\mathbf R} f(q)$
6. 实数集合子集的区间表示：

    <div style="text-align: center;">

    |                       集合                        |       区间表示       |     名称     |
    | :-----------------------------------------------: | :------------------: | :----------: |
    | $\left\{w \mid x \leqslant w \leqslant y\right\}$ |       $[x, y]$       |    闭区间    |
    |         $\left\{w \mid x < w < y\right\}$         |       $(x, y)$       |    开区间    |
    |     $\left\{w \mid x \leqslant w < y\right\}$     |       $[x, y)$       | 半开半闭区间 |
    |     $\left\{w \mid x < w \leqslant y\right\}$     |       $(x, y]$       | 半开半闭区间 |
    |       $\left\{w \mid w \geqslant x\right\}$       |    $[x, +\infty)$    | 半开半闭区间 |
    |           $\left\{w \mid w > x\right\}$           |    $(x, +\infty)$    |    开区间    |
    |       $\left\{w \mid w \leqslant x\right\}$       |    $(-\infty, x]$    | 半开半闭区间 |
    |           $\left\{w \mid w < x\right\}$           |    $(-\infty, x)$    |    开区间    |
    |                    $\mathbf R$                    | $(-\infty, +\infty)$ |    开区间    |

    </div>

7. 实数的分类：

    $$
    \textsf{实数（无限小数）} \left\{\begin{aligned}
    & \textsf{有理数（无限循环小数）} \left\{\begin{aligned}
    & \textsf{正有理数} \\
    & \textsf{零} \\
    & \textsf{负有理数}
    \end{aligned}\right. \\
    & \textsf{无理数（无限不循环小数）} \left\{\begin{aligned}
    & \textsf{正有理数} \\
    & \textsf{负有理数}
    \end{aligned}\right.
    \end{aligned}\right.
    $$


    !!! note "十进制小数与实数的关系"
        设 $x = a_0.a_1 a_2 \cdots a_n \cdots \in \mathbf R$，其中 $a_0 \in \mathbf Z$，$a_i \ (i = 1, 2, \cdots, n \cdots)$ 是十进制数码．对于任意 $x \in \mathbf R$，取符合 $a_{\mathbf R} \leqslant_{\mathbf R} x$ 的最大整数 $a$，当 $a_0, a_1, \cdots, a_{k-1}$ 选定时，取符合 $(a_0)_{\mathbf R} + \left(\dfrac{a_1}{10_{\mathbf Z}}\right)_{\mathbf R} + \cdots + \left(\dfrac{a_k}{(10_{\mathbf Z})^k}\right)_{\mathbf R} \leqslant_{\mathbf R} x$ 的最大整数 $a_k$．令

        $$
        E = \left\{\left. (a_0)_{\mathbf R} + \left(\dfrac{a_1}{10_{\mathbf Z}}\right)_{\mathbf R} + \cdots + \left(\dfrac{a_k}{(10_{\mathbf Z})^k}\right)_{\mathbf R} \right| \ k = 0, 1, 2, \cdots \right\}
        $$

        于是 $x = \sup(E)$，这说明用小数表示实数是一种潜无穷表示法

8. 最小上界性质：全序集 $(X, \leqslant)$ 如果有对任意 $X$ 的非空子集 $Y$，如果 $Y$ 有上界，则 $Y$ 在 $X$ 中有上确界，则称 $X$ 有最小上界性质
    1. 有理数集合 $(\mathbf Q, \leqslant_{\mathbf Q})$ 没有最小上界性质
    2. 实数集合 $(\mathbf R, \leqslant_{\mathbf R})$ 有最小上界性质

### 1.3.5 复数集
1. 复数集合：定义集合 $\mathbf C := \mathbf R \times \mathbf R$，称集合 $\mathbf C$ 为复数集．特别地，对于任意 $x \in \mathbf R$，定义 $x_{\mathbf C} := (x, 0_{\mathbf R})$
2. 复数集合的相关概念
    1. 复数集合上没有定义序关系
    2. 设 $z = (x, y) \in \mathbf C$，则称 $x$ 为 $z$ 的实部，记作 $\text{Re}(z)$；$y$ 为$z$ 的虚部，记作 $\text{Im}(z)$
    3. 设 $i = (0_{\mathbf R}, 1_{\mathbf R}) \in \mathbf C$，记 $(x, y) = x_{\mathbf C} +_{\mathbf C} y_{\mathbf C} \cdot _{\mathbf C}i$，称之为复数 $(x, y)$ 的代数形式
3. 复数集合的运算
    1. 复数集合上的加法定义为 $(x_1, y_1) +_{\mathbf C} (x_2, y_2) := (x_1 +_{\mathbf R} x_2, y_1 +_{\mathbf R} y_2)$
    2. 复数集合上的乘法定义为 $(x_1, y_1) \cdot_{\mathbf C} (x_2, y_2) := (x_1 \cdot_{\mathbf R} x_2 -_{\mathbf R} y_1 \cdot_{\mathbf R} y_2, x_1 \cdot_{\mathbf R} y_2 +_{\mathbf R} y_1 \cdot_{\mathbf R} x_2)$
4. 本原元
    1. 零元：对任意复数 $z$，存在唯一的复数 $z'$ 使得 $z +_{\mathbf C} z' = 0_{\mathbf C}$，记唯一的 $z'$ 为 $-z$
    2. 单位元：对任意复数 $z \neq 0_{\mathbf C}$，存在唯一的复数 $z'$ 使得 $z \cdot_{\mathbf C} z' = 1_{\mathbf C}$，记唯一的 $z'$ 为 $\dfrac 1z$
5. 将 $\mathbf C$ 看作 $\mathbf R$ 的扩张，称 $\mathbf R$ 嵌入 $\mathbf C$ 中：存在函数 $f: \mathbf R \to \mathbf C$ 为 $f(x) = x_{\mathbf C}$ 使得
    1. $f$ 是单射且 $f(0_{\mathbf R}) = 0_{\mathbf C}$
    2. 对任意 $x, y \in \mathbf R$ 有 $x \leqslant_{\mathbf R} y$ 当且仅当 $f(x) \leqslant_{\mathbf C} f(y)$
    3. 对任意 $x, y \in \mathbf R$ 有 $f(x +_{\mathbf R} y) = f(x) +_{\mathbf C} f(y)$ 且 $f(x \cdot_{\mathbf R} y) = f(x) \cdot_{\mathbf C} f(y)$
6. 共轭复数：若 $x, y \in \mathbf R, w \in \mathbf C, z = x_{\mathbf C} +_{\mathbf C} y_{\mathbf C} \cdot_{\mathbf C} i \in \mathbf C$，则定义 $\overline z := x_{\mathbf C} -_{\mathbf C} y_{\mathbf C} \cdot_{\mathbf C} i$ 为 $z$ 的共轭复数
    1. $\overline{z +_{\mathbf C} w} = \overline z +_{\mathbf C} \overline w, \overline{z \cdot_{\mathbf C} w} = \overline z \cdot_{\mathbf C} \overline w$
    2. 设 $z +_{\mathbf C} \overline z = (2_{\mathbf R} \cdot_{\mathbf R} \text{Re}(z))_{\mathbf C}, z -_{\mathbf C} \overline z = 2_{\mathbf C} \cdot_{\mathbf C} i \cdot_{\mathbf C} \text{Im}(z)_{\mathbf C}$
    3. 对于任意 $z \in \mathbf C$，存在 $x \in \mathbf R$ 使得 $z \cdot_{\mathbf C} \overline z = x_{\mathbf C}$ 且 $x \geqslant_{\mathbf R} 0_{\mathbf R}$
7. 模：设 $z, w \in \mathbf C, x_{\mathbf C} = z \cdot_{\mathbf C} \overline z$，定义模 $|z| := \sqrt{x}$
    1. $|\overline z| = |z|, |\text{Re}(z)| \leqslant_{\mathbf R} |z|$
    2. $|z| \geqslant_{\mathbf R} 0_{\mathbf R}$，等号成立当且仅当 $z_{\mathbf C} = 0_{\mathbf C}$
    3. $|z +_{\mathbf C} w| \leqslant_{\mathbf R} |z| +_{\mathbf R} |w|, |z \cdot_{\mathbf C} w| = |z| \cdot_{\mathbf R} |w|$
8. 完备全序集：具有最小上界性质的稠密线序集合
    1. 实数集合 $(\mathbf R, <_{\mathbf R})$ 是完备全序集
    2. 任何包含可数稠密子集的无端点完备全序集都与 $(\mathbf R, <_{\mathbf R})$ 同构
