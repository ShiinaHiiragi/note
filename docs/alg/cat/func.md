# 3 函子与自然变换

## 3.1 函子
### 3.1.1 协变函子和反变函子
1. 设 $\mathscr{A}$ 和 $\mathscr{B}$ 为范畴，若 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为函子，则称 $\mathscr{A}$ 为 $F$ 的定义域，$\mathscr{B}$ 为 $F$ 的值域
    1. 如果函数 $F: \operatorname{Mor} \mathscr{A} \rightarrow \mathrm{Mor} \mathscr{B}$ 满足
        1. 若 $e$ 为 $\mathscr{A}$ 的幺态射，则 $F(e)$ 为 $\mathscr{B}$ 的幺态射
        2. 若 $f \in \mathscr{A}[A, B]$，且 $g \in \mathscr{A}[B, C]$，则 $F(g \circ f)=F(g) \circ F(f)$

        则称 $F$ 为一个从 $\mathscr{A}$ 到 $\mathscr{B}$ 的协变函子，记为 $F: \mathscr{A} \rightarrow \mathscr{B}$ 或 $\mathscr{A} \xrightarrow{F} \mathscr{B}$

    2. 如果函数 $F: \operatorname{Mor} \mathscr{A} \rightarrow \mathrm{Mor} \mathscr{B}$ 满足
        1. 若 $e$ 为 $\mathscr{A}$ 的幺态射，则 $F(e)$ 为 $\mathscr{B}$ 的幺态射
        2. 若 $f \in \mathscr{A}[A, B]$，且 $g \in \mathscr{A}[B, C]$，则 $F(g \circ f)=F(f) \circ F(g)$

        则称 $F$ 为一个从 $\mathscr{A}$ 到 $\mathscr{B}$ 的反变函子，记为 $F: \mathscr{A} \rightarrow \mathscr{B}$ 或 $\mathscr{A} \xrightarrow{F} \mathscr{B}$

    协变函子和反变函子统称为函子；称映射到自身的函子为自函子

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

### 3.1.2 多元函子
1. 设 $1 \leqslant i_{1}<i_{2}<\cdots<i_{r} \leqslant n$ 且 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 和 $\mathscr{B}$ 均为范畴，若函数 $F: \operatorname{Mor} \mathscr{A}_{1} \times \operatorname{Mor} \mathscr{A}_{2} \times \cdots \times \operatorname{Mor} \mathscr{A}_{n} \rightarrow \operatorname{Mor} \mathscr{B}$ 满足
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

    则称 $F$ 为一个从 $\mathscr{A}_{1}, \mathscr{A}_{2}, \cdots, \mathscr{A}_{n}$ 到 $\mathscr{B}$ 的 $n$ 元函子，记为 $F: \mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \rightarrow \mathscr{B}$ 或 $\mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n} \xrightarrow{F} \mathscr{B}$，并称 $i_{1}, i_{2}, \cdots, i_{r}$ 为 $F$ 的反变指标

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

