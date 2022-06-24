# 1 集合与公理

## 1.1 ZFC 公理
### 1.1.1 ZFC 语言
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

3. 集合的运算性质
    1. 子集的性质：对于任意集合 $X, Y, Z$
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
4. 有标集族：设 $\Gamma$ 是一个集合，$\mathscr A$ 是一个集族，每一个满射 $\varphi: \Gamma \to \mathscr A$ 称为一个以 $\Gamma$ 为指标集的集族，记 $A_\gamma = \varphi(\gamma)$，则 $\varphi = \left\{(\gamma, A_\gamma) \mid \gamma \in \Gamma\right\} \subseteq \Gamma \times \mathscr A$ 常记作 $\left\{A_\gamma\right\}_{\gamma \in \Gamma}$
    1. 定义并集与交集：

        $$
        \begin{aligned}
        & \bigcup_{\gamma \in \Gamma} A_\gamma = \{x \in \mathscr A \mid \exists \gamma \in \Gamma \ (x \in A_\gamma)\} \\
        & \bigcap_{\gamma \in \Gamma} A_\gamma = \{x \in \mathscr A \mid \forall \gamma \in \Gamma \ (x \in A_\gamma)\}
        \end{aligned}
        $$

    2. 设 $\{A_\gamma\}_{\gamma \in \Gamma}$ 和 $\{B_\delta\}_{\delta \in \Delta}$ 为两非空集族，若 $\{A_\gamma \mid \gamma \in \Gamma\} = \{B_\delta \mid \delta \in \Delta\}$，则有 ${\displaystyle \bigcup_{\gamma \in \Gamma}A_\gamma=\bigcup_{\delta \in \Delta} B_\delta, \bigcap_{\gamma \in \Gamma} A_\gamma = \bigcap_{\delta \in \Delta} B_\delta}$．特别地，${\displaystyle \bigcup_{\gamma \in \Gamma} A_\gamma = \bigcup A, \bigcap_{\gamma \in \Gamma}A_\gamma = \bigcap A}$
    3. 设 $\{A_\gamma\}_{\gamma \in \Gamma}$ 是一个非空的有标集族，$A$ 是一个集合
        1. ${\displaystyle \forall \gamma_0 \in \Gamma \ \left(\bigcap_{\gamma \in \Gamma} A_\gamma \subseteq A_{\gamma_0} \subseteq \bigcup_{\gamma \in \Gamma} A_\gamma\right)}$
        2. 分配律：${\displaystyle A \cap\left(\bigcup_{\gamma \in \Gamma} A_\gamma \right) = \bigcup_{\gamma \in \Gamma} (A \cap A_\gamma), A \cup \left(\bigcap_{\gamma \in \Gamma} A_\gamma \right) = \bigcap_{\gamma \in \Gamma}(A \cup A_\gamma)}$
        3. $\mathrm{De\ Morgan}$ 律：${\displaystyle A - \left(\bigcup_{\gamma \in \Gamma} A_\gamma \right) = \bigcap_{\gamma \in \Gamma} (A - A_\gamma), A - \left(\bigcap_{\gamma \in \Gamma} A_\gamma\right) = \bigcup_{\gamma \in \Gamma} (A - A_\gamma)}$
    4. 设 $R \subseteq X \times Y$，则对于集合 $X$ 的任何一个非空子集族 $\{A_\gamma\}_{\gamma \in \Gamma}$ 有

        $$
        \begin{aligned}
        & R\left(\bigcup_{\gamma \in \Gamma} A_\gamma\right) = \bigcup_{\gamma \in \Gamma} R(A_\gamma) \\
        & R\left(\bigcap_{\gamma \in \Gamma} A_\gamma\right)\subseteq \bigcap_{\gamma \in \Gamma} R(A_\gamma)
        \end{aligned}
        $$

    5. 设 $f: X \to Y$，则对于集合 $Y$ 的任何一个非空子集族 $\{B_\delta\}_{\delta \in \Delta}$ 有 

        $$
        \begin{aligned}
        & f^{-1}\left(\bigcup_{\delta \in \Delta}B_\delta\right)=\bigcup_{\delta \in \Delta}f^{-1}(B_\delta) \\
        & f^{-1}\left(\bigcap_{\delta \in \Delta}B_\delta\right)=\bigcap_{\delta \in \Delta}f^{-1}(B_\delta)
        \end{aligned}
        $$

