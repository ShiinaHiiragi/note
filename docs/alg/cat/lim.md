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
    1. 设 $f_{1} \circ g_{2}=f_{2} \circ g_{1}$，若 $g_{1}^{\prime}, g_{2}^{\prime} \in \operatorname{Mor} \mathscr{C}$ 使 $f_{1} \circ g_{2}^{\prime}=f_{2} \circ g_{1}^{\prime}$，则有唯一的 $\varphi \in \operatorname{Mor} \mathscr{C}$ 使 $g_{1}^{\prime}=g_{1} \circ \varphi$ 且 $g_{2}^{\prime}=g_{2} \circ \varphi$，则称 $\left\langle g_{1}, g_{2}\right\rangle$ 为 $f_{1}$ 与 $f_{2}$ 的回拉，记为 $\operatorname{pullback}\left(f_{1}, f_{2}\right)$
    2. 设 $g_{2} \circ f_{1}=g_{1} \circ f_{2}$，若 $g_{1}^{\prime}, g_{2}^{\prime} \in \operatorname{Mor} \mathscr{C}$ 使 $g_{2}^{\prime} \circ f_{1}=g_{1}^{\prime} \circ f_{2}$，则有唯一的 $\psi \in \operatorname{Mor} \mathscr{C}$ 使 $g_{1}^{\prime}=\psi \circ g_{1}$ 且 $g_{2}^{\prime}=\psi \circ g_{2}$，则称 $\left\langle g_{1}, g_{2}\right\rangle$ 为 $f_{1}$ 与 $f_{2}$ 的外推，记为 $\operatorname{pushout}\left(f_{1}, f_{2}\right)$
2. 设 $\operatorname{pullback}\left(f_{1}, f_{2}\right)=\left\langle g_{1}, g_{2}\right\rangle$，若 $f_{i}(i=1,2)$ 为单态射，则 $g_{i}$ 也是单态射
3. 设 $\mathscr{C}$ 为范畴，$A, B, C \in \operatorname{Ob} \mathscr{C}, f \in[A, C]$ 且 $g \in[B, C]$．若 $\langle A \times \left.B,\left\{\pi, \pi^{\prime}\right\}\right\rangle$ 为 $\{A, B\}$ 的积且 $\langle E, e\rangle=\mathrm{equ}\left(f \circ \pi, g \circ \pi^{\prime}\right)$，则

    $$
    \operatorname{pullback}(f, g)=\left\langle\pi^{\prime} \circ e, \pi \circ e\right\rangle
    $$

4. 回拉与外推的合成性质：设 $\mathscr{C}$ 是一个范畴
    1. 设 $f \in[B, A], g \in[C, A], h \in[E, C], g^{\prime} \in[D, B], f^{\prime} \in[D, C], h^{\prime} \in[F, D], f^{\prime \prime} \in[F, E]$，若 $\operatorname{pullback}(f, g)=\left\langle f^{\prime}, g^{\prime}\right\rangle$ 且 $\operatorname{pullback}\left(h, f^{\prime}\right)= \left\langle h^{\prime}, f^{\prime \prime}\right\rangle$，则 $\operatorname{pullback} (f, g \circ h)=\left\langle f^{\prime \prime}, g^{\prime} \circ h^{\prime}\right\rangle$
    2. 设 $f \in[A, B], g \in[A, C], h \in[C, E], g^{\prime} \in[B, D], f^{\prime} \in[C, D], h^{\prime} \in[D, F], f^{\prime \prime} \in[E, F]$，若 $\operatorname{pushout}(f, g)=\left\langle f^{\prime}, g^{\prime}\right\rangle$ 且 $\operatorname{pushout} \left(h, f^{\prime}\right)= \left\langle h^{\prime}, f^{\prime \prime}\right\rangle$，则 $\operatorname{pushout} (f, h \circ g)=\left\langle f^{\prime \prime}, h^{\prime} \circ g^{\prime}\right\rangle$

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
