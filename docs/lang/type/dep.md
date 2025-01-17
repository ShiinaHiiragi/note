# 2 依值类型论

## 2.1 依值函数类型
### 2.1.1 二阶类型论
1. $\lambda_2-$类型：设类型变元的无穷集为 $\mathrm V = \{\alpha, \beta, \gamma, \cdots\}$，定义所有二阶类型集合 $\mathrm T_2$ 如下
    1. 类型变元：若 $\alpha \in \mathrm V$，则 $\alpha \in \mathrm T_2$
    2. 箭头类型：若 $\sigma, \tau \in \mathrm T_2$，则 $(\sigma \to \tau) \in \mathrm T_2$
    3. $\Pi-$类型：若 $\alpha \in \mathrm V, \sigma \in T_2$，则 $(\Pi \alpha. *: \sigma) \in \mathrm T_2$，也称作乘积类型，称 $\Pi$ 为 $\Pi-$绑定器或类型绑定器
2. $\lambda_2-$项：定义变元集 $V = \left\{u, v, w, \cdots\right\}$，$\mathbf V$ 为类型变元的无穷集，$\mathrm T_2$ 为类型集合，则所有二阶预类型化 $\lambda-$项的集合 $\Lambda_{2}$ 定义如下
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

    设 $M$ 为表达式，$\Gamma$ 为语境

    1. 对于 $M$，若存在 $\Gamma$ 与 $N$ 使得 $\Gamma \vdash M: N$ 或 $\Gamma \vdash N: M$，则称 $M$ 是合法的
    2. 对于 $\Gamma$，若存在 $A, B$ 使得 $\Gamma \vdash A: B$，则称 $\Gamma$ 是良形式的

3. $\lambda_{\mathrm C}$ 的引理
    1. 自由变元引理：若 $\Gamma \vdash A: B$，则 $\mathrm{FV}(A), \mathrm{FV}(B) \subseteq \mathrm{dom}(\Gamma)$
    2. 稀疏化引理：设 $\Gamma'$ 与 $\Gamma''$ 是两个语境且 $\Gamma' \subseteq \Gamma''$，若 $\Gamma' \vdash A: B$ 且 $\Gamma''$ 是良形式的，则有 $\Gamma'' \vdash A: B$
    3. 压缩引理：若 $\Gamma', x: A, \Gamma'' \vdash B: C$ 且 $x$ 不在 $\Gamma'', B$ 或 $C$ 中出现，则 $\Gamma, \Gamma'' \vdash B: C$
    4. 排列引理：设 $\Gamma'$ 与 $\Gamma''$ 是两个语境且 $\Gamma''$ 是 $\Gamma'$ 的一个排列，若 $\Gamma' \vdash A: B$ 且 $\Gamma''$ 是良形式的的，则有 $\Gamma'' \vdash A: B$
    5. 生成引理
        1. 若 $\Gamma \vdash x: C$，则存在 $s \in \mathrm{sort}$ 与表达式 $B$ 使得 $B =_{\beta} C, \Gamma \vdash B: s$ 以及 $x: B \in \Gamma$
        2. 若 $\Gamma \vdash MN: C$，则 $M$ 有 $\Pi-$类型，即存在表达式 $A, B$ 使得 $\Gamma \vdash M: \Pi x: A.B$ 且 $\Gamma \vdash N: A, C =_{\beta} B[x := N]$
        3. 若 $\Gamma \vdash \lambda x: A. b: C$，则存在 $s \in \mathrm{sort}$ 与表达式 $B$ 使得 $C =_{\beta} \Pi x: A. B$，其中 $\Gamma \vdash \Pi x: A. B: s$ 且 $\Gamma, x: A \vdash b: B$
        4. 若 $\Gamma \vdash \Pi x: A. B: C$，则存在 $s_1, s_2 \in \mathrm{sort}$ 使得 $C \equiv s_2$ 且 $\Gamma \vdash A: s_1$ 且 $\Gamma, x: A \vdash B: s_2$
    6. 子项引理：若 $M$ 是合法项，则 $M$ 的所有子项均合法
    7. 类型唯一性：设 $\Gamma \vdash A: B_1$ 以及 $\Gamma \vdash A: B_2$，则 $B_1 =_{\beta} B_2$
    8. 替换引理：设 $\Gamma', x: A, \Gamma''\vdash B: C$ 且 $\Gamma' \vdash D: A$，则 $\Gamma', \Gamma'' [x := D] \vdash B[x := D]: C[x := D]$
