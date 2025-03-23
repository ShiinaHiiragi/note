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
        1. $\text{A}_6: \forall X\alpha \to \alpha(T/X)$，即将 $n$ 元变谓词符 $X$ 替换为 $T$，后者是对 $\alpha$ 中 $X$ 可代入的 $n$ 元变谓词符号或 $n$ 元谓词符号
        2. $\text{A}_7: \forall f\alpha \to \alpha(p/f)$，即将 $n$ 元变函数符 $f$ 替换为 $p$，后者是对 $\alpha$ 中 $f$ 可代入的 $n$ 元变函数符或 $n$ 元函数符
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
1. 模态命题逻辑形式语言的公式集 $\mathscr{L}_{\square}$ 归纳定义如下

    $$
    \mathscr{L}_{\square} \ni \alpha := p \mid \perp \mid \left(\alpha_{1} \wedge \alpha_{2}\right) \mid \left(\alpha_{1} \vee \alpha_{2}\right) \mid \left(\alpha_{1} \rightarrow \alpha_{2}\right) \mid \square \alpha
    $$

    其中 $p \in \mathbf{Prop}$，命题变元或 $\bot$ 统称为原子公式

    1. 归纳定义必然算子 $\square^{n} \alpha$ 为 $\square^{0} \alpha=\alpha$ 且 $\square^{n+1} \alpha=\square \square^{n} \alpha$，可能算子 $\lozenge \alpha = \neg \square \neg \alpha, \lozenge^{n} \alpha=\neg \square^{n} \neg \alpha$
    2. 模态公式的性质
        1. $d(\alpha)$ 表示模态公式 $\alpha$ 的复杂度，定义为

            $$
            \begin{aligned}
            d(p) & = 0 = d(\bot), &p\in \mathbf{Prop} \\
            d(\alpha \circ \beta) & = \max\{d(\alpha), d(\beta)\} + 1, & \circ \in \{\wedge, \vee, \to\} \\
            d(\square \alpha) & = d(\alpha) + 1
            \end{aligned}
            $$

        2. $\mathrm{md}(\alpha)$ 表示模态公式 $\alpha$ 的模态度，定义为

            $$
            \begin{aligned}
            \mathrm{md}(p) & = 0 = \mathrm{md}(\bot), &p\in \mathbf{Prop} \\
            \mathrm{md}(\alpha \circ \beta) & = \max\{\mathrm{md}(\alpha), \mathrm{md}(\beta)\}, & \circ \in \{\wedge, \vee, \to\} \\
            \mathrm{md}(\square \alpha) & = \mathrm{md}(\alpha) + 1
            \end{aligned}
            $$

        3. $\mathrm{SF}(\alpha)$ 表示模态公式 $\alpha$ 的子公式集合，定义为

            $$
            \begin{aligned}
            \mathrm{SF}(\alpha) & = \{\alpha\}, &\alpha \in \mathbf{At} \\
            \mathrm{SF}(\alpha \circ \beta) & = \mathrm{SF}(\alpha) \cup \mathrm{SF}(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\} \\
            \mathrm{SF}(\square \alpha) & = \mathrm{SF}(\alpha) \cup \{\square \alpha\}
            \end{aligned}
            $$

        4. 一个代入是一个函数 $\sigma: \mathbf{Prop} \to \mathscr L_{\square}$，对任意代入 $\sigma$，函数 $\widehat \sigma: \mathscr L_{\square} \to \mathscr L_{\square}$ 定义为

            $$
            \begin{aligned}
            \widehat \sigma(\bot) &= \bot \\
            \widehat \sigma(p) &= \sigma(p), & p\in \mathbf{Prop} \\
            \widehat \sigma(\alpha \circ \beta) &= \widehat \sigma(\alpha) \circ \widehat \sigma(\beta), & \circ \in \{\wedge, \vee, \to\} \\
            \widehat \sigma(\square \alpha) &= \square \widehat \sigma(\alpha)
            \end{aligned}
            $$

            对公式 $\alpha(p_1, p_2, \cdots, p_n)$，用 $\alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$ 表示用 $\beta_1, \beta_2, \cdots, \beta_n$ 代入变元 $p_1, p_2, \cdots, p_n$ 的结果

2. 框架：$\mathfrak{F}=(W, R)$，其中 $W$ 是非空集，$R \subseteq W \times W$ 是 $W$ 上的二元关系，称 $W$ 中元素为可能世界、状态或点，$R$ 为可及关系
    1. 对 $w, v \in W$，若 $w R v$，则称 $v$ 是 $w$ 的 $R-$后继
        1. 定义 $R(w)=\{v \in W \mid R w v\}$，即 $w$ 的 $R-$后继集
        2. 称点 $w$ 是死点当且仅当 $R(w) = \varnothing$，$w$ 是活点当且仅当 $R(w) \neq \varnothing$
        3. 称点 $w$ 是自反的当且仅当 $w \in R(w)$，$w$ 是非自反的当且仅当果 $w \notin R(w)$
    2. 对任意 $X \subseteq W$，定义 $R[X]=\bigcup\{R(w) \mid w \in X\}$，且有 $R^{0}[X]=X, R^{n+1}[X]=R\left[R^{n}[X]\right]$
