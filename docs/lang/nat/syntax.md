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

2. 深层结构与表层结构

### 1.1.2 词库理论

### 1.1.3 转换理论

## 1.2 原则和参数理论

## 1.3 最简方案
