# 1 图与范畴

## 1.1 范畴图
1. 若 $O, M$ 均为类且存在函数 $\Phi: M \rightarrow O^{2}$ 使得 $G = (O, \Phi[O])$ 是类上的有向图，则称 $\mathcal G = \left<O, M, \Phi\right>$ 为范畴图，简称为图
    1. 称 $O$ 为 $\mathcal{G}$ 的结点类，其元素称为 $\mathcal{G}$ 的结点；称 $M$ 为 $\mathcal{G}$ 的箭头类，其元素称为 $\mathcal{G}$ 的箭头
    2. 若 $f \in M$，定义 $\operatorname{source}: M \rightarrow O$ 与 $\operatorname{target}: M \rightarrow O$ 是使得 $\Phi(f) = (\operatorname{source}(f), \operatorname{target}(f))$ 的映射
        1. 称 $\operatorname{source}(f)$ 为 $f$ 的源，$\operatorname{target}(f)$ 为 $f$ 的靶，也可将范畴图记作 $\mathcal G = \left<O, M, \operatorname{source}, \operatorname{target}\right>$
        2. 若 $f \in M$ 使得 $A=\operatorname{source}(f)$ 且 $B=\operatorname{target}(f)$，则称 $f$ 为从 $A$ 到 $B$ 的箭头，记为 $f: A \rightarrow B$ 或 $A \xrightarrow{f} B$
        3. 若 $A, B \in O$，令 $\mathcal{G}[A, B]=\{f \in M \mid \operatorname{source}(f)=A, \operatorname{target}(f)=B\}$，通常简写为 $[A, B]$

2. 特殊的范畴图
    1. 若 $O=\varnothing$，则 $\mathcal{G}=\langle\varnothing, \varnothing, \varnothing\rangle$，则称 $\mathcal{G}$ 为空图
    2. 若 $M=\varnothing$，则 $\mathcal{G}=\langle O, \varnothing, \varnothing\rangle$，则称 $\mathcal{G}$ 为离散图
    3. 若 $O$ 和 $M$ 均为集合，则称 $\mathcal{G}$ 为小图
        1. 若 $O$ 和 $M$ 均为有穷集合，则称 $\mathcal{G}$ 为有穷图
        2. 若当 $A, B \in O$ 时，$[A, B]$ 均为集合，则称 $\mathcal{G}$ 为局部小图
    4. 若 $f \in O$，使 $\operatorname{source}(f)=\operatorname{target}(f)$，则称 $f$ 为 $\mathcal{G}$ 的自圈
    5. 若 $\mathcal{G}$ 无自圈，且当 $A, B \in O$ 时皆有 $|[A, B]| \leqslant 1$，则称 $\mathcal{G}$ 为简单图
3. 图同态：设图 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$ 且 $\mathcal{G}^{\prime}=\langle O^{\prime}, M^{\prime}, \operatorname{source}', \operatorname{target}'\rangle$，设 $\Phi_{0}: O \rightarrow O^{\prime}$ 和 $\Phi_{1}: M \rightarrow M^{\prime}$
    1. 若 $\Phi_{0} \circ \mathrm{source}=\mathrm{source}' \circ \Phi_{1}$ 且 $\Phi_{0} \circ \mathrm{target}=\mathrm{target}^{\prime} \circ \Phi_{1}$，则称 $\left\langle\Phi_{0}, \Phi_{1}\right\rangle$ 为从 $\mathcal{G}$ 到 $\mathcal{G}^{\prime}$ 的图同态，记为 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$ 或 $\mathcal{G} \simeq \mathcal{G}^{\prime}$
    2. 设 $\Phi_{1}: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$，若 $\Phi_{0}$ 和 $\Phi_{1}$ 均为双射，则称 $\Phi$ 为图同构，记为 $\mathcal{G} \cong \mathcal{G}^{\prime}$

    设 $\Phi=\left\langle\Phi_{0}, \Phi_{1}\right\rangle$，对任意 $A\in O, f \in M$，规定 $\Phi(A) =\Phi_{0}(A), \Phi(f) =\Phi_{1}(f)$

    1. 对图 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$，取 $I_{\mathcal{G}}=\left\langle I_{O}, I_{M}\right\rangle$，则 $I_{\mathcal{G}}: \mathcal{G} \rightarrow \mathcal{G}$，称 $I_{\mathcal{G}}$ 为 $\mathcal{G}$ 的恒等图同态（同构）
    2. 设 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}, \Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}^{\prime \prime}$ 且 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$，若令

        $$
        \begin{aligned}
        (\Psi \circ \Phi)(A) & =\Psi(\Phi(A)), A \in O \\
        (\Psi \circ \Phi)(f) & =\Psi(\Phi(f)), f \in M
        \end{aligned}
        $$

        则 $\Psi \circ \Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime \prime}$，并称 $\Psi \circ \Phi$ 为 $\Psi$ 与 $\Phi$ 的合成

    3. 设 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$，若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 使 $\Phi \circ \Psi=\Pi_{\mathcal{G}}$ 且 $\Psi \circ \Phi=\mathbf{I}_{\mathcal{G}}$，则称 $\Psi$ 为 $\Phi$ 的逆．若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 为 $\Phi$ 的逆，则称 $\Phi$ 有逆