3. $\text{Kripke}$ 模态逻辑语义学：定义 $\mathfrak{M}=(W, R, V)$ 为模型，其中 $(W, R)$ 是直觉主义框架，$V: \mathbf{Prop} \to \mathcal P(W)$ 是 $\mathfrak{M}$ 中的赋值
    1. 对任意 $w \in W$ 与公式 $\alpha$，归纳定义 $\mathfrak{M}, w \vDash \alpha$（公式 $\alpha$ 在模型 $\mathfrak{M}$ 中状态 $w$ 上为真）
        1. $\mathfrak{M}, w \vDash p$ 当且仅当 $w \in V(p)$
        2. $\mathfrak{M}, w \not \vDash \perp$
        3. $\mathfrak{M}, w \vDash \alpha \wedge \beta$ 当且仅当 $\mathfrak{M}, w \vDash \alpha$ 且 $\mathfrak{M}, w \vDash \beta$
        4. $\mathfrak{M}, w \vDash \alpha \vee \beta$ 当且仅当 $\mathfrak{M}, w \vDash \alpha$ 或 $\mathfrak{M}, w \vDash \beta$
        5. $\mathfrak{M}, w \vDash \alpha \rightarrow \beta$ 当且仅当 $\mathfrak{M}, w \not \vDash \alpha$ 或者 $\mathfrak{M}, w \vDash \beta$
        6. $\mathfrak{M}, w \vDash \square \alpha$ 当且仅当任意 $u \in R(w)$ 都有 $\mathfrak{M}, u \vDash \alpha$

        用 $\mathfrak{M}, w \not \vDash \alpha$ 表示 $\alpha$ 在 $\mathfrak{M}$ 中点 $w$ 上为假．设 $\Phi$ 为公式集，定义 $V(\alpha)=\{w \in W \mid \mathfrak{M}, w \vDash \alpha\}$

        1. 若对任意 $\alpha \in \Phi$ 都有 $\mathfrak{M}, w \vDash \alpha$，则记作 $\mathfrak{M}, w \vDash \Phi$
        2. $\mathfrak{M}, w \vDash \lozenge \alpha$ 当且仅当存在 $u \in R(w)$ 使得 $\mathfrak{M}, u \vDash \alpha$
            1. $\mathfrak{M}, w \vDash \square^{n} \alpha$ 当且仅当 $R^{n}(w) \subseteq V(\alpha)$
            2. $\mathfrak{M}, w \vDash \lozenge^{n} \alpha$ 当且仅当 $R^{n}(w) \cap V(\alpha) \neq \varnothing$

    2. 若对任意 $w \in W$ 都有 $\mathfrak{M}, w \vDash \alpha$（即 $V(\alpha)=W$），则称 $\mathfrak{M}$ 是 $\alpha$ 的模型，记作 $\mathfrak{M} \vDash \alpha$
        1. 设 $\Phi$ 是公式集，若对任意 $\alpha \in \Phi$ 都有 $\mathfrak{M} \vDash \alpha$，则记作 $\mathfrak{M} \vDash \Phi$
        2. 若对任意赋值 $V$ 都有 $\mathfrak{M}, w \vDash \alpha$，则称公式 $\alpha$ 在框架 $\mathfrak{F}=(W, R)$ 中 $w$ 有效，记作 $\mathfrak{F}, w \vDash \alpha$
        3. 设 $\Phi$ 是公式集，若对任意 $\alpha \in \Phi$ 都有 $\mathfrak{F}, w \vDash \alpha$，则记作 $\mathfrak{F}, w \vDash \Phi$
    3. 若对任意赋值 $V$ 都有 $\mathfrak{M} \vDash \alpha$，则称公式 $\alpha$ 在框架 $\mathfrak{F}=(W, R)$ 有效，记作 $\mathfrak{F} \vDash \alpha$
        1. 设 $\Phi$ 是公式集，若对任意 $\alpha \in \Phi$ 都有 $\mathfrak{F} \vDash \alpha$，则记作 $\mathfrak{F} \vDash \Phi$
        2. 设 $\mathcal{K}$ 是框架类，若对任意 $\mathfrak{F} \in \mathcal{K}$ 都有 $\mathfrak{F} \vDash \alpha$，则记作 $\mathcal{K} \vDash \alpha$
        3. 设 $\Phi$ 是公式集，$\mathcal{K}$ 是框架类，若对任意 $\mathfrak{F} \in \mathcal{K}$ 都有 $\mathfrak{F} \vDash \Phi$，则记作 $\mathcal{K} \vDash \Phi$
    4. 任给模型 $\mathfrak{M}=(W, R, V)$，设 $\varnothing \neq X \subseteq W$，定义 $\mathfrak{M}$ 的 $X-$子模型 $\mathfrak{M} \upharpoonright X= \left(X, R^{X}, V^{X}\right)$
        1. $R^{X}=R \cap(X \times X)$
        2. 对每个命题变元 $p \in \operatorname{Prop}, V^{X}(p)=V(p) \cap X$

        对任意 $n \geqslant 0$，设 $X^{n}={\displaystyle \bigcup_{k \leqslant n} R^{k}(w)}$ 且 $\mathfrak{N}^{n}$ 是 $\mathfrak{M}$ 的 $X^{n}-$子模型．对任意 $\alpha$，若 $\operatorname{md}(\alpha) \leqslant n$，则 $\mathfrak{M}, w \vDash \alpha$ 当且仅当 $\mathfrak{N}^{n}, w \vDash \alpha$

    5. 令 $\mathcal{K}_{0}$ 是由所有框架组成的框架类
        1. 定义公式 $\alpha$ 的框架类义为 $\mathbf{Fr}(\alpha)=\{\mathfrak{F} \mid \mathfrak{F} \vDash \alpha\}$，公式集 $\Gamma$ 的框架类为 $\mathbf{Fr}(\Gamma)= \bigcap\{\mathbf{Fr}(\alpha) \mid \alpha \in \Gamma\}$
        2. 框架类 $\mathcal{K}$ 的逻辑定义为 $\mathbf{Log} (\mathcal{K})=\{\alpha \mid \mathcal{K} \vDash \alpha\}$

        !!! note "框架类的性质"
            对任意公式集 $\Phi, \Phi_{1}, \Phi_{2}$ 与框架类 $\mathcal{K}, \mathcal{K}_{1}, \mathcal{K}_{2}$

            1. 若 $\Phi_{1} \subseteq \Phi_{2}$，则 $\mathbf{Fr}\left(\Phi_{2}\right) \subseteq \mathbf{Fr}\left(\Phi_{1}\right)$
            2. 若 $\mathcal{K}_{1} \subseteq \mathcal{K}_{2}$，则 $\mathbf{Log} \left(\mathcal{K}_{2}\right) \subseteq \mathbf{Log} \left(\mathcal{K}_{1}\right)$
            3. $\Phi \subseteq \mathbf{Log} (\mathbf{Fr}(\Phi))$ 并且 $\mathcal{K} \subseteq \mathbf{Fr}(\mathbf{Log} (\mathcal{K}))$
            4. $\mathbf{Log} (\mathbf{Fr}(\Phi))=\Phi$ 当且仅当存在框架类 $\mathcal{K}$ 使得 $\Phi=\mathbf{Log} (\mathcal{K})$
            5. $\mathbf{Fr}(\mathbf{Log} (\mathcal{K}))=\mathcal{K}$ 当且仅当存在公式集 $\Phi$ 使得 $\mathcal{K}=\mathbf{Fr}(\Phi)$

