# 2 依值类型论

## 2.1 依值函数类型
### 2.1.1 二阶类型论
1. $\lambda_2-$类型：设类型变元的无穷集为 $\mathrm V = \{\alpha, \beta, \gamma, \cdots\}$，定义所有二阶类型集合 $\mathrm T_2$ 如下
    1. 类型变元：若 $\alpha \in \mathrm V$，则 $\alpha \in \mathrm T_2$
    2. 箭头类型：若 $\sigma, \tau \in \mathrm T_2$，则 $(\sigma \to \tau) \in \mathrm T_2$
    3. $\Pi-$类型：若 $\alpha \in \mathrm V, \sigma \in T_2$，则 $(\Pi \alpha. *: \sigma) \in \mathrm T_2$，也称作乘积类型，称 $\Pi$ 为 $\Pi-$绑定器或类型绑定器
2. $\lambda_2-$项：定义变元的无穷集 $V = \left\{u, v, w, \cdots\right\}$，$\mathbf V$ 为类型变元的无穷集，$\mathrm T_2$ 为类型集合，则所有二阶预类型化 $\lambda-$项的集合 $\Lambda_{2}$ 定义如下
    1. 基础：若 $u \in V$，则 $u \in \Lambda_{2}$
    2. 应用：若 $M, N \in \Lambda_{2}$，则 $(MN) \in \Lambda_{2}$
    3. 抽象：若 $u \in V, \sigma \in \mathrm T_2$ 且 $M \in \Lambda_{2}$，则 $(\lambda u: \sigma.M) \in \Lambda_{2}$
    4. 二阶应用：若 $M \in \Lambda_{2}, \sigma \in \mathrm T_2$，则 $(M\sigma) \in \Lambda_{2}$
    5. 二阶抽象：若 $\alpha \in \mathbf V$ 且 $M \in \Lambda_{2}$，则 $(\lambda \alpha: *.M) \in \Lambda_{2}$，此时称项 $\lambda \alpha: *.M$ 依赖于类型 $\alpha$

    称形如 $\lambda \alpha: *.M$ 的 $\lambda$ 表达式为多态函数

    1. 简写规则
        1. 最外层括号可以被省略，应用是左结合的
        2. 应用与 $\to$ 优先级高于抽象与二阶抽象
        3. 同类型的连续抽象或二阶抽象可以以右结合的方式组合在一起
        4. 箭头类型是右结合的

        例如 $(\Pi \alpha: *. (\Pi \beta: *. (\alpha \to (\beta \to \alpha)))$ 可简写为 $\Pi \alpha, \beta: *. \alpha \to \beta \to \alpha$

    2. 陈述与声明的扩充
        1. 陈述是形如 $M: \sigma$ 或 $\sigma: *$ 的 $\lambda$ 表达式，其中 $M \in \Lambda_{2}, \sigma \in \mathrm T_2$
        2. 声明是主体为项变元或类型变元的陈述

3. $\lambda_2-$语境 $\Gamma$ 与其域 $\operatorname{dom}(\Gamma)$ 递归定义如下：
    1. $\varnothing$ 是一个 $\lambda_2-$语境，且 $\operatorname{dom}(\varnothing) = \left<\right>$，即空序列
    2. 若 $\Gamma$ 是一个 $\lambda_2-$语境且 $\alpha \in \mathrm{V}, \alpha \notin \operatorname{dom} (\Gamma)$，则 $\Gamma, \alpha: *$ 是一个 $\lambda_2-$语境且 $\operatorname{dom}(\Gamma, \alpha: *) = \operatorname{dom}(\Gamma) \cup \left<\alpha\right>$
    3. 若 $\Gamma$ 是一个 $\lambda_2-$语境．若 $\rho \in \mathrm T_2$ 使得对于所有 $\rho$ 中自由出现的类型变元 $\alpha$，都有 $\alpha \in \operatorname{dom}(\Gamma)$ 成立，且 $x \notin \operatorname{dom}(\Gamma)$，则 $\Gamma, x: \rho$ 是一个 $\lambda_2-$语境且 $\operatorname{dom}(\Gamma, x: \rho) = \operatorname{dom}(\Gamma) \cup \left<x\right>$

4. $\lambda_2$ 系统的派生规则：
    1. 变元：若 $\Gamma$ 是一个 $\lambda_2-$语境且 $x: \sigma \in \Gamma$，则 $\Gamma \vdash x: \sigma$
    2. 应用：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \sigma \to \tau\)} \AxiomC{\(\Gamma \to N: \sigma\)} \BinaryInfC{\(\Gamma \vdash MN: \tau\)} \end{prooftree}$
    3. 抽象：$\begin{prooftree} \AxiomC{\(\Gamma, x: \sigma \vdash M: \tau\)} \UnaryInfC{\(\Gamma \vdash \lambda x:\sigma.M: \sigma \to \tau\)} \end{prooftree}$
    4. 二阶应用：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: (\Pi: \alpha: *. A)\)} \AxiomC{\(\Gamma \vdash B: *\)} \BinaryInfC{\(\Gamma \vdash MB: A[\alpha := B]\)} \end{prooftree}$
    5. 二阶抽象：$\begin{prooftree} \AxiomC{\(\Gamma, \alpha: * \vdash M: A\)} \UnaryInfC{\(\Gamma \vdash \lambda \alpha: *. M: \Pi \alpha:*. A\)} \end{prooftree}$
    6. 形成规则：若 $\Gamma$ 是一个 $\lambda_2-$语境，$B \in \mathrm T_2$ 且 $B$ 中所有自由类型变量已在 $B$ 中声明，则 $\Gamma \vdash B: *$

    若 $\lambda_{\mathrm T_2}$ 中的二阶预类型化项 $M$ 存在语境 $\Gamma$ 与类型 $\rho \in \mathrm T_2$ 使得 $\Gamma \vdash M: \rho$，则称 $M$ 是合法的

