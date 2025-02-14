# 4 形式算术

## 4.1 形式算术
初等数论的语言 $\mathscr L(S)$，其中 $S = \{=, \mathrm{S}, +, \times, 0\}$ 且 $\Omega(=) = 2, \Omega(\mathrm{S}) = 1, \Omega(+) = \Omega(\times) = 2, 0 \in \mathbf C$

### 4.1.1 一阶算术
1. 设 $S-$语句集为
    1. $\forall x  \ (\mathrm{S} x \not = 0)$
    2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{S} y \rightarrow x = y)$
    3. $\forall x \ (x \not = 0 \rightarrow \exists y \ (x = \mathrm{S} y))$
    4. $\forall x \ (x+0 = x)$
    5. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{S}(x+y))$
    6. $\forall x \ (x \cdot 0 = 0)$
    7. $\forall x \forall y \ (x \cdot \mathrm{S} y = x \cdot y+x)$

    定义 $\text{Robinson}$ 算术 $\mathbf{Q}$ 是以上公理的理论

    1. 对每个标准自然数 $n \in \mathbf{N}$，在 $\mathrm{Q}$ 内都存在对应项 $\small \underbrace{\normalsize \mathrm{S} \mathrm{S}\cdots \mathrm{S}}_{\normalsize n} \normalsize 0$，简记为 $\mathrm{S}^{n} \ 0$
        1. $\mathrm{Q} \not \vdash \forall x \ (\mathrm{S} x \neq x)$
        2. 对任意 $n \in \mathbf{N}$，$\mathrm{Q} \vdash \mathrm{S} n \not = \mathrm{S}^{n} \ 0$
        3. $\vdash \forall x(\mathrm{S} x+\mathrm{S}^{n} \ 0 = x+\mathrm{S} \mathrm{S}^{n} \ 0)$
        4. $\vdash \mathrm{S}^{m} \ 0+\mathrm{S}^{n} \ 0 = \mathrm{S}^{m+n} \ 0$ 且 $\vdash \mathrm{S}^{m} \ 0 \cdot \mathrm{S}^{n} \ 0 = \mathrm{S}^{m \cdot n} \ 0$
        5. 如果 $n \neq m$ 则 $\vdash \mathrm{S}^{n} \ 0 \neq \mathrm{S}^{m} \ 0$
        6. 如果 $m \leqslant n$ 则 $\vdash \mathrm{S}^{m} \ 0 \leqslant \mathrm{S}^{n} \ 0$
        7. 如果 $m \not \leqslant n$ 则 $\vdash \mathrm{S}^{m} \ 0 \not \leqslant \mathrm{S}^{n} \ 0$
        8. $\vdash \forall x(x \leqslant \mathrm{S}^{n} \ 0 \leftrightarrow x = 0 \vee \cdots \vee x = \mathrm{S}^{n} \ 0)$
        9. $\vdash \forall x(x \leqslant \mathrm{S}^{n} \ 0 \vee \mathrm{S}^{n} \ 0 \leqslant x)$
    2. 引入公理 $x \leqslant y \leftrightarrow \exists z \ (x+z=y)$ 得到 $\mathbf{Q}_{\leqslant}$
        1. 令 $\Phi \in \{\Sigma_{n}, \Sigma_{n}^{+}, \Pi_{n}, \Pi_{n}^{+}, \Delta_{n}, \Delta_{n}^{+}\}$ 为公式层级，则对所有 $A \in \Phi$ 引入公理
            1. 归纳公理（$\Phi-\mathrm{IND}$）：$A(0) \wedge \forall x \ (A(x) \to A(S x)) \to \forall x \ A(x)$
            2. 最小公理（$\Phi-\mathrm{MIN}$）：$\exists x \ A(x) \to \exists x \ (A(x) \wedge \neg \exists y \ (y<x \wedge A(y)))$
            3. 替换公理（$\Phi-\mathrm{REPL}$）：$\forall x \leqslant t \ \exists y \ A(x, y) \to \exists z \ \forall x \leqslant t \ \exists y \leqslant z \ A(x, y)$

            定义 $\mathbf{I\Phi} =\mathbf{Q}_{\leqslant}+\Phi-\mathrm{IND}, \mathbf{L\Phi} =\mathbf{Q}_{\leqslant}+\Phi-\mathrm{MIN}, \mathbf{B\Phi} =\mathbf{Q}_{\leqslant}+\Phi-\mathrm{REPL}$

            1. $\mathbf{I \Sigma}_{n+1}  \vdash \mathbf{B \Sigma}_{n+1}$
            2. $\mathbf{B \Sigma}_{n+1} \vdash \mathbf{B \Pi}_{n}$
            3. $\mathbf{B \Sigma}_{n+1} \vdash \mathbf{I \Sigma}_{n}$
            4. $\mathbf{I \Sigma}_{n} \mathrel{⟛} \mathbf{I \Pi}_{n} \mathrel{⟛} \mathbf{L \Sigma}_{n} \mathrel{⟛} \mathbf{L \Pi}_{n}$

        2. 定义 $\log x=\min \left\{y \mid 2^{y} \leqslant x\right\}$ 以及 $\omega_{1}(x, y)=x^{\log y}, \omega_{n+1}(x, y)=2^{\omega_{n}(\log x, \log y)}$
            1. $\Omega_{n}: \forall x \forall y \exists z \ \left(z=\omega_{n}(x, y)\right)$
            2. $\mathrm{exp}: \forall x \forall y \exists z \ \left(x^{y}=z\right)$