4. 一个正规模态逻辑是模态公式集 $\mathbf{L}$ 使得
    1. （$\text{tau}$）：所有经典命题逻辑重言式的代入特例都属于 $\mathbf{L}$
    2. （$\text{K}$）：$\square\left(p_{0} \rightarrow p_{1}\right) \rightarrow\left(\square p_{0} \rightarrow \square p_{1}\right) \in \mathbf{L}$

    且 $\mathbf{L}$ 对如下规则封闭

    1. 分离规则（$\text{mp}$）：如果 $\alpha \in \mathbf{L}$ 并且 $\alpha \rightarrow \beta \in \mathbf{L}$，那么 $\beta \in \mathbf{L}$
    2. 代入规则（$\text{sub}$）：如果 $\alpha \in \mathbf{L}$，那么对任意代入 $\sigma$ 都有 $\sigma(\alpha) \in \mathbf{L}$
    3. 必然化规则（$\text{nec}$）：如果 $\alpha \in \mathbf{L}$，那么 $\square \alpha \in \mathbf{L}$

    若 $\alpha \in \mathbf{L}$，则称公式 $\alpha$ 是 $\mathbf{L}$ 的定理，记作 $\vdash_{\mathbf{L}} \alpha$

    1. 对任意框架 $\mathfrak{F}=(W, R)$ 都有
        1. 如果 $\mathfrak{F} \vDash \alpha$ 并且 $\mathfrak{F} \vDash \alpha \rightarrow \beta$，那么 $\mathfrak{F} \vDash \beta$
        2. 如果 $\mathfrak{F} \vDash \alpha$，那么 $\mathfrak{F} \vDash \sigma(\alpha)$，其中 $\sigma$ 为代入
        3. 如果 $\mathfrak{F} \vDash \alpha$，那么 $\mathfrak{F} \vDash \square \alpha$

        于是对任意框架类 $\mathcal{K}$，$\mathbf{Log} (\mathcal{K})$ 是正规模态逻辑

    2. 若存在 $\Phi$ 的有穷子集 $\Phi_{0}$ 使得 $\bigwedge \Phi_{0} \rightarrow \alpha \in \mathbf{L}$，则称 $\alpha$ 是 $\Phi$ 的 $\mathbf{L}-$演绎后承，记作 $\Phi \vdash_{\mathbf{L}} \alpha$
        1. 若存在公式 $\alpha$ 使得 $\alpha \notin \mathbf{L}$，则称正规模态逻辑 $\mathbf{L}$ 是一致的，易知任意非空框架类 $\mathcal{K}$ 的逻辑 $\mathbf{Log} (\mathcal{K})$ 是一致的
        2. 若 $\Phi \nvdash_{\mathbf{L}} \perp$，则称公式集 $\Phi$ 是 $\mathbf{L}-$一致的
            1. 若 $\Phi$ 是 $\mathbf{L}-$一致的并且不存在 $\mathbf{L}-$一致公式集 $\Psi$ 使得 $\Phi \subset \Psi$，则称公式集 $\Pi$ 是极大 $\mathbf{L}-$一致的
            2. 对任意 $\mathbf{L}-$一致公式集 $\Phi$，存在极大 $\mathbf{L}-$一致公式集 $\Psi$ 使得 $\Phi \subseteq \Psi$
    3. 定义极小正规模态逻辑 $\mathbf{K}$ 为模态公式集 $\mathbf{K}=\bigcap \{\mathbf{L} \mid \mathbf{L}$ 是正规模态逻辑$\}$，于是所有正规模态逻辑都是 $\mathbf{K}$ 的扩张
        1. 对任意正规模态逻辑 $\mathbf{L}_{1}$ 与 $\mathbf{L}_{2}$，若 $\mathbf{L}_{1} \subseteq \mathbf{L}_{2}$，则称 $\mathbf{L}_{1}$ 是 $\mathbf{L}_{2}$ 的子逻辑或 $\mathbf{L}_{2}$ 是 $\mathbf{L}_{1}$ 的扩张
        2. 对任意正规模态逻辑 $\mathbf{L}_{1}$ 与 $\mathbf{L}_{2}$，若 $\mathbf{L}_{1} \subset \mathbf{L}_{2}$，则称 $\mathbf{L}_{1}$ 是 $\mathbf{L}_{2}$ 的真子逻辑或 $\mathbf{L}_{2}$ 是 $\mathbf{L}_{1}$ 的真扩张
    4. 任给正规模态逻辑 $\mathbf{L}$ 和公式集 $\Phi$，定义从 $\mathbf{L}$ 由 $\Phi$ 生成的正规模态逻辑 $\mathbf{L} \oplus \Phi=\bigcap \left\{\mathbf{L}^{\prime} \mid \mathbf{L} \cup \Phi \subseteq \mathbf{L}^{\prime}\right\}$
        1. 若 $\Phi=\left\{\alpha_{1}, \cdots, \alpha_{n}\right\}$，则记 $\mathbf{L} \oplus \Phi$ 为 $\mathbf{L} \oplus \alpha_{1} \cdots \oplus \alpha_{n}$
        2. 定义 $\mathbf{NExt}(\mathbf{L})$ 是由所有包含 $\mathbf{L}$ 的正规模态逻辑组成的逻辑类
    5. 若 $\mathbf{L}=\mathbf{Log} (\mathbf{Fr}(\mathbf{L}))$，则称正规模态逻辑 $\mathbf{L}$ 是完全的