4. $\text{Church}-\text{Rosser}$ 定理：对于给定的 $M \in \mathrm E$，若有 $M \twoheadrightarrow_{\beta} N_1, M \twoheadrightarrow_{\beta} N_2$，则存在 $N_3 \in \Lambda$ 使得 $N_1 \twoheadrightarrow_{\beta} N_3, N_2 \twoheadrightarrow_{\beta} N_3$
    1. 设 $M =_{\beta} N$，则存在 $L$ 使得 $M \twoheadrightarrow_{\beta} L$ 以及 $N \twoheadrightarrow_{\beta} L$
    2. 主体归约引理：若 $\Gamma \vdash A: B$，且若 $A \twoheadrightarrow_{\beta} A'$，则 $\Gamma \vdash A': B$
5. 终止定理：任意合法项 $M$ 均是强可正规化的
6. 可判定性：在 $\lambda_{\mathrm C}$ 及其子系统中，良类型性问题与类型检查问题是可判定的，而项查找问题是不可判定的

### 2.2.2 Curry-Howard 同构
1. $\text{PAT}-$解释：将一阶逻辑编码到构造演算
    1. 将集合 $S$ 解释为类型 $S: *$，集合的元素即为项
    2. 将命题 $A$ 解释为类型 $A: *$，命题 $A$ 的证明 $p$ 解释为类型为 $A$ 的项 $p: A$，因此 $A$ 为真命题当且仅当 $A$ 可居留
    3. 将谓词 $P$ 解释为类型为 $P: S \to *$ 的函数，其中 $S: *$ 为集合．对于任意 $a: S$，$Pa: *$ 是一个命题

    可将集合 $S$ 的类型记为 $*_{s}$，命题 $A$ 的类型记为 $*_{p}$，但两者实质上都是 $*$

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
3. 经典命题逻辑：在直觉主义逻辑的基础上增加排中律 $A \vee \neg A$ 或双重否定律 $\neg \neg A \to A$，可得到经典命题逻辑
4. 一阶逻辑：在命题逻辑的基础上增加量词
    1. 全称量化：设 $S: *$ 为集合，$P: S \to *$ 为谓词，则命题 $\forall x \in S \ (P(x))$ 解释为 $\Pi x: S. Px$
        1. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash M: \Pi x: A. B\)} \AxiomC{\(\Gamma \vdash N: A\)} \BinaryInfC{\(\Gamma \vdash MN: B[x := N]\)} \end{prooftree}$
        2. 引入：$\begin{prooftree} \AxiomC{\(\Gamma, x: A \vdash M: B\)} \AxiomC{\(\Gamma \vdash \Pi x: A. B: s\)} \BinaryInfC{\(\Gamma \vdash \lambda x: A. M: \Pi x: A. B\)} \end{prooftree}$
    2. 存在量化：设 $S: *$ 为集合，$P: S \to *$ 为谓词，则命题 $\exists x \in S \ (P(x))$ 解释为 $\Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha$
        1. 消去：$\begin{prooftree} \AxiomC{\(\Gamma \vdash x: \Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha\)} \AxiomC{\(\Gamma \vdash y: \Pi x: S. Px \to A\)} \BinaryInfC{\(\Gamma \vdash xAy: A\)} \end{prooftree}$
        2. 引入：$\begin{prooftree} \AxiomC{\(\Gamma \vdash a: S\)} \AxiomC{\(\Gamma \vdash u: Pa\)} \BinaryInfC{\(\Gamma \to \lambda \alpha: *. \lambda v: (\Pi x: S. (Px \to \alpha)). vau: \Pi \alpha: *. \Pi x: S. (Px \to \alpha) \to \alpha\)} \end{prooftree}$