5. $\alpha-$等价：定义 $\alpha-$转换或称 $\alpha-$等价性 $=_{\alpha}$ 如下
    1. 重命名
        1. 项变元的重命名：设 $M \in \lambda_{\mathrm T_2}$，若 $y \notin \mathrm{FV}(M)$ 且 $y$ 不在 $M$ 中绑定出现，则 $\lambda x: \sigma.M =_{\alpha} \lambda y: \sigma. M^{x \to y}$
        2. 类型变元的重命名：设 $\beta$ 不在 $M$ 中出现，则

            $$
            \begin{aligned}
            \lambda \alpha: *. M & =_{\alpha} \lambda \beta: *. M[\alpha := \beta] \\
            \Pi \alpha: *. M & =_{\alpha} \Pi \beta: *. M[\alpha := \beta]
            \end{aligned}
            $$

    2. 相容性：若 $M =_{\alpha} N$，则 $ML =_{\alpha} NL, LM =_{\alpha} LN$，且对于任意 $z \in V$ 有 $\lambda z.M =_{\alpha} \lambda z.N$
    3. 等价性：$=_{\alpha}$ 具有自反性、对称性以及传递性

6. $\beta-$归约：设 $P, Q \in \Lambda_{2}$，定义单步 $P \to_{\beta} Q$ 如下
    1. 基础：$(\lambda x: \sigma.M) N \rightarrow_\beta M[x:=N]$
    2. 二阶基础：$(\lambda \alpha: *. M)T \to _{\beta} M[\alpha := T]$
    3. 相容性：若 $M \to_{\beta} N$，则 $ML \to_{\beta} NL, LM \to_{\beta} LN$ 且对于任意 $x: \sigma$ 或 $\alpha: *$ 有 $\lambda x: \sigma.M \to_{\beta} \lambda x: \sigma.N$ 以及 $\lambda \alpha: *.M \to_{\beta} \lambda \alpha: *.N$

    多步 $P \twoheadrightarrow_{\beta} Q$ 与 $\beta-$等价性可仿照 $\lambda_{\to}$ 定义

