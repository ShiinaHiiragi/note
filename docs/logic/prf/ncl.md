# 4 非经典逻辑

## 4.1 二阶逻辑
### 4.1.1 二阶语言与标准语义
1. 二阶语言 $\mathscr L^1(S)$ 即二阶逻辑的形式语言，由逻辑符号和非逻辑符号组成
    1. 逻辑符号
        1. 变元集 $\mathbf{Var} = \mathbf V_r \cup \mathbf V_f \cup \mathbf V_l$
            1. 变谓词符：$\mathbf V_r = \{X_i \mid i\in \lambda\}$，用 $X, Y, Z$ 表示任意变谓词符
            2. 变函数符：$\mathbf V_f = \{f_i \mid i\in \lambda\}$，用 $f, g, h$ 表示任意变函数符
            3. 变个体符：$\mathbf V_l = \{x_i \mid i\in \lambda\}$，用 $x, y, z$ 表示任意变个体符

            通常用上标表示其类型，例如用 $X^2$ 表示二元变谓词符

        2. 联结词 $\neg, \to$ 与量词 $\forall$
        3. 括号 $)$ 与 $($

    2. 非逻辑符号：令 $S = \mathbf R \cup \mathbf F \cup \mathbf C$
        1. 谓词符号集 $\mathbf R = \{R_i\mid i\in \lambda\}$，用 $R, Q, H$ 表示任意谓词符号
        2. 函数符号集 $\mathbf F = \{\varphi_i\mid i\in \lambda\}$，用 $\varphi, \psi$ 表示任意函数符号
        3. 个体符号集 $\mathbf C = \{c_i\mid i\in \lambda\}$，用 $a, b, c$ 表示任意个体符号

        一个二阶语言由非逻辑符号集合 $S$ 决定．当 $S = \varnothing$ 时，$\mathscr L^1(S)$ 可简记为 $\mathscr L^1$，这是语言中的纯逻辑部分

2. 二阶逻辑项与公式的句法
    1. 二阶语言 $\mathscr L^1(S)$ 的类型是从 $\mathbf V_r \cup \mathbf V_f \cup \mathbf R \cup \mathbf F$ 的正整数集合的函数 $\Omega: S \to \mathbf Z_+$
        1. 对每个 $R \in \mathbf V_r \cup \mathbf R$，$\Omega(R)$ 称为 $R$ 的元数，$R$ 为 $\Omega(R)$ 元谓词符号
        2. 对每个 $f \in \mathbf V_f \cup \mathbf F$，$\Omega(f)$ 称为 $f$ 的元数，$f$ 为 $\Omega(f)$ 元谓词符号
    2. 二阶语言 $\mathscr L^1(S)$ 的项集 $\mathcal T(S)$ 归纳定义如下

        $$
        \mathcal T(S) \ni t:= x \mid c \mid ft_1t_2\cdots t_{\Omega(f)} \mid \varphi t_1t_2\cdots t_{\Omega(\varphi)}
        $$

        其中 $x\in \mathbf V_l, c\in C$ 且 $f\in \mathbf V_f, \varphi \in \mathbf F$．不含变项的项称作闭项

        二阶语言 $\mathscr L^1(S)$ 的（合式）公式集 $\mathcal F(S)$ 归纳定义如下

        $$
        \mathcal F(S) \ni \alpha := Xt_1t_2\cdots t_{\Omega(X)} \mid Rt_1t_2\cdots t_{\Omega(R)} \mid \neg \alpha \mid \alpha_1 \to \alpha_2 \mid \forall u \alpha
        $$

        其中 $X \in \mathbf V_r , R \in  \mathbf R$ 且 $t_1, t_2, \cdots, t_{\Omega(R)}$ 是项，$u \in \mathbf{Var}$

    3. 相关概念
        1. 设 $\alpha, \beta \in \mathcal F(S), u \in \mathbf{Var}$，则定义常用联结词如下：

            $$
            \begin{aligned}
            \alpha \vee \beta & = \neg \alpha \to \beta \\
            \alpha \wedge \beta & = \neg (\alpha \to \neg \beta) \\
            \alpha \leftrightarrow \beta & = (\alpha \to \beta) \wedge (\beta \to \alpha) \\
            \exists u \alpha & = \neg \forall u \neg \alpha
            \end{aligned}
            $$

        2. 原子公式：称形如 $Rt_1t_2\cdots t_{\Omega(R)}$ 的公式为原子公式，全体原子公式记作 $\mathbf{At}(S)$
        3. 自由出现与约束出现：记公式 $\alpha$ 中自由变元的集合为 $\mathrm{FV}(\alpha)$，约束变元的集合为 $\mathrm{BV}(\alpha)$
        4. 等词：设 $t, u \in \mathcal T(S)$，定义 $t = u$ 为 $\forall X \ (X(t) = X(u))$

3. 标准语义
    1. 结构：一个标准结构是 $\mathfrak A = (A, I)$，其中 $A$ 是非空集合，称为 $\mathfrak A$ 的论域，$I$ 是定义在 $S$ 上的映射；在不引发歧义的情况下，也可称 $A$ 为一个标准结构．记 $A$ 的基数 $|A|$ 为 $\mathfrak A$ 的基数，用 $|\mathfrak A|$ 来表示
        1. 对每个谓词符号 $R\in \mathbf R, I(R) \subseteq A^{\Omega(R)}$，常用 $R^\mathfrak A$ 或 $R^A$ 代替 $I(R)$
        2. 对每个函数符号 $\varphi\in \mathbf F, I(\varphi): A^{\Omega(\varphi)} \to A$ 是 $A$ 上的 $\Omega(\varphi)$ 元函数，常用 $\varphi^\mathfrak A$ 或 $\varphi^A$ 代替 $I(\varphi)$
        3. 对每个常元符号 $c\in \mathbf C, I(c) \in A$，常用 $c^\mathfrak A$ 或 $c^A$ 代替 $I(c)$
    2. 模型：一个标准模型是有序对 $\mathfrak M = (\mathfrak A, \sigma)$，其中 $\mathfrak A$ 是标准结构，$\sigma$ 是 $\mathfrak A$ 中的指派，使得对于每个 $n$ 元变谓词符 $X^n \in \mathbf V_r$ 有 $\sigma(X) \subseteq A^n$；对于每个 $n$ 元变函数符 $f^n \in \mathbf V_f$ 有 $\sigma(f^n): A^n \to A$；对于每个变个体符 $x \in \mathbf V_l$ 有 $\sigma(x) \in A$
        1. 项解释：对任意结构 $\mathfrak A$ 和模型 $\mathfrak M = (\mathfrak A, \sigma)$，项 $t$ 在 $\mathfrak M$ 中的解释 $t^\mathfrak M$ 归纳定义为

            $$
            \begin{aligned}
            x^{\mathfrak M} &= \sigma(x) \\
            c^{\mathfrak M} &= c^{\mathfrak A} \\
            (ft_1t_2\cdots t_{\Omega(f)})^{\mathfrak M} &= \sigma(f)(t_1^{\mathfrak M}, t_2^{\mathfrak M}, \cdots, t_{\Omega(f)}^{\mathfrak M}) \\
            (\varphi t_1t_2\cdots t_{\Omega(f)})^{\mathfrak M} &= \varphi^{\mathfrak A}(t_1^{\mathfrak M}, t_2^{\mathfrak M}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M})
            \end{aligned}
            $$

        2. 模型 $\mathfrak M$ 与公式 $\alpha$ 的满足关系 $\mathfrak M \vDash \alpha$ 定义为

            $$
            \begin{aligned}
            \mathfrak M \vDash Xt_1t_2\cdots t_{\Omega(X)} & \textsf{ 当且仅当 } (t_1^{\mathfrak M}, t_2^{\mathfrak M}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M}) \in \sigma(X) \\
            \mathfrak M \vDash Rt_1t_2\cdots t_{\Omega(R)} & \textsf{ 当且仅当 } (t_1^{\mathfrak M}, t_2^{\mathfrak M}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M}) \in R^{\mathfrak A} \\
            \mathfrak M \vDash \neg \alpha & \textsf{ 当且仅当 } \mathfrak M \nvDash \alpha \\
            \mathfrak M \vDash \alpha \to \beta & \textsf{ 当且仅当 } \mathfrak M \nvDash \alpha \textsf{ 或 } \mathfrak M \vDash \beta \\
            \mathfrak M \vDash \forall X^n\alpha & \textsf{ 当且仅当任意 } R \subseteq A^n \textsf{ 都有 } (\mathfrak A, \sigma[R/X^n]) \vDash \alpha \\
            \mathfrak M \vDash \forall f^n\alpha & \textsf{ 当且仅当任意 } \varphi: A^n \to A \textsf{ 都有 } (\mathfrak A, \sigma[\varphi/f^n]) \vDash \alpha \\
            \mathfrak M \vDash \forall x\alpha & \textsf{ 当且仅当任意 } c \in A \textsf{ 都有 } (\mathfrak A, \sigma[c/x]) \vDash \alpha
            \end{aligned}
            $$

            其中 $\sigma[a/x](y) = \left\{\begin{aligned} & a, & y = x \\ & \sigma(y), & y\neq x \end{aligned}\right.$

4. 公理系统 $\mathbf H_2$：二阶语言没有任何能行的演绎系统对标准语义完全，但一阶演绎系统关于二阶语言有自然扩充
    1. 公理与公理模式：在 $\mathbf H_1$ 附加如下公理
        1. $\text{A}_6: \forall X\alpha \to \alpha(T/X)$，即将 $n$ 元变谓词符 $X$ 替换为 $T$，后者是对 $\alpha$ 中 $X$ 可带入的 $n$ 元变谓词符号或 $n$ 元谓词符号
        2. $\text{A}_7: \forall f\alpha \to \alpha(p/f)$，即将 $n$ 元变函数符 $f$ 替换为 $p$，后者是对 $\alpha$ 中 $f$ 可带入的 $n$ 元变函数符或 $n$ 元函数符
        3. 概括公理模式 $\text{A}_8: \exists X \forall x_{1}, x_{2}, \forall x_{2} \cdots \forall x_{n}\left(X\left(x_{1}, x_{2}, \cdots, x_{n}\right) = \alpha\left(x_{1}, \cdots, x_{n}\right)\right), X \notin \mathrm{FV}(\alpha)$
        4. 选择公理 $\text{A}_9:$ 设 $X$ 为 $n+1$ 元的变谓词符，$f$ 是 $n$ 元的变函数符，则有

            $$
            \forall X \ (\forall x_1 \forall x_2 \cdots \forall x_n \exists y \ X(x_1, x_2, \cdots, x_n, y) \to \exists f \forall x_1 \forall x_2 \cdots \forall x_n \ X(x_1, x_2, \cdots, x_n, f(x_1, x_2, \cdots, x_n)))
            $$

    2. 推理规则

        $$
        \begin{prooftree}
        \AxiomC{$\alpha$}
        \RightLabel{ (gen)}
        \UnaryInfC{$\forall X\alpha$}
        \end{prooftree},
        \begin{prooftree}
        \AxiomC{$\alpha$}
        \RightLabel{ (gen)}
        \UnaryInfC{$\forall f\alpha$}
        \end{prooftree}
        $$

        需要保证 $X, f$ 不在 $\alpha$ 的推理中自然出现

    3. 标准语义的性质
        1. 在 $\mathbf H_2$ 中可靠性定理对二阶语言标准语义成立，但完全性、紧致性与 $\text{L}\ddot{\mathrm o}\text{wenheim} - \text{Skolem}$ 定理均对其不成立
        2. 标准语义的不完全性定理：令 $\mathbf H$ 是 $\mathscr L^1(S)$ 的任一能行可靠的演绎系统，则存在重言式不是 $\mathbf H$ 中的定理

### 4.1.2 非标准语义
1. $\text{Henkin}$ 语义
    1. 结构：一个 $\text{Henkin}$ 结构是 $\mathfrak A^{\mathrm H} = (A, R, F, I)$
        1. $A$ 是个体域
        2. $R$ 是由谓词符号集 $\mathbf R$ 形成的映射，对任意 $n \in \mathbf N$ 都有 $\varnothing \neq R(n) \subseteq \mathcal P(A^n)$
        3. $F$ 是由函数符号集 $\mathbf F$ 形成的映射，对任意 $n \in \mathbf N$ 都有 $\varnothing \neq F(n) \subseteq \left\{f \mid f: A^n \to A\right\}$
        4. $I$ 是定义在 $S$ 上的映射
    2. 模型：$\text{Henkin}$ 语义的描述基本与标准语义相同，而仅在二阶变项与二阶量词方面有区别．设 $\text{Henkin}$ 模型 $\mathfrak M^{\mathrm H} = (\mathfrak A^{\mathrm H}, \sigma)$
        1. 对于指派 $\sigma$ 与 $n$ 元变谓词符 $X^n \in \mathbf V_r$ 及 $n$ 元变函数符 $f^n \in \mathbf V_f$，有 $\sigma(X^n) \in R(n), \sigma(f^n) \in F(n)$
        2. 模型 $\mathfrak M^{\mathrm H}$ 与公式 $\forall X^n\alpha, \forall f^n\alpha$ 的满足关系定义为

            $$
            \begin{aligned}
            \mathfrak M^{\mathrm H} \vDash \forall X^n\alpha & \textsf{ 当且仅当任意 } R \in R(n) \textsf{ 都有 } (\mathfrak A^{\mathrm H}, \sigma[R/X^n]) \vDash \alpha \\
            \mathfrak M^{\mathrm H} \vDash \forall f^n\alpha & \textsf{ 当且仅当任意 } \varphi \in F(n) \textsf{ 都有 } (\mathfrak A^{\mathrm H}, \sigma[\varphi/f^n]) \vDash \alpha
            \end{aligned}
            $$

2. 一阶语义
    1. 结构：一个一阶结构是 $\mathfrak A^{0} = (A, A_1, A_2, (I, P, D))$
        1. $A$ 是非空集，对任意 $n \in \mathbf N$，非空集 $A_1(n), A_2(n)$ 是 $n$ 元变谓词符与 $n$ 元变函数符的取值范围
        2. 对任意 $n \in \mathbf N$ 有 $P(n) \subseteq A^n \times A_1(n), D(n): A^n \times A_2(n) \to A$
    2. 模型：设一阶模型 $\mathfrak M^{0} = (\mathfrak A^{0}, \sigma)$
        1. 对于指派 $\sigma$ 与 $n$ 元变谓词符 $X^n \in \mathbf V_r$ 及 $n$ 元变函数符 $f^n \in \mathbf V_f$，有 $\sigma(X^n) \in A_1(n), \sigma(f^n) \in A_2(n)$
        2. 项解释：对任意结构 $\mathfrak A^{0}$ 和模型 $\mathfrak M^{0} = (\mathfrak A^{0}, \sigma)$，项 $t$ 在 $\mathfrak M^{0}$ 中的解释 $t^{\mathfrak M^{0}}$ 归纳定义为

            $$
            \begin{aligned}
            x^{\mathfrak M^{0}} &= \sigma(x) \\
            c^{\mathfrak M^{0}} &= c^{\mathfrak A^{0}} \\
            (ft_1t_2\cdots t_{\Omega(f)})^{\mathfrak M^{0}} &= D(n)(t_1^{\mathfrak M^{0}}, t_2^{\mathfrak M^{0}}, \cdots, t_{\Omega(f)}^{\mathfrak M^{0}}, \sigma(f)) \\
            (\varphi t_1t_2\cdots t_{\Omega(f)})^{\mathfrak M^{0}} &= \varphi^{\mathfrak A^{0}}(t_1^{\mathfrak M^{0}}, t_2^{\mathfrak M^{0}}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M^{0}})
            \end{aligned}
            $$

        3. 模型 $\mathfrak M^{0}$ 与部分公式的满足关系定义为

            $$
            \begin{aligned}
            \mathfrak M^{0} \vDash Xt_1t_2\cdots t_{\Omega(X)} & \textsf{ 当且仅当 } (t_1^{\mathfrak M^{0}}, t_2^{\mathfrak M^{0}}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M^{0}}, \sigma(X)) \in P(n) \\
            \mathfrak M^{0} \vDash Rt_1t_2\cdots t_{\Omega(R)} & \textsf{ 当且仅当 } (t_1^{\mathfrak M^{0}}, t_2^{\mathfrak M^{0}}, \cdots, t_{\Omega(\varphi)}^{\mathfrak M^{0}}) \in R^{\mathfrak A^{0}} \\
            \mathfrak M^{0} \vDash \forall X^n\alpha & \textsf{ 当且仅当任意 } R \in D_1(n) \textsf{ 都有 } (\mathfrak A^{0}, \sigma[R/X^n]) \vDash \alpha \\
            \mathfrak M^{0} \vDash \forall f^n\alpha & \textsf{ 当且仅当任意 } \varphi \in D_2(n) \textsf{ 都有 } (\mathfrak A^{0}, \sigma[\varphi/f^n]) \vDash \alpha \\
            \end{aligned}
            $$

