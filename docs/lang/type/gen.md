# 1 一般类型论

## 1.1 无类型 λ 演算
### 1.1.1 构造原理
1. $\lambda-$项：$\lambda$ 演算的表达式称为 $\lambda-$项．定义变元的无穷集 $V = \left\{x, y, z, \cdots\right\}$，定义所有 $\lambda-$项的集合 $\Lambda$ 如下
    1. 基础：若 $u \in V$，则 $u \in \Lambda$
    2. 应用：若 $M, N \in \Lambda$，则 $(MN) \in \Lambda$
    3. 抽象：若 $u \in V$ 且 $M \in \Lambda$，则 $(\lambda u.M) \in \Lambda$，称子项 $M$ 为 $(\lambda x.M)$ 的主体

    通常用 $x, y, z$ 表示变元，用 $L, M, N, P, Q, R$ 表示 $\lambda-$项．若 $M, N \in \Lambda$ 在句法上等同，则记作 $M \equiv N$

    1. 子项：设 $P$ 是一个 $\lambda-$项，定义多重集 $\mathrm{Sub}(P)$ 包含 $M$ 的所有子项
        1. 基础：对于任意 $x \in V$，有 $\mathrm{Sub}(x) = \{x\}$
        2. 应用：$\mathrm{Sub}((MN)) = \mathrm{Sub}(M) \cup \mathrm{Sub}(N) \cup \{(MN)\}$
        3. 抽象：$\mathrm{Sub}((\lambda x.M)) = \mathrm{Sub}(M) \cup \{(\lambda x.M)\}$

        若 $L \in \mathrm{Sub}(M)$，则称 $L$ 是 $M$ 的子项

        4. 子项作为关系具有自反性与传递性
        5. 真子项：若 $L$ 是 $M$ 的子项且 $L$ 与 $M$ 不等同，则称 $L$ 是 $M$ 的真子项

    2. 多变量 $\lambda$ 表达式：形如 $(\lambda x.M)$ 的项是单变量 $\lambda$ 表达式
        1. 多变量 $\lambda$ 表达式可以用多元有序组表示参数，例如 $\lambda (x, y).(x^2+y)$
        2. 习惯上用多个单变量 $\lambda$ 表达式表示多变量 $\lambda$ 表达式，但其与对应的多变量 $\lambda$ 表达式有所区别，例如 $\lambda x.(\lambda y.(x^2 + y))$
    3. 括号简化：在不影响可读性的前提下，部分括号可以省略
        1. 最外层的括号可被省略，例如 $MN$ 表示 $(MN)$，$\lambda x.M$ 表示 $(\lambda x.M)$
        2. 「应用」的优先级高于「抽象」，例如 $\lambda x.MN$ 表示 $\lambda x.(MN)$
            - 「应用」是左结合的，例如 $MNL$ 表示 $((MN)L)$
            - 「抽象」是右结合的，且可以被简写在一起，例如 $\lambda xy.M$ 表示 $\lambda x.(\lambda y.M)$

2. 变元的种类
    1. 绑定出现：出现在 $\lambda$ 后面的第一个变元
    2. 自由出现：对于 $M \in \Lambda$，定义自由出现的变元集合 $\mathrm{FV}(M)$ 如下
        1. 基础：$\mathrm{FV}(x) = \{x\}$
        2. 应用：$\mathrm{FV}(MN) = \mathrm{FV}(M) \cup \mathrm{FV}(N)$
        3. 抽象：$\mathrm{FV}(\lambda x.M) = \mathrm{FV}(M) - \{x\}$

        $\mathrm{FV}(M)$ 的元素是在 $M$ 中的某处自由出现的变元

    3. 约束出现：即不是绑定出现，也不是自由出现的变元

    若 $M \in \Lambda$ 有 $\mathrm{FV}(M) = \varnothing$，则称 $M$ 为 $\lambda-$闭项或组合子．所有的 $\lambda-$闭项组成的集合记作 $\Lambda^0$