5. 正规模态逻辑 $\mathbf{K}$ 的公理系统由公理模式和推理规则组成
    1. 公理模式
        1. （$\text{tau}$）：所有经典命题逻辑重言式的代入特例
        2. （$\text{K}$）：$\square\left(p_{0} \rightarrow p_{1}\right) \rightarrow\left(\square p_{0} \rightarrow \square p_{1}\right)$

        推理规则

        $$
        \begin{prooftree}
        \AxiomC{$\alpha \to \beta$}
        \AxiomC{$\alpha$}
        \RightLabel{ $(\text{mp})$}
        \BinaryInfC{$\beta$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha$}
        \RightLabel{ $(\text{nec})$}
        \UnaryInfC{$\square \alpha$}
        \end{prooftree}
        $$

    2. 系统 $\mathbf{K}$ 中一个推导是由公式组成的有穷树结构 $\mathcal{D}$，其中每个节点或者是公理，或者是从子节点运用推理规则得到的
        1. 用 $\mathcal{D}, \mathcal{E}$ 等表示推导，$|\mathcal{D}|$ 表示推导 $\mathcal{D}$ 的高度，$\begin{prooftree} \AxiomC{\(\mathcal D\)} \noLine \UnaryInfC{\(\alpha\)} \end{prooftree}$ 表示 $\mathcal{D}$ 是以 $\alpha$ 为根节点的推导
        2. 若在 $\mathbf{K}$ 中存在以 $\alpha$ 为根节点的推导，则称 $\alpha$ 在 $\mathbf{K}$ 中可证（或称为 $\mathbf{K}$ 的定理），记作 $\vdash_{\mathbf{K}} \alpha$
            1. 系统 $\mathbf{K}$ 的所有定理的集合记为 $\operatorname{Thm}(\mathbf{K})$
            2. 若 $\vdash_{\mathbf{K}} \alpha_{i}(1 \leqslant i \leqslant n)$ 蕴涵 $\vdash_{\mathbf{K}} \alpha$，则称以 $\alpha_{1}, \cdots, \alpha_{n}$ 为前提并且以 $\alpha$ 为结论的规则 $\text{R}$ 在 $\mathbf{K}$ 中可允许
            3. 若存在有穷子集 $\Phi_{0} \subseteq \Phi$ 使得 $\vdash_{\mathbf{K}} \bigwedge \Phi_{0} \rightarrow \alpha$，则称公式 $\alpha$ 是公式集 $\Phi$ 在 $\mathbf{K}$ 中的演绎后承，记作 $\Phi \vdash_{\mathbf{K}} \alpha$
        3. 以下规则在 $\mathbf{K}$ 可允许

            $$
            \begin{prooftree}
            \AxiomC{$\alpha \rightarrow \beta$}
            \RightLabel{ $(\square m)$}
            \UnaryInfC{$\square \alpha \rightarrow \square \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \rightarrow \beta$}
            \RightLabel{ $(\lozenge m)$}
            \UnaryInfC{$\lozenge \alpha \rightarrow \lozenge \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \leftrightarrow \beta$}
            \RightLabel{ (re)}
            \UnaryInfC{$\gamma \leftrightarrow \gamma(\alpha / \beta)$}
            \end{prooftree}
            $$

            其中 $\gamma(\alpha / \beta)$ 是使用 $\alpha$ 替换 $\gamma$ 中 $\beta$ 的一次或多次出现得到的

        4. 以下公式在 $\mathbf{K}$ 中可证
            1. $\square(\alpha \wedge \beta) \leftrightarrow(\square \alpha \wedge \square \beta)$
            2. $\square \top \leftrightarrow \top$
            3. $\lozenge(\alpha \vee \beta) \leftrightarrow(\lozenge \alpha \vee \lozenge \beta)$
            4. $\lozenge \perp \leftrightarrow \perp$
            5. $\square \alpha \wedge \lozenge \beta \rightarrow \lozenge(\alpha \wedge \beta)$
            6. $\square(\alpha \vee \beta) \rightarrow(\square \alpha \vee \lozenge \beta)$
            7. $(\square \alpha \vee \square \beta) \rightarrow \square(\alpha \vee \beta)$

6. 在系统 $\mathbf{K}$ 上增加公理模式可得 $\mathbf{K}$ 的扩张
    1. $(\text{D}): \lozenge T$，称 $\mathbf{Fr}(\text{D})$ 为持续框架类
    2. $(\text{T}): \square p \rightarrow p$，称 $\mathbf{Fr}(\text{T})$ 为自反框架类
    3. $(4): \square p \rightarrow \square \square p$，称 $\mathbf{Fr}(4)$ 为对称框架类
    4. $(\text{B}): p \rightarrow \square \lozenge p$，称 $\mathbf{Fr}(\text{B})$ 为传递框架类
    5. $(5): \lozenge p \rightarrow \square \lozenge p$，称 $\mathbf{Fr}(5)$ 为欧性框架类

    以上公式的框架类都是一阶可定义的

    1. 常见的模态系统
        1. $\mathbf{K D} = \mathbf{K} \oplus \lozenge \top$
        2. $\mathbf{K T} = \mathbf{K} \oplus \square p \rightarrow p$
        3. $\mathbf{K 4} = \mathbf{K} \oplus \square p \rightarrow \square \square p$
        4. $\mathbf{K B} = \mathbf{K} \oplus p \rightarrow \square \lozenge p$
        5. $\mathbf{K 5} = \mathbf{K} \oplus \lozenge p \rightarrow \square \lozenge p$
        6. $\mathbf{K D 4} = \mathbf{K D} \oplus \square p \rightarrow \square \square p$
        7. $\mathbf{K D 5} = \mathbf{K D} \oplus \lozenge p \rightarrow \square \lozenge p$
        8. $\mathbf{K D 4 5} = \mathbf{K D 4} \oplus \lozenge p \rightarrow \square \lozenge p$
        9.  $\mathbf{K D B} = \mathbf{K D} \oplus p \rightarrow \square \lozenge p$
        10. $\mathbf{K T B} = \mathbf{K T} \oplus p \rightarrow \square \lozenge p$
        11. $\mathbf{K 4 B} = \mathbf{K 4} \oplus p \rightarrow \square \lozenge p$
        12. $\mathbf{K 4 5} = \mathbf{K 4} \oplus \lozenge p \rightarrow \square \lozenge p$
        13. $\mathbf{S 4} = \mathbf{K 4} \square p \rightarrow p$
        14. $\mathbf{S 5} = \mathbf{K T} \oplus \lozenge p \rightarrow \square \lozenge p$

    2. 对任意模态系统 $\mathbf{S}$，记号 $\vdash_{\mathbf{S}} \alpha$ 表示 $\alpha$ 在 $\mathbf{S}$ 中可证（或 $\alpha$ 是 $\mathbf{S}$ 的定理），$\operatorname{Thm}(\mathbf{S})$ 表示系统 $\mathbf{S}$ 的所有定理的集合
    3. 对任意模态系统 $\mathbf{S}_{1}, \mathbf{S}_{2}$，若 $\operatorname{Thm}\left(\mathbf{S}_{1}\right) \subseteq \operatorname{Thm}\left(\mathbf{S}_{2}\right)$，则称 $\mathbf{S}_{2}$ 是 $\mathbf{S}_{1}$ 的扩张，或称 $\mathbf{S}_{1}$ 是 $\mathbf{S}_{2}$ 的子系统，记作 $\mathbf{S}_{1} \subseteq \mathbf{S}_{2}$

        对任意模态系统 $\mathbf{S}_{1}, \mathbf{S}_{2}$，若 $\operatorname{Thm}\left(\mathbf{S}_{1}\right) \subset \operatorname{Thm}\left(\mathbf{S}_{2}\right)$，则称 $\mathbf{S}_{2}$ 是 $\mathbf{S}_{1}$ 的真扩张，或称 $\mathbf{S}_{1}$ 是 $\mathbf{S}_{2}$ 的真系统，记作 $\mathbf{S}_{1} \subset \mathbf{S}_{2}$

    4. 对任意模态系统 $\mathbf{S}$，若 $\operatorname{Thm}(\mathbf{S})$ 是完全的，则称模态系统 $\mathbf{S}$ 是完全的
        1. 对任意正规模态逻辑 $\mathbf{L}$，若典范框架 $\mathfrak{F}^{\mathbf{L}} \vDash \mathbf{L}$，则 $\mathbf{L}$ 是完全的
        2. $\mathbf{K}, \mathbf{K D}, \mathbf{K T}, \mathbf{K 4}, \mathbf{K B}, \mathbf{K 5}, \mathbf{K D 4}, \mathbf{K D 5}, \mathbf{K D 4 5}, \mathbf{K D B}, \mathbf{K T B}, \mathbf{K 4 B}, \mathbf{K 4 5}, \mathbf{S 4}, \mathbf{S 5}$ 都是完全的

