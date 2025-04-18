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
1. 设 $\mathscr{C}$ 为范畴且 $f_{1}, f_{2}, g_{1}, g_{2} \in \operatorname{Mor} \mathscr{C}$
    1. 设 $f_{1} \circ g_{2}=f_{2} \circ g_{1}$，若 $g_{1}^{\prime}, g_{2}^{\prime} \in \operatorname{Mor} \mathscr{C}$ 使 $f_{1} \circ g_{2}^{\prime}=f_{2} \circ g_{1}^{\prime}$，则有唯一的 $\varphi \in \operatorname{Mor} \mathscr{C}$ 使

        $$
        g_{1}^{\prime}=g_{1} \circ \varphi \wedge g_{2}^{\prime}=g_{2} \circ \varphi
        $$

        则称 $\left\langle g_{1}, g_{2}\right\rangle$ 为 $f_{1}$ 与 $f_{2}$ 的回拉，记为 $\operatorname{pullback}\left(f_{1}, f_{2}\right)$

    2. 设 $g_{2} \circ f_{1}=g_{1} \circ f_{2}$，若 $g_{1}^{\prime}, g_{2}^{\prime} \in \operatorname{Mor} \mathscr{C}$ 使 $g_{2}^{\prime} \circ f_{1}=g_{1}^{\prime} \circ f_{2}$，则有唯一的 $\psi \in \operatorname{Mor} \mathscr{C}$ 使

        $$g_{1}^{\prime}=\psi \circ g_{1} \wedge g_{2}^{\prime}=\psi \circ g_{2}
        $$

        则称 $\left\langle g_{1}, g_{2}\right\rangle$ 为 $f_{1}$ 与 $f_{2}$ 的外推，记为 $\operatorname{pushout}\left(f_{1}, f_{2}\right)$

2. 设 $\operatorname{pullback}\left(f_{1}, f_{2}\right)=\left\langle g_{1}, g_{2}\right\rangle$，若 $f_{i}(i=1,2)$ 为单态射，则 $g_{i}$ 也是单态射
3. 设 $\mathscr{C}$ 为范畴，$A, B, C \in \operatorname{Ob} \mathscr{C}, f \in[A, C]$ 且 $g \in[B, C]$．若 $\langle A \times \left.B,\left\{\pi, \pi^{\prime}\right\}\right\rangle$ 为 $\{A, B\}$ 的积且 $\langle E, e\rangle=\mathrm{equ}\left(f \circ \pi, g \circ \pi^{\prime}\right)$，则

    $$
    \operatorname{pullback}(f, g)=\left\langle\pi^{\prime} \circ e, \pi \circ e\right\rangle
    $$

4. 回拉与外推的合成性质：设 $\mathscr{C}$ 是一个范畴
    1. 设 $f \in[B, A], g \in[C, A], h \in[E, C], g^{\prime} \in[D, B], f^{\prime} \in[D, C], h^{\prime} \in[F, D], f^{\prime \prime} \in[F, E]$，若

        $$
        \operatorname{pullback}(f, g)=\left\langle f^{\prime}, g^{\prime}\right\rangle \wedge \operatorname{pullback}\left(h, f^{\prime}\right)= \left\langle h^{\prime}, f^{\prime \prime}\right\rangle
        $$

        则 $\operatorname{pullback} (f, g \circ h)=\left\langle f^{\prime \prime}, g^{\prime} \circ h^{\prime}\right\rangle$

    2. 设 $f \in[A, B], g \in[A, C], h \in[C, E], g^{\prime} \in[B, D], f^{\prime} \in[C, D], h^{\prime} \in[D, F], f^{\prime \prime} \in[E, F]$，若

        $$
        \operatorname{pushout}(f, g)=\left\langle f^{\prime}, g^{\prime}\right\rangle \wedge \operatorname{pushout} \left(h, f^{\prime}\right)= \left\langle h^{\prime}, f^{\prime \prime}\right\rangle
        $$

        则 $\operatorname{pushout} (f, h \circ g)=\left\langle f^{\prime \prime}, h^{\prime} \circ g^{\prime}\right\rangle$

