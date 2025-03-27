# 2 函子与自然变换

## 2.1 函子
### 2.1.1 函子与多元函子
1. 协变函子和反变函子统称为函子
    1. 设 $\mathscr{A}$ 和 $\mathscr{B}$ 为范畴，若 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为函子，则称 $\mathscr{A}$ 为 $F$ 的定义域，$\mathscr{B}$ 为 $F$ 的值域
        1. 如果函数 $F: \operatorname{Mor} \mathscr{A} \rightarrow \mathrm{Mor} \mathscr{B}$ 满足
            1. 若 $e$ 为 $\mathscr{A}$ 的幺态射，则 $F(e)$ 为 $\mathscr{B}$ 的幺态射
            2. 若 $f \in \mathscr{A}[A, B]$，且 $g \in \mathscr{A}[B, C]$，则 $F(g \circ f)=F(g) \circ F(f)$

            则称 $F$ 为一个从 $\mathscr{A}$ 到 $\mathscr{B}$ 的协变函子，记为 $F: \mathscr{A} \rightarrow \mathscr{B}$ 或 $\mathscr{A} \xrightarrow{F} \mathscr{B}$

        2. 如果函数 $F: \operatorname{Mor} \mathscr{A} \rightarrow \mathrm{Mor} \mathscr{B}$ 满足
            1. 若 $e$ 为 $\mathscr{A}$ 的幺态射，则 $F(e)$ 为 $\mathscr{B}$ 的幺态射
            2. 若 $f \in \mathscr{A}[A, B]$，且 $g \in \mathscr{A}[B, C]$，则 $F(g \circ f)=F(f) \circ F(g)$

            则称 $F$ 为一个从 $\mathscr{A}$ 到 $\mathscr{B}$ 的反变函子，记为 $F: \mathscr{A} \rightarrow \mathscr{B}$ 或 $\mathscr{A} \xrightarrow{F} \mathscr{B}$

    2. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为函子
        1. 如果 $F$ 为协变函子，则存在唯一的函数 $\theta_{F}: \operatorname{Ob} \mathscr{A} \rightarrow \operatorname{Ob} \mathscr{B}$ 满足
            1. 若 $A \in \operatorname{Ob} \mathscr{A}$，则 $F\left(\mathbf{I}_{A}\right)=\mathbf{I}_{\theta_{F}(A)}$
            2. 若 $f \in \mathscr{A}[A, B]$，则 $F(f)=\mathscr{B}\left[\theta_{F}(A), \theta_{F}(B)\right]$
        2. 如果 $F$ 为反变函子，则存在唯一函数 $\theta_{F}: \operatorname{Ob} \mathscr{A} \rightarrow \operatorname{Ob} \mathscr{B}$ 满足
            1. 若 $A \in \operatorname{Ob} \mathscr{A}$，则 $F\left(\mathbf{I}_{A}\right)=\mathbf{I}_{\theta_{F}(A)}$
            2. 若 $f \in \mathscr{A}[A, B]$，则 $F(f)=\mathscr{B}\left[\theta_{F}(B), \theta_{F}(A)\right]$

        对任意 $A \in \mathscr{A}$，将 $\theta_{F}(A)$ 记为 $F(A)$

    3. 设 $F: \mathscr{A} \rightarrow \mathscr{B}, B: \mathscr{B} \rightarrow \mathscr{C}$ 和 $S: \mathscr{C} \rightarrow \mathscr{D}$ 均为函子
        1. $F \circ I_{\mathscr{A}}=F=I_{\mathscr{B}} \circ F$
        2. $S \circ(G \circ F)=(S \circ G) \circ F \circ$
    4. 典型函子：若 $\mathscr{A}, \mathscr{B}, \mathscr{C}$ 为范畴
        1. 对任意 $f \in \operatorname{Mor} \mathscr{C}$，令 $I_{\mathscr{C}}(f)=f$，可得到协变函子 $I_{\mathscr{C}}: \mathscr{C} \rightarrow \mathscr{C}$，称为恒等函子
        2. 设 $B \in \operatorname{Ob} \mathscr{B}$，对任意 $f \in \operatorname{Mor} \mathscr{A}$，令 $\operatorname{Const}_{B}(f)=\mathbf{I}_{B}$，可得到函子 $\operatorname{Const}_{B}: \mathscr{A} \rightarrow \mathscr{B}$，称为常函子
        3. 设 $\mathscr{A} \subseteq \mathscr{B}$，对任意 $f \in \operatorname{Mor} \mathscr{A}$，令 $\operatorname{in}_{\mathscr{A}}(f)=f$，可得到协变函子 $\operatorname{in}_{\mathscr{A}}: \mathscr{A} \rightarrow \mathscr{B}$，称为包含函子，简写为 $\mathscr{A} \hookrightarrow \mathscr{B}$
        4. 设函子 $F: \mathscr{A} \rightarrow \mathscr{B}$，对任意 $f \in \operatorname{Mor} \mathscr{C}$，令 $F^{\mathrm{op}}\left(f^{\mathrm{op}}\right)=(F(f))^{\mathrm{op}}$，可得到函子 $F^{\mathrm{op}}: \mathscr{A}^{\mathrm{op}} \rightarrow \mathscr{B}^{\mathrm{op}}$，称为 $F$ 的对偶函子
        5. 设函数 $f: X \rightarrow Y$，定义 $P(f): 2^{X} \rightarrow 2^{Y}$ 为 $P(f)(B)=f(B),\ B \subseteq X$，可得到协变函子 $P: \mathbf{Set} \rightarrow \mathbf{Set}$，称为幂等函子
        6. 设 $F: \mathscr{A} \rightarrow \mathscr{B}, G: \mathscr{B} \rightarrow \mathscr{C}$ 为函子，令 $(G \circ F)(f)=G(F(f))$，可得到函子 $G \circ F: \mathscr{A} \rightarrow \mathscr{C}$，称为 $G$ 与 $F$ 的复合函子

