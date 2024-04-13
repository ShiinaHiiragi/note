# 2 语义学

## 2.1 Montague 语法
1. 古典范畴语法作为一种语言 $\mathscr{L}$，可严格表述成形如 $\left\langle V, \text{BasCat}, \text{Cat}, R_{d}, R_{a}\right\rangle$ 的系统，其中
    1. $V$ 是 $\mathscr{L}$ 的词库
    2. $\text{BasCat}$ 是初始范畴的集合
    3. $\text{Cat}$ 是所有句法范畴的集合
    4. $R_{d}$ 是两类规则的集合
        1. 范畴递归生成规则：从初始范畴的集合 $\text{BasCat}$ 生成所有范畴的集合 $\text{Cat}$．① $\text{BasCat} \subseteq \text{Cat}$；② 若 $A_{1}, \cdots, A_{n}$ 且 $B \in \text{Cat}$，则 $B / A_{1} \cdots A_{n}, A_{1} \cdots A_{n} \backslash B \in \text{Cat}$ 在有穷集合 $\text{BasCat}$ 的基础上生成包含若干函子范畴的无穷集合 $\text{Cat}$
        2. 自然语言表达式的毗连对应范畴运算的规则：若 $\alpha_{1}, \cdots, \alpha_{n}$ 是分别属于范畴 $A_{1}, \cdots, A_{n}$ 的表达式，并且 $\beta$ 是属于范畴 $B / A_{1} \cdots A_{n}$（或 $A_{1} \cdots A_{n} \backslash B$）的表达式，那么 $\beta \alpha_{1} \cdots \alpha_{n}$（或 $\alpha_{1} \cdots \alpha_{n} \beta$）是属于范畴 $B$ 的表达式
    5. $R_{a}$ 是给 $V$ 中词条指派适当范畴规则的集合
2. 通用语法分为句法层面和语义层面，句法层面又分为作为内在结构的无歧义语言和作为外在结构的歧义语言
    1. 无歧义语言定义为多元组 $\left\langle A, F \gamma, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}$
        1. $A$ 表示所有基本语词和经语形结构运算生成的派生表达式的集合
        2. $F_{\gamma}$ 表示该语言若干结构运算的序列
        3. $X_{\delta}$ 表示该语言若干类初始符号或基本语词集合的序列
        4. $S$ 指语言的形成规则或句法规则的集合
        5. $\delta_{0}$ 指语言的特异表达式的范畴标记，即语句的范畴标记 $s$
    2. 歧义语言表现为多元组 $\langle\left\langle A, F_{\gamma}, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}, R\rangle$
        1. $\left\langle A, F_{\gamma}, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}$ 是无歧义语言，记作 $\mathfrak{A}$，从而歧义语言 $\mathscr{L}=\langle\mathfrak{A}, R\rangle$
        2. $R$ 是一个二元关系，表示由无歧义语言转换成歧义语言，描述了从无歧义的内在结构向有歧义的外在结构的转变
3. 语义解释的基础表现为多元组 $\left\langle B, G_{\gamma}, f\right\rangle_{\gamma \in \Gamma}$，记作 $\mathfrak{B}$．完整的语义解释由 $\mathfrak{B}$ 和意义指派函项 $g$ 所构成，且有 $f \subseteq g$，即 $g$ 不仅要对句法基本表达式赋予语义值，还要对派生的句法表达式进行语义解释
    1. $B$ 是语义解释给出的意义集合（包括个体的集合）
    2. $G_{\gamma}$ 是相应于句法结构运算序列 $F_{\gamma}$ 的语义运算序列
    3. $f$ 是从若干 $X_{\delta}$ 的并集到 $B$ 的赋值函项
4. 语义类型：属于一定句法范帱的自然语言表达式所指语义对象，即自然语言表达式的种类所对应的逻辑语言的「语形范畴」
    1. 在 $\text{PTQ}$ 系统中，语义类型的形成定义为 ① 原子类型 $e, t \in T$；② 若 $\alpha, \beta \in T$，则 $\langle\alpha, \beta\rangle \in T$
    2. 语义类型是句法范畴的对应物：句法范畴代表一类句法表达式，句法表达式的语义值就是所指的某类语义对象，语义对象的类别标记就是相关的语义类型

        <div class="text-table">

        | 句法表达式 |      所属范畴      |  所指语义对象  |           语义对象的类型            |
        | :--------: | :----------------: | :------------: | :---------------------------------: |
        |    专名    |    $\text{np}$     |      个体      |                 $e$                 |
        | 不及物动词 |   $\text{np\s}$    |   个体的集合   |         $\left<e, t\right>$         |
        |  及物动词  | $\text{(np\s)/np}$ | 个体序对的集合 | $\left<e, \left<e, t\right>\right>$ |
        |    语句    |        $s$         |      真值      |                 $t$                 |

        </div>

    3. 令 $\|\alpha\|$ 为表达式 $\alpha$ 的语义值，则若 $\|\alpha\|$ 的语义类型为 $e$ 且 $\left\|\beta\right\|$ 的语义类型为 $\left<e, t\right>$，则 $\left\|\beta\right\|\ (\|\alpha\|)$ 的语义类型为 $t$