3. $\alpha-$等价：记 $M^{x \to y}$ 为将所有在 $M$ 中自由出现的 $x$ 替换为 $y$，定义 $\alpha-$转换或称 $\alpha-$等价性 $=_{\alpha}$ 如下
    1. 等价性：$=_{\alpha}$ 具有自反性、对称性以及传递性
    2. 重命名：$\lambda x.M =_{\alpha} \lambda y.M^{x \to y}$
    3. 相容性：若 $M =_{\alpha} N$，则 $ML =_{\alpha} NL, LM =_{\alpha} LN$，且对于任意 $z \in V$ 有 $\lambda z.M =_{\alpha} \lambda z.N$

    在宽松意义下，通常也用句法等价的 $\equiv$ 表示 $=_{\alpha}$

    1. 若 $M =_{\alpha} N$，则称 $M$ 与 $N$ 是 $\alpha-$可转换的或 $\alpha-$等价的．也称 $M$ 是 $N$ 的一个 $\alpha-$变式，反之亦然
    2. $\alpha-$等价性随 $\lambda-$的项构造而保持：令 $M_1 =_{\alpha} M_2, N_1 =_{\alpha} N_2$，则
        1. $M_1N_1 =_{\alpha} M_2N_2$
        2. $\lambda x.M_1 =_{\alpha} \lambda x.M_2$
        3. $M_1[x:=N_1] =_{\alpha} M_2[x:=N_2]$
    3. 模 $\alpha-$等价：将 $\alpha-$等价的 $\lambda-$项看作同一个抽象的 $\lambda-$项，其约束变元与绑定变元的选择是任意的

        !!! note "$\text{Barendregt}$ 规约"
            选择 $\lambda-$项的绑定变元使其互不相同，且均与任意自由出现的变元不同

