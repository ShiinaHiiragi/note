# 1 句法学

## 1.1 转换生成语法
### 1.1.1 短语结构理论
1. 结构与规则
    1. 重写规则：形如 $X \rightarrow Y$ 的规则，即「重写 $X$ 为 $Y$」，其中 $X, Y$ 为一个或多个范畴，并称这些规则的集合为一个语法
    2. 常用范畴
        - $\text{S}$：语句
        - $\text{NP}$：名词短语
        - $\text{M}$：情态词
        - $\text{VP}$：动词短语
        - $\text{D}$：限定词
        - $\text{N}$：名词
        - $\text{V}$：动词
        - $\text{PP}$：介词短语
        - $\text{P}$：介词
        - $\text{ADVP}$：副词短语
        - $\text{ADV}$：副词
        - $\text{AP}$：形容词短语
        - $\text{A}$：形容词
    3. 推导：$\text{Chomsky}$ 在『句法结构』中用如下语法

        $$
        \begin{aligned}
        & \text{S} \to \text{NP  VP} \\
        & \text{NP} \to \text{TN} \\
        & \text{T} \to \textit{the} \\
        & \text{N} \to \textit{man, ball, etc.} \\
        & \text{V} \to \textit{hit, took, etc.}
        \end{aligned}
        $$

        得到语句 $\textit{the man hit the ball}$ 的一个推导：

        $$
        \begin{aligned}
        & \text{S} \\
        & \text{NP  VP} \\
        & \text{T  N  VP} \\
        & \text{T  N  V  NP} \\
        & \text{T  N  V  T  N} \\
        & \textit{the man hit the ball}
        \end{aligned}
        $$

2. 深层结构（$\mathrm{D}-$结构或 $\text{DS}$）与表层结构（$\mathrm{S}-$结构或 $\text{SS}$）
    1. 深层结构与表层结构的理论（$\text{DS/SS}$ 理论）解决基础表象式和导出表象式之间的关系问题
        1. 将基础表象式的结构称为深层结构
        2. 将导出表象式的结构称为表层结构，$\text{Chomsky}$ 将其细分为语音形式（$\text{PF}$）和逻辑形式（$\text{LF}$）两个层次
    2. 这个句法理论中有两类规则：① 基础规则（$\text{base}$），包括上下文无关的短语结构规则（$\text{PS}$）；② 转换规则（$\text{TR}$）
        1. 在深层结构中起作用的是短语结构规则和词汇的插入规则（$\text{LIR}$），其基础生成深层结构表象式
        2. 深层结构表象式既是基础规则的输出，又作为转换规则的输入

        $$
        \text{PS} + \text{LIR}
        \xrightarrow{\text{ base }}
        \text{DS}
        \xrightarrow{\text{ TR }}
        \text{SS}
        \left\{\begin{aligned}
        & \text{PF} \\
        & \text{LF}
        \end{aligned}\right.
        $$

3. 短语结构

### 1.1.2 词库理论

### 1.1.3 转换理论

## 1.2 原则和参数理论

## 1.3 最简方案