2. 设 $1 \leqslant i_{1}<i_{2}<\cdots<i_{r} \leqslant n$ 且 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 和 $\mathscr{B}$ 均为范畴，若函数 $F: \operatorname{Mor} \mathscr{A}_{1} \times \operatorname{Mor} \mathscr{A}_{2} \times \cdots \times \operatorname{Mor} \mathscr{A}_{n} \rightarrow \operatorname{Mor} \mathscr{B}$ 满足
    1. 若 $e_{1}, e_{2}, \cdots, e_{n}$ 分别为 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 的幺态射，则 $F\left(e_{1}, e_{2}, \ldots, e_{n}\right)$ 为 $\mathscr{B}$ 的幺态射
    2. 若 $A_{i}, A_{i}^{\prime}, A_{i}^{\prime \prime} \in \operatorname{Ob} \mathscr{A}_{i}$ 和 $f_{i}, g_{i} \in \operatorname{Mor} \mathscr{A}_{i}(1 \leqslant i \leqslant n)$ 使得
        1. 当 $i \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$ 时恒有 $f_{i} \in \mathscr{A}_{i}\left[A_{i}, A_{i}^{\prime}\right]$ 且 $g_{i} \in \mathscr{A}_{i}\left[A_{i}^{\prime}, A_{i}^{\prime \prime}\right]$
        2. 当 $i \in\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$ 时恒有 $f_{i} \in \mathscr{A}_{i}\left[A_{i}^{\prime \prime}, A_{i}^{\prime}\right]$ 且 $g_{i} \in \mathscr{A}_{i}\left[A_{i}^{\prime}, A_{i}\right]$

        则必有 $F\left(\left\langle g_{1}, g_{2}, \cdots, g_{n}\right\rangle \circ\left\langle f_{1}, f_{2}, \cdots, f_{n}\right\rangle\right)=F\left(\widetilde{g}_{1}, \widetilde{g}_{2}, \cdots, \widetilde{g}_{n}\right) \circ F(\widetilde{f}_{1}, \widetilde{f}_{2}, \cdots, \widetilde{f}_{n})$，其中对任意 $1 \leqslant i \leqslant n$ 都有

        $$
        \begin{aligned}
        &  \widetilde{f}_{i}=\left\{\begin{aligned}
        & f_{i}, & i \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\} \\
        & g_{i}, & \textsf{ 否则 }
        \end{aligned}\right.\\
        & \widetilde{g}_{i}=\left\{\begin{aligned}
        &g_{i}, & i \notin\left\{i_{1}, i_{2}, \cdots, i_{n}\right\} \\
        &f_{i}, & \textsf{ 否则 }
        \end{aligned}\right.
        \end{aligned}
        $$

    则称 $F$ 为一个从 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 到 $\mathscr{B}$ 的 $n$ 元函子，记为 $F: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{B}$ 或 $\mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \xrightarrow{F} \mathscr{B}$

    1. 称 $i_{1}, i_{2}, \cdots, i_{r}$ 为 $F$ 的反变指标
        1. 若 $r=0$，则称 $F$ 为 $n$ 元协变函子
        2. 若 $r=n$，则称 $F$ 为 $n$ 元反变函子
        3. 若 $0<r<n$，则称 $F$ 为 $n$ 元混合型函子
        4. 若 $i \in\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$，则称 $F$ 的第 $i$ 个自然变元是反变的
        5. 若 $1 \leqslant i \leqslant n$ 且 $i \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$，则称 $F$ 的第 $i$ 个自然变元为协变的
    2. 若 $n$ 元函子 $F: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{B}$ 以 $i_{1}, i_{2}, \cdots, i_{r}$ 为反变指标，则必有函数 $\theta_{F}: \operatorname{Ob} \mathscr{A}_{1} \times \cdots \times \operatorname{Ob} \mathscr{A}_{n} \rightarrow \operatorname{Ob} \mathscr{B}$
        1. 若 $A_{1} \in \operatorname{Ob} \mathscr{A}_{1}, \cdots, A_{n} \in \operatorname{Ob} \mathscr{A}_{n}$，则 $F\left(\mathbf{I}_{A_{1}}, \mathbf{I}_{A_{2}}, \cdots, \mathbf{I}_{A_{n}}\right)=\mathbf{I}_{\theta_{F}\left(A_{1}, A_{2}, \cdots, A_{n}\right)}$
        2. 若 $f_{1} \in M$ or $\mathscr{A}_{1}, \cdots, f_{n} \in M$ or $\mathscr{A}_{n}$ 使得
            1. 如果 $i \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$，则 $f_{i} \in \mathscr{A}_{i}\left[A_{i}, A_{i}^{\prime}\right]$
            2. 如果 $i \in\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$，则 $f_{i} \in \mathscr{A}_{i}\left[A_{i}^{\prime}, A_{i}\right]$

        则 $F(f_{1}, f_{2}, \cdots, f_{n}) \in \mathscr{B}[\theta_{F}(\widetilde{A}_{1}, \widetilde{A}_{2}, \cdots, \widetilde{A}_{n}), \theta_{F}(\widetilde{A}_{1}^{\prime}, \widetilde{A}_{2}^{\prime}, \cdots \widetilde{A}_{n}^{\prime})]$，其中对任意 $1 \leqslant i \leqslant n$ 都有

        $$
        \begin{aligned}
        & \widetilde{A}_{i}=\left\{\begin{aligned}
        & A_{i}, & i \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\} \\
        & A_{i}^{\prime}, & \textsf{ 否则 }
        \end{aligned}\right. \\
        & \widetilde{A_{i}^{\prime}}=\left\{\begin{aligned}
        & \dot{A_{i}^{\prime}}, &  \notin\left\{i_{1}, i_{2}, \cdots, i_{r}\right\} \\
        & A_{i}, & \textsf{ 否则 }
        \end{aligned}\right.
        \end{aligned}
        $$

        对任意 $A_1 \in \mathscr{A}_{1}, A_2 \in \mathscr{A}_{2}, \cdots, A_n \in \mathscr{A}_{n}$，将 $\theta_{F}(A_1, A_2, \cdots, A_n)$ 记为 $F(A_1, A_2, \cdots, A_n)$

    3. 设 $F: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{B}$ 为 $n$ 元函子，$G: \mathscr{B} \rightarrow \mathscr{C}$ 为函子，令 $(G \circ F)\left(f_{1}, f_{2}, \cdots, f_{n}\right)=G\left(F\left(f_{1}, f_{2}, \cdots, f_{n}\right)\right)$
        1. $G \circ F: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{C}$ 为 $n$ 元函子
        2. 若 $G$ 为协变函子且 $1 \leqslant i \leqslant n$，则 $G \circ F$ 的第 $i$ 个自变元为协变的，当且仅当 $F$ 的第 $i$ 个自变元为协变的
        3. 若 $G$ 为反变函子且 $1 \leqslant i \leqslant n$，则 $G \circ F$ 的第 $i$ 个自变元为协变的，当且仅当 $F$ 的第 $i$ 个自变元为反变的
    4. 典型多元函子
        1. 设 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 均为范畴且 $1 \leqslant i \leqslant n$，令

            $$
            \prod_{i \leqslant n}\left(f_{1}, f_{2}, \cdots, f_{n}\right)=f_{i},\  f_{i} \in \operatorname{Mor} \mathscr{A}_{i}
            $$

            可得到 $n$ 元协变函子$\Pi_{i}: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{A}_{i}$，称为投影函子

        2. 若对任意函数 $f$ 和 $g$，令 $F(f, g)=f \times g$，可得到二元协变函子 $F: \mathbf{Set} \times \mathbf{Set} \rightarrow \mathbf{Set}$，称为乘积函子

### 2.1.2 函子的性质

## 2.2 自然变换