2. 设 $S-$语句集为
    1. $\forall x \ (\mathrm{S} x \not = 0)$
    2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{S} y \rightarrow x = y)$
    3. $\forall x \ (x+0 = x)$
    4. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{S}(x+y))$
    5. $\forall x \ (x \times 0 = 0)$
    6. $\forall x \forall y \ (x \times \mathrm{S} y = x \times y+x)$
    7. 归纳公理模式：对每个一阶公式 $\varphi$，都有对 $\varphi$ 的归纳公理 $\forall x \ ((\varphi(0) \wedge \forall x(\varphi(x) \rightarrow \varphi(\mathrm{S} x))) \rightarrow \forall x \varphi(x))$

    定义 $\text{Peano}$ 算术 $\mathbf{PA}$ 是以上公理的理论

    1. 称 $\mathfrak N$ 是 $\mathfrak N = \{\mathbf N, \{Z^{\mathfrak N}\}_{Z \in S}\}$ 的标准模型
        1. 存在可数的非标准 $\mathbf{PA}$ 模型 $\mathfrak M$，即 $\mathfrak M$ 与 $\mathfrak N$ 初等等价但不同构
        2. $\text{Friedman}$ 定理：$\mathbf{PA}$ 两个非标准模型的其中一个必然与另一个的前段同构，此时称后者是前者的尾节扩张
    2. 在 $\mathbf{PA}$ 引入 $\nu$ 次递归定义的公理
        1. $\forall y \forall x \ (Z_{y}(P_{y}^{\mathfrak{M}}, x) \rightarrow x \in P_{y}^{\mathfrak{M}})$
        2. $\forall y \forall x_{0} \forall x_{1} \ (P_{<y}^{\mathfrak{M}} x_{0} x_{1} \leftrightarrow x_{0}<y \wedge x_{1} \in P_{x_{0}}^{\mathfrak{M}})$
        3. $\forall x \ (\mathfrak{M}_{u}(F, x) \rightarrow F(x)) \rightarrow \forall x \ (P_{u}^{\mathfrak{M}} x \rightarrow F(x))$

        得到理论 $\mathbf{ID}_{\nu}$，并定义 ${\displaystyle \mathbf{ID}_{<\nu}=\bigcup_{\mu<\nu} \mathbf{ID}_{\mu}}$

        1. 若去除归纳定义集 $I \subseteq \mathbf{N}$ 需要是某单调算子 $\Gamma: \mathcal P(\mathbf N) \rightarrow \mathcal P(\mathbf N)$ 的**最小**不动点限制，则得到弱化的 $\widehat{\mathbf{ID}}_{\nu}$ 系统
        2. 若限制仅在不含否定联结词的公式上归纳，则可在 $\widehat{\mathbf{ID}}_{\nu}$ 基础上进一步弱化得到 $\mathbf{ID}_{\nu}\#$