7. $\lambda_2$ 的性质：$\lambda_{\to}$ 的性质在 $\lambda_2$ 中均成立，除排列引理在 $\lambda_2$ 中不再成立

### 2.1.2 类型依赖类型
1. 种类：定义所有超类集合 $\mathrm K$ 为 ① $* \in \mathrm K$；② 若 $\kappa, \mu \in \mathrm K$，则 $(\kappa \to \mu) \in \mathrm K$
    1. 种类的括号省略规则与类型一致
    2. 定义所有种类的类型为 $\square$
        1. 定义集合 $\mathrm{sort} = \{*, \square\}$，并常用 $s$ 表示 $\mathrm{sort}$ 中的某个元素
        2. 类型构造器：若 $\kappa: \square$ 及 $M: \kappa$，则称 $M$ 是一个（类型）构造器．若 $\kappa \neq *$，则称 $M$ 为真构造器
        3. 推断链：设 $t \in \Lambda_{\mathrm T}, \sigma \in \mathrm{T}, \kappa \in \mathrm K$，则可用 $t: \sigma: \kappa: \square$ 表示类型层级，称其为推断链
2. $\lambda_{\underline{\omega}}$ 系统的派生规则
    1. $\text{sort}$：$\varnothing \vdash *: \square$
    2. 变元：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: s\)} \UnaryInfC{\(\Gamma, x: A \vdash x: A\)} \end{prooftree}$（若 $x \notin \Gamma$）
    3. 弱化：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash C: s\)} \BinaryInfC{\(\Gamma, x: C \vdash A: B\)} \end{prooftree}$（若 $x \notin \Gamma$）
    4. 形成规则：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: s\)} \AxiomC{\(\Gamma \vdash B: s\)} \BinaryInfC{\(\Gamma \vdash A \to B: s\)} \end{prooftree}$
    5. 应用：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: A \to B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B\)} \end{prooftree}$
    6. 抽象：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash A \to B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: A \to B\)} \end{prooftree}$
    7. 转换：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash B': s\)} \BinaryInfC{\(\Gamma \vdash A: B'\)} \end{prooftree}$（其中 $B =_{\beta} B'$）
3. $\lambda_{\underline{\omega}}$ 的性质：$\lambda_{\to}$ 的性质在 $\lambda_{\underline{\omega}}$ 中均成立，除类型唯一性在 $\lambda_{\underline{\omega}}$ 中不再成立（类型在归约意义下的唯一性成立：若 $\Gamma \vdash A: B_1$ 且 $\Gamma \vdash A: B_2$，则 $B_1 =_{\beta} B_2$）

### 2.1.3 项依赖类型
1. $\lambda_{\mathrm P}$ 系统的派生规则
    1. $\text{sort}$：$\varnothing \vdash *: \square$
    2. 变元：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: s\)} \UnaryInfC{\(\Gamma, x: A \vdash x: A\)} \end{prooftree}$（若 $x \notin \Gamma$）
    3. 弱化：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash C: s\)} \BinaryInfC{\(\Gamma, x: C \vdash A: B\)} \end{prooftree}$（若 $x \notin \Gamma$）
    4. 形成规则：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: *\)} \AxiomC{\(\Gamma, x: A \vdash B: s\)} \BinaryInfC{\(\Gamma \vdash \Pi x: A. B: s\)} \end{prooftree}$
    5. 应用：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \Pi x: A. B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B[x := N]\)} \end{prooftree}$
    6. 抽象：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash \Pi x: A. B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: \Pi x: A. B\)} \end{prooftree}$
    7. 转换：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash B': s\)} \BinaryInfC{\(\Gamma \vdash A: B'\)} \end{prooftree}$（其中 $B =_{\beta} B'$）

    若 $\Pi-$类型 $\Pi x: A. B$ 中 $x$ 不出现在 $B$ 中，则可将其简记作 $A \to B$

