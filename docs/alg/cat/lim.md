# 2 极限理论

## 2.1 等子与核
### 2.1.1 等子与余等子
1. 设 $f, g \in[A, B]$
    1. 若 $E \in \operatorname{Ob} \mathscr{C}$ 和 $e \in[E, A]$ 满足
        1. $f \circ e=g \circ e$
        2. 对每个 $D \in \operatorname{Ob} \mathscr{C}$ 以及 $h \in[D, A]$，当 $f \circ h=g \circ h$ 时皆有唯一的 $k \in[D, E]$ 使 $e \circ k=h$

        则称 $\langle E, e\rangle$ 为 $f$ 与 $g$ 的等子，记为 $\operatorname{equ}(f, g)$．通常用 $E(f, g)$ 表示对象 $E$，用 $\alpha(f, g)$ 表示态射 $e$，用 $\beta(f, g, h)$ 表示 $k$

    2. 若 $C \in \operatorname{Ob} \mathscr{C}$ 和 $c \in[B, C]$ 满足
        1. $c \circ f=c \circ g$
        2. 对每个 $D \in \operatorname{Ob} \mathscr{C}$ 以及 $h \in[B, D]$，当 $h \circ f=h \circ g$ 时皆有唯一的 $k \in[C, D]$ 使 $k \circ c=h$

        则称 $\langle c, C\rangle$ 为 $f$ 与 $g$ 的余等子，记为 $\operatorname{coequ}(f, g)$．通常用 $\widetilde{E}(f, g)$ 表示对象 $C$，用 $\widetilde{\alpha}(f, g)$ 表示 $c$

2. 称 $\mathscr{C}$ 有（余）等子当且仅当 $A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f, g \in[A, B]$ 蕴含 $f$ 与 $g$ 的（余）等子存在
    1. $\mathscr{C}$ 有等子当且仅当 $\mathscr{C}^{\text{op}}$ 有余等子
    2. $\mathscr{C}$ 有余等子当且仅当 $\mathscr{C}^{\text{op}}$ 有等子
3. 设 $\mathscr{C}$ 为范畴且 $A, B, D, E \in \operatorname{Ob} \mathscr{C}, f, g \in[A, B], h \in[D, A]$ 且 $f \circ h=g \circ h$
    1. $\alpha(f, g)$ 为单态射
        1. $\alpha(f, g)=\alpha(g, f)$
        2. $f \circ \alpha(f, g)=g \circ \alpha(f, g)$
        3. $\alpha(f, g) \circ \beta(f, g, h)=h$
        4. 若令 $\delta(f)=\beta\left(f, f, \mathbf{I}_{\mathbf{A}}\right)$，则 $\alpha(f, f) \circ \delta(f)=\mathbf{I}_{A}$，因此 $\alpha(f, f)$ 为 $\text{retraction}$
    2. $f=g \leftrightarrow \alpha(f, g)$ 为同构态射 $\leftrightarrow \alpha(f, g)$ 为外态射
    3. $\beta(f, g, h)=\gamma(f, g, h) \circ \delta(f \circ h)$
    4. 若 $K \in \operatorname{Ob} \mathscr{C}$ 且 $k \in[K, A]$，当令 $\gamma(f, g, k)=\beta(f, g, k \circ \alpha(f \circ k, g \circ k))$ 时有 $\alpha(f, g) \circ \gamma(f, g, k)=k \circ \alpha(f \circ k, g \circ k)$
    5. 若 $K \in \operatorname{Ob} \mathscr{C}$ 且 $k \in[K, E(f, g)]$，则 $\beta(f, g, \alpha(f, g) \circ k)=k$

### 2.1.2 积与余积
1. 设 $\mathscr{C}$ 为范畴且 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 为 $\mathscr{C}$ 的对象族
    1. 如果 $P \in \operatorname{Ob} \mathscr{C}$ 和 $\mathscr{C}$ 的态射族 $\left(\pi_{i}\right)_{i \in \mathbf{I}}$ 满足
        1. 若 $i \in \mathbf{I}$，则 $\pi_{i} \in\left[P, A_{i}\right]$
        2. 对任意的 $P^{\prime} \in \operatorname{Ob} \mathscr{C}$ 及 $\mathscr{C}$ 的态射族 $\left(f_{i}\right)_{i \in \mathbf{I}}$，若当 $i \in \mathbf{I}$ 时皆有 $f_{i} \in\left[P^{\prime}, A_{i}\right]$，则必有唯一的 $\varphi \in\left[P^{\prime}, P\right]$ 使得 $f_{i}=\pi_{i} \circ \varphi$

        则称 $\left\langle P,\left(\pi_{i}\right)_{i \in \mathbf{I}}\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的积，并常用 $\mathop{\large ⨅ \normalsize} \left(A_{i}\right)_{i \in \mathbf{I}}$ 或 $\mathop{\large ⨅ \normalsize} A_{i}$ 表示其中的 $P$

        1. 称 $\pi_{i}$ 为 $\mathop{\large ⨅ \normalsize} A_{i}$ 到 $A_{i}$ 的投影
        2. 若 $\mathbf{I}=\{1, \cdots, n\}$，则用 $\left\langle f_{1}, \cdots, f_{n}\right\rangle$ 表示唯一的 $\varphi$

    2. 如果 $Q \in \operatorname{Ob} \mathscr{C}$ 和 $\mathscr{C}$ 的态射族 $\left(\mu_{i}\right)_{i \in \mathbf{I}}$ 满足
        1. 若 $i \in \mathbf{I}$，则 $\mu_{i} \in\left[A_{i}, Q\right]$
        2. 对任意的 $Q^{\prime} \in \operatorname{Ob} \mathscr{C}$ 及 $\mathscr{C}$ 的任意态射族 $\left(g_{i}\right)_{i \in \mathbf{I}}$，若当 $i \in \mathbf{I}$ 时皆有 $g_{i} \in\left[A_{i}, Q^{\prime}\right]$，则必有唯一的 $\psi \in\left[Q, Q^{\prime}\right]$ 使得 $g_{i}=\psi \circ \mu_{i}$

        则称 $\left\langle\left(\mu_{i}\right)_{i \in \mathbf{I}}, Q\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的余积，并常用 $\bigsqcup \left(A_{i}\right)_{i \in \mathbf{I}}$ 或 $\bigsqcup A_{i}$ 表示其中的 $Q$

        1. 称 $\mu_{i}$ 为 $\bigsqcup A_{i}$ 到 $A_{i}$ 的嵌入
        2. 若 $\mathbf{I}=\{1, \cdots, n\}$，则用 $\left[g_{1}, \cdots, g_{n}\right]$ 表示唯一的 $\psi$