### 4.1.2 二阶算术
1. 用小写字母 $i, j, k, m, n, \ldots$ 表示自然数，用 $X, Y, Z, \ldots$ 表示集合．设 $S-$语句集为
    1. $\forall x \ (\mathrm{S} x \not = 0)$
    2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{S} y \rightarrow x = y)$
    3. $\forall x \ (x+0 = x)$
    4. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{S}(x+y))$
    5. $\forall x \ (x \times 0 = 0)$
    6. $\forall x \forall y \ (x \times \mathrm{S} y = x \times y+x)$
    7. 归纳公理模式（$\mathrm{Ind}$）：对所有不含 $X$ 作为自由变元的公式 $X$ 有 $\forall X(0 \in X \wedge \forall n(n \in X \rightarrow n+1 \in X)) \rightarrow \forall n(n \in X)$
    8. 理解公理模式（$\mathrm{CA}$）：对所有不含 $X$ 作为自由变元的公式 $X$ 有 $\exists X \forall n(n \in X \leftrightarrow \varphi(n))$

    定义二阶算术 $\mathbf{Z}_2$ 是以上公理的理论

    1. 对于层级 $\Phi \in \{\Sigma_{n}^{m}, \Pi_{n}^{m}, \Delta_{n}^{m}\}$ 的公式 $\varphi$，定义公理
        1. $\Phi-$归纳公理模式（$\Phi-\mathrm{Ind}$）：$\varphi(0) \wedge \forall n \ (\varphi(n) \rightarrow \varphi(n+1)) \rightarrow \forall n \ \varphi(n)$
        2. $\Phi-$理解公理模式（$\Phi-\mathrm{CA}$）：$\exists X \forall n \ (n \in X \leftrightarrow \varphi(n))$
        3. $\Phi-$分离原则模式（$\Phi-\mathrm{SP}$）：$\forall n \ (\varphi(n) \leftrightarrow \psi(n)) \rightarrow \exists X \forall n \ ((\varphi(n) \to n \in X) \wedge (n \in X \to \psi(n)))$
        4. $\Phi-$算术超限递归公理模式（$\Phi-\mathrm{TR}$）：对公式 $\theta(n, X)$，令 $\Theta(X)=\{n \in \mathbf{N} \mid \theta(n, X)\}, Y \subseteq \mathbf{N} \times A$ 且对每个 $a \in A$ 有 $Y_{a}=\Theta\left(Y^{a}\right)$，其中 $Y_{a}=\{m \mid (m, a) \in Y\}, Y^{a}=\left\{(n, b) \mid n \in Y_{b} \wedge b<_{A} a\right\}$，则对任意 $\Theta$ 与 $A$，相应的集合 $Y$ 都存在
        5. $\Phi-\text{Bar}$ 归纳公理模式（$\Phi-\mathrm{BI}$）：若 $a \prec b$ 有定义，则 $(\forall i \prec j \ (i \in X) \to j \in X) \to \forall n \ \varphi(n)$

        若取消 $\varphi$ 的限制，则去除对应的 $\Phi$ 前缀

    2. $\mathbf{Z}_2 = \mathbf{\Pi}_\omega^1-\mathbf{CA}$，一般地有 $\mathbf{Z}_{n+3} = \mathbf{\Pi}_\omega^{n+2}-\mathbf{CA}, \mathbf{Z}_\omega = \mathbf{\Pi}_0^\omega-\mathbf{CA}$
    3. 对于任意 $\mathbf{Z}_2$ 的子系统 $\mathbf{T}_0$，令 $\mathbf{T} = \mathbf{T}_0 + \mathrm{1-Ind}$，其中 $\mathrm{1-Ind}$ 是对所有一阶公式都成立的归纳公理模式