2. $\lambda_{\mathrm P}$ 的性质：$\lambda_{\underline{\omega}}$ 的性质在 $\lambda_{\mathrm P}$ 中均成立

## 2.2 构造演算
### 2.2.1 λ<sub>C</sub> 系统
1. 构造演算：$\lambda_{\mathrm C}$ 系统是在 $\lambda_{\to}$ 系统上增加 $\lambda_{2}, \lambda_{\underline{\omega}}, \lambda_{\mathrm P}$ 派生规则得到的系统，也称作 $\lambda-$立方或 $\text{Barendregt}$ 立方
    1. $\text{sort}$：$\varnothing \vdash *: \square$
    2. 变元：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: s\)} \UnaryInfC{\(\Gamma, x: A \vdash x: A\)} \end{prooftree}$（若 $x \notin \Gamma$）
    3. 弱化：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash C: s\)} \BinaryInfC{\(\Gamma, x: C \vdash A: B\)} \end{prooftree}$（若 $x \notin \Gamma$）
    4. 形成规则：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: s_1\)} \AxiomC{\(\Gamma, x: A \vdash B: s_2\)} \BinaryInfC{\(\Gamma \vdash \Pi x: A. B: s_2\)} \end{prooftree}$
    5. 应用：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \Pi x: A. B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B[x := N]\)} \end{prooftree}$
    6. 抽象：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash \Pi x: A. B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: \Pi x: A. B\)} \end{prooftree}$
    7. 转换：$\begin{prooftree} \AxiomC{\(\Gamma \vdash A: B\)} \AxiomC{\(\Gamma \vdash B': s\)} \BinaryInfC{\(\Gamma \vdash A: B'\)} \end{prooftree}$（其中 $B =_{\beta} B'$）
2. 表达式：定义 $\lambda_{\mathrm C}$ 的表达式 $\mathrm E$ 如下
    1. 若 $s \in \text{sort}$，则 $s \in \mathrm E$
    2. 若 $u \in \mathrm V$，则 $u \in \mathrm E$
    3. 若 $u \in \mathrm V, e_1, e_2 \in \mathrm E$，则 $(\lambda u: e_1.e_2), (\Pi u: e_1. e_2)$ 或 $(e_1 e_2) \in \mathrm E$

    若表达式 $M$ 存在 $\Gamma$ 与 $N$ 使得 $\Gamma \vdash M: N$ 或 $\Gamma \vdash N: M$，则称 $M$ 是合法的