7. 一个模态词是由 $\square, \lozenge, \neg$ 组成的有突长度的符号序列，所有模态词的集合是 ${\displaystyle \bigcup_{n<\omega}\{\square, \lozenge, \neg\}^{n}}$
    1. $\{\square, \lozenge, \neg\}^{n}$ 是长度为 $n$ 的模态词，长度为 $0$ 的模态词记为 $\varepsilon$，称为空模态词
    2. 用 $M, N$ 等表示模态词（可带下标），$\mathbf{S}$ 为任意模态系统
        1. 称模态词 $M$ 和 $N$ 在 $\mathbf{S}$ 中等价当且仅当 $\vdash_{\mathbf{S}} M p \leftrightarrow N p$，可知系统 $\mathbf{K}$ 中有无穷多个不等价的模态词
        2. 称模态词 $M$ 从属于 $N$ 当且仅当 $\vdash_{\mathbf{S}} M p \rightarrow N p$
8. 正规模态逻辑 $\mathbf{L}$ 的典范模型 $\mathfrak{M}^{\mathbf{L}}=(W^{\mathbf{L}}, R^{\mathbf{L}}, V^{\mathbf{L}})$ 定义为
    1. $W^{\mathbf{L}}=\{u \mid u$ 是极大 $\mathbf{L}-$一致公式集$\}$
    2. $u R^{\mathbf{L}} v$ 当且仅当 $\{\alpha \mid \square \alpha \in u\} \subseteq v$
    3. 对每个命题变元 $p \in \mathbf{Prop}$，$V^{\mathbf{L}}(p)=\left\{u \in W^{\mathbf{L}} \mid p \in u\right\}$

    称典范模型中的框架 $\mathfrak{F}^{\mathbf{L}}=(W^{\mathbf{L}}, R^{\mathbf{L}})$ 为 $\mathbf{L}$ 的典范框架

    1. 对正规模态逻辑 $\mathbf{L}$ 的典范模型 $\mathfrak{M}^{\mathbf{L}}=\left(W^{\mathbf{L}}, R^{\mathbf{L}}, V^{\mathbf{L}}\right)$
        1. $u R^{\mathbf{L}} v$ 当且仅当 $\{\lozenge \alpha \mid \alpha \in v\} \subseteq u$
        2. $u R^{\mathbf{L}} v$ 当且仅当 $\{\neg \square \alpha \mid \neg \alpha \in v\} \subseteq u$
        3. $u R^{\mathbf{L}} v$ 当且仅当 $\{\neg \alpha \mid \neg \lozenge \alpha \in u\} \subseteq v$
    2. 对典范模型 $\mathfrak{M}^{\mathbf{L}}=\left(W^{\mathbf{L}}, R^{\mathbf{L}}, V^{\mathbf{L}}\right)$ 和 $u \in W^{\mathbf{L}}$，若 $\square \alpha \notin u$，则存在 $v \in W^{\mathbf{L}}$ 使得 $u R^{\mathbf{L}} v$ 并且 $\alpha \notin v$
    3. 对任意正规模态逻辑 $\mathbf{L}$ 的典范模型 $\mathfrak{M}^{\mathbf{L}}$ 和公式 $\alpha$ 有 $\mathfrak{M}^{\mathbf{L}}, u \vDash \alpha$ 当且仅当 $\alpha \in u$
    4. 若对任意正规模态逻辑 $\mathbf{L}$ 使得 $\alpha \in \mathbf{L}$ 都有 $\mathfrak{F}^{\mathbf{L}} \vDash \alpha$，则称 $\alpha$ 是典范的．可知 $(\text{D}), (\text{T}), (4), (\text{B}), (5)$ 都是典范的

## 4.3 代数逻辑
### 4.3.1 偏序代数逻辑
1. 类型即 $\tau=(F, \Omega)$，其中 $F$ 是函数符号集合，$\Omega: F \rightarrow \omega$ 是函数使得任意 $f \in F$ 都有元数 $\Omega(f)$，称 $0$ 元函数为常元
2. 对任意类型 $\tau=(F, \Omega)$，一个 $\tau$ 型代数 $\mathbf{A}=\left(A, F^{A}\right)$，其中论域 $A$ 是非空集，$F^{A}$ 是集合 $\mathbf{A}$ 上 $\tau$ 型函数集
    1. 对任意类型 $\tau=(F, \Omega)$，集合 $A$ 上一个 $\tau$ 型函数集是 $F^{A}=\left\{f^{A} \mid f^{A}: A^{\Omega(f)} \rightarrow A\right.$ 是 $A$ 上的 $\Omega(f)$ 元函数且 $f \in F\}$
    2. 偏序 $\tau$ 型代数即 $\mathbf{A}=\left(A, F^{A}, \leqslant\right)$，其中 $\left(A, F^{A}\right)$ 是 $\tau$ 型代数，$\leqslant$ 是 $A$ 上的偏序
