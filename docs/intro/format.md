# 版式规范

## 凡例
- 全站以 Material for MkDocs 作为基础框架，使用中文作为描述语言，尽可能保证文字排版、书写风格与符号使用具有一致性
- 本站名称为「逻辑与形而上学」，标题下方横向排列的是全文的若干个模块，左部的纵向目录分隔了若干个单元，每个单元分设若干个小节。同一模块内的各单元、同一单元内的各小节在内容上具有较强的联系
- 所有页面不可选定，默认使用衬线字体，<span class="local-setting-inline" style="display: inline">启用 Cookie 本地设置即可在此切换到非衬线字体</span><span class="local-setting-none" style="display: none">点击此处以<a id="local-font" style="cursor: pointer;"></a></span>

<script>
window.cookie_callback = (param) => {
    let localSerif = param.localSerif;
    document.querySelectorAll(".local-setting-inline").forEach((item) => {
        item.style.display = "none";
    })
    document.querySelectorAll(".local-setting-none").forEach((item) => {
        item.style.display = "inline";
    })

    document.querySelector("#local-font").innerText = localSerif.getValue() == "true"
        ? "切换到无衬线体"
        : "切换到衬线体";

    document.querySelector("#local-font").onclick = () => {
        localSerif.setValue(localSerif.getValue() == "true" ? "false" : "true");
        location.reload();
    }
}
</script>

## 正字
### 元规范
- 本规则的适用范围仅为本站，包括本规则本身
- 本规则使用的措辞决定了规则的强制程度，以下语词的程度由强到弱递减：
    - 必须
    - 需要、应该
    - 通常、一般或无副词
    - 尽量、尽可能
    - 有时、偶尔、可能

    上述语词的反义词在此省略