## 2.3 定义与形式证明
### 2.3.1 定义
1. 表达式：给定常元的无限集 $C = \{a, b, c, \cdots\}$ 且有 $\mathrm V \cap C = \varnothing$．定义 $\lambda_{\mathrm D}$ 的表达式 $\mathrm E_{\mathrm D}$ 如下
    1. 若 $s \in \text{sort}$，则 $s \in \mathrm E_{\mathrm D}$
    2. 若 $u \in \mathrm V$，则 $u \in \mathrm E_{\mathrm D}$
    3. 若 $u \in \mathrm V, e_1, e_2 \in \mathrm E_{\mathrm D}, \overline e \in \overline{\mathrm E_{\mathrm D}}, c \in C$，则 $(\lambda u: e_1.e_2), (\Pi u: e_1. e_2), (e_1 e_2)$ 或 $c(\overline e) \in \mathrm E_{\mathrm D}$，其中 $\overline{\mathrm E_{\mathrm D}}$ 表示 $\lambda_{\mathrm D}$ 表达式列表
2. 定义：令 $\mathcal D \equiv \Gamma \rhd a(\overline x) := M: N$，其中 $\Gamma =\overline x: \overline A, M = K / \bot \!\!\! \bot$ 且 $\overline x \in \overline{\mathrm V}, a \in C, A_i, K, N \in \mathrm E_{\mathrm D}$．当 $M = K$ 时，称 $\mathcal D$ 为 $\lambda_{\mathrm D}$ 的描述定义或真定义，当 $M = \bot \!\!\! \bot$ 时，称 $\mathcal D$ 为 $\lambda_{\mathrm D}$ 的原语定义
    1. 定义的组成
        1. $\Gamma$：$\mathcal D$ 的语境
        2. $a(\overline{x})$：$\mathcal D$ 的被定义项，并称 $a$ 为被定义常元，$\overline{x}$ 为其参数列表．当 $\mathcal D$ 为描述定义时，称 $a$ 为真常元；当 $\mathcal D$ 为原语定义时，称 $a$ 为原语常元
        3. $M: N$：$\mathcal D$ 的陈述，并称 $M = K / \bot \!\!\! \bot$ 为定义项或正体，$N$ 为类型
    2. 环境：定义的有限列表，通常记作 $\Delta \equiv \mathcal D_1, \mathcal D_2, \cdots, \mathcal D_k$
        1. 扩展推断：称形如 $\Delta; \Gamma \vdash M: N$ 的表达式为扩展推断或带定义的推断，其中 $\Delta$ 为环境，$\Gamma$ 为语境且 $M, N \in \mathrm E_{\mathrm D}$
        2. 将增加了定义 $\mathcal D$ 的环境 $\Delta$ 简写作 $\Delta, \mathcal D$
3. 合法组合：设 $\Delta$ 是一个环境，$\Gamma$ 是一个语境．若存在表达式 $M, N$ 使得 $\Delta; \Gamma \vdash M: N$，则称 $\Delta; \Gamma$ 形成一个合法组合
    1. 设 $M$ 是一个表达式，若存在环境 $\Delta$、语境 $\Gamma$ 以及表达式 $N$ 使得 $\Delta; \Gamma \vdash M: N$ 或 $\Delta; \Gamma \vdash N: M$，则称表达式 $M$ 是（关于 $\Delta$ 和 $\Gamma$）合法的
    2. 设 $\Delta$ 是一个环境，若存在语境 $\Gamma$ 以及表达式 $M, N$ 使得 $\Delta; \Gamma \vdash M: N$，则称 $\Delta$ 是合法的
    3. 设 $\Gamma$ 是一个语境，若存在环境 $\Delta$ 以及表达式 $M, N$ 使得 $\Delta; \Gamma \vdash M: N$，则称 $\Gamma$ 是合法的