4. 设 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$ 和 $\mathcal{G}^{\prime}=\langle O^{\prime}, M^{\prime}, \operatorname{source}', \operatorname{target}'\rangle$ 均为图，$\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$ 且 $\Psi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$
    1. 定义 $M^{\prime}$ 上的局部二元运算满足当 $f, g \in M^{\prime}$ 且 $\operatorname{target}^{\prime}(f)=\operatorname{source}^{\prime}(g)$ 时，恒有
        1. $g \circ f \downarrow$ 当且仅当 $\operatorname{source}^{\prime}(g)=\operatorname{target}^{\prime}(f)$
        2. 若 $g \circ f \downarrow$ 则 $\operatorname{source}(g \circ f)=\operatorname{source}^{\prime}(f)$ 且 $\operatorname{target}^{\prime}(g \circ f)=\operatorname{target}^{\prime}(g)$

        称具有该局部二元运算的图为演算系统

    2. 若 $\alpha: O \rightarrow M^{\prime}$ 对任意 $f \in M$ 有 $\alpha(\operatorname{target}(f)) \circ \Phi(f)=\Psi(f) \circ \alpha(\operatorname{source}(f))$，则称 $\alpha$ 为 $\Phi$ 到 $\Psi$ 的自然变换，记为 $\alpha: \Phi \rightarrow \Psi$

## 1.2 范畴
### 1.2.1 范畴的概念
1. 若图 $\langle O, M, \mathrm{dom}, \mathrm{cod}\rangle$ 和 $\mathrm{comp}: M \times M \rightharpoonup M$（记作 $g \circ f$ 或 $gf$）满足如下公理
    1. $C_{0}$：若 $f, g \in M$，则 $g \circ f \downarrow$ 当且仅当 $\operatorname{dom}(g)=\operatorname{cod}(f)$
    2. $C_{1}$：若 $f, g \in M$ 有 $g \circ f \downarrow$，则 $\operatorname{dom}(g \circ f)=\operatorname{dom}(f)$ 且 $\operatorname{cod}(g \circ f)= \operatorname{cod}(g)$
    3. $C_{2}$：若 $A \in O$，则有 $I_{A} \in M$ 使得
        1. $\operatorname{dom}\left(I_{A}\right)=A=\operatorname{cod}\left(I_{A}\right)$
        2. 若 $g \in M$ 使 $\operatorname{dom}(g)=A$，则 $g \circ I_{A}=g$
        3. 若 $f \in M$ 使 $\operatorname{cod}(f)=A$，则 $I_{A} \circ f=f$
    4. $C_{3}$：若 $f, g, h \in M$，则有
        1. $h \circ (g \circ f) \downarrow$ 当且仅当 $(h \circ g) \circ f \downarrow$
        2. 若 $h \circ (g \circ f) \downarrow$ 则 $h \circ (g \circ f)=(h \circ g) \circ f$

    称五元组 $\mathscr{C}=\langle O, M, \mathrm{dom}, \mathrm{cod}, \mathrm{comp}\rangle$ 为范畴，称图 $\langle O, M, \operatorname{dom}, \operatorname{cod}\rangle$ 为 $\mathscr{C}$ 的基图，记为 $\mathbf{G}(\mathscr{C})$

    1. 称 $O$ 为 $\mathscr{C}$ 的对象类，记为 $\operatorname{Ob} \mathscr{C}$，其元素称为 $\mathscr{C}$ 的对象
        1. 若 $A, B \in O$，则记 $\mathbf{G}(\mathscr{C})[A, B]=\mathscr{C}[A, B]$，通常简写为 $[A, B]$
        2. 若 $A \in O$，则称由公理 $C_{2}$ 给出的态射 $\mathbf{I}_{A}$ 为关于 $A$ 的幺态射，简称幺态射
    2. 称 $M$ 为 $\mathscr{C}$ 的态射类，记为 $\operatorname{Mor} \mathscr{C}$，其元素称为 $\mathscr{C}$ 的态射
        1. 若 $f \in M$，则称 $\operatorname{dom}(f)$ 为 $f$ 的论域，$\operatorname{cod}(f)$ 为 $f$ 的余论域
        2. 设 $f \in M$，若 $A=\operatorname{dom}(f)$ 且 $B=\operatorname{cod}(f)$，则称 $f$ 为一个从 $A$ 到 $B$ 的态射，记为 $f: A \rightarrow B$ 或 $A \xrightarrow{f} B$
        3. 若 $f, g \in M$，使 $\operatorname{comp}(g, f) \downarrow$，则称 $\operatorname{comp}(g, f)$ 为 $g$ 与 $f$ 的合成
    3. 设 $\mathscr{C}$ 为范畴且 $A, B, C, D \in \operatorname{Ob} \mathscr{C}$
        1. 若 $A \neq C$ 或 $B \neq D$，则 $[A, B] \cap [C, D]=\varnothing$
        2. 若 $f \in[A, B]$ 且 $g \in[B, C]$，则 $g \circ f \in[A, C]$
    4. 设 $\mathscr{C}$ 为范畴，若 $A \in \operatorname{Ob} \mathscr{C}$，则关于 $A$ 的幺态射存在且唯一