2. $\mathbf{RCA}_0 = \mathbf{Q} + \Sigma_1^0-\mathrm{Ind} + \Delta_1^0-\mathrm{CA}$
    1. $\Delta_1^0-\mathrm{CA}: \forall n \ (\varphi(n) \leftrightarrow \psi(n)) \rightarrow \exists X \forall n \ (n \in X \leftrightarrow \varphi(n))$，其中 $\varphi$ 为 $\Sigma_1^0$ 公式，$\psi$ 为 $\Pi_1^0$ 公式
    2. ...
3. $\mathbf{WKL}_0 = \mathbf{RCA}_0 + \Sigma_1^0-\mathrm{SP}$
    1. $\mathbf{WKL}_0$ 等价于 $\mathbf{RCA}_0 +$ 弱 $\text{K}\ddot{\mathrm o}\text{nig}$ 引理：若 $T$ 为 $2^{<\omega}$ 的无限子树，则 $T$ 有一个无限分支
    2. ...
4. $\mathbf{ACA}_0 = \mathbf{RCA}_0 + \Pi_0^1-\mathrm{CA}, \mathbf{\Phi}-\mathbf{CA}_0 = \mathbf{RCA}_0 + \Phi-\mathrm{CA}$，其中 $\Phi \in \{\Sigma_{n}^{m}, \Pi_{n}^{m}, \Delta_{n}^{m}\}$
    1. $\mathbf{ACA}_0$ 等价于 $\mathbf{RCA}_0 + \forall n \in \mathbf{N} \ (\Sigma_n^0-\mathrm{CA})$
    2. $\mathbf{ACA}_0$ 是一阶 $\text{Peano}$ 算术的一个保守扩张
5. $\mathbf{ATR}_0 = \mathbf{RCA}_0 + \mathrm{TR}, \mathbf{\Phi}-\mathbf{TR}_0 = \mathbf{RCA}_0 + \Phi-\mathrm{TR}$，其中 $\Phi \in \{\Sigma_{n}^{m}, \Pi_{n}^{m}, \Delta_{n}^{m}\}$
6. $\mathbf{\Phi}-\mathbf{AC}_0 = \mathbf{RCA}_0 + \Phi-\mathbf{AC}$，其中 $\Phi \in \{\Sigma_{n}^{m}, \Pi_{n}^{m}, \Delta_{n}^{m}\}$

## 4.2 不完备定理
### 4.2.1 可表示性
1. 关系的可表示性：令 $T$ 为包含 $\mathbf{Q}$ 的理论，称自然数上的 $k$ 元关系 $P$ 为在 $T$ 中（数码逐点）可表示的当且仅当存在 $P$ 的一个表示公式 $\rho(\overline{x})$ 使得 $\left(n_{1}, n_{2}, \ldots, n_{k}\right) \in P \to T \vdash \rho\left(\mathrm{S}^{n_{1}} \ 0, \mathrm{S}^{n_{2}} \ 0, \ldots, \mathrm{S}^{n_{k}} \ 0\right)$ 且 $\left(n_{1}, n_{2}, \ldots, n_{k}\right) \notin P \to T \vdash \neg \rho\left(\mathrm{S}^{n_{1}} \ 0, \mathrm{S}^{n_{2}} \ 0, \ldots, \mathrm{S}^{n_{k}} \ 0\right)$
    1. 可表示性的简单性质
        1. 如果 $P$ 是可表示的，则 $P$ 是递归的
        2. 可表示的关系在否定、析取与合取运算下封闭
        3. 如果 $P$ 在 $\mathbf{Q}$ 中被公式 $\rho$ 表示，则 $P$ 在 $\mathbf{Q}$ 的任何一致扩张（例如 $\mathbf{PA}$ 或 $\operatorname{Th}(\mathfrak{N})$）中都被 $\rho$ 表示
        4. $P$ 在 $\operatorname{Th}(\mathfrak{N})$ 中被 $\rho$ 表示当且仅当 $P$ 在结构 $\mathfrak{N}$ 中被 $\rho$ 定义
    2. $\mathbf{Q}$ 的 $\Sigma_{1}-$完备性：对任一 $\Sigma_{1}-$闭语句 $\tau$ 有 $\mathfrak{N} \models \tau$ 当且仅当 $\mathbf{Q} \vdash \tau$
    3. 若关系 $P \subseteq \mathbf{N}^{k+1}$ 被 $\rho(\overline{x}, \overline{y})$ 表示，则关系 $\exists c<$ b \ $P(\overline{a}, c)$ 和 $\forall c<b \ P(\overline{a}, c)$ 分别被 $\exists z<y \ \rho(\overline{x}, z)$ 和 $\forall z<y \ \rho(\overline{x}, z)$ 表示
    4. 对任何 $k$ 元关系 $R \subseteq \mathbf{N}^{k}$ 和任何递归且一致的扩张 $T \supseteq Q$，以下命题等价
        1. $R$ 在 $T$ 中可表示
        2. $R$ 是一个递归关系
        3. $R$ 在 $T$ 中可被一个 $\Delta_{1}$ 公式表示