5. 设 $\mathscr{C}$ 为一个局部小范畴
    1. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则令 $\operatorname{hom}_{\mathscr{C}}(A, B)=[A, B]$
    2. 若 $f \in[A, B]$ 且 $g \in[C, D]$，则定义函数 $\operatorname{hom}_{\mathscr{C}}(f, g):[B, C] \rightarrow[A, D]$ 为对任意 $\varphi \in[B, C]$ 有 $\operatorname{hom}_{\mathscr{C}}(f, g)(\varphi)=g \circ \varphi \circ f$

    不引起歧义时，常把 $\mathrm{hom}_{\mathscr{C}}$ 简写为 $\mathrm{hom}$

    1. 设 $\mathscr{C}$ 为一个局部小范畴
        1. $\operatorname{hom}: \mathscr{C} \times \mathscr{C} \rightarrow \mathbf{Set}$ 为二元混合型函子
        2. $\operatorname{hom}$ 关于第一个自变元为反变的，关于第二个自变元为协变的
    2. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，分别定义 $h_{A}$ 与 $h^{B}$ 为

        $$
        \begin{aligned}
        h_{A}(B) & =\operatorname{hom}(A, B) & & A \in \operatorname{Ob} \mathscr{C} \\
        h_{A}(g) & =\operatorname{hom}\left(\mathbf{I}_{A}, g\right) & & g \in \operatorname{Mor} \mathscr{C} \\[0.5em]
        h^{B}(A) & =\operatorname{hom}(A, B) & & A \in \operatorname{Ob} \mathscr{C} \\
        h^{B}(f) & =\operatorname{hom}\left(f, \mathbf{I}_{B}\right) & & f \in \operatorname{Mor\mathscr {C}}
        \end{aligned}
        $$

        1. $h_{A}: \mathscr{C} \rightarrow \mathbf{Set}$ 为协变函子，$h^{B}: \mathscr{C} \rightarrow \mathbf{Set}$ 为反变函子
        2. 若 $f \in[A, B]$，则 $h_{A}(f)\left(\mathbf{I}_{A}\right)=f=h^{B}(f)\left(\mathbf{I}_{B}\right)$
        3. 若 $f, g \in [C, D]$，则 $f=g \leftrightarrow \forall A \in \operatorname{Ob} \mathscr{C}: h_{A}(f)=h_{A}(g) \leftrightarrow \forall B \in \operatorname{Ob} \mathscr{C}: h^{B}(f)=h^{B}(g)$
        4. 设 $f \in[C, D]$
            1. $f$ 为单态射当且仅当对每个 $A \in \operatorname{Ob} \mathscr{C}$，皆有 $h_{A}(f)$ 为单射
            2. $f$ 为外态射当且仅当对每个 $B \in \operatorname{Ob} \mathscr{C}$，皆有 $h^{B}(f)$ 为单射
        5. 设 $A \in \operatorname{Ob} \mathscr{C}$
            1. $A$ 为终止对象当且仅当对每个 $B \in \operatorname{Ob} \mathscr{C}$ 都有 $h_{B}(A)$ 为单元素集合
            2. $A$ 为初始对象当且仅当对每个 $B \in \operatorname{Ob} \mathscr{C}$ 都有 $h^{B}(A)$ 为空集

    3. 设 $\mathscr{C}$ 为局部小范畴且 $\langle\mathcal{D}, \Gamma\rangle$ 为 $\mathscr{C}$ 中一个图
        1. 若 $\langle L, \tau\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的锥，则 $\varprojlim\langle\mathcal{D}, \Gamma\rangle=\langle L, \tau\rangle$ 当且仅当对每个 $A \in \operatorname{Ob} \mathscr{C}$ 有 $\varprojlim \left\langle\mathcal{D}, h_{A} \circ \Gamma\right\rangle=\left\langle h_{A}(L), h_{A} \circ \tau\right\rangle$
        2. 若 $\langle\tau, L\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的余锥，则 $\varinjlim \langle\mathcal{D}, \Gamma\rangle=\langle\tau, L\rangle$ 当且仅当对每个 $B \in \operatorname{Ob} \mathscr{C}$ 有 $\varinjlim\left\langle\mathcal{D}, h^{B} \circ \Gamma\right\rangle=\left\langle h^{B} \circ \tau, h^{B}(L)\right\rangle$
    4. 设 $\mathscr{A}, \mathscr{B}$ 为范畴且 $\mathscr{C}$ 为局部小范畴，$F: \mathscr{A} \rightarrow \mathscr{C}$ 和 $G: \mathscr{A} \rightarrow \mathscr{C}$ 是函子．令

        $$
        \begin{aligned}
        \operatorname{hom}(F, G)(A, B)&=\operatorname{hom}(F(A), G(B)) & A \in \operatorname{Ob} \mathscr{A} \textsf{ 且 } B \in \operatorname{Ob} \mathscr{B} \\
        \operatorname{hom}(F, G)(f, g)&=\operatorname{hom}(F(f), G(g)) & f \in \operatorname{Mor} \mathscr{A} \textsf{ 且 } g \in \operatorname{Mor} \mathscr{B}
        \end{aligned}
        $$

        则可得到二元函子 $\operatorname{hom}(F, G): \mathscr{A} \times \mathscr{B} \rightarrow \mathbf{Set}$ 是 $\operatorname{hom}$ 的推广．此时令

        $$
        \begin{aligned}
        h_{F}&=\operatorname{hom}\left(F, I_{\mathscr{C}}\right) \\
        h^{G}&=\operatorname{hom}\left(I_{\mathscr{C}}, G\right)
        \end{aligned}
        $$

        则 $h_{F}: \mathscr{A} \times \mathscr{C} \rightarrow \mathbf{Set}$ 与 $h^{G}: \mathscr{C} \times \mathscr{B} \rightarrow \mathbf{Set}$ 均为二元函子