### 2.1.4 核与余核
1. 设范畴 $\mathscr{C}$ 有零对象，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
    1. 称 $\operatorname{equ}\left(f, \mathbf{O}_{A B}\right)$ 为 $f$ 的核，记为 $\operatorname{Ker}(f)$，并用 $\operatorname{ker}(f)$ 表示 $\alpha\left(f, \mathbf{O}_{A B}\right)$
    2. 称 $\operatorname{coequ}\left(f, \mathbf{O}_{A B}\right)$ 为 $f$ 的余核，记为 $\operatorname{Cok}(f)$，并用 $\operatorname{coker}(f)$ 表示 $\widetilde{\alpha}\left(f, \mathbf{O}_{A B}\right)$

    设范畴 $\mathscr{C}$ 有零对象，若每个 $f \in \operatorname{Mor} \mathscr{C}$ 的（余）核均存在，则称 $\mathscr{C}$ 有（余）核

2. 假定范畴 $\mathscr{C}$ 有零对象、核与余核，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
    1. $\operatorname{ker}(f)$ 是单态射，$\operatorname{coker}(f)$ 为外态射
    2. $f \circ \operatorname{ker}(f)=\mathbf{O}_{E B}$ 且 $\operatorname{coker}(f) \circ f=\mathbf{O}_{\mathbf{A E}}$
    3. 若 $h \in \mathscr{C}[D, A]$，则 $f \circ h=\mathbf{O}_{D B}$ 当且仅当有唯一的 $k \in \mathscr{C}[D, E]$ 使 $\operatorname{ker}(f) \circ k=h$

        若 $h \in \mathscr{C}[B, D]$，则 $h \circ f=\mathbf{O}_{A D}$ 当且仅当有唯一的 $k \in \mathscr{C}[\widetilde{E}, D]$ 使 $k \circ \operatorname{coker}(f)=h$

    4. 有唯一的 $m \in \operatorname{Mor} \mathscr{C}$ 使 $f=\operatorname{ker}(\operatorname{coker}(f)) \circ m$；有唯一的 $\widetilde{m} \in \operatorname{Mor} \mathscr{C}$ 使 $f=\widetilde{m} \circ \operatorname{coker}(\operatorname{ker}(f))$
    5. $\operatorname{ker}(f)=\operatorname{ker}(\operatorname{coker}(\operatorname{ker}(f)))$ 与 $\operatorname{coker}(f)=\operatorname{coker}(\operatorname{ker}(\operatorname{coker}(f)))$ 在同构意义下成立

3. 设范畴 $\mathscr{C}$ 有零对象且 $f \in \operatorname{Mor} \mathscr{C}$，若 $h \in \operatorname{Mor} \mathscr{C}$ 使 $f=\operatorname{ker}(h)$（或 $f=\operatorname{coker}(h)$），则称 $f$ 为核态射（或余核态射）
    1. $f$ 为核态射当且仅当在同构意义下有 $f=\operatorname{ker}(\operatorname{coker}(f))$
    2. $f$ 为余核态射当且仅当 $f=\operatorname{coker}(\operatorname{ker}(f))$
    3. 设范畴 $\mathscr{C}$ 有零对象，核和余核．$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
        1. 存在 $q \in \operatorname{Mor} \mathscr{C}$ 使 $f=m \circ q$ 且 $m=\operatorname{ker}(\operatorname{coker}(f))$
        2. 若 $f=m^{\prime} \circ q^{\prime}$ 且 $m^{\prime}$ 为核态射，则有唯一的 $t \in \operatorname{Mor} \mathscr{C}$ 使 $m=m^{\prime} \circ t$ 且 $q^{\prime}=t \circ q$
        3. 若 $\mathscr{C}$ 有等子且每个单态射 $u \in \operatorname{Mor} \mathscr{C}$ 均为核态射，则 $q$ 为外态射

