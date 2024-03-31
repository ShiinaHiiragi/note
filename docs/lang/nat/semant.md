# 2 语义学

## 2.1 Montague 语法
### 2.1.1 通用语法系统
1. 通用语法分为句法层面和语义层面，句法层面又分为作为内在结构的无歧义语言和作为外在结构的歧义语言
    1. 无歧义语言定义为多元组 $\left\langle A, F \gamma, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}$
        1. $A$ 表示所有基本语词和经语形结构运算生成的派生表达式的集合
        2. $F_{\gamma}$ 表示该语言若干结构运算的序列
        3. $X_{\delta}$ 表示该语言若干类初始符号或基本语词集合的序列
        4. $S$ 指语言的形成规则或句法规则的集合
        5. $\delta_{0}$ 指语言的特异表达式的范畴标记，即语句的范畴标记 $s$
    2. 歧义语言表现为多元组 $\langle\left\langle A, F_{\gamma}, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}, R\rangle$
        1. $\left\langle A, F_{\gamma}, X_{\delta}, S, \delta_{0}\right\rangle_{\gamma \in \Gamma, \delta \in \Delta}$ 是无歧义语言，记作 $\mathfrak{A}$，从而歧义语言 $\mathscr{L}=\langle\mathfrak{A}, R\rangle$
        2. $R$ 是一个二元关系，表示由无歧义语言转换成歧义语言，描述了从无歧义的内在结构向有歧义的外在结构的转变
2. 语义解释的基础表现为多元组 $\left\langle B, G_{\gamma}, f\right\rangle_{\gamma \in \Gamma}$，记作 $\mathfrak{B}$．完整的语义解释由 $\mathfrak{B}$ 和意义指派函项 $g$ 所构成，且有 $f \subseteq g$，即 $g$ 不仅要对句法基本表达式赋予语义值，还要对派生的句法表达式进行语义解释
    1. $B$ 是语义解释给出的意义集合（包括个体的集合）
    2. $G_{\gamma}$ 是相应于句法结构运算序列 $F_{\gamma}$ 的语义运算序列
    3. $f$ 是从若干 $X_{\delta}$ 的并集到 $B$ 的赋值函项

### 2.1.2 自然语言语句系统
1. 古典范畴语法作为一种语言 $\mathscr{L}$，可严格表述成形如 $\left\langle V, \text{BasCat}, \text{Cat}, R_{d}, R_{a}\right\rangle$ 的系统，其中
    1. $V$ 是 $\mathscr{L}$ 的词库
    2. $\text{BasCat}$ 是初始范畴的集合
    3. $\text{Cat}$ 是所有句法范畴的集合
    4. $R_{d}$ 是两类规则的集合
        1. 范畴递归生成规则：从初始范畴的集合 $\text{BasCat}$ 生成所有范畴的集合 $\text{Cat}$．① $\text{BasCat} \subseteq \text{Cat}$；② 若 $A_{1}, \cdots, A_{n}$ 且 $B \in \text{Cat}$，则 $B / A_{1} \cdots A_{n}, A_{1} \cdots A_{n} \backslash B \in \text{Cat}$ 在有穷集合 $\text{BasCat}$ 的基础上生成包含若干函子范畴的无穷集合 $\text{Cat}$
        2. 自然语言表达式的毗连对应范畴运算的规则：若 $\alpha_{1}, \cdots, \alpha_{n}$ 是分别属于范畴 $A_{1}, \cdots, A_{n}$ 的表达式，并且 $\beta$ 是属于范畴 $B / A_{1} \cdots A_{n}$（或 $A_{1} \cdots A_{n} \backslash B$）的表达式，那么 $\beta \alpha_{1} \cdots \alpha_{n}$（或 $\alpha_{1} \cdots \alpha_{n} \beta$）是属于范畴 $B$ 的表达式
    5. $R_{a}$ 是给 $V$ 中词条指派适当范畴规则的集合
2. ...

### 2.1.3 语义理论

## 2.2 类型—逻辑语法

## 2.3 广义量词理论

## 2.4 话语表现理论

## 2.5 情境语义学