### 3.1.3 函子的性质
1. 设 $\mathscr{A}$ 和 $\mathscr{B}$ 均为范畴，$F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子
    1. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子，$P$ 为关于态射的某种性质
        1. $F$ 保持 $P$：若 $f \in \operatorname{Mor} \mathscr{A}$ 具有 $P$，则 $F(f)$ 也具有 $P$
        2. $F$ 反射 $P$：若 $f \in \operatorname{Mor} \mathscr{A}$ 使 $F(f)$ 具有 $P$，则 $f$ 也具有 $P$

        易知协变函子 $F$ 保持幺态射，$\text{section}$，$\text{retraction}$，同构态射以及范畴中图的交换性

    2. 设 $A, B \in \operatorname{Ob} \mathscr{A}$，定义函数 $F(A, B): \mathscr{A}[A, B] \rightarrow \mathscr{B}[F(A), F(B)]$ 为 $\forall f \in \mathscr{A}[A, B]: F(A, B)(f)=F(f)$
        1. 若每个 $F(A, B)$ 均为单射，则称 $F$ 为忠信的
        2. 若每个 $F(A, B)$ 均为满射，则称 $F$ 为完全的
        3. 若函数 $F: \operatorname{Mor} \mathscr{A} \rightarrow M$ or $\mathscr{B}$ 为单射，则称 $F$ 为嵌入函子
        4. 若对每个 $B \in \operatorname{Ob} \mathscr{B}$ 皆有 $A \in \operatorname{Ob} \mathscr{A}$ 使 $F(A) \simeq B$，则称 $F$ 为稠密的

2. 设协变函子 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为忠信的
    1. 如果 $f, g \in \mathscr{A}[A, B]$ 使 $F(f)= F(g)$，则 $f=g$
    2. $F$ 反射单态射、外态射、双态射、常态射、余常态射及范畴 $\mathscr{B}$ 中图的交换性
    3. 若 $F$ 还是完全的，则 $F$ 反射 $\text{section}$，$\text{retraction}$ 和同构态射
3. 设 $\mathscr{C}$ 为范畴且 $P, Q \in \operatorname{Ob} \mathscr{C}$，若 $h_{P}$ 保持外态射，则称 $P$ 为可投影的；若 $h^{Q}$ 保持外态射，则称 $Q$ 为可注入的
    1. $P$ 为可投影的当且仅当对每个外态射 $f \in[B, C]$ 及任意的 $g \in[P, C]$，皆有 $h \in[P, B]$ 使 $f \circ h=g$
    2. $Q$ 为可注入的当且仅当对每个外态射 $f \in[C, B]$ 及任意的 $g \in[C, Q]$，皆有 $h \in[B, Q]$ 使 $h \circ f=g$
4. 设 $\mathscr{C}$ 为范畴且 $S, C \in \operatorname{Ob} \mathscr{C}$，若 $h_{S}$ 为忠信函子，则称 $S$ 为 $\mathscr{C}$ 的分离子；若 $h^{C}$ 为忠信函子，则称 $C$ 为 $\mathscr{C}$ 的余分离子
    1. $S$ 为分离子当且仅当若 $f, g \in[A, B]$ 使 $f \neq g$，则有 $h \in[S, A]$ 使 $f \circ h \neq g \circ h$
    2. $C$ 为余分离子当且仅当若 $f, g \in[A, B]$ 使 $f \neq g$，则有 $h \in[B, C]$ 使 $h \circ f \neq h \circ g$