## 2.2 锥与极限
### 2.2.1 锥与余锥
1. 设图 $\mathcal{D} = \left<V, E, \Psi\right>$ 且 $\langle\mathcal{D}, \Gamma\rangle$ 为范畴 $\mathscr{C}$ 中的一个图
    1. 若 $L \in \operatorname{Ob} \mathscr{C}$ 和 $\tau: V \rightarrow \operatorname{Mor} \mathscr{C}$ 满足
        1. 若 $v \in V$，则 $\tau(v) \in\left[L, A_{v}\right]$
        2. 若 $e \in E$ 使 $\Psi(e)=\langle u, v\rangle$，则 $f_{e} \circ \tau(u)=\tau(v)$

        则称 $\langle L, \tau\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的一个锥，记为 $\operatorname{con}_{\mathcal{D}, \Gamma}(L, \tau)$ 或简记为 $\operatorname{con}(L, \tau)$

    2. 若 $L \in \operatorname{Ob} \mathscr{C}$ 和 $\tau: V \rightarrow \operatorname{Mor} \mathscr{C}$ 满足
        1. 若 $v \in V$，则 $\tau(v) \in\left[A_{v}, L\right]$
        2. 若 $e \in E$ 使 $\Psi(e)=\langle u, v\rangle$，则 $\tau(v) \circ f_{e}=\tau(u)$

        则称 $\langle\tau, L\rangle$ 为 $\left<\mathcal{D}, \Gamma\right>$ 的一个余锥，记为 $\operatorname{cocon}_{\mathcal{D}, \Gamma}(\tau, L)$ 或简记为 $\operatorname{cocon}(\tau, L)$

2. 设 $\langle\mathcal{D}, \Gamma\rangle$ 为范畴中的一个图
    1. 设 $\langle L, \tau\rangle$ 和 $\langle X, \alpha\rangle$ 均为 $\langle\mathcal{D}, \Gamma\rangle$ 的锥，若 $h \in[L, X]$ 满足任意 $v \in V$ 均有

        $$
        \alpha(v) \circ h=\tau(v)
        $$

        则称 $h$ 为从 $\operatorname{con}(L, \tau)$ 到 $\operatorname{con}(X, \alpha)$ 的锥态射，记为 $h: \operatorname{con}(L, \tau) \rightarrow \operatorname{con}(X, \alpha)$

    2. 设 $\langle\tau, L\rangle$ 和 $\langle\alpha, X\rangle$ 均为 $\langle\mathcal{D}, \Gamma\rangle$ 的余锥．若 $h \in[L, X]$ 满足任意 $v \in V$ 均有

        $$
        h \circ \tau(v)=\alpha(v)
        $$

        则称 $h$ 为从 $\operatorname{cocon}(\tau, L)$ 到 $\operatorname{cocon}(\alpha, X)$ 的余锥态射，记为 $h: \operatorname{cocon}(\tau, L) \rightarrow \operatorname{cocon}(\alpha, X)$