### 2.3.2 δ-归约
1. $\delta-$归约与 $\delta-$等价性
    1. 单步 $\delta-$归约：设 $\Gamma \rhd a(\overline x) := M: N \in \Delta$，定义单步定义展开 $\overset{\Delta}{\to}_{\delta}$ 如下
        1. 基础：$a(\overline U) \overset{\Delta}{\to} M[\overline x := \overline U]$
        2. 相容性：若 $M \overset{\Delta}{\to} N$，则 $ML \overset{\Delta}{\to} NL, LM \overset{\Delta}{\to} LN$ 且对于任意 $x: L$ 有 $\lambda x: L.M \overset{\Delta}{\to} \lambda x: L.N$ 以及对任意 $b \in C$ 有 $b(\cdots, M, \cdots) \overset{\Delta}{\to} b(\cdots, M', \cdots)$

        通常将 $\overset{\Delta}{\to}_{\delta}$ 简记为 $\overset{\Delta}{\to}$，表示在环境 $\Delta$ 下的 $\delta-$归约

    2. 多步 $\delta-$归约：设 $M, N \in \mathrm E_{\mathrm D}$，定义多步 $M \overset{\Delta}{\twoheadrightarrow} N$ 为存在 $n \geqslant 0$ 与 $M_0, M_1, \cdots, M_n$ 使得 $M \equiv M_0, M_n \equiv N$ 且对于任意 $0 \leqslant i < n$ 有 $M_i \overset{\Delta}{\to} M_{i+1}$
    3. $\delta-$等价性：设 $M, N \in \mathrm E_{\mathrm D}$，定义 $M \overset{\Delta}{=} N$ 为存在 $n \geqslant 0$ 与 $M_0, M_1, \cdots, M_n$ 使得 $M \equiv M_0, M_n \equiv N$ 且对于任意 $0 \leqslant i < n$ 有 $M_i \overset{\Delta}{\to} M_{i+1}$ 或 $M_{i+1} \overset{\Delta}{\to} M_i$，称 $M$ 与 $N$ 为 $\delta-$可转换的

2. $\delta-$正规形式：设 $\Delta$ 是一个环境，$K \in \mathrm E_{\mathrm D}$
    1. 若常元 $a \in C$ 被 $\Delta$ 中的描述定义约束，则称 $a$ 是可展的
    2. 若 $K$ 中不存在与 $\Delta$ 相关的可展常元，则称 $K$ 是与 $\Delta$ 相关的 $\delta-$正规形式
    3. 若存在与 $\Delta$ 相关的 $\delta-$正规形式 $L$ 使得 $K \overset{\Delta}{=} L$，则称 $K$ 有与 $\Delta$ 相关的 $\delta-$正规形式 $L$，并称 $K$ 是 $\delta-$可正规化的
        1. 对任何合法环境 $\Delta$，关系 $\overset{\Delta}{\to}$ 是弱可正规化的
        2. 对任何合法环境 $\Delta$，关系 $\overset{\Delta}{\to}$ 是强可正规化的
        3. 对任何合法环境 $\Delta$，关系 $\overset{\Delta}{\twoheadrightarrow}$ 是可合流的

### 2.3.3 λ<sub>D</sub> 系统
1. $\beta \delta-$等价性：设 $M, N \in \mathrm E_{\mathrm D}$，定义 $M \overset{\Delta}{=}_{\beta} N$ 为存在 $n \geqslant 0$ 与 $M_0, M_1, \cdots, M_n$ 使得 $M \equiv M_0, M_n \equiv N$ 且对于任意 $0 \leqslant i < n$，有以下四种情形成立
    1. $M_i \to_{\beta} M_{i+1}$
    2. $M_i \overset{\Delta}{\to} M_{i+1}$
    3. $M_{i+1} \to_{\beta} M_i$
    4. $M_{i+1} \overset{\Delta}{\to} M_i$

    称 $M$ 与 $N$ 为 $\beta \delta-$可转换的

2. $\lambda_{\mathrm D}$ 是 $\lambda_{\mathrm C}$ 的扩展，其派生规则如下
    1. $\text{sort}$：$\varnothing; \varnothing \vdash *: \square$
    2. 变元：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash A: s\)} \UnaryInfC{\(\Delta; \Gamma, x: A \vdash x: A\)} \end{prooftree}$（若 $x \notin \Gamma$）
    3. 弱化：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash A: B\)} \AxiomC{\(\Delta; \Gamma \vdash C: s\)} \BinaryInfC{\(\Delta; \Gamma, x: C \vdash A: B\)} \end{prooftree}$（若 $x \notin \Gamma$）
    4. 形成规则：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash A: s_1\)} \AxiomC{\(\Delta; \Gamma, x: A \vdash B: s_2\)} \BinaryInfC{\(\Delta; \Gamma \vdash \Pi x: A. B: s_2\)} \end{prooftree}$
    5. 应用：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash M: \Pi x: A. B\)} \AxiomC{\(\Delta; \Gamma \vdash N: A\)} \BinaryInfC{\(\Delta; \Gamma \vdash MN: B[x := N]\)} \end{prooftree}$
    6. 抽象：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma, x: A \vdash M: B\)} \AxiomC{\(\Delta; \Gamma \vdash \Pi x: A. B: s\)} \BinaryInfC{\(\Delta; \Gamma \vdash \lambda x: A. M: \Pi x: A. B\)} \end{prooftree}$
    7. 转换：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash A: B\)} \AxiomC{\(\Delta; \Gamma \vdash B': s\)} \BinaryInfC{\(\Delta; \Gamma \vdash A: B'\)} \end{prooftree}$（其中 $B \overset{\Delta}{=}_{\beta} B'$）
    8. 定义：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash K: L\)} \AxiomC{\(\Delta; \overline x: \overline A \vdash M: N\)} \BinaryInfC{\(\Delta, \overline x: \overline A \rhd a(\overline x) := M: N; \Gamma \vdash K: L\)} \end{prooftree}$（若 $a \notin \Delta$）
    9. 原语定义：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash K: L\)} \AxiomC{\(\Delta; \overline x: \overline A \vdash N: S\)} \BinaryInfC{\(\Delta, \overline x: \overline A \rhd a(\overline x) := \bot \!\!\! \bot: N; \Gamma \vdash K: L\)} \end{prooftree}$（若 $a \notin \Delta$）
    10. 实例化：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash *: \square\)} \AxiomC{\(\Delta; \Gamma \vdash \overline U: \overline{A[\overline x := \overline U]}\)} \BinaryInfC{\(\Delta; \Gamma \vdash a(\overline U): N[\overline x := \overline U]\)} \end{prooftree}$（若 $\overline x: \overline A \rhd a(\overline x) := M: N \in \Delta$）
    11. 原语实例化：$\begin{prooftree} \AxiomC{\(\Delta; \Gamma \vdash *: \square\)} \AxiomC{\(\Delta; \Gamma \vdash \overline U: \overline{A[\overline x := \overline U]}\)} \BinaryInfC{\(\Delta; \Gamma \vdash a(\overline U): N[\overline x := \overline U]\)} \end{prooftree}$（若 $\overline x: \overline A \rhd a(\overline x) := \bot \!\!\! \bot: N \in \Delta$）

    由以上派生规则可得到如下导出规则：$\begin{prooftree} \AxiomC{\(\Delta; \overline x: \overline A \vdash M: N\)} \UnaryInfC{\(\Delta, \overline x: \overline A \rhd a(\overline x) := M: N; \overline x: \overline A \vdash a(\overline x): N\)} \end{prooftree}$（其中 $a \notin \Delta$）

