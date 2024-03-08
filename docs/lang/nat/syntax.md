# 1 句法学

## 1.1 转换生成语法
### 1.1.1 短语结构理论
1. 深层结构（$\mathrm{D}-$结构或 $\text{DS}$）与表层结构（$\mathrm{S}-$结构或 $\text{SS}$）
    1. 深层结构与表层结构的理论（$\text{DS/SS}$ 理论）解决基础表象式和导出表象式之间的关系问题
        1. 将基础表象式的结构称为深层结构
        2. 将导出表象式的结构称为表层结构，$\text{Chomsky}$ 将其细分为语音形式（$\text{PF}$）和逻辑形式（$\text{LF}$）两个层次
    2. 这个句法理论中有两类规则：① 基础规则（$\text{base}$）；② 转换规则（$\text{TR}$）
        1. 在深层结构中起作用的是短语结构规则（$\text{PS}$）和词汇的插入规则（$\text{LIR}$），两者基础生成深层结构表象式
        2. 深层结构表象式既是基础规则的输出，又作为转换规则的输入

        <figure markdown>
            ![](../assets/ds-ss.svg)
            <style> img[src$="ds-ss.svg"] { width: 140px; } </style>
        </figure>

2. 短语结构规则：形如 $X \rightarrow Y$ 的规则，即「重写 $X$ 为 $Y$」，其中 $X, Y$ 为一个或多个范畴，并称这些规则的集合为一个语法
    1. 常用范畴
        - $\text{S}$：语句
        - $\text{VP}$ 与 $\text{V}$：动词短语与动词
        - $\text{NP}$ 与 $\text{N}$：名词短语与名词
        - $\text{PP}$ 与 $\text{P}$：介词短语与介词
        - $\text{AP}$ 与 $\text{A}$：形容词短语与形容词
        - $\text{ADVP}$ 与 $\text{ADV}$：副词短语与副词
        - $\text{M}$：情态词
        - $\text{D}$：限定词
    2. 常用短语规则
        1. 名词短语
        2. 时态与情态
        3. 动词短语
        4. 形容词与副词短语

3. 短语标记：标示语句的要素结构的形式符号，例如$\text{Chomsky}$ 在『句法结构』中用如下短语结构规则

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

    1. 短语标记可用树图表示：

        <figure markdown>
            ![](../assets/gen.svg)
            <style> img[src$="gen.svg"] { width: 300px; } </style>
        </figure>

        1. 每一个节点带有一个标记符，其中分枝结点带有范畴符；叶节点除非为空，否则以合适的语词符（词汇项）来标记
        2. 同一短语标记中任意两个节点之间构成支配或（直接）先行关系

    2. 当短语标记简写为序列形式，一般规定语词符和终端符连接的括号以及最外层括号可省略：

        $$
        [{}_{\text{S}}
            [{}_{\text{NP}}
                [{}_{\text{T}}
                    \textit{ the}
                ]
                [{}_{\text{N}}
                    \textit{ man}
                ]
            ]
            [{}_{\text{VP}}
                [{}_{\text{V}}
                    \textit{ hit}
                ]
                [{}_{\text{NP}}
                    [{}_{\text{T}}
                        \textit{ the}
                    ]
                    [{}_{\text{N}}
                        \textit{ ball}
                    ]
                ]
            ]
        ]
        $$

4. 标准理论：称属于如下语法理论的每一种设计方案为标准理论
    1. 语法转换系统以不同的方式决定数量无限却由有限的短语标记构成的序列 $K$，每一个短语标记序列 $P_{1}, P_{2}, \cdots, P_{n}$ 应符合
        1. 表层结构：称以下情况中的 $P_{0}$ 为 $K$ 类开头的短语标记，把 $K$ 类里的短语标记称为由这种语法生成的语法结构
            - $P_{n}$ 是表层结构
            - 每一个 $P_{i}$ 是按照语法规则的条件所允许的方式通过对 $P_{i-1}$ 应用一定的转换规则构成
            - 没有一种 $P_{i}$ 能使 $P_{0}, P_{1}, \cdots, P_{n}$ 符合前两个条件
        2. 与词汇成分 $I$ 有关的词汇转换把包含下一级结构 $Q$ 的短语标记 $P$ 映射到现在通过用 $I$ 替换 $Q$ 构成的短语标记 $P^{\prime}$ 上
        3. 设在 $K$ 中序列为 $P_{1}, \cdots, P_{n}$，其中有 $i$，如果 $j<i$，则由 $P_{j}$ 构成的 $P_{j+1}$ 所使用的转换是词汇的；如果 $j \geqslant i$，则由 $P_{j}$ 构成的 $P_{j+1}$ 所使用的转换是非词汇的．称 $P_{i}$ 为序列 $P_{1}, \cdots, P_{n}$ 里的后词汇结构，也称作深层结构

    2. 标准理论规定每一个语句都有语法结构 $\Sigma = (P_1, P_2, \cdots, P_i, \cdots, P_n)$
        1. 短语标记是最基本的语法单位
        2. 全部短语标记构成的结构称为短语结构，是语句的深层结构
        3. 深层结构是按照一定的规则由短语标记生成的，体现的是语句的语义；深层结构按照一定的规则转换为表层结构，体现的是语句的语音

### 1.1.2 词库理论

### 1.1.3 转换理论

## 1.2 原则和参数理论

## 1.3 最简方案