## 2.2 类型—逻辑语法
### 2.2.1 Lambek 演算
1. 类型—逻辑语法也称作类型逻辑的范畴语法，其基础是简单的范畴语法
    1. 该范畴语法有三个初始范畴，每个范畴对应高阶逻辑的某个类型
        1. $\text{np}$：描述名词短语，对应 $\text{Ind}$
        2. $\text{n}$：描述普通名词，对应 $\text{Ind} \to \text{Bool}$
        3. $\text{s}$：描述语句，对应 $\text{Bool}$

        其集合写作 $\text{BaseCat}$

    2. 包括初始范畴和派生范畴的所有范畴的集合写作 $\text{Cat}$，定义为
        1. $\text{BaseCat} \subseteq \text{Cat}$
        2. 若 $A, B \in \text{Cat}$，则 $A / B, B \backslash A \in \text{Cat}$

        对派生的范畴给出扩展的对应函项 $\text{Typ}$

        1. $\operatorname{Typ}(\text{np}) = \text{Ind}, \operatorname{Typ}(\text{n}) = \text{Ind} \to \text{Bool}, \operatorname{Typ}(\text{s}) = \text{Bool}$
        2. $\operatorname{Typ}(A/B) = \operatorname{Typ}(B \backslash A) = \operatorname{Typ}(B) \to \operatorname{Typ}(A)$

2. 类型—逻辑语法的词库中，每个词条以自然语言的一个单词打头，同时显示单词对应的句法范畴以及 $\lambda-$词项，例如

    $$
    \text{John} \vdash \text{np}:\mathbf{John}, \quad
    \text{John} \Rightarrow \text{np}:\mathbf{John}, \quad 
    \begin{prooftree}
    \AxiomC{$\text{John}$}
    \UnaryInfC{$\text{np}:\mathbf{John}$}
    \end{prooftree}
    $$

    类型—逻辑语法在附加一些意义公设的条件下只需四条规则

    1. $\begin{prooftree} \AxiomC{\(\begin{gathered} & \vdots \\ & A/B: \alpha \end{gathered}\)} \AxiomC{\(\begin{gathered} & \vdots \\ & B: \beta \end{gathered}\)} \BinaryInfC{\(A : \alpha(\beta)\)} \end{prooftree}$
    2. $\begin{prooftree} \AxiomC{\(\begin{gathered} & \vdots \\ & B: \beta \end{gathered}\)} \AxiomC{\(\begin{gathered} & \vdots \\ & B \backslash A: \alpha \end{gathered}\)} \BinaryInfC{\(A : \alpha(\beta)\)} \end{prooftree}$
    3. $\begin{prooftree} \AxiomC{\(\begin{gathered} \begin{array} & \vdots \qquad & [A: x]^{n} \\  \vdots \qquad & \vdots \end{array} \\ B: \alpha \end{gathered}\)} \UnaryInfC{\(B / A: \lambda x. \alpha\)} \end{prooftree}$
    4. $\begin{prooftree} \AxiomC{\(\begin{gathered} \begin{array} & [A: x]^{n} \qquad & \vdots \\  \vdots \qquad & \vdots \end{array} \\ B: \alpha \end{gathered}\)} \UnaryInfC{\(B \backslash A: \lambda x. \alpha\)} \end{prooftree}$