3. $\lambda_{\mathrm D}$ 的引理
    1. 自由变元与常元引理：令 $\Delta; \Gamma \vdash M: N$，其中 $\Delta \equiv \Delta_1, \mathcal D, \Delta_2$ 且 $\mathcal D \equiv \overline x: \overline A \rhd a(\overline x) := K / \bot \!\!\! \bot: L, \Gamma \equiv \overline y: \overline B$
        1. 对于任意 $i$，都有 $\operatorname{FV} (A_i) \subset \{x_1, x_2, \cdots, x_{i-1}\}, \operatorname{FV} (K), \operatorname{FV} (L) \subset \{\overline x\}$
        2. 对于任意 $j$，都有 $\operatorname{FV} (B_i) \subset \{y_1, y_2, \cdots, y_{i-1}\}, \operatorname{FV} (M), \operatorname{FV} (N) \subset \{\overline y\}$
        3. 常元不在 $\Delta_1$ 中出现
        4. 若常元 $b$ 在 $\overline A, K$ 或 $L$ 中出现，则 $b \neq a$ 且 $b$ 是某个 $\mathcal D \in \Delta_1$ 的被定义常元
        5. 若常元 $b$ 在 $\overline B, M$ 或 $N$ 中出现，则 $b$ 是某个 $\mathcal D \in \Delta$ 的被定义常元
    2. 合法性引理
        1. 若 $\Delta \equiv \Delta_1, \Delta_2$ 合法，则 $\Delta_1$ 合法
        2. 若 $\Gamma \equiv \Gamma_1, \Gamma_2$ 合法，则 $\Gamma_1$ 合法
        3. 若表达式 $M$ 合法，则 $M$ 的所有子表达式均合法
        4. 若 $\mathcal D \equiv \overline x: \overline A \rhd a(x) := M / \bot \!\!\! \bot: N$ 在合法环境 $\Delta$ 中出现，不妨设 $\Delta \equiv \Delta_1, \mathcal D, \Delta_2$
            1. 每个 $A_i$ 关于 $\Delta_i$ 与 $x_1: A_1, x_2: A_2, \cdots, x_{i-1}: A_{i-1}$ 合法
            2. $M, N$ 均关于 $\Delta_1$ 与 $\overline x: \overline A$ 合法
    3. 声明与定义的起始引理
        1. 语境：若 $\Delta; \Gamma$ 是合法组合且 $x: A \in \Gamma$，则 $\Delta; \Gamma \vdash x: A$
        2. 环境：令 $\mathcal D \equiv \overline x: \overline A \rhd a(x) := M: N$，若 $\Delta$ 合法且 $\mathcal \in \Delta$，则 $\Delta; \overline x: \overline A \vdash M: N$ 且 $\Delta; \overline x: \overline A \vdash a(\overline x): N$
    4. 稀疏化引理：令 $\Delta_1 \subset \Delta_2, \Gamma_1 \subset \Gamma_2$，且令 $\Delta_2; \Gamma_2$ 为合法组合，则如果 $\Delta_1; \Gamma_1 \vdash M: N$，那么 $\Delta_2; \Gamma_2 \vdash M: N$
    5. 压缩引理
        1. 环境：任意 $\Delta_1, \mathcal D, \Delta_2; \Gamma \vdash M: N$，其中定义 $\mathcal D \equiv \Gamma' \rhd a(\overline x) := K / \bot \!\!\! \bot: L$ 且不在 $\Delta_2, \Gamma, M$ 或 $N$ 的任何一个中出现，则 $\Delta_1, \Delta_2; \Gamma \vdash M: N$
        2. 语境：若 $\Delta; \Gamma_1, x: A, \Gamma_2 \vdash M: N$ 且 $x$ 不在 $\Gamma_2, M$ 或 $N$ 的任何一个中出现，则 $\Delta; \Gamma_1, \Gamma_2 \vdash M: N$
    6. 生成引理
        1. 若 $\Delta; \Gamma \vdash x: C$，则存在 $s \in \mathrm{sort}$ 与表达式 $B$ 使得 $B \overset{\Delta}{=}_{\beta} C, \Delta; \Gamma \vdash B$ 且 $x: B \in \Gamma$
        2. 若 $\Delta; \Gamma \vdash MN: C$，则存在表达式 $A, B$ 使得 $\Delta; \Gamma \vdash M: \Pi x: A. B, \Delta; \Gamma \vdash N: A$ 以及 $C \overset{\Delta}{=}_{\beta} B[x := N]$
        3. 若 $\Delta; \Gamma \vdash \lambda x: A.b: C$，则存在 $s \in \mathrm{sort}$ 以及表达式 $B$ 使得 $C \overset{\Delta}{=}_{\beta} \Pi x: A.B:C, \Delta; \Gamma \vdash \Pi x: A.B: s$ 以及 $\Delta; \Gamma, x: A \vdash b: B$
        4. 若 $\Delta; \Gamma \vdash \Pi x: A.B: C$，则存在 $s_1, s_2 \in \mathrm{sort}$ 使得 $C \overset{\Delta}{=}_{\beta} s_2, \Delta; \Gamma \vdash A: s_1$ 且 $\Delta; \Gamma, x: A \vdash B: s_2$
        5. 若 $\Delta; \Gamma \vdash a(\overline U): C$，则常元 $a$ 必然是 $\Delta$ 中定义 $\mathcal D \equiv \overline x: \overline A \rhd a(\overline x) := M / \bot \!\!\! \bot: N$ 的被定义常元且 $C \overset{\Delta}{=}_{\beta} N[\overline x := \overline U]$
            1. 若 $|\Gamma| = n > 0$，则存在 $\overline B$ 使得 $\Delta; \Gamma \vdash \overline U: \overline B$ 且对于任意 $1 \leqslant i \leqslant n$ 都有 $B_i \overset{\Delta}{=}_{\beta} A_i[\overline x := \overline U]$
            2. 若 $|\Gamma| = 0$ 且 $\mathcal D$ 是描述定义，则存在 $N'$ 使得 $N \overset{\Delta}{=}_{\beta} N'$ 且 $\Delta; \Gamma \vdash M: N'$
            3. 若 $|\Gamma| = 0$ 且 $\mathcal D$ 是原语定义，则有 $\Delta; \Gamma \vdash N: s$，其中 $s \in \mathrm{sort}$
    7. 类型唯一性：若 $\Delta; \Gamma \vdash K: L_1$ 且 $\Delta; \Gamma \vdash K: L_2$，则 $L_1 \overset{\Delta}{=}_{\beta} L_2$
    8. 替换引理：令 $\Delta; \Gamma_1, x: A, \Gamma_2 \vdash M: N$ 且 $\Delta; \Gamma_1 \vdash L: A$，则 $\Delta; \Gamma_1, \Gamma_2[x := L] \vdash M[x := L]: N[x := L]$