3. 对类型 $\tau=(F, \Omega)$，一个 $\tau$ 型形式语言 $\mathscr{L}$ 的初始符号由可数的变元集 $\mathcal{V}=\left\{p_{i} \mid i \in \omega\right\}$ 与函数符号集 $F$ 组成
    1. 归纳定义 $\mathscr{L}$ 的项集 $T$ 如下

        $$
        T \ni \alpha := p \mid f \alpha_{1} \cdots \alpha_{\Omega(f)}
        $$

        其中 $p \in \mathcal{V}$ 且 $f \in F$

        1. 当 $\Omega(f)=0$ 时，$f \alpha_{1} \cdots \alpha_{\Omega(f)}$ 是常元，用 $a, b, c$ 等表示
        2. $\operatorname{var}(\alpha)$ 表示 $\alpha$ 中所有变元的集合，$\alpha\left(p_{1}, \cdots, p_{n}\right)$ 表示 $\operatorname{var}(\alpha) \subseteq\left\{p_{1}, \cdots, p_{n}\right\}$
        3. 形式语言 $\mathscr{L}$ 的项代数定义为 $\tau$ 型代数 $\mathfrak{T}=\left(T, F^{T}\right)$，其中对每个 $f \in F$ 都有 $f^{T}\left(\alpha_{1}, \cdots, \alpha_{\Omega(f)}\right)= f \alpha_{1} \cdots \alpha_{\Omega(f)}$

    2. 项 $\alpha$ 的复杂度 $d(\alpha)$ 归纳定义如下

        $$
        \begin{aligned}
        d(p)&=0=d(f), & p \in \mathcal{V}, \Omega(f)=0 \\
        d\left(f \alpha_{1} \cdots \alpha_{\Omega(f)}\right)&=\max \left\{d\left(\alpha_{1}\right), \cdots, d\left(\alpha_{\Omega(f)}\right)\right\}+1, & \Omega(f)>0
        \end{aligned}
        $$

    3. 项 $\alpha$ 的所有子项的集合 $\operatorname{ST}(\alpha)$ 归纳定义如下

        $$
        \begin{aligned}
        \operatorname{ST}(p)&=\{p\} \\
        \operatorname{ST}\left(f \alpha_{1} \cdots \alpha_{\Omega(f)}\right)&=\operatorname{ST}\left(\alpha_{1}\right) \cup \cdots \cup \operatorname{ST}\left(\alpha_{\Omega(f)}\right) \cup\left\{f \alpha_{1} \cdots \alpha_{\Omega(f)}\right\}
        \end{aligned}
        $$

    4. 一个代入是函数 $\sigma: \mathcal{V} \rightarrow T$．对任意代入 $\sigma$，函数 $\widehat{\sigma}: \mathcal{T} \rightarrow \mathcal{T}$ 归纳定义如下

        $$
        \begin{aligned}
        \widehat{\sigma}(p)&=\sigma(p) \\
        \widehat{\sigma}\left(f \alpha_{1} \cdots \alpha_{\Omega(f)}\right)&=f \widehat{\sigma}\left(\alpha_{1}\right) \cdots \widehat{\sigma}\left(\alpha_{\Omega(f)}\right) 
        \end{aligned}
        $$

        对任意项 $\alpha\left(p_{1}, \cdots, p_{n}\right)$ 与 $\beta_{1}, \cdots, \beta_{2}$，$\alpha\left(p_{1} / \beta_{1}, \cdots, p_{n} / \beta_{n}\right)$ 表示分别用 $\beta_{1}, \cdots, \beta_{n}$ 统一代入 $p_{1}, \cdots, p_{n}$ 得到的项

    5. 一个后承是形如 $\alpha \vdash \beta$ 的表达式，其中 $\alpha, \beta \in T$
        1. 用 $\alpha \approx \beta$ 表示后承集 $\{\alpha \vdash \beta, \beta \vdash \alpha\}$
        2. 一个后承规则 $(\text{R})$ 是以后承为前提与结论的推理规则

4. 若 $L$ 是满足以下条件的后承集
    1. 自反性：对所有 $\alpha \in T$ 都有 $\alpha \vdash \alpha \in L$
    2. 传递性：$L$ 对于以下切割规则封闭

        $$
        \begin{prooftree}
        \AxiomC{$\alpha \vdash \beta$}
        \AxiomC{$\beta \vdash \gamma$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\alpha \vdash \gamma$}
        \end{prooftree}
        $$

    3. 代入封闭性: $L$ 对于以下代入规则封闭

        $$
        \begin{prooftree}
        \AxiomC{$\alpha \vdash \beta$}
        \RightLabel{ (Sub)}
        \UnaryInfC{$\widehat{\sigma}(\alpha) \vdash \widehat{\sigma}(\beta)$}
        \end{prooftree}
        $$

        其中 $\sigma$ 是任意代入

    则称 $L$ 为 $\tau$ 型代数逻辑

    1. 对任意 $\tau$ 型代数逻辑 $L_{1}$ 和 $L_{2}$，$L_{1} \cap L_{2}$ 是 $\tau$ 型代数逻辑，定义 $L_{1} \oplus L_{2}$ 为包含 $L_{1} \cup L_{2}$ 的最小 $\tau$ 型代数逻辑
    2. 偏序 $\tau$ 型代数 $\mathbf{A}=\left(A, F^{A}, \leqslant\right)$ 中的赋值是一个函数 $\theta: \mathcal{V} \rightarrow A$
        1. 一个代数模型是 $\mathbf{M}=(\mathbf{A}, \theta, \leqslant)$
        2. 对任意代数模型 $\mathbf{M}=(\mathbf{A}, \theta, \leqslant)$，函数 $\widehat{\theta}: T \rightarrow T$ 归纳定义如下

            $$
            \begin{aligned}
            \widehat{\theta}(p) & =\theta(p), & p \in \mathcal{V} \\
            \widehat{\theta}\left(f\left(\alpha_{1}, \cdots, \alpha_{\Omega f}\right)\right) & =f^{A}\left(\widehat{\theta}\left(\alpha_{1}\right), \cdots, \widehat{\theta}\left(\alpha_{\Omega(f)}\right)\right), & f \in F
            \end{aligned}
            $$

    3. 若 $\widehat{\theta}(\alpha) \leqslant \widehat{\theta}(\beta)$，则称 $\mathbf{M}$ 满足后承 $\alpha \vdash \beta$，记作 $\alpha \vDash_{\mathbf{M}} \beta$
        1. 若 $\alpha \vDash_{\mathbf{M}} \beta$ 并且 $\beta \vDash_{\mathbf{M}} \alpha$，则称 $\mathbf{M}$ 满足 $\alpha \approx \beta$，记作 $\mathbf{M} \vDash \alpha \approx \beta$
        2. 若存在代数模型 $\mathbf{M}$ 使得 $\alpha \vDash_{\mathbf{M}} \beta$，则称 $\alpha \vdash \beta$ 可满足；若存在代数模型 $\mathbf{M}$ 使得 $\mathbf{M} \vDash \alpha \approx \beta$，则称 $\alpha \approx \beta$ 可满足
    4. 若对 $\mathbf{A}$ 中任意赋值 $\theta$ 都有 $\alpha \vDash_{(\mathbf{A}, \theta)} \beta$，则称 $\alpha \vdash \beta$ 在偏序 $\tau$ 型代数 $\mathbf{A}$ 上有效，记作 $\alpha \vDash_{\mathbf{A}} \beta$

        若对 $\mathbf{A}$ 中任意赋值 $\theta$ 都有 $(\mathbf{A}, \theta) \vDash \alpha \approx \beta$，则称 $\alpha \approx \beta$ 在偏序 $\tau$ 型代数 $\mathbf{A}$ 上有效，记作 $\mathbf{A} \vDash \alpha \approx \beta$

    5. 若对所有 $\mathbf{A} \in \mathcal{K}$ 都有 $\alpha \vDash_{\mathbf{A}} \beta$，则称 $\alpha \vdash \beta$ 在偏序 $\tau$ 型代数类 $\mathcal{K}$ 上有效，记作 $\alpha \vDash_{\mathcal{K}} \beta$
        1. 若对所有 $\mathbf{A} \in \mathcal{K}$ 都有 $\mathbf{A} \vDash \alpha \approx \beta$，则称 $\alpha \approx \beta$ 在偏序 $\tau$ 型代数类 $\mathcal{K}$ 上有效，记作 $\mathcal{K} \vDash \alpha \approx \beta$
        2. 定义 $\mathbf{Log} (\mathcal{K})=\{\alpha \vdash \beta \mid \alpha \vDash_{\mathcal{K}} \beta\}$，称为 $\mathcal{K}$ 的代数逻辑
            1. 对任意偏序 $\tau$ 型代数类 $\mathcal{K}，\mathbf{Log} (\mathcal{K})$ 是 $\tau$ 型代数逻辑
            2. 对任意偏序 $\tau$ 型代数类 $\mathcal{K}$ 和项 $\alpha, \beta, \chi \in T$，若 $\mathcal{K} \vDash \alpha \approx \beta$，则 $\mathcal{K} \vDash \chi \approx \chi(\alpha / \beta)$