5. 类与真类：令 $\varphi(u)$ 为一个性质，$\{u \mid \varphi(u)\}$ 不一定是集合，这样的对象被称为类，不是集合的类被称为真类
    1. 每个集合都是类，例如 $\left\{x \mid x \neq x\right\}$
    2. 用 $\mathbf V = \left\{x \mid x = x\right\}$ 表示「所有集合」的类，$x \in V$ 不是集合论语言的公式，而只是公式 $x = x$ 的一种记法

## 1.2 关系与函数
### 1.2.1 关系
1. 有序对
2. 集族的 $\text{Descartes}$ 积
    1. 投射与自然投射
        1. 投射：设 $X_1, X_2, \cdots, X_n$ 是 $n \ (n\geqslant 1)$ 个集合，从 $X=X_1\times X_2\times \cdots, X_n$ 到其第 $i \ (1 \leqslant i \leqslant n)$ 个坐标集 $X_i$ 的投射 $p_i: X \to X_i$ 定义为 $\forall X = (a_1, a_2, \cdots, a_n) \in X \ (p_i(X) = a_i)$，即

            $$
            p_i=\{((a_1, a_2, \cdots, a_n), a_i) \mid (a_1, a_2, \cdots, a_n)\in X\} \subseteq X \times X_\gamma
            $$

        2. 自然投射：设 $R$ 是集合 $X$ 中的一个等价关系，从集合 $X$ 到其商集 $X/R$ 的自然投射 $p:X\to X/R$ 定义为 $\forall X\in X: p(X)=[X]$，即 $p=\{(X, [X]) \mid X\in X\}\subseteq X\times X/R$

    2. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 的 $\mathrm{Descartes}$ 积为 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} = \left\{ \left. x: \Gamma\to {\displaystyle \bigcup_{\gamma \in \Gamma}X_\gamma} \ \right| \ \forall \gamma \in \Gamma \ (x(i)\in X_\gamma)\right\}$
        1. 对于每一个 $\gamma \in \Gamma$，集合 $X_\gamma$ 为 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $i$ 个坐标集
        2. 对于 $\gamma \in \Gamma$，定义 $p_\alpha: {\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} \to X_\gamma$，使得对于任意 $x\in {\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 有 $p_\alpha(x)=x(\alpha)$，称为 $\mathrm{Descartes}$ 积的第 $\alpha$ 个投射
    3. 设给定了集族 $\{X_\gamma\}_{\gamma \in \Gamma}$，则 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma} \neq \varnothing \leftrightarrow \forall \gamma \in \Gamma \ (X_\gamma\neq \varnothing)$
    4. 给定两个集族 $\{X_\gamma\}_{\gamma \in \Gamma}, \{Y_\gamma\}_{\gamma \in \Gamma}$，且 $\forall \gamma \in \Gamma \ (Y_\gamma \subseteq X_\gamma)$．若对于任意 $\gamma \in \Gamma$，都有 $Y_\gamma \neq \varnothing$，则对于任意 $\alpha \in \Gamma$ 有 $p_\alpha\left({\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}\right) = Y_\alpha$
        1. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 对每一个 $\gamma \in \Gamma$ 有 $X_\gamma\neq \varnothing$，则对于任意 $\alpha \in \Gamma$，$\mathrm{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $\alpha$ 个投影 $p_\alpha$ 都是满射
        2. 设集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 对每一个 $\gamma \in \Gamma$ 有 $X_\gamma\neq \varnothing$，又设 $\varnothing \neq \Gamma_1 \subseteq \Gamma$，集族 $\{X_\gamma\}_{\gamma \in \Gamma}$ 满足条件：对于每一个 $\gamma \in \Gamma_1$ 有 $\varnothing \neq a_i\subseteq X_\gamma$，则对于每一个 $\alpha \in \Gamma$ 有

            $$
            p_\alpha\left({\displaystyle \bigcap_{\gamma \in \Gamma_1}p^{-1}_i(a_i)}\right) =
            \left\{\begin{aligned}
            & x_\alpha, & \alpha\in \Gamma-\Gamma_1 \\
            & a_\alpha, & \gamma \in \Gamma_1
            \end{aligned}\right.
            $$

            其中 $p_\alpha$ 是 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{\gamma \in \Gamma}X_\gamma}$ 的第 $\alpha$ 个投射

### 1.2.2 函数

## 1.3 实数理论