3. $\lambda_{\mathrm C}$ 的引理
    1. 自由变元引理：若 $\Gamma \vdash A: B$，则 $\mathrm{FV}(A), \mathrm{FV}(B) \subseteq \mathrm{dom}(\Gamma)$
    2. 良形式性引理：若语境 $\Gamma$ 存在 $A, B$ 使得 $\Gamma \vdash A: B$，则称 $\Gamma$ 是良形式的
    3. 稀疏化引理：设 $\Gamma'$ 与 $\Gamma''$ 是两个语境且 $\Gamma' \subseteq \Gamma''$，若 $\Gamma' \vdash A: B$ 且 $\Gamma''$ 是良形式的，则有 $\Gamma'' \vdash A: B$
    4. 压缩引理：若 $\Gamma', x: A, \Gamma'' \vdash B: C$ 且 $x$ 不在 $\Gamma'', B$ 或 $C$ 中出现，则 $\Gamma, \Gamma'' \vdash B: C$
    5. 排列引理：设 $\Gamma'$ 与 $\Gamma''$ 是两个语境且 $\Gamma''$ 是 $\Gamma'$ 的一个排列，若 $\Gamma' \vdash A: B$ 且 $\Gamma''$ 是良形式的的，则有 $\Gamma'' \vdash A: B$
    6. 生成引理
        1. 若 $\Gamma \vdash x: C$，则存在 $s \in \mathrm{sort}$ 与表达式 $B$ 使得 $B =_{\beta} C, \Gamma \vdash B: s$ 以及 $x: B \in \Gamma$
        2. 若 $\Gamma \vdash MN: C$，则 $M$ 有 $\Pi-$类型，即存在表达式 $A, B$ 使得 $\Gamma \vdash M: \Pi x: A.B$ 且 $\Gamma \vdash N: A, C =_{\beta} B[x := N]$
        3. 若 $\Gamma \vdash \lambda x: A. b: C$，则存在 $s \in \mathrm{sort}$ 与表达式 $B$ 使得 $C =_{\beta} \Pi x: A. B$，其中 $\Gamma \vdash \Pi x: A. B: s$ 且 $\Gamma, x: A \vdash b: B$
        4. 若 $\Gamma \vdash \Pi x: A. B: C$，则存在 $s_1, s_2 \in \mathrm{sort}$ 使得 $C \equiv s_2$ 且 $\Gamma \vdash A: s_1$ 且 $\Gamma, x: A \vdash B: s_2$
    7. 子项引理：若 $M$ 是合法项，则 $M$ 的所有子项均合法
    8. 类型唯一性：设 $\Gamma \vdash A: B_1$ 以及 $\Gamma \vdash A: B_2$，则 $B_1 =_{\beta} B_2$
    9. 替换引理：设 $\Gamma', x: A, \Gamma''\vdash B: C$ 且 $\Gamma' \vdash D: A$，则 $\Gamma', \Gamma'' [x := D] \vdash B[x := D]: C[x := D]$
4. $\text{Church}-\text{Rosser}$ 定理：对于给定的 $M \in \mathrm E$，若有 $M \twoheadrightarrow_{\beta} N_1, M \twoheadrightarrow_{\beta} N_2$，则存在 $N_3 \in \Lambda$ 使得 $N_1 \twoheadrightarrow_{\beta} N_3, N_2 \twoheadrightarrow_{\beta} N_3$
    1. 设 $M =_{\beta} N$，则存在 $L$ 使得 $M \twoheadrightarrow_{\beta} L$ 以及 $N \twoheadrightarrow_{\beta} L$
    2. 主体归约引理：若 $\Gamma \vdash A: B$，且若 $A \twoheadrightarrow_{\beta} A'$，则 $\Gamma \vdash A': B$
5. 终止定理：任意合法项 $M$ 均是强可正规化的
6. 可判定性：在 $\lambda_{\mathrm C}$ 及其子系统中，良类型性问题与类型检查问题是可判定的，而项查找问题是不可判定的

### 2.2.2 Curry-Howard 同构
1. $\text{PAT}-$解释：将一阶逻辑编码到构造演算
    1. 将集合 $S$ 解释为类型 $S: *$，集合的元素即为项
    2. 将命题 $A$ 解释为类型 $A: *$，命题 $A$ 的证明 $p$ 解释为类型为 $A$ 的项 $p: A$，因此 $A$ 为真命题当且仅当 $A$ 可居留
    3. 将谓词 $P$ 解释为函数 $P: S \to *$，其中 $S: *$ 为集合．对于任意 $a: S$，$Pa: *$ 是一个命题