2. 函数的可表示性：称一个函数 $f: \mathbf{N}^{k} \rightarrow \mathbf{N}$ 在 $T$ 中可表示当且仅当存在公式 $\varphi\left(x_{1}, \ldots, x_{k}, y\right)$，使得对所有 $\left(n_{1}, \ldots, n_{k}\right) \in \mathbf{N}^{k}$，都有 $\vdash_{T} \forall y\left[\varphi\left(\mathrm{S}^{n_{1}} \ 0, \ldots, \mathrm{S}^{n_{k}} \ 0, y\right) \leftrightarrow y=f\left(\mathrm{S}^{n_{1}} \ 0, \ldots, \mathrm{S}^{n_{k}} \ 0\right)\right]$
    1. 可表示性定理：所有的递归函数在 $\mathbf{Q}$ 中都是可表示的，因此所有的递归关系在 $\mathbf{Q}$ 中也都是可表示的
        1. 令 $t$ 为一个项，其中出现的变元包含在 $x_{1}, x_{2}, \ldots, x_{k}$ 中，则它诱导出的 $k$ 元函数 $f_{t}\left(n_{1}, n_{2}, \ldots, n_{k}\right)= t\left(n_{1}, n_{2}, \ldots, n_{k}\right)$ 是可表示的．特别地，零函数、后继函数、投射函数都是可表示的
        2. 可表示函数的类对复合运算封闭，即若函数 $h_{1}\left(x_{1}, x_{2}, \ldots, x_{n}\right)$, $h_{2}\left(x_{1}, x_{2}, \ldots, x_{n}\right), \ldots, h_{r}\left(x_{1}, x_{2}, \ldots, x_{n}\right)$ 和 $g\left(y_{1}, y_{2}, \ldots, y_{r}\right)$ 都是可表示的，则复合函数 $f=g\left(h_{1}, h_{2}, \ldots, h_{r}\right)$ 也是可表示的
        3. 可表示函数形成的类对原始递归封闭
        4. 假定函数 $g(x, y)$ 是可表示的并且 $\forall x \exists y \ g(x, y)=0$，则函数 $f(x)= \mu y [g(x, y)=0]$ 也是可表示的
    2. 如果一个函数 $f$ 作为关系是可表示的，则 $f$ 作为函数也是可表示的（但表示它们的公式可能不相同）
    3. 定义函数

        $$
        \begin{aligned}
        \alpha(c, d, i) & =\mu r[\exists q \leqslant c \ (c=q(1+(i+1) d)+r)] \\
        J(a, b) & =\dfrac{1}{2}(a+b)(a+b+1)+a \\
        K(p) & =\mu a \leqslant p \ [\exists b \leqslant p \ J(a, b)=p] \\
        L(p) & =\mu b \leqslant p \ [\exists a \leqslant p \ J(a, b)=p]
        \end{aligned}
        $$

        则以上函数在 $\mathbf{Q}$ 中都是可表示的