2. 设 $\mathscr{C}$ 为范畴，$A, P, Q \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[P, A], g \in[A, Q]$
    1. $A$ 为终止对象当且仅当 $\langle A, \varnothing\rangle$ 为 $\varnothing$ 的积
    2. $A$ 为初始对象当且仅当 $\langle\varnothing, A\rangle$ 为 $\varnothing$ 的余积
    3. $\langle P, f\rangle$ 为 $\{A\}$ 的积当且仅当 $f$ 为同构态射
    4. $\langle g, Q\rangle$ 为 $\{A\}$ 的余积当且仅当 $f$ 为同构态射
3. 若 $\mathscr{C}$ 的任意对象族 $(A_{i})_{i \in \mathbf{I}}$ 的（余）积都存在，则称 $\mathscr{C}$ 有（余）积
    1. 若 $\mathscr{C}$ 的任意有穷对象族 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的（余）积都存在，则称 $\mathscr{C}$ 有有穷（余）积
    2. 若对任意的自然数 $n>0$ 及 $A_{1}, \cdots, A_{n} \in \operatorname{Ob} \mathscr{C}$，对象族 $\left(A_{i}\right)_{1 \leqslant i \leqslant n}$ 的（余）积，则称 $\mathscr{E}$ 有 $n$ 元（余）积
4. 设 $\mathscr{C}$ 为有积范畴，且 $A, A_{1}, A_{2} \in \operatorname{Ob} \mathscr{C}$
    1. 若 $\left\langle A_{1} \times A_{2},\left\{\pi_{1}, \pi_{2}\right\}\right\rangle$ 为 $\left\{A_{1}, A_{2}\right\}$ 的积且 $h \in\left[A, A_{1} \times A_{2}\right]$，则 $\left\langle\pi_{1} \circ h, \pi_{2} \circ h\right\rangle=h$
    2. 若 $\left\langle\left\{\mu_{1}, \mu_{2}\right\}, A_{1} \sqcup A_{2}\right\rangle$ 为 $\left\{A_{1}, A_{2}\right\}$ 的余积且 $k \in\left[A_{1} \sqcup A_{2}, A\right]$，则 $\left[k \circ \mu_{1}, k \circ \mu_{2}\right]=k$
5. 设 $\mathscr{C}$ 为范畴，$A \in \operatorname{Ob} \mathscr{C}$ 且 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 为 $\mathscr{C}$ 的对象族
    1. 设 $\left\langle \mathop{\large ⨅ \normalsize} A_{i},\left(\pi_{i}\right)_{i \in \mathbf{I}}\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的积，若 $h, k \in\left[A, \mathop{\large ⨅ \normalsize} A_{i}\right]$ 使得 $\pi_{i} \circ h=\pi_{i} \circ k$，则 $h=k$
    2. 设 $\left\langle\left(\mu_{i}\right)_{i \in \mathbf{I}}, \bigsqcup A_{i}\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的余积，若 $h, k \in\left[\bigsqcup A_{i}, A\right]$ 使 $h \circ \mu_{i}=k \circ \mu_{i}$，则 $h=k$
6. 设 $\mathscr{C}$ 为范畴，$\left(A_{i}\right)_{i \in \mathbf{I}}$ 为 $\mathscr{C}$ 的对象族，且对任意的 $i, j \in \mathbf{I}$，皆有 $\left[A_{i}, A_{j}\right] \neq \varnothing$
    1. 若 $\left\langle A_{i},\left(\pi_{i}\right)_{i \in \mathbf{I}}\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的积，则每个 $\pi_{i}(i \in \mathbf{I})$ 均为 $\text{retraction}$
    2. 若 $\left\langle\left(\mu_{i}\right)_{i \in \mathbf{I}}, \bigsqcup A_{i}\right\rangle$ 为 $\left(A_{i}\right)_{i \in \mathbf{I}}$ 的余积，则每个 $\mu_{i}(i \in \mathbf{I})$ 均为 $\text{section}$

### 2.1.3 回拉与外推

### 2.1.4 核与余核

## 2.2 锥与极限