### 标点符号
1. 通常情况下，标点符号使用中文全角符号：
    - 全文使用「直角单引号」作为引号，使用『直角双引号』作为书名号
        - 若语句讨论的内容构成元语言与对象语言的关系，则对象语言通常要被直角单引号包围
        - 引号的嵌套是直角单引号与直角双引号的交替使用

        !!! note ""
            *正确示例*：
            :   - 「.uinai」的语义是「不开心」
                - 「『本语句是假的』不是真的」是 $\text{Kripke}$ 给出的一个例子

    - 列举项目时使用顿号分隔，偶尔可能使用逗号。此外，带引号的项目列举时不需要顿号

        !!! note ""
            *正确示例*：
            :   - This is an apple. I like apples. Apples are good for our health.
                - 日常语言学派认为哲学的方法是分析自然语言的日常用法。代表人物包括后期 $\text{Wittgenstein}$、$\text{Moore}$、$\text{Austin}$、$\text{Strawson}$、$\text{Ryle}$ 等
                - 现象学将「什么存在」「什么为真」等问题悬置起来，以便关注其他问题

            *错误示例*：
            :   - $\text{Bourbaki}$ 学派提出了三种数学的研究结构，分别是「代数结构」{--、--}「序结构」以及「拓扑结构」

    - 有序列表与无序列表的结尾不附加分号或句号，但是列表内容的句中可以使用句号，使用的句号根据所处模块决定。通常而言，公式较少的模块（例如「形而上学」）使用空心句号（。）；公式较多的模块（例如「数理逻辑」或「语言学」）使用实心句点（．）
    - 尽可能减少冒号的使用，保证语义上在可以不使用冒号时一定不使用冒号，同一句话中最多使用一次

        !!! note ""
            *正确示例*：
            :   - 怀疑元叙事：完整的信息交换和利益共享能换来共识的想法是值得怀疑的
                - 每个确定的上下文无关语言都可由下述确定的下推自动机所接受：在 $M$ 中，一切 $\delta(q, a, X) = (p, \gamma)$ 都有 $|\gamma| \leqslant 2$

            *错误示例*：
            :   - 私有语言：指称了某种他人无法知晓的私有对象的语词。举例{--：--}只有自己理解的记忆、感受和心情等
                - 三项方程是形如{--：--}$ax^{2n} + bx^{n} + c = 0 \ (a, b \neq 0)$ 的方程

        此外，如果在段落后有需要接续的列表或公式，通常根据语义决定是否需要附加冒号。如果段落的最后一句话已经含有冒号，则句末一定不附加冒号，并在句义不变的前提下将句型修改至可以不附加冒号的形式

        !!! note ""
            *正确示例*：
            :   - 由若干个数排成的 $m$ 行 $n$ 列矩形阵列

                    $$
                    \boldsymbol A = \begin{bmatrix}
                    a_{11} & a_{12} & \cdots & a_{1n} \\
                    a_{21} & a_{22} & \cdots & a_{2n} \\
                    \vdots & \vdots & \ddots & \vdots \\
                    a_{m1} & a_{m2} & \cdots & a_{mn} \\
                    \end{bmatrix}
                    $$

                    称为 $m \times n$ 矩阵

                - 一般认为有三类自明真理：
                    1. 逻辑规律：即重言式，例如矛盾律
                    2. 分析命题：属性在概念内涵中的命题
                    3. 观察命题：只涉及言谈者自身的体验，且没有对现实世界或观察对象做出判断的命题
                - 导出方程：将一个方程的两边通过恒等变形或某种数学运算得出的新方程称作原方程的导出方程。导出方程与原方程的关系有三种情形
                    1. 导出方程与原方程同解
                    2. 导出方程是原方程的结果，增加的不适合原方程的解被称为增解
                    3. 导出方程不是原方程的结果，失去的解称作失解

            *错误示例*：
            :   - 实系数一元二次方程 $ax^2 + bx + c = 0 \ (a \neq 0)$ 的两个根为{--：--}

                    $$
                    \begin{aligned}
                    & x_1 = \dfrac{-b + \sqrt{b^2 - 4ac}}{2a} \\
                    & x_2 = \dfrac{-b - \sqrt{b^2 - 4ac}}{2a}
                    \end{aligned}
                    $$

                - 诱导公式：设 $k \in \mathbf Z$，则以下命题成立{--：--}
                    1. $\sin(2k \pi + \alpha) = \sin \alpha, \cos(2k \pi + \alpha) = \cos \alpha$
                    2. $\sin(k \pi + \alpha) = -\sin \alpha, \cos(k \pi + \alpha) = -\cos \alpha$