3. 设 $\langle\mathcal{D}, \Gamma\rangle$ 为范畴 $\mathscr{C}$ 中的一个图。
    1. 若 $\langle L, \tau\rangle,\langle X, \alpha\rangle$ 和 $\langle Y, \beta\rangle$ 都是 $\langle\mathcal{D}, \Gamma\rangle$ 的锥
        1. $\mathbf{I}_{L}: \operatorname{con}(L, \tau) \rightarrow \operatorname{con}(L, \tau)$
        2. 若 $h: \operatorname{con}(L, \tau) \rightarrow \operatorname{con}(X, \alpha)$ 且 $k: \operatorname{con}(X, \alpha) \rightarrow \operatorname{con}(Y, \beta)$，则 $k \circ h: \operatorname{con}(L, \tau) \rightarrow \operatorname{con}(Y, \beta)$
    2. 若 $\langle\tau, L\rangle,\langle\alpha, X\rangle$ 和 $\langle\beta, Y\rangle$ 都是 $\langle\mathcal{D}, \Gamma\rangle$ 的余锥
        1. $\mathbf{I}_{L}: \operatorname{cocon}(\tau, L) \rightarrow \operatorname{cocon}(\tau, L)$
        2. 若 $h: \operatorname{cocon}(\tau, L) \rightarrow \operatorname{cocon}(\alpha, X)$ 且 $k: \operatorname{cocon}(\alpha, X) \rightarrow \operatorname{cocon}(\beta, Y)$，则 $k \circ h: \operatorname{cocon}(\tau, L) \rightarrow \operatorname{cocon}(\beta, Y)$

### 2.2.2 极限与余极限
1. 设 $\langle\mathcal{D}, \Gamma\rangle$ 为范畴 $\mathscr{C}$ 中的一个图
    1. 设 $\langle L, \tau\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的一个锥，若对 $\langle\mathcal{D}, \Gamma\rangle$ 的任意一个锥 $\langle X, \alpha\rangle$，皆有唯一的锥态射

        $$
        h: \operatorname{con}(X, \alpha) \rightarrow \operatorname{con}(L, \tau)
        $$

        则称 $\langle L, \tau\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的一个极限，记为 $\varprojlim \langle\mathcal{D}, \Gamma\rangle$

        1. 若 $\mathscr{C}$ 中每一个图的极限存在，则称 $\mathscr{C}$ 有极限或为完备的
        2. 若 $\mathscr{C}$ 中每一个有穷图的极限存在，则称 $\mathscr{C}$ 有有穷极限或有穷完备的
        3. 若 $\varprojlim \langle\mathcal{D}, \Gamma\rangle=\langle L, \tau\rangle$，则 $(\tau(v))_{v \in V}$ 为整体单态射，即对任意的 $X \in \operatorname{Ob} \mathscr{C}$ 及 $h, k \in[X, L]$，当对每个 $v \in V$ 皆有 $\tau(v) \circ h=\tau(v) \circ k$ 时，必有 $h=k$

    2. 设 $\langle\tau, L\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的一个余锥，若对 $\langle\mathcal{D}, \Gamma\rangle$ 的任意一个余锥 $\langle\alpha, X\rangle$，皆有唯一的余锥态射

        $$
        h: \operatorname{cocon}(\tau, L) \rightarrow \operatorname{cocon}(\alpha, X)
        $$

        则称 $\langle\tau, L\rangle$ 为 $\langle\mathcal{D}, \Gamma\rangle$ 的一个余极限，记为 $\varinjlim \langle\mathcal{D}, \Gamma\rangle$

        1. 若 $\mathscr{C}$ 中每一个图的余极限存在，则称 $\mathscr{C}$ 有余极限或为余完备的
        2. 若 $\mathscr{C}$ 中每一个有穷图的余极限存在，则称 $\mathscr{C}$ 有有穷余极限或有穷余完备的
        3. 若 $\varinjlim \langle\mathcal{D}, \Gamma\rangle=\langle\tau, L\rangle$，则 $(\tau(v))_{v \in V}$ 为整体外态射，即对任意的 $X \in \operatorname{Ob} \mathscr{C}$ 及 $h, k \in[L, X]$，当对每个 $v \in V$ 皆有 $h \circ \tau(v)=k \circ \tau(v)$ 时，必有 $h=k$

