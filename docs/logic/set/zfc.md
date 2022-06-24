# 1 集合与公理

## 1.1 ZFC 公理
### 1.1.1 ZFC 语言
1. 集合论语言 $\mathscr L(S)$，其中 $S = \{=, \in\}$ 且 $\Omega(=) = \Omega(\in) = 2$
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

        1. 对于每一公式 $\varphi(u)$，都存在相应的一个分离公理，也被称为概括公理或子集公理
        2. 分离公理是对「概括原则」的限制，即集合必须通过已经存在的集合中被分离出来，从而避免 $\text{Russell}$ 悖论的出现
        3. 任意两个集合的交与差仍然是集合，定义如下

            $$
            \begin{aligned}
            & X \cap Y = \left\{u \in X | u \in Y\right\} \\
            & X - Y = \left\{u \in X | u \notin Y\right\}
            \end{aligned}
            $$

            对于任意集合 $X \neq \varnothing$，其任意交 $\bigcap X = \left\{u | \forall Y \ (Y \in X \to u \in Y)\right\}$ 也是集合

    4. 对集公理（$\text{Pai}$）：对任意 $a, b$，存在一个集合只以 $a, b$ 为元素，表示为 $\{a, b\}$．因此单点集 $\{a\} = \{a, a\}$ 是集合

        $$
        \forall a \forall b \exists c \forall x \ (x \in c \leftrightarrow x = a \vee x = b)
        $$

    5. 并集公理（$\text{Uni}$）：对任意集合 $X$，存在集合 $Y$ 有 $u \in Y$ 当且仅当存在 $z \in X$ 使得 $u \in z$

        $$
        \forall X \exists Y \forall u \ (u \in Y \leftrightarrow \exists z \ (z \in X \wedge u \in z))
        $$

        1. 这样的 $Y$ 是唯一的，称作 $X$ 的并，记作 $\bigcup X$．特别地，定义 $X \cup Y = \bigcup \{X, Y\}$
        2. 子集：如果 $X$ 的元素都是 $Y$ 的元素，则称 $X$ 是 $Y$ 的子集，表示为 $X \subseteq Y$；如果 $X \subseteq Y$ 且 $X \neq Y$，则称 $X$ 是 $Y$ 的真子集，记作 $X \subset Y$

3. 类与真类：令 $\varphi(u)$ 为一个性质，$\{u \mid \varphi(u)\}$ 不一定是集合，这样的对象被称为类，不是集合的类被称为真类
    1. 每个集合都是类，例如 $\left\{x | x \neq x\right\}$
    2. 用 $\mathbf V = \left\{x | x = x\right\}$ 表示「所有集合」的类，$x \in V$ 不是集合论语言的公式，而只是公式 $x = x$ 的一种记法

## 1.2 关系与函数

## 1.3 实数理论