## 3.2 自然变换
### 3.2.1 自然变换的性质
1. 设 $\mathscr{A}$ 和 $\mathscr{B}$ 均为范畴，$F: \mathscr{A} \rightarrow \mathscr{B}$ 和 $G: \mathscr{A} \rightarrow \mathscr{B}$ 均为协变函子．若函数 $\alpha: \operatorname{Ob} \mathscr{A} \rightarrow \operatorname{Mor} \mathscr{B}$ 满足
    1. 若 $A \in \operatorname{Ob} \mathscr{A}$，则 $\alpha(A) \in \mathscr{B}[F(A), G(A)]$
    2. 若 $A, A^{\prime} \in \operatorname{Ob} \mathscr{A}$ 且 $f \in \mathscr{A}\left[A, A^{\prime}\right]$，则 $G(f) \circ \alpha(A)=\alpha\left(A^{\prime}\right) \circ F(f)$

    则称 $\alpha$ 为一个从 $F$ 到 $G$ 的自然变换，记为 $\alpha: F \rightarrow G$ 或 $F \xrightarrow{\alpha} G$．若 $A \in \operatorname{Ob} \mathscr{A}$ 蕴含 $\alpha(A)$ 为同构态射，则称 $\alpha$ 为自然同构

    1. 若存在自然同构 $\alpha: F \rightarrow G$，则称 $F$ 自然同构于 $G$ 或 $F$ 与 $G$ 自然同构，记为 $F \cong G$
    2. 若 $F: \mathscr{A} \rightarrow \mathscr{B}$ 和 $G: \mathscr{A} \rightarrow \mathscr{B}$ 均为协变函子，则自然变换 $\alpha: F \rightarrow G$ 为自然同构当且仅当有唯一的自然变换 $\beta: G \rightarrow F$ 使得

        $$
        \begin{aligned}
        & \alpha(A) \circ \beta(A)=\mathbf{I}_{G(A)} \\
        & \beta(A) \circ \alpha(A)=\mathbf{I}_{F(A)}
        \end{aligned} \quad  A \in \operatorname{Ob} \mathscr{A}
        $$

    3. 设 $F: \mathscr{A} \rightarrow \mathscr{B}, G: \mathscr{A} \rightarrow \mathscr{B}$ 和 $H: \mathscr{A} \rightarrow \mathscr{B}$ 均为协变函子且 $\alpha: F \rightarrow G$ 和 $\beta: G \rightarrow H$ 为自然变换．若令

        $$
        \forall A \in \operatorname{Ob} \mathscr{A}: (\beta \circ \alpha)(A)=\beta(A) \circ \alpha(A)
        $$

        则 $\beta \circ \alpha: F \rightarrow H$ 为自然变换，称为 $\alpha$ 与 $\beta$ 的复合

    4. 设 $\mathscr{A}$ 和 $\mathscr{B}$ 为范畴，$F: \mathscr{A} \rightarrow \mathscr{B}$ 和 $G: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子且 $\alpha: F \rightarrow G$ 为自然变换．若自然变换 $\beta: G \rightarrow F$ 使得

        $$
        \alpha \circ \beta=\mathbf{I}_{G} \wedge \beta \circ \alpha=\mathbf{I}_{F}
        $$

        则称 $\beta$ 为 $\alpha$ 的逆自然变换，简称 $\alpha$ 的逆．如果有自然变换 $\beta: G \rightarrow F$ 为 $\alpha$ 的逆，则称 $\alpha$ 有逆

2. 设 $F, G, H, K$ 均为从 $\mathscr{A}$ 到 $\mathscr{B}$ 的协变函子，$\alpha: F \to G, \beta: G \to H, \gamma: H \to K$ 为自然变换
    1. $\gamma \circ(\beta \circ \alpha)=(\gamma \circ \beta) \circ \alpha$
    2. $\alpha \circ \mathbf{I}_{F}=\alpha=\mathbf{I}_{G} \circ \alpha$
    3. $\alpha$ 有逆当且仅当 $\alpha$ 为自然同构
        1. 若 $\alpha$ 有逆，则 $\alpha$ 的逆必唯一，常用 $\alpha^{-1}$ 表示
        2. 若 $\alpha$ 有逆，则 $\alpha^{-1}$ 也有逆，且 $\left(\alpha^{-1}\right)^{-1}=\alpha$ 
        3. 若 $\alpha$ 和 $\beta$ 都有逆，则 $\beta \circ \alpha$ 有逆，且 $(\beta \circ \alpha)^{-1}=\alpha^{-1} \circ \beta^{-1}$