2. 设 $\mathscr{C}$ 是一个范畴且 $\mathcal{D} = \left<V, E, \Psi\right>$ 是一个图
    1. 设 $\mathscr{C}$ 有等子且 $\langle\mathcal{D}, \Gamma\rangle$ 为 $\mathscr{C}$ 中一个图．若 $\mathcal{D}_{V}$ 的积和 $\mathcal{D}_{E}$ 的积都存在，则 $\langle\mathcal{D}, \Gamma\rangle$ 的极限必存在
    2. 设 $\mathscr{C}$ 有余等子且 $\langle\mathcal{D}, \Gamma\rangle$ 为 $\mathscr{C}$ 的一个图．若 $\mathcal{D}_{V}$ 的余积和 $\mathcal{D}_{E}$ 的余积都存在，则 $\langle\mathcal{D}, \Gamma\rangle$ 的余极限必存在
3. 设 $\mathscr{C}$ 为范畴
    1. 若 $\mathscr{C}$ 有（余）积和（余）等子，则 $\mathscr{C}$ 为（余）完备的
    2. 若 $\mathscr{C}$ 有有穷（余）积和（余）等子，则 $\mathscr{C}$ 为有穷（余）完备的
    3. 若 $\mathscr{C}$ 有终止对象、二元积和等子，则 $\mathscr{C}$ 为有穷完备的
    4. 若 $\mathscr{C}$ 有初始对象、二元余积和余等子，则 $\mathscr{C}$ 为有穷余完备的
4. 若 $\mathcal{D}$ 为范畴 $\mathscr{A}$ 中的图
    1. 若 $\varprojlim \mathcal{D}=\left\langle L,\left\{\gamma_{A} \mid A \in V\right\}\right\rangle$，则如下结论成立
        1. 设 $X \in \operatorname{Ob} \mathscr{A}$，若 $\sigma, \tau \in \mathscr{A}[X, L]$ 使得 $\forall A \in V: \gamma_{A} \circ \sigma=\gamma_{A} \circ \tau$，则 $\sigma=\tau$，即 $\left(\gamma_{A}\right)_{A \in V}$ 为整体单态射
        2. 若 $\varprojlim \mathcal{D}=\left\langle L^{\prime},\left\{\gamma_{A}^{\prime} \mid A \in V\right\}\right\rangle$，则有唯一的同构态射 $\sigma: L^{\prime} \rightarrow L$ 使得 $\forall A \in V: \gamma_{A} \circ \sigma=\gamma_{A}^{\prime}$
        3. 若有同构态射 $\sigma: L^{\prime} \rightarrow L$ 使得 $\forall A \in V: \gamma_{A} \circ \sigma=\gamma_{A}^{\prime}$，则 $\lim \mathcal{D}=\left\langle L^{\prime},\left\{\gamma_{A}^{\prime} \mid A \in V\right\}\right\rangle$
    2. 若 $\varinjlim \mathcal{D}=\left\langle\left\{\gamma_{A} \mid A \in V\right\}, L\right\rangle$，则如下结论成立
        1. 设 $X \in \operatorname{Ob} \mathscr{A}$，若 $\sigma, \tau \in \mathscr{A}[X, L]$ 使得 $\forall A \in V: \sigma \circ \gamma_{A}=\tau \circ \gamma_{A}$，则 $\sigma=\tau$，即 $\left(\gamma_{A}\right)_{A \in V}$ 为整体外态射
        2. 若 $\varinjlim \mathcal{D}=\left\langle\left\{\gamma_{A}^{\prime} \mid A \in V\right\}, L^{\prime}\right\rangle$，则有唯一的同构态射 $\sigma: L \rightarrow L^{\prime}$ 使得 $\forall A \in V: \sigma \circ \gamma_{A}=\gamma_{A}^{\prime}$
        3. 若有同构态射 $\sigma: L \rightarrow L^{\prime}$ 使得 $\forall A \in V: \sigma \circ \gamma_{A}=\gamma_{A}^{\prime}$，则 $\varinjlim \mathcal{D}=\left\langle\left\{\gamma_{A}^{\prime} \mid A \in V\right\}, L^{\prime}\right\rangle$