2. 设 $\mathscr{C}$ 为范畴且 $\mathbf{I}$ 和 $\mathbf{J}$ 均为类，若 $\mathcal{D}=\langle\left(A_{i}\right)_{i \in \mathbf{I}}, \left(f_{j}\right)_{j \in \mathbf{J}}, \Psi\rangle$ 满足
    1. $\left\{A_{i} \mid i \in \mathbf{I}\right\} \subseteq \operatorname{Ob} \mathscr{C}$ 且 $\left\{f_{j} \mid j \in \mathbf{J}\right\} \subseteq \operatorname{Mor} \mathscr{C}$
    2. 若 $j \in \mathbf{J}$ 使得 $\Psi\left(f_{j}\right)=\left\langle A_{l}, A_{k}\right\rangle$，且 $l, k \in \mathbf{I}$，则 $\operatorname{dom}\left(f_{j}\right)=A_{l}$ 且 $\operatorname{cod}\left(f_{j}\right)=A_{k}$

    则称 $\mathcal{D}$ 为 $\mathscr{C}$ 中的一个图，并令 $\mathcal{D}_{V}=\left(A_{i}\right)_{i \in \mathbf{I}}$ 且 $\mathcal{D}_{E}=\left(f_{j}\right)_{j \in \mathbf{J}}$

    1. 若 $\mathcal{D}=\langle V, E, \Psi\rangle$ 为图且 $\Gamma: \mathcal{D} \rightarrow \mathbf{G}(\mathscr{C})$ 为图同态，定义函数 $\Psi^{\prime}$ 为 $\Psi^{\prime}(\Gamma(e))=\langle\Gamma(u), \Gamma(v)\rangle$ 当且仅当 $\Psi(e)=\langle u, v\rangle$，其中 $e \in E, u, v \in V$，则 $\left\langle(\Gamma(v))_{v \in V},(\Gamma(e))_{e \in E}, \Psi^{\prime}\right\rangle$ 为 $\mathscr{C}$ 的图，记为 $\langle\mathcal{D}, \Gamma\rangle$，并令 $A_{v}=\Gamma(v), f_{e}=\Gamma(e)$，其中 $v \in V, e \in E$
    2. 设 $\mathscr{C}$ 为范畴，$\mathcal{D}$ 为 $\mathscr{C}$ 中的图

        <!-- TODO: 1.6, 1.7 -->

        1. 称 $\mathcal{D}$ 的如上图形式的三角形子图为交换的当且仅当 $h=g \circ f$
        2. 称 $\mathcal{D}$ 的如上图形式的四边形子图为交换的当且仅当 $g \circ f=k \circ h$
        3. 若 $\mathcal{D}$ 的所有上述形式的子图都是交换的，则称 $\mathcal{D}$ 为交换的

3. 特殊的范畴：设 $\mathscr C$ 为范畴
    1. 称 $\mathbf{0} = \left<\varnothing, \varnothing, \varnothing, \varnothing, \varnothing\right>$ 为空范畴
    2. 对任意 $A, B \in \operatorname{Ob} \mathscr{C}$，若每个 $[A, B]$ 均为集合，则称 $\mathscr{C}$ 为局部小范畴
    3. 若 $\operatorname{Ob} \mathscr{C}$ 和 $\operatorname{Mor} \mathscr{C}$ 均为集合，则称 $\mathscr{C}$ 为小范畴
    4. 若每个 $f \in \operatorname{Mor} \mathscr{C}$ 均为幺态射，则称 $\mathscr{C}$ 为离散范畴
    5. 若当 $A, B \in \operatorname{Ob} \mathscr{C}$ 时皆有 $|[A, B]| \leqslant 1$，则称 $\mathscr{C}$ 为简单范畴
4. 典型范畴

### 1.2.2 范畴运算

### 1.2.3 特殊对象与态射