3. 算术编码：为 $S$ 中的每个符号指派一个自然数，其中 $\sharp v_{i} = 2i + 21$

    <div class="text-table">

    |  $\zeta$  | $\sharp \zeta$ |    $\zeta$    | $\sharp \zeta$ |
    | :-------: | :------------: | :-----------: | :------------: |
    | $\forall$ |       1        |      $)$      |       13       |
    |     0     |       3        |    $\neg$     |       15       |
    |     S     |       5        | $\rightarrow$ |       17       |
    |     +     |       7        |      $=$      |       19       |
    |  $\cdot$  |       9        |    $v_{0}$    |       21       |
    |    $($    |       11       |   $\cdots$    |    $\cdots$    |

    </div>

    指派给字符串 $\xi=\zeta_{0} \ldots \zeta_{n}$ 的 $\text{G}\ddot{\mathrm o}\text{del}$ 编码为 $\sharp \xi = \operatorname{enc}(\zeta_{0}, \zeta_{1}, \cdots, \zeta_{n})$，并用 $\natural \xi$ 表示 $\sharp \xi$ 的逆运算

    1. 以下集合是原始递归的
        1. $\{\sharp x: x$ 是一个变元$\}$
        2. $\{\sharp t: t$ 是一个项$\}$
        3. $\{\sharp \alpha: \alpha$ 是一个原子公式$\}$
        4. $\{\sharp \alpha: \alpha$ 是一个公式$\}$
        5. $\{\sharp \alpha: \alpha$ 是一个闭语句$\}$
        6. $\{\sharp \alpha: \alpha$ 是一条逻辑公理$\}$
        7. $\{\sharp m: m$ 是一个数码$\}$
    2. 以下关系是原始递归的
        1. $x$ 在 $\alpha$ 中自然出现，即 $x$ 是一个变元，$\alpha$ 是一个项或公式，且 $\natural x$ 在 $\natural \alpha$ 中自由出现
        2. $t$ 在 $\alpha$ 中可替换 $x$，即 $x$ 是一个变元，$\alpha$ 是一个公式，$t$ 是一个项且 $\natural t$ 在 $\natural \alpha$ 中可替换 $\natural x$
        3. $\alpha$ 是 $\beta$ 的一个全称概括，即 $\alpha, \beta$ 是公式且 $\natural \alpha$ 是 $\natural \beta$ 的一个全称概括
    3. 存在一个原始递归函数 $\operatorname{SUB}$ 使得对任意项或公式 $\alpha$，对任意变元 $x$ 和任意项 $t$ 有 $\operatorname{SUB}(\sharp \alpha, \sharp x, \sharp t) = \sharp \alpha(t/x)$
    4. 令 $T$ 为一个被集合 $X \subseteq T$ 所公理化的理论，此时 $X$ 是递归的
        1. 关系「$b$ 是一个 $T$ 上的一个证明序列」是递归的
        2. 关系 $\operatorname{BEW}_{T}(b, a)$ 为「$b$ 是一个 $T$ 上的一个证明序列且 $b_{\mathrm{lh}(b)-1}=a$」，则 $\mathrm{BEW}_{T}(b, a)$ 是递归的
        3. 关系 $\mathrm{BWB}_{T}(a)$ 为 $\exists b \ \mathrm{BEW}_{T}(b, a)$，则 $\mathrm{BWB}_{T}(a)$ 是递归可枚举的，在一般情况下是不递归的

### 4.2.2 可证性
1. 令 $\varphi(\overline{x}, y)$ 为公式，且 $\mathbf{PA} \vdash \forall x \exists^{1} y \ \varphi(\overline{x}, y)$，将 $S$ 扩张为 $S' = S \cup \{f\}$，加入公理 $\forall x \ \varphi(\overline{x}, f(\overline{x}))$
    1. 对每一个 $S^{\prime}$ 上的公式 $\theta(\overline{v})$，在语言 $S$ 中都存在一个自然的翻译 $\theta^{*}(\overline{v})$
    2. 设 $\mathfrak{A}$ 为 $S'$ 的一个结构，$\mathfrak{A} \vDash \forall x \ \varphi(\overline{x}, f(\overline{x}))$ 且 $\mathfrak{A} \vDash \mathbf{PA}$
        1. 对所有的 $S^{\prime}$ 上的公式 $\theta(\overline{v})$ 和所有 $\overline{a} \in|\mathfrak{A}|^{k}$ 都有 $\mathfrak{A} \vDash \theta[\overline{a}]$ 当且仅当 $\mathfrak{A} \vDash \theta^{*}[\overline{a}]$
        2. 对所有 $S^{\prime}$ 上的公式 $\theta$，$\mathfrak{A}$ 都满足对 $\theta$ 的归纳公理 $I \theta$
        3. 对每一个 $S^{\prime}$ 上的公式 $\theta$，都在 $\mathbf{PA}$ 中添入一条新的归纳公理 $I \theta$．令 $\mathbf{PA}\left(S^{\prime}\right)$ 为扩充后的公理系统，则 $\mathbf{PA}\left(S^{\prime}\right)$ 是 $\mathbf{PA}$ 的一个保守扩张，即对每一个 $S$ 上的闭语句 $\sigma$ 都有 $\mathbf{PA}\left(S^{\prime}\right) \vdash \sigma$ 当且仅当 $\mathbf{PA} \vdash \sigma$
    3. 称函数 $f$ 在 $T$ 中是可证递归的当且仅当存在一个 $\Sigma_{1}-$公式 $\varphi(\overline{x}, y)$ 使得 $T \vdash \forall \overline{x} \forall y \ (\varphi(\overline{x}, y) \leftrightarrow y=f(\overline{x}))$；称关系 $R$ 在 $T$ 中是可证递归的当且仅当存在 $\Sigma_{1}-$公式 $\varphi(\overline{x})$ 和 $\psi(\overline{x})$ 使得 $T \vdash \forall \overline{x} \ (R(\overline{x}) \leftrightarrow \varphi(\overline{x}) \leftrightarrow \neg \psi(\overline{x}))$
        1. 令 $S^{\prime}=S \cup\{f, R\}$，$f$ 和 $R$ 是可证递归的函数和关系，则任何 $\mathbf{PA}\left(S^{\prime}\right)$ 中的可证递归函数和关系都在 $\mathbf{PA}$ 可证递归
        2. 令 $f$ 为在 $\mathbf{PA}$ 中可证递归函数，令 $\mathfrak{N}$ 和 $\mathfrak{M}$ 为 $\mathbf{PA}$ 的模型且 $\mathfrak{M}$ 是 $\mathfrak{N}$ 的尾节扩张，则对所有的 $\overline{a}$ 有 $b \in \mathfrak{N}, f^{\mathfrak{N}}(\overline{a})=b$ 当且仅当 $f^{\mathfrak{M}}(\overline{a})=b$
2. 设理论 $T$ 是可公理化的且 $\mathbf{Q} \subseteq T$，定义 $\operatorname{Bew}_{T}(y, x)$ 与 $\operatorname{Bwb}_{T}(x)$ 为 $\mathbf{Q}$ 内形式化的 $\mathrm{BEW}$ 和 $\mathrm{BWB}$
    1. $\operatorname{Bew}_{T}(y, x)$ 是可证递归的，$\operatorname{Bwb}_{T}(x)$ 一般不是 $\Delta_1$ 的
    2. 记 $\square_{T} \alpha$ 为 $\mathrm{Bwb}_{T}(\sharp \alpha)$，$\operatorname{Con}(T)$ 为 $\neg \square_{T} \bot$
3. $\text{Hilbert}-\text{Bernays}-\text{L}\ddot{\mathrm{o}}\text{b}$ 可证性条件：令 $\sigma$ 和 $\tau$ 为闭语句
    1. $\text{D1}:$ 若 $\vdash_{T} \sigma$，则 $\vdash_{T} \square_{T} \sigma$
        1. $\text{D1}$ 不蕴涵 $\vdash_{T} \sigma \rightarrow \square_{T} \sigma$，后者不一定是元定理
        2. $\text{D1}$ 对任何 $\mathbf{Q}$ 的扩张 $T$ 都成立，即若 $\vdash_{T} \sigma$，则 $\vdash_{T} \square_{T} \sigma$
    2. $\text{D2}: \ \vdash_{T} \square_{T}(\sigma \rightarrow \tau) \rightarrow \square_{T} \sigma \rightarrow \square_{T} \tau$
        1. 若 $\text{D1}$ 与 $\text{D2}$ 成立，则 $\text{D0}:$ 若 $\sigma \vdash_{T} \tau$，则 $\square_{T} \sigma \vdash_{T} \square_{T} \tau_{0}$ 成立
        2. 若 $\vdash_{T} \sigma \leftrightarrow \tau$ 则 $\vdash_{T} \square_{T} \sigma \leftrightarrow \square_{T} \tau$
    3. $\text{D3}: \ \vdash_{T} \square_{T} \sigma \rightarrow \square_{T} \square_{T} \sigma$

### 4.2.3 不完备定理
1. 不动点引理：给定公式 $\beta\left(v_{1}\right)$，其中只有变元 $v_{1}$ 自由出现，则可能行地找到一个闭语句 $\sigma$ 使得 $\mathbf{Q} \vdash \sigma \leftrightarrow \beta\left(\mathrm{S}^{\sharp \sigma} 0\right)$
2. 第一不完备定理：理论 $T \subseteq \mathrm{Th}(\mathfrak{N})$ 是可公理化的，则 $T$ 是不完全的；特别地，没有 $\mathrm{Th}(\mathfrak{N})$ 的完全公理化
    1. $\text{Tarski}$ 不可定义性定理：集合 $\sharp \mathrm{Th}(\mathfrak{N})$ 在结构 $\mathfrak{N}$ 中是不可定义的
    2. $\text{G}\ddot{\mathrm o}\text{del}-\text{Rosser}$ 定理：令 $T \supseteq \mathbf{Q}$ 为一个可公理化理论．若 $T$ 是一致，则存在一个 $\Pi_{1}-$闭语句 $\sigma$ 使得 $T \nvdash \sigma$ 且 $T \nvdash \neg \sigma$
    3. $\mathbf{Q}$ 强不可判定性：任何一个理论 $T$ 如果满足 $T \cup \mathbf{Q}$ 是一致的，则 $T$ 不是递归的
3. 第二不完备定理：设理论 $T$ 是可公理化的且 $\mathbf{Q} \subseteq T$
    1. 若 $T$ 一致，则 $\nvdash_{T} \mathrm{Con}(T)$
    2. $\vdash_{T} \operatorname{Con}(T) \rightarrow \neg \square_{T} \operatorname{Con}(T)$

    第二不完备定理说明 $\text{Hilbert}$ 纲领不可能照原样实现

    1. 令 $\mathbf{PA}^*$ 为 $\mathbf{PA} + \neg \operatorname{Con}(\mathbf{PA})$，则 $\mathbf{PA}^*$ 一致
    2. 定义超穷递归 $\forall \beta<\alpha \ (\forall \gamma<\beta \ \psi(\gamma) \rightarrow \psi(\beta)) \rightarrow \forall \beta<\alpha \ \psi(\beta)$，对任意序数 $\alpha < \varepsilon_{0}$，$\mathbf{PA}$ 可证明 $\operatorname{TI}(\alpha)$，但无法证明 $\operatorname{TI}(\varepsilon_{0})$，此时记 $\operatorname{PTO}(\mathbf{PA}) = \varepsilon$，称 $\mathbf{PA}$ 的证明论序数为 $\varepsilon_0$

4. $\text{L}\ddot{\mathrm{o}}\text{b}$ 定理
    1. $\vdash_{T} \square_{T}\left(\square_{T} \alpha \rightarrow \alpha\right) \rightarrow \square_{T} \alpha$
    2. 若 $\vdash_{T} \square_{T} \alpha \rightarrow \alpha$，则 $\vdash_{T} \alpha$

    令 $T$ 表示任何一个普遍有效的闭语句（例如 $0 = 0$），则 $T$ 是 $\square_{T}(x)$ 的唯一不动点

## 4.3 反推数学
### 4.3.1 二阶算术子系统

### 4.3.2 二阶算术体系