3. $\text{Lambek}$ 演算：刻画自然语言句法语义特征所用工具都由该系统提供
    1. 在类型—逻辑语法中，后承的概念表现为重写关系 $C_1, C_2, \cdots, C_n \Rightarrow C$，其中 $C_i$ 是范畴与 $\lambda-$ 词项的配对 $\left<A_i : \alpha_i\right>$
    2. $\text{Lambek}$ 演算包括下列演绎模式
        1. $\text{I}: \begin{prooftree} \AxiomC{\(\)} \UnaryInfC{\(A: \alpha \Rightarrow A: \alpha\)} \end{prooftree}$
        2. $\text{C}: \begin{prooftree} \AxiomC{\(\Gamma_2 \Rightarrow B: \beta\)} \AxiomC{\(\Gamma_1, B: \beta, \Gamma_3 \Rightarrow A: \alpha\)} \BinaryInfC{\(\Gamma_1, \Gamma_2, \Gamma_3 \Rightarrow A: \alpha\)} \end{prooftree}$
        3. $\text{/L}: \begin{prooftree} \AxiomC{\(\Delta \Rightarrow B: \beta\)} \AxiomC{\(\Gamma_1, A: \alpha(\beta), \Gamma_2 \Rightarrow C: \gamma\)} \BinaryInfC{\(\Gamma_1, A/B: \alpha, \Delta, \Gamma_2 \Rightarrow C: \gamma\)} \end{prooftree}$
        4. $\text{\L}: \begin{prooftree} \AxiomC{\(\Delta \Rightarrow B: \beta\)} \AxiomC{\(\Gamma_1, A: \alpha(\beta), \Gamma_2 \Rightarrow C: \gamma\)} \BinaryInfC{\(\Gamma_1, \Delta, A \backslash B: \alpha, \Gamma_2 \Rightarrow C: \gamma\)} \end{prooftree}$
        5. $\text{/R}: \begin{prooftree} \AxiomC{\(\Gamma, A: x \Rightarrow B: \alpha\)} \UnaryInfC{\(\Gamma \Rightarrow B/A: \lambda x.\alpha\)} \end{prooftree}$（其中 $x$ 为新名，$\Gamma$ 非空）
        6. $\text{\R}: \begin{prooftree} \AxiomC{\(A: x, \Gamma \Rightarrow B: \alpha\)} \UnaryInfC{\(\Gamma \Rightarrow B \backslash A: \lambda x.\alpha\)} \end{prooftree}$（其中 $x$ 为新名，$\Gamma$ 非空）
    3. 后承证明由有穷树 $P$ 构成，该树的每一子树是上述定义中的演绎模式之一．设 $C_1, C_2, \cdots, C_n \Rightarrow C$ 是一个后承，若存在一个根为 $C_1, C_2, \cdots, C_n \Rightarrow C$ 的无假设后承证明，则称该后承是可推演的
        1. $\text{Cut}$ 规则的消除：若存在后承 $\Gamma \Rightarrow A: \alpha$ 的一个自然证明，则存在后承 $\Gamma \Rightarrow A: \alpha' (\alpha' \equiv \alpha)$ 的一个消除 $C$ 模式的证明
        2. 有穷推演：对任何序列 $\Gamma$ 和范畴 $A$ 来说，存在之多有穷多个可证的后承 $\Gamma \Rightarrow A: \alpha$，且每个后承具有有穷个证明
        3. 可判定性：相对有穷词库 $\text{Lex}$，后承 $\Gamma \Rightarrow A: \alpha$ 是否可推演的问题是可判定的

### 2.2.2 范畴语法逻辑
1. 语法逻辑的重要特征是回归到范畴句法演算，重新构建其语义理论
    1. 语法逻辑的合式公式集合 $\mathscr{F}$ 是在基本范畴集合 $\mathscr{A}$ 基础上对构成算子封闭的集合
        1. 若 $c \in \mathscr{A}$，则 $c \in \mathscr{F}$
        2. 若 $A, B \in \mathscr{F}$，则 $A / B, A \backslash B, A \cdot B \in \mathscr{F}$
    2. 公理与推演规则
        1. 同一公理：$A \to A$
        2. 结合公理：$(A \cdot B) \cdot C \leftrightarrow A \cdot (B \cdot C)$
        3. $A \cdot B \to C \vdash A \to C \backslash B, A \to C \backslash B \vdash A \cdot B \to C$
        4. $A \cdot B \to C \vdash B \to A \backslash C, B \to A \backslash C \vdash A \cdot B \to C$
        5. 若 $A \to B$ 且 $B \to C$，则 $A \to C$
2. 语法逻辑的语义解释基础为三元模态框架 $\left<W, R^{3}\right>$，其中可能世界集合 $W$ 被当作自然语言来源（符号、句法和语义的信息）的集合，$R^{3}$ 表示语言毗连生成的情况
    1. 框架语义的赋值函项 $v$：对原子公式 $p$ 而言，$v(p) \subseteq W$
        1. $v(A \cdot B) = \{x \mid \exists y \exists z \ (R^{3}xyz \wedge y \in v(A) \wedge z \in v(B))\}$
        2. $v(A / B) = \{y \mid \forall x \forall z \ (R^{3} xyz \wedge z \in v(B) \to x \in v(A))\}$
        3. $v(A \backslash B) = \{z \mid \forall x \forall y \ (R^{3} xyz \wedge y \in v(A) \to x \in v(B))\}$
    2. 可靠性/完全性定理：$\vdash A \rightarrow B$ 当且仅当对每个三元框架的每个赋值 $v$ 而言，$v(A) \subseteq v(B)$

## 2.3 广义量词理论
1. 从广义量词角度处理自然语言的限定词有两种做法
    1. 直接继承 $\text{Montague}$ 语法的思路，把限定词看做函项，其类型为 $\left<\left<e, t\right>, \left<e, t\right>, t\right>$
    2. 把限定词描述成集合之间的关系
2. $\text{NP}-$量词的共性：每种自然语言都具有称之为名词短语的句法成分，其语义功能是表达某个论域之上的广义量词
    1. 所有的自然语言都有名词短语（包括专名、代词、限定词与普通名词组成的词组等）
    2. 名词短语内部结构及句中位置因不同自然语言而异，但名词短语却是自然语言中与模型个体论域的幂集有关的量化表达式

## 2.4 话语表现理论

## 2.5 情境语义学