2. 直觉主义逻辑的编码与派生规则
    1. 蕴含：设 $A, B$ 为命题，则命题 $A$ 蕴含 $B$ 解释为 $A \to B$（即 $\Pi x: A. B$，但其中的 $x$ 不可能在 $B$ 中自由出现）
        1. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: A \to B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B\)} \end{prooftree}$
        2. 引入：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash A \to B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: A \to B\)} \end{prooftree}$
    2. 恒假：定义 $\bot$ 为 $\Pi \alpha: *. \alpha$，则有消去规则 $\begin{prooftree} \AxiomC{\(\Gamma \vdash f: \Pi \alpha: *. \alpha\)} \UnaryInfC{\(\Gamma \vdash fA: A\)} \end{prooftree}$ 成立
    3. 否定：定义 $\neg A$ 为 $A \to \bot$，则有消去规则 $\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \neg A\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: \bot\)} \end{prooftree}$ 成立
    4. 合取：设 $A, B$ 为命题，则命题 $A \wedge B$ 定义为 $\Pi C: *. (A \to B \to C) \to C$
        1. 引入：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: A\)} \AxiomC{\(\Gamma \vdash y  : B\)} \BinaryInfC{\(\Gamma \vdash \lambda C: *.\lambda z: A \to B \to C. zxy: \Pi C: *. (A \to B \to C) \to C\)} \end{prooftree}$
        2. 左消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash z: \Pi C: *. (A \to B \to C) \to C\)} \UnaryInfC{\(\Gamma \vdash zA (\lambda x: A. \lambda y: B. x): A\)} \end{prooftree}$
        3. 右消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash z: \Pi C: *. (A \to B \to C) \to C\)} \UnaryInfC{\(\Gamma \vdash zB (\lambda x: A. \lambda y: B. y): B\)} \end{prooftree}$
    5. 析取：设 $A, B$ 为命题，则命题 $A \vee B$ 定义为 $\Pi C: *. (A \to C) \to (B \to C) \to C$
        1. 左引入：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: A\)} \UnaryInfC{\(\Gamma \vdash \lambda C: *. \lambda y: A \to C. \lambda z: B \to C. yx: \Pi C: *. (A \to C) \to (B \to C) \to C\)} \end{prooftree}$
        2. 右引入：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: B\)} \UnaryInfC{\(\Gamma \vdash \lambda C: *. \lambda y: A \to C. \lambda z: B \to C. zx: \Pi C: *. (A \to C) \to (B \to C) \to C\)} \end{prooftree}$
        3. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: \Pi D: *. (A \to D) \to (B \to D) \to D\)} \AxiomC{\(\Gamma \vdash y: A \to C\)} \AxiomC{\(\Gamma \vdash z: B \to C\)} \TrinaryInfC{\(\Gamma \vdash xCyz: C\)} \end{prooftree}$
    6. 等价：设 $A, B$ 为命题，则命题 $A \leftrightarrow B$ 定义为 $(A \to B) \wedge (B \to A)$
3. 命题逻辑：在直觉主义逻辑的基础上增加排中律 $A \vee \neg A$ 或与其等价的双重否定律 $\neg \neg A \to A$，可得到经典命题逻辑系统
4. 一阶逻辑：在命题逻辑的基础上增加量词
    1. 全称量化：设 $S: *$ 为集合，$P: S \to *$ 为谓词，则命题 $\forall x \in S \ (P(x))$ 解释为 $\Pi x: S. Px$
        1. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \Pi x: A. B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B[x := N]\)} \end{prooftree}$
        2. 引入：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash \Pi x: A. B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: \Pi x: A. B\)} \end{prooftree}$
    2. 存在量化：设 $S: *$ 为集合，$P: S \to *$ 为谓词，则命题 $\exists x \in S \ (P(x))$ 解释为 $\Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha$
        1. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: \Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha\)} \AxiomC{\(\Gamma \vdash y: \Pi x: S. Px \to A\)} \BinaryInfC{\(\Gamma \vdash xAy: A\)} \end{prooftree}$
        2. 引入：$\begin{prooftree} \AxiomC{\(\Gamma \vdash a: S\)} \AxiomC{\(\Gamma \vdash u: Pa\)} \BinaryInfC{\(\Gamma \to \lambda \alpha: *. \lambda v: (\Pi x: S. (Px \to \alpha)). vau: \Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha\)} \end{prooftree}$

## 2.3 定义与证明
### 2.3.1 定义

### 2.3.2 λ<sub>D<sub>0</sub></sub> 系统

### 2.3.3 λ<sub>D</sub> 系统