3. 若 $\mathscr{A}$ 和 $\mathscr{B}$ 均为小范畴
    1. 以从 $\mathscr{A}$ 到 $\mathscr{B}$ 的协变函子为对象
    2. 以协变函子之间的自然变换为态射

    构成的范畴称为从 $\mathscr{A}$ 到 $\mathscr{B}$ 的协变函子范畴，记为 $\mathscr{B}^{\mathscr{A}}$ 或 $\operatorname{Funct}(\mathscr{A}, \mathscr{B})$

    1. 称 $\operatorname{Funct}(\mathscr{A}, \mathscr{A})$ 为 $\mathscr{A}$ 上的自函子范畴
    2. 称以全体小范畴之间的协变函子为对象构成一个范畴为小范畴的协变函子范畴，记为 $\text{Funct}$

4. 任意协变函子 $F: \mathscr{A} \rightarrow \mathscr{B}$ 都可诱导出图同态 $F^{*}: \mathbf{G}(\mathscr{A}) \rightarrow \mathbf{G}(\mathscr{B})$

    $$
    \begin{aligned}
    F^{*}(A)&=F(A) & A \in \operatorname{Ob} \mathscr{A} \\
    F^{*}(f)&=F(f) & f \in \operatorname{Mor} \mathscr{A}
    \end{aligned}
    $$

    从而获得范畴 $\mathscr{B}$ 中一个图 $\left\langle\mathbf{G}(\mathscr{A}), F^{*}\right\rangle$，常用 $\mathcal{D}_{F}$ 表示

    1. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子
        1. $\langle L, \lambda\rangle$ 为 $\mathcal{D}_{F}$ 的锥当且仅当 $\lambda:$ Const $_{L} \rightarrow F$ 为自然变换，称 $\varprojlim \mathcal{D}_{F}$ 为 $F$ 的极限，记为 $\varprojlim F$
        2. $\langle\tau, K\rangle$ 为 $\mathcal{D}_{F}$ 的余锥当且仅当 $\tau: F \rightarrow$ Const $_{K}$ 为自然变换，称 $\varinjlim \mathcal{D}_{F}$ 为 $F$ 的余极限，记为 $\varinjlim F$
    2. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子
        1. 若 $\mathscr{B}$ 有积和等子，则 $\varprojlim F$ 存在
        2. 若 $\mathscr{B}$ 有余积和余等子，则 $\varinjlim F$ 存在
    3. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子且 $\mathscr{B}$ 为局部小范畴
        1. $\varprojlim F=\langle L, \lambda\rangle$ 当且仅当对每个 $B \in \operatorname{Ob} \mathscr{B}$ 皆有 $\varprojlim \left(h_{B} \circ F\right)=\left\langle h_{B}(L), h_{B} \tau\right\rangle$
        2. $\varinjlim F=\langle\tau, K\rangle$ 当且仅当对每个 $B \in \operatorname{Ob} \mathscr{B}$ 皆有 $\varinjlim \left(h^{B} \circ F\right)=\left\langle h^{B} \tau, h^{B}(K)\right\rangle$
    4. 设 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子，$\mathscr{B}$ 为局部小范畴且 $L \in \operatorname{Ob} \mathscr{B}$
        1. 若 $\lambda:$ Const $_{L} \rightarrow F$ 为自然变换，则 $\varprojlim F=\langle L, \lambda\rangle$ 当且仅当 $B \in \operatorname{Ob} \mathscr{B}$ 蕴含 $\varprojlim \left(h_{B} \circ F\right)=\left\langle h_{B}(L), h_{B} \lambda\right\rangle$
        2. 若 $\tau: F \rightarrow$ Const $_{L}$ 为自然变换，则 $\varinjlim F=\langle\tau, L\rangle$ 当且仅当 $B \in \operatorname{Ob} \mathscr{B}$ 蕴含 $\varinjlim \left(h^{B} \circ F\right)=\left\langle h^{B} \tau, h^{B}(L)\right\rangle$