### 4.3.2 格代数逻辑
1. 定义 $\mathbb{L}$ 为所有格代数 $\mathbf{A} = (A, \{\wedge, \vee\})$ 的类，其后承系统 $\mathbf{L}$ 由如下公理和规则组成
    1. 公理：$p \vdash p \ (\text{Id})$

        逻辑规则（$i = 1, 2$，结论中带二元联结词的项称为主项）

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha_{i} \vdash \beta$}
            \RightLabel{ $(\wedge\!\vdash)$}
            \UnaryInfC{$\alpha_{1} \wedge \alpha_{2} \vdash \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta_{1}$}
            \AxiomC{$\alpha \vdash \beta_{2}$}
            \RightLabel{ $(\vdash\!\wedge)$}
            \BinaryInfC{$\alpha \vdash \beta_{1} \wedge \beta_{2}$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha_{1} \vdash \beta$}
            \AxiomC{$\alpha_{2} \vdash \beta$}
            \RightLabel{ $(\vee\!\vdash)$}
            \BinaryInfC{$\alpha_{1} \vee \alpha_{2} \vdash \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta_{i}$}
            \RightLabel{ $(\vdash\!\vee)$}
            \UnaryInfC{$\alpha \vdash \beta_{1} \vee \beta_{2}$}
            \end{prooftree}
        }
        $$

        切割规则

        $$
        \begin{prooftree}
        \AxiomC{$\alpha \vdash \beta$}
        \AxiomC{$\beta \vdash \gamma$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\alpha \vdash \gamma$}
        \end{prooftree}
        $$

    2. 若在 $\mathbf{L}$ 中存在以 $\alpha \vdash \beta$ 为根节点的推导，则称后承 $\alpha \vdash \beta$ 在 $\mathbf{L}$ 中可推导，记作 $\alpha \vdash_{\mathbf{L}} \beta$
        1. $\alpha \vdash_{\mathbf{L}} \alpha$
        2. $\alpha \wedge(\beta \wedge \gamma) \vdash_{\mathbf{L}}(\alpha \wedge \beta) \wedge \gamma$
        3. $(\alpha \wedge \beta) \wedge \gamma \vdash_{\mathbf{L}} \alpha \wedge(\beta \wedge \gamma)$
        4. $\alpha \vee(\beta \vee \gamma) \vdash_{\mathbf{L}}(\alpha \vee \beta) \vee \gamma$
        5. $(\alpha \vee \beta) \vee \gamma \vdash_{\mathbf{L}} \alpha \vee(\beta \vee \gamma)$
        6. $\alpha \wedge \beta \vdash_{\mathbf{L}} \beta \wedge \alpha$
        7. $\alpha \vee \beta \vdash_{\mathbf{L}} \beta \vee \alpha$
        8. $\alpha \wedge \alpha \vdash_{\mathbf{L}} \alpha$
        9. $\alpha \vdash_{\mathbf{L}} \alpha \wedge \alpha$
        10. $\alpha \vee \alpha \vdash_{\mathbf{L}} \alpha$
        11. $\alpha \vdash_{\mathbf{L}} \alpha \vee \alpha$
        12. $\alpha \wedge(\alpha \vee \beta) \vdash_{\mathbf{L}} \alpha$
        13. $\alpha \vdash_{\mathbf{L}} \alpha \wedge(\alpha \vee \beta)$
        14. $\alpha \vee(\alpha \wedge \beta) \vdash_{\mathbf{L}} \alpha$
        15. $\alpha \vdash_{\mathbf{L}} \alpha \vee(\alpha \wedge \beta)$
        16. $(\alpha \wedge \beta) \vee(\alpha \wedge \gamma) \vdash_{\mathbf{L}} \alpha \wedge(\beta \vee \gamma)$
        17. $\alpha \vee(\beta \wedge \gamma) \vdash_{\mathbf{L}}(\alpha \vee \beta) \wedge(\alpha \vee \gamma)$

    3. 以下规则在 $\mathbf{L}$ 中可允许

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta$}
            \RightLabel{ $(\wedge \mathrm{M})$}
            \UnaryInfC{$\alpha \wedge \gamma \vdash \beta \wedge \gamma$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta$}
            \RightLabel{ $(\vee \mathrm{M})$}
            \UnaryInfC{$\alpha \vee \gamma \vdash \beta \vee \gamma$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta$}
            \AxiomC{$\gamma \vdash \delta$}
            \RightLabel{ $(\wedge)$}
            \BinaryInfC{$\alpha \wedge \gamma \vdash \beta \wedge \delta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta$}
            \AxiomC{$\gamma \vdash \delta$}
            \RightLabel{ $(\vee)$}
            \BinaryInfC{$\alpha \vee \gamma \vdash \beta \vee \delta$}
            \end{prooftree}
        }
        $$

    4. 可靠性：若 $\alpha \vdash_{\mathbf{L}} \beta$，则 $\alpha \vDash_{\mathbb{L}} \beta$
    5. 完全性：若 $\alpha \vDash_{\mathbb{L}} \beta$，则 $\alpha \vdash_{\mathbf{L}} \beta$
    6. 切割消除：若 $\alpha \vdash_{\mathbf{L}} \beta$，则 $\alpha \vdash \beta$ 在 $\mathbf{L}$ 中有不使用 $\text{Cut}$ 的推导
        1. 设 $\mathbf{L}^{*}$ 是从 $\mathbf{L}$ 删除切割规则 $\text{Cut}$ 得到的后承演算，则对任意项 $\alpha, \beta$，$\alpha \vdash_{\mathbf{L}} \beta$ 当且仅当 $\alpha \vdash_{\mathbf{L}^{*}} \beta$
        2. 子项性质：设 $\alpha \vdash_{\mathbf{L}} \beta$，则 $\alpha \vdash \beta$ 在 $\mathbf{L}$ 中有推导 $\mathcal{D}$ 使得其中出现的每个项都属于 $\operatorname{ST}(\alpha) \cup \operatorname{ST}(\beta)$
        3. $\mathbf{L}$ 是可判定的