2. 多语言或不同种类文本混排的情况下，标点符号的使用根据语境决定：
    - 在全句使用外语的情况下，整句使用对应语言的符号
    - 在行内代码或行内公式中，代码或公式内部的标点符号与中文无关，但是公式边界的标点符号与外部中文有关。公式块后不附加标点符号，而是默认其结尾存在一个逗号或句号

        !!! note ""
            *正确示例*：
            :   - 使用 `let i = 0;` 声明一个变量
                - 参数方程：椭圆 $E: \dfrac{x^2}{a^2} + \dfrac{y^2}{b^2} = 1$ 的参数方程为 $\left\{\begin{aligned} & x = a\cos \varphi \\ & y = b\sin \varphi \end{aligned}\right.$
                - 设 $A$ 是一个集合，定义 $A$ 的示性函数为

                    $$
                    f_A(x) = \left\{\begin{aligned}
                    & 1, & x \in A \\
                    & 0, & x \notin A
                    \end{aligned}\right.
                    $$

                    则 $A = \varnothing \leftrightarrow f_A(x) \equiv 0$

                - 设 $a = 3, b = 4, c = 5$，则 $a^2 + b^2 = c^2$

### 遣词
1. 尽量减少口语化的语词或翻译腔，使用规范的书面语
    - 改写所有条件后置句，使之更符合中文的表达习惯

        !!! note ""
            *原文*：
            :   称函数 $f(x)$ 在给定区间 $E$ 上单调递增，如果 $x_1 < x_2 \to f(x_1) < f(x_2)$ 对任意 $x_1, x_2 \in E$ 成立

            *修正*：
            :   设 $f(x)$ 是一个函数，给定区间 $E$。若 $x_1 < x_2 \to f(x_1) < f(x_2)$ 对任意 $x_1, x_2 \in E$ 成立，则称 $f(x)$ 在 $E$ 上单调递增

2. 以下几组通用词语可以混用，因为它们可能有不同的使用场景
    - 「且」与「而且」「并且」
    - 「和」与「与」
    - 「若」与「如果」
    - 「称为」与「称作」
3. 以下几组专有名词基本可以混用
    - 「有限」与「有穷」
    - 「无限」与「无穷」
    - 「超限」与「超穷」
4. 以下几组语词的使用有一定偏好
    - 「以下」：代替「下列」，但不能代替「下述」
    - 「从而/使得」：代替「来」或「让」
    - 「自身/自己」：代替「我」
    - 「人们」：代替「我们」
    - 「其」：尽可能代替「它（们）」或「它（们）的」
    - 「将」：尽可能代替「把」

## 结构
- 全文使用 Markdown 语法，包含部分 Python Markdown 扩展
    - 除「通用」模块以外，不宜展示需要与用户进行交互的内容（例如标签、按钮等元素）
    - 缩进为 $4$ 个空格，每种块级元素前后均有空行
    - 尽可能保证标准宽度下（约 $940 \ \text{px}$）单字不成行

### 列表
全文的体例为笔记，因此绝大部分内容并不会被编写为段落，而是会被编排在若干个有序列表中

1. 每个单元下包含多个文件，每个文件包含一个一级标题，最多使用到三级标题
    - 一个标题下若要设置子标题，则至少应该设置两个子标题
    - 一级标题与其下的第一个二级标题之间、二级标题与其下的第一个三级标题之间可以插入一个有序列表或含有一个条目的无序列表以作为本小节的导入词
2. 每个三级标题下编写一个有序列表（如果没有三级列表，则直接在一级或二级标题下编写有序列表），最多可以嵌套三级列表
    - 如果某级有序列表只有一个条目，那么应该将其替换为无序列表，或直接转移到上一级列表中
    - 三级标题与有序列表之间可以插入一个不在列表中的段落，如本小节「列表」所示
    - 需要嵌套四级或更多层数的列表时，使用以下方法
        - 使用无序列表
        - 使用「①」「②」「③」「④」等符号，写在一行内，并保证标号后有一个空格

            !!! note ""
                *正确示例*：
                :   - 对任意集合 $A$，任意 $a \in A$ 以及任意映射 $h: A \times \mathbf N \to A$，存在唯一的映射 $f: \mathbf N \to A$ 满足 ① $f(0) = a$；② 对所有 $n \in N$，有 $f(n + 1) = g(f(n), n)$

        - 重新规划排版（例如使用 Python Markdown Admonitions），避免过深的嵌套列表
        - {--（不推荐使用）--}将原来的一级列表作为三级标题与有序列表之间的若干个段落，每个段落后附原来二级列表对应的一级列表，这种方法将制造实质上的四级列表

    - 如果想要显式地表明列表之间的内容关联性不强，可以将该列表转写为无序列表

### 公式
1. 全文使用 $\text{MathJax}$ 作为公式输入，尽可能保证公式的写法与常用符号一致。绝大部分公式的标准写法在「集合论」中被定义
    - 公式的写法应该跨区域保持一致。例如全文仅使用 $A - B$ 表示集合 $A$ 与 $B$ 的差，则全文不应使用 $A \backslash B$ 表示集合的差运算
    - 公式的意义必须具有唯一性。例如「集合论」中定义集合 $A$ 的补集为 $\overline A$ 或 $A'$，而在「点集拓扑」中定义 $\overline A$ 为集合 $A$ 的闭包，因此该部分使用 $A'$ 表示集合 $A$ 的补集，并直接或间接指出每一处 $\overline A$ 的具体含义
    - 常用符号应尽可能保持一致。例如通常使用 $G$ 表示群，用 $F$ 表示域
2. 使用公式以行内公式为主，以下情况需要使用块级公式
    - 公式仅有一行但是长度较大
    - 公式超过两行且较为复杂
    - 为了与列表同级项目在排版上保持对称性的简单公式
3. 必须使用特定形式公式表示的内容
    - 嵌入到中文的数字必须以公式形式表示
    - 以下运算符在行内公式中必须使用 `\displaystyle` 表示

        !!! note ""
            === "示例"
                - ${\displaystyle \lim_{n \to \infty} \left(1 + \dfrac{1}{n}\right)^n} = e$
                - ${\displaystyle \int_1^e \dfrac{1}{x} \mathrm dx} = 1$
                - $S_n = {\displaystyle \sum_{i = 1}^n a_i}$
                - $T_n = {\displaystyle \prod_{i = 1}^n a_i}$
                - $M_n = {\displaystyle \bigcup_{i = 1}^\infty A_i}$
                - $N_n = {\displaystyle \bigcap_{i = 1}^\infty A_i}$
            === "LaTeX"
                ```latex
                - ${\displaystyle \lim_{n \to \infty} \left(1 + \dfrac{1}{n}\right)^n} = e$
                - ${\displaystyle \int_1^e \dfrac{1}{x} \mathrm dx} = 1$
                - $S_n = {\displaystyle \sum_{i = 1}^n a_i}$
                - $T_n = {\displaystyle \prod_{i = 1}^n a_i}$
                - $M_n = {\displaystyle \bigcup_{i = 1}^\infty A_i}$
                - $N_n = {\displaystyle \bigcap_{i = 1}^\infty A_i}$
                ```

    - 只有递归定义使用 `:=` 符号，普通定义只使用 `=` 符号

4. 必须使用特殊字体的情况
    - 长度不小于两个字符的函数名等具有数学意义的词语通常使用 `\mathrm` 行内公式表示，例如 $\mathrm{rank}(\boldsymbol A)$
    - 长度不小于两个字符的算子名等其后带有空格的词语必须使用 `\operatorname` 行内公式表示，例如 $\operatorname{dim} V$
    - 向量、矩阵名必须使用 `\boldsymbol` 行内公式表示，例如 $\boldsymbol A \boldsymbol x = \boldsymbol b$
    - 常用数集、真类、形式系统必须使用 `\mathbf` 行内公式表示，例如 $\mathbf R, \mathbf{On}$ 或 $\mathbf{ZFC}$，主流的形式系统表示方法采用 `\mathsf`，这是公式内部唯一的非衬线体，故不采纳
5. 非中文的内容可能需要使用公式显示
    - 嵌入到中文的人名、组织名、缩写等英文专名使用 `\text` 行内公式表示

        !!! note ""
            *正确示例*：
            :   - $\text{Gauss}$ 绝妙定理
                - $\text{Marx}$ 主义与 $\text{Frankfurt}$ 学派
                - $\text{DNA}$ 是生命的基础

    - 带扩充拉丁字母符号的英文专名，其符号不可被除去

        !!! note ""
            *正确示例*：
            :   - $\text{Fr}\acute{\mathrm e}\text{chet}$ 滤
                - $\text{G}\ddot{\mathrm o}\text{del}$ 编码
                - $\check{\mathrm Z}\text{i}\check{\mathrm z}\text{ek}$

    - 即使人名的内名不以拉丁字母拼写，也一律使用其拉丁字母转写

        !!! note ""
            *正确示例*：
            :   - $\text{Ward}-\text{Takahashi}$ 恒等式
                - $\text{Egorov}$ 定理

    - 作为人名一部分的连字符存在于 `\text` 内部；作为表明定理或公式联合提出者的连字符位于 `\text` 外部

        !!! note ""
            *正确示例*：
            :   - $\text{Newton}-\text{Leibniz}$ 公式
                - $\text{Levi-Strauss}$ 将 $\text{Saussure}$ 的结构语言学研究纳入自己的神话研究中，形成了自己独特的结构主义神话学

    - **语言学**中作为示例的印欧语系语句采用 `\textit` 行内公式表示（为了与范畴名区分）；**语言学习**中作为示例的语句与嵌入到中文的通名不采用行内公式，嵌入到中文的专名需转义为中文

        !!! note ""
            *正确示例*：
            :   - $\text{S} \to \textit{the man hit the ball}$
                - le ninmu klama
                - 「cu」是一个可删除标记
                - la alis. klama la .uacintyn. la losandjeles. la cikagos. la .amtrak.

                    爱丽丝乘坐美国国铁从洛杉矶经由芝加哥来到华盛顿。

    - 已有官方正式译名的地名采用汉字描述

        !!! note ""
            *正确示例*：
            :   - 所有希腊的克里特岛人都说谎

6. 部分公式在定义所在的小节使用完整写法，在其他单元可采用简写
    - 集合：在任何地方都可使用 `\mid` 作为分隔符，在「数理逻辑」模块外，也可以使用 `:` 代替 `\mid`，若括号内容较高，则使用 `\left|` 或 `\right|` 代替 `\mid`

        !!! note ""
            === "示例"
                $$
                \begin{aligned}
                & \left\{x \in \mathbf R\mid x^2 > 1\right\} \\
                & \left\{\left. \sum_{i=0}^{n-1} a_i x^i \right| a_i \in \mathbf R\right\} \\
                & \left\{(x, y) \in \mathbf R^2 : x \in [0, 1] \wedge y \in [0, 1]\right\}
                \end{aligned}
                $$
            === "LaTeX"
                ```latex
                $$
                \begin{aligned}
                & \left\{x \in \mathbf R\mid x^2 > 1\right\} \\
                & \left\{\left. \sum_{i=0}^{n-1} a_i x^i \right| a_i \in \mathbf R\right\} \\
                & \left\{(x, y) \in \mathbf R^2 : x \in [0, 1] \wedge y \in [0, 1]\right\}
                \end{aligned}
                $$
                ```

    - 存在公式或全称公式：用括号包围不含量词的公式部分，在「数理逻辑」模块外，如果该公式部分只有一个括号，则左括号可以替换为一个冒号，同时省略右括号
    - 结构与模型：函数符、关系符、常元与变元通过映射或论域指明其所属模型，在「数学基础」小节外，可以省略这一标注

7. 其他具有特殊规范的公式
    - 分数：绝大多数情况下使用 `\dfrac`，仅在上标或下标的位置将分数写作 `\frac`
    - 存在公式或全称公式
        - 若不含量词的公式部分没有括号但只有一个字母，则不需要增加空格；如果超过一个字母，则需要增加空格
        - 若不含量词的公式部分含有括号，则括号前一定需要增加空格
        - 若含量词的公式部分含有多个量词且量词后均只有一个变元，则量词之间不需要增加空格；如果存在一个量词后含有一个复杂的项，则量词间需要增加空格

        !!! note ""
            === "示例"
                $$
                \begin{aligned}
                & \forall x \alpha \\
                & \forall x \ \varphi(x) \\
                & \forall x \forall y \exists z \ (x = y \wedge y = z) \\
                & \forall x \in A \ \forall y \in B \ \exists z \in C \ (x = y \wedge y = z) \\
                & \forall x \in \mathbf R: x^2 \geqslant 0
                \end{aligned}
                $$
            === "LaTeX"
                ```latex
                $$
                \begin{aligned}
                & \forall x \alpha \\
                & \forall x \ \varphi(x) \\
                & \forall x \forall y \exists z \ (x = y \wedge y = z) \\
                & \forall x \in A \ \forall y \in B \ \exists z \in C \ (x = y \wedge y = z) \\
                & \forall x \in \mathbf R: x^2 \geqslant 0
                \end{aligned}
                $$
                ```

### 其他

1. 块引用：提示、引用、注意事项等一律使用 Python Markdown Admonitions 完成
    - 除本规范等用于举例的场合外，所有块引用必须包含标题
    - 块引用的缩进深度根据引用内容的语义与上下文之间的关系决定，有时也会考虑到页面的整体观感
2. 在多种类文本混排（中文与阿拉伯数字、使用拉丁字母的语言、行内代码、行内公式）的情况下，应在交界处添加一个空格
    - 如果在混排时遇到中文标点符号，只需确保中文标点符号前后一定不出现空格即可
    - 数字与单位之间也需要保留空格，但是度数、百分数除外
    - 如果公式以 $-$ 开头或结尾并期待此前或此后在语义上连接中文，则该公式对应位置不添加空格
    - 如果公式是缩写且以句点作为结尾（例如 $\text{a.e.}$），则该公式后与中文之间不添加空格

    !!! note ""
        *正确示例*：
        :   - 约 $4.4$ 亿年前，远古的节肢动物离开海洋来到陆地
            - $\text{Saussure}$ 认为，每一个语言记号都由「能指」与「所指」两部分构成
            - $90^{\circ}$ 的角称之为直角
            - 设 $\mathfrak A = \left\{A, \{Z^\mathfrak A\}_{Z\in S}\right\}, \mathfrak B = \left\{B, \{Z^\mathfrak A\}_{Z\in S}\right\}$ 是两个 $S-$结构
            - $\left\{f_{n}\right\}$ 是 $E$ 上一列 $\text{a.e.}$收敛于有限函数 $f$ 的可测函数

        *错误示例*：
        :   - 对{--任意$\text{Turing}$机--} $M$，都存在 $\text{Turing}$ 机 $M'$ 将其输出标准化
            - 若 {--$a = pb + r$&ensp;，--}则 $(a, b) = (b, r)$
            - 若记 $\mathscr P$ 为 $X$ 中所有单点子集构成的族，那么 $Y^X$ 的点式收敛拓扑恰好是 $\mathscr{T_P}$。因此点式收敛拓扑也被称作{--点 $-$ 开拓扑--}

3. 图片：使用 `figure` 标签插入图片，`.` 为当前文件所在目录

    !!! note ""
        === "正确示例"
            <figure markdown>
                ![](../assets/favicon.svg)
                <style> img[src$="favicon.svg"] { width: 48px; } </style>
            </figure>
        === "LaTeX"
            ```html
            <figure markdown>
                ![](../assets/favicon.svg)
                <style> img[src$="favicon.svg"] { width: 48px; } </style>
            </figure>
            ```

4. 表格：为使表格居中，必须设置表格的 `text-align` 属性

    !!! note ""
        === "正确示例"
            <div class="text-table">

            |  $x$  | $f(x) = x^2$ | $g(x) = x^3$ |
            | :---: | :----------: | :----------: |
            | $-2$  |     $4$      |     $-8$     |
            | $-1$  |     $1$      |     $-1$     |
            |  $0$  |     $0$      |     $0$      |
            |  $1$  |     $1$      |     $1$      |
            |  $2$  |     $4$      |     $8$      |

            </div>
        === "LaTeX"
            ```html
            <div class="text-table">

            |  $x$  | $f(x) = x^2$ | $g(x) = x^3$ |
            | :---: | :----------: | :----------: |
            | $-2$  |     $4$      |     $-8$     |
            | $-1$  |     $1$      |     $-1$     |
            |  $0$  |     $0$      |     $0$      |
            |  $1$  |     $1$      |     $1$      |
            |  $2$  |     $4$      |     $8$      |

            </div>
            ```

<style>
em {
    font-style: normal;
    font-size: 0.8rem;
}

.tabbed-block {
    font-size: 0.8rem;
}
</style>