5. 若 $F: \mathscr{A} \rightarrow \mathscr{B}$ 为协变函子，则下列条件等价
    1. $F$ 为忠信的、完全的和稠密的
    2. 存在协变函子 $G: \mathscr{B} \rightarrow \mathscr{A}$ 使得 $F \circ G \cong I_{\mathscr{B}}$ 且 $G \circ F=\mathbf{I}_{\mathscr{A}}$
    3. 存在协变函子 $G: \mathscr{B} \rightarrow \mathscr{A}$ 及自然同构 $\eta: \mathbf{I}_{\mathscr{A}} \rightarrow G \circ F$ 和 $\varepsilon: F \circ G \rightarrow \mathbf{I}_{\mathscr{B}}$ 使得 $F \eta=(\varepsilon F)^{-1}$ 且 $G \varepsilon=(\eta G)^{-1}$

### 3.2.2 自然变换的积
1. 设 $\mathscr{A}, \mathscr{B}, \mathscr{C}$ 均为范畴，协变函子 $F, G, H, K$ 及自然变换 $\alpha$ 和 $\beta$ 如图所示

    <figure markdown>
        ![](../assets/prod_1.svg)
        <style> img[src$="prod_1.svg"] { width: 270px; } </style>
    </figure>

    1. 若定义函数 $\beta * \alpha: \operatorname{Ob} \mathscr{A} \rightarrow \operatorname{Mor} \mathscr{C}$ 为

        $$
        \forall A \in \operatorname{Ob} \mathscr{A}: (\beta * \alpha)(A)=\beta(G(A)) \circ H(\alpha(A))
        $$

        则 $\beta * \alpha: H \circ F \rightarrow K \circ G$ 为自然变换，称为 $\alpha$ 与 $\beta$ 的 $*-$积

    2. 若 $A \in \operatorname{Ob} \mathscr{A}$，则 $(\beta * \alpha)(A)=K(\alpha(A)) \circ \beta(F(A))$

2. 设范畴、协变函子和自然变换的关系如图所示

    <figure markdown>
        ![](../assets/prod_2.svg)
        <style> img[src$="prod_2.svg"] { width: 380px; } </style>
    </figure>

    1. 结合律：$(\delta * \eta) * \varepsilon=\delta *(\eta * \varepsilon)$
    2. 若对任意 $B \in \operatorname{Ob} \mathscr{B}, A \in \operatorname{Ob} \mathscr{A}$，令 $H \eta(B)=H(\eta(B)), \eta S(A)=\eta(S(A))$，则 $H \eta=\mathbf{I}_{H} * \eta$ 且 $\eta S=\eta * \mathbf{I}_{S}$

3. 设范畴、协变函子和自然变换的关系如图所示

    <figure markdown>
        ![](../assets/prod_3.svg)
        <style> img[src$="prod_3.svg"] { width: 270px; } </style>
    </figure>

    则 $(\nu \circ \mu) *(\eta \circ \varepsilon)=(\nu * \eta) \circ(\mu * \varepsilon)$

4. 设范畴、协变函子和自然变换的关系如图所示

    <figure markdown>
        ![](../assets/prod_4.svg)
        <style> img[src$="prod_4.svg"] { width: 610px; } </style>
    </figure>

    1. $(G \circ F) \alpha=G(F \alpha)$
    2. $\alpha(K \circ L)=(\alpha K) L$
    3. $\mathbf{I}_{U} K=\mathbf{I}_{U \circ K}$ 且 $F \mathbf{I}_{U}=\mathbf{I}_{F \circ U}$
    4. $F(\alpha K)=(F \alpha) K$
    5. $F(\beta \circ \alpha)=F \beta \circ F \alpha$
    6. $(\beta \circ \alpha) K=\beta K \circ \alpha K$
    7. $F(\beta \circ \alpha) K=F \beta K \circ F \alpha K$ 
    8. $\tau V \circ F \alpha=H \alpha \circ \tau U$