2. 定义 $\mathbb{BL}$ 为所有有界格代数 $\mathbf{A} = (A, \{\wedge, \vee, \bot, \top\})$ 的类，其后承系统 $\mathbf{BL}$ 在 $\mathbf{L}$ 上增加如下公理
    1. $\alpha \vdash \top \ (\top)$
    2. $\perp \vdash \alpha \ (\perp)$

    $\alpha \vdash_{\mathbf{BL}} \beta$ 表示 $\alpha \vdash \beta$ 在 $\mathbf{BL}$ 中可推导

    1. 对任意 $\alpha, \beta$，$\alpha \vdash_{\mathbf{BL}} \beta$ 当且仅当 $\alpha \vDash_{\mathbb{BL}} \beta$
    2. 若 $\alpha \vdash_{\mathbf{BL}} \beta$，则 $\alpha \vdash \beta$ 在 $\mathbf{BL}$ 中有不使用 $\text{Cut}$ 的推导
        1. 设 $\alpha \vdash_{\mathbf{BL}} \beta$，则 $\alpha \vdash \beta$ 在 $\mathbf{BL}$ 中有推导 $\mathcal{D}$ 使得其中出现的每个项都属于 $\operatorname{ST}(\alpha) \cup \operatorname{ST}(\beta)$
        2. 后承演算 $\mathbf{BL}$ 是可判定的

3. 定义 $\mathbb{DL}$ 为所有分配格代数 $\mathbf{A} = (A, \{\wedge, \vee\})$ 的类，其后承系统 $\mathbf{DL}$ 在 $\mathbf{L}$ 上增加公理 $\alpha \wedge(\beta \vee \gamma) \vdash(\alpha \wedge \beta) \vee(\alpha \wedge \gamma) \ (\text{D})$ 得来

    $\alpha \vdash_{\mathbf{BL}} \beta$ 表示 $\alpha \vdash \beta$ 在 $\mathbf{BL}$ 中可推导

    1. 对任意 $\alpha, \beta$，$\alpha \vdash_{\mathbf{DL}} \beta$ 当且仅当 $\alpha \vDash_{\mathbb{DL}} \beta$
    2. $\mathbf{DL}$ 没有切割消除性质

4. 定义 $\mathbb{BDL}$ 为所有有界分配格代数 $\mathbf{A} = (A, \{\wedge, \vee, \bot, \top\})$ 的类，其后承系统 $\mathbf{BDL}$ 在 $\mathbf{BL}$ 上增加公理 $(\text{D})$ 得来
5. 定义 $\mathbb{B}$ 为所有 $\text{Boole}$ 代数 $\mathbf{A} = (A, \{\wedge, \vee, \bot, \top, '\})$ 的类，其后承系统 $\mathbf{B}$ 由如下公理和规则组成
    1. 公理模式
        1. $\alpha \vdash \alpha \ (\text{Id})$
        2. $\alpha \wedge(\beta \vee \gamma) \vdash(\alpha \wedge \beta) \vee(\alpha \wedge \gamma) \ (\text{D})$
        3. $(\alpha \wedge \beta)' \vdash \alpha' \vee \beta' \ (\text{DM1})$
        4. $\alpha' \wedge \beta' \vdash (\alpha \vee \beta)' \ (\text{DM2})$
        5. $\alpha'' \vdash \alpha \ (\text{DN1})$
        6. $\alpha \vdash \alpha'' \ (\text{DN2})$

        逻辑规则（$i = 1, 2$，结论中带二元联结词的项称为主项）

        $$
        \displaylines{
            \begin{prooftree}
            \AxiomC{$\alpha_{i} \vdash \beta$}
            \RightLabel{ $(\wedge\!\vdash)$}
            \UnaryInfC{$\alpha_{1} \wedge \alpha_{2} \vdash \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta_{1}$}
            \AxiomC{$\alpha \vdash \beta_{2}$}
            \RightLabel{ $(\vdash\!\wedge)$}
            \BinaryInfC{$\alpha \vdash \beta_{1} \wedge \beta_{2}$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha_{1} \vdash \beta$}
            \AxiomC{$\alpha_{2} \vdash \beta$}
            \RightLabel{ $(\vee\!\vdash)$}
            \BinaryInfC{$\alpha_{1} \vee \alpha_{2} \vdash \beta$}
            \end{prooftree} \quad
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta_{i}$}
            \RightLabel{ $(\vdash\!\vee)$}
            \UnaryInfC{$\alpha \vdash \beta_{1} \vee \beta_{2}$}
            \end{prooftree} \\[0.5em]
            \begin{prooftree}
            \AxiomC{$\alpha \vdash \beta$}
            \RightLabel{ (CP)}
            \UnaryInfC{$\beta' \vdash \alpha'$}
            \end{prooftree}
        }
        $$

        切割规则

        $$
        \begin{prooftree}
        \AxiomC{$\alpha \vdash \beta$}
        \AxiomC{$\beta \vdash \gamma$}
        \RightLabel{ (Cut)}
        \BinaryInfC{$\alpha \vdash \gamma$}
        \end{prooftree}
        $$

        $\alpha \vdash_{\mathbf{B}} \beta$ 表示 $\alpha \vdash \beta$ 在 $\mathbf{B}$ 中可推导，$\alpha \vdash_{n} \beta$ 表示 $\alpha \vdash \beta$ 有高度不超过 $n$ 的推导

    2. 对任意 $\alpha, \beta$，$\alpha \vdash_{\mathbf{B}} \beta$ 当且仅当 $\alpha \vDash_{\mathbb{B}} \beta$
    3. 在 $\mathbf{B}$ 中切割规则 $\text{Cut}$ 是不可消除的