4. $\text{Church}-\text{Rosser}$ 定理：设表达式 $L \in \mathrm E_{\mathrm D}$ 有 $L \overset{\Delta}{\twoheadrightarrow} L_1$ 且 $L \overset{\Delta}{\twoheadrightarrow} L_2$，则存在表达式 $L_3 \in \mathrm E_{\mathrm D}$ 使得 $L \overset{\Delta}{\twoheadrightarrow} L_1$ 与 $L \overset{\Delta}{\twoheadrightarrow} L_2$
    1. 若 $L \in \mathrm E_{\mathrm D}$ 有 $\beta \delta-$正规形式，则该正规形式唯一
        1. 若表达式 $L \in \mathrm E_{\mathrm D}$ 合法，则存在一个从 $L$ 开始、以其 $\beta \delta-$正规形式结束的有穷归约序列
        2. 若表达式 $L \in \mathrm E_{\mathrm D}$ 合法，则不存在一个从 $L$ 开始的 $\beta \delta-$无穷归约序列
    2. 主体归约引理：若 $\Delta; \Gamma \vdash M: N$ 且 $M \overset{\Delta}{\twoheadrightarrow} M'$ 或 $M \twoheadrightarrow_{\beta} M'$，则 $\Delta; \Gamma \vdash M': N$