4. 替换：设 $M \in \Lambda$，定义替换 $M[x:=N]$ 如下
    1. $y[x:=N] = \left\{\begin{aligned} & N, & y\equiv x \\ & y, & y \not\equiv x \end{aligned}\right.$
    2. $(PQ)[x:=N] \equiv (P[x:=N])(Q[x:=N])$
    3. 若 $\lambda z.P^{y \to z}$ 与 $\lambda y.P$ 等价使得 $z \notin \mathrm{FV}(N)$，则 $(\lambda y.P)[x:=N] \equiv \lambda z.(P^{y \to z}[x:=N])$

    设 $x \not\equiv y$ 且 $x \notin \mathrm{FV}(L)$，则 $M[x:=N][y:=L] \equiv M[y:=L][x:=N[y:=L]]$

### 1.1.2 归约
1. $\beta-$归约与 $\beta-$等价性
    1. 单步 $\beta-$归约：设 $P, Q \in \Lambda$，定义单步 $P \to_{\beta} Q$ 如下
        1. 基础：$(\lambda x \cdot M) N \rightarrow_\beta M[x:=N]$
        2. 相容性：若 $M \to_{\beta} N$，则 $ML \to_{\beta} NL, LM \to_{\beta} LN$ 且对于任意 $x \in V$ 有 $\lambda x.M \to_{\beta} \lambda x.N$

        称 $P$ 为可归约式，$Q$ 为 $P$ 的收缩式

    2. 多步 $\beta-$归约：设 $M, N \in \Lambda$，定义多步 $M \twoheadrightarrow_{\beta} N$ 为存在 $n \geqslant 0$ 与 $M_0, M_1, \cdots, M_n$ 使得 $M \equiv M_0, M_n \equiv N$ 且对于任意 $0 \leqslant i < n$ 有 $M_i \to_{\beta} M_{i+1}$，即

        $$
        M \equiv M_0 \rightarrow_\beta M_1 \rightarrow_\beta M_2 \rightarrow_\beta \ldots \rightarrow_\beta M_{n-2} \rightarrow_\beta M_{n-1} \rightarrow_\beta M_n \equiv N
        $$

        1. $\twoheadrightarrow_{\beta}$ 扩展了 $\to_{\beta}$ 的定义，即若 $M \to_{\beta} N$，则 $M \twoheadrightarrow_{\beta} N$
        2. $\twoheadrightarrow_{\beta}$ 具有自反性与传递性

    3. $\beta-$等价性：设 $M, N \in \Lambda$，定义 $M =_{\beta} N$ 为存在 $n \geqslant 0$ 与 $M_0, M_1, \cdots, M_n$ 使得 $M \equiv M_0, M_n \equiv N$ 且对于任意 $0 \leqslant i < n$ 有 $M_i \to_{\beta} M_{i+1}$ 或 $M_{i+1} \to_{\beta} M_i$，称 $M$ 与 $N$ 为 $\beta-$等价的或 $\beta-$可转换的
        1. $=_{\beta}$ 扩展了 $\twoheadrightarrow_{\beta}$ 的定义，即若 $M \twoheadrightarrow_{\beta} N$，则 $M =_{\beta} N$
        2. $=_{\beta}$ 是一个等价关系

2. $\beta-$正规形式：设 $M \in \Lambda$，则若 $M$ 不包含任何可归约式时，称 $M$ 为 $\beta-$正规形式
    1. 当 $M$ 为 $\beta-$正规形式时，则 $M \twoheadrightarrow_{\beta} N$ 蕴含 $M \equiv N$，反之不成立

        !!! note "$\beta-$正规形式例举"
            1. 定义 $\Omega = (\lambda x.xx)(\lambda x.xx)$，则 $\Omega$ 不是 $\beta-$正规形式且无 $\beta-$正规形式
            2. 定义 $\Delta = \lambda x.xxx$，则 $\Delta \Delta \to_{\beta} \Delta \Delta \Delta \to_{\beta} \Delta \Delta \Delta \Delta \to_{\beta} \cdots$ 不是 $\beta-$正规形式且无 $\beta-$正规形式；而 $(\lambda u.v)\Omega$ 有 $\beta-$正规形式 $v$，且存在无穷归约路径

    2. 归约路径：$M$ 的一个有穷归约路径是一个有穷 $\lambda-$项序列 $N_0, N_1, \cdots, N_n$，使得 $N_0 \equiv M$ 且对于任意 $0 \leqslant i < n$ 都有 $N_i \to_{\beta} N_{i+1}$；$M$ 的一个无穷归约路径是一个无穷 $\lambda-$项序列 $N_0, N_1, N_2, \cdots$，使得 $N_0 \equiv M$ 且对于任意 $i \in \mathbf N$ 都有 $N_i \to_{\beta} N_{i+1}$
    3. 可正规化：若存在 $\beta-$正规形式使得 $M =_{\beta} N$，则称 $M$ 是（弱）可正规化的或称 $M$ 有正规形式 $N$，称 $N$ 是 $M$ 的一个正规形式；若不存在从 $M$ 开始的无穷归约路径，则称 $M$ 是强可正规化的
    4. $\text{Church}-\text{Rosser}$ 定理：对于给定的 $M \in \Lambda$，若有 $M \twoheadrightarrow_{\beta} N_1, M \twoheadrightarrow_{\beta} N_2$，则存在 $N_3 \in \Lambda$ 使得 $N_1 \twoheadrightarrow_{\beta} N_3, N_2 \twoheadrightarrow_{\beta} N_3$
        1. 设 $M =_{\beta} N$，则存在 $L \in \Lambda$ 使得 $M \twoheadrightarrow_{\beta} L, N \twoheadrightarrow_{\beta} L$
        2. 若 $M$ 有正规形式 $N$，则 $M \twoheadrightarrow_{\beta} N$
        3. 一个 $\lambda-$项至多有一个 $\beta-$正规形式

3. 不动点定理：对于所有的 $L \in \Lambda$，定义不动点组合子 $Y \equiv \lambda y.(\lambda x.y(xx))(\lambda x.y(xx))$，则对于任意 $L \in \Lambda$，定义 $M \equiv YL$，有 $LM =_{\beta} M$ 成立

## 1.2 简单类型 λ 演算