3. 标准语义与非标准语义
    1. $\text{Henkin}$ 语义与标准语义的关系：设 $\mathfrak A$ 是一个标准结构，$\mathfrak A^{\mathrm H}$ 是相应的 $\text{Henkin}$ 结构，则对各指派 $\sigma$ 与公式 $\alpha$ 有 $(\mathfrak A, \sigma) \vDash \alpha$ 当且仅当 $(\mathfrak A^{\mathrm H}, \sigma) \vDash \alpha$
    2. $\text{Henkin}$ 语义与一阶语义的关系：设 $\mathfrak A^{0}$ 是 $\mathscr L^1(S)$ 上的一个一阶结构，则存在一个 $\text{Henkin}$ 结构 $\mathfrak A^{\mathrm H}$ 且对 $\mathfrak A^{0}$ 上的每一个指派 $\sigma^{0}$ 都有 $\mathfrak A^{\mathrm H}$ 上的一个指派 $\sigma^{\mathrm H}$ 使得对 $\mathscr L^1(S)$ 中的任一个公式 $\alpha$ 有 $(\mathfrak A^{0}, \sigma^{0}) \vDash \alpha$ 当且仅当 $(\mathfrak A^{\mathrm H}, \sigma^{\mathrm H}) \vDash \alpha$
        1. 对 $\mathscr L^1(S)$ 的任意公式 $\alpha$ 或公式集 $\Gamma$，$\alpha$ 或 $\Gamma$ 是 $\text{Henkin}$ 有效的当且仅当 $\alpha$ 或 $\Gamma$ 是一阶有效的
        2. 对 $\mathscr L^1(S)$ 的任意公式 $\alpha$ 或公式集 $\Gamma$，$\alpha$ 或 $\Gamma$ 是 $\text{Henkin}$ 可满足的当且仅当 $\alpha$ 或 $\Gamma$ 是一阶可满足的
    3. 若 $\text{Henkin}$ 结构（或一阶结构）满足选择公理与概括公理模式，则称其为忠实于 $\mathbf H_2$ 的，此时 $\text{Henkin}$ 结构（或一阶结构）具有可靠性、完全性、紧致性并满足 $\text{L}\ddot{\mathrm o}\text{wenheim} - \text{Skolem}$ 定理

## 4.2 正规模态逻辑

## 4.3 代数逻辑
