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

        则 $\Psi \circ \Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime \prime}$，并称 $\Psi \circ \Phi$ 为 $\Psi$ 与 $\Phi$ 的复合

    3. 设 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$，若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 使 $\Phi \circ \Psi=\Pi_{\mathcal{G}}$ 且 $\Psi \circ \Phi=I_{\mathcal{G}}$，则称 $\Psi$ 为 $\Phi$ 的逆．若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 为 $\Phi$ 的逆，则称 $\Phi$ 有逆

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
    3. 设 $\mathbf{I}$ 和 $\mathbf{J}$ 为指标类
        1. 若 $\eta: \mathbf{I} \rightarrow \operatorname{Ob} \mathscr{C}$，当记 $A_{i}=\eta(i)(i \in \mathbf{I})$ 时，则称 $\left(A_{i}\right)_{i \in I}$ 为由 $\mathbf{I}$ 标记的对象族
        2. 若 $\xi: \mathbf{J} \rightarrow \operatorname{Mor} \mathscr{C}$，当记 $f_{j}=\xi(j)(j \in \mathbf{J})$ 时，则称 $\left(f_{j}\right)_{j \in J}$ 为由 $\mathbf{J}$ 标记的态射族
    4. 设 $\mathscr{C}$ 为范畴且 $A, B, C, D \in \operatorname{Ob} \mathscr{C}$
        1. 若 $A \neq C$ 或 $B \neq D$，则 $[A, B] \cap [C, D]=\varnothing$
        2. 若 $f \in[A, B]$ 且 $g \in[B, C]$，则 $g \circ f \in[A, C]$
    5. 设 $\mathscr{C}$ 为范畴，若 $A \in \operatorname{Ob} \mathscr{C}$，则关于 $A$ 的幺态射存在且唯一

2. 设 $\mathscr{C}$ 为范畴且 $\mathbf{I}$ 和 $\mathbf{J}$ 均为类，若 $\mathcal{D}=\langle\left(A_{i}\right)_{i \in \mathbf{I}}, \left(f_{j}\right)_{j \in \mathbf{J}}, \Psi\rangle$ 满足
    1. $\left\{A_{i} \mid i \in \mathbf{I}\right\} \subseteq \operatorname{Ob} \mathscr{C}$ 且 $\left\{f_{j} \mid j \in \mathbf{J}\right\} \subseteq \operatorname{Mor} \mathscr{C}$
    2. 若 $j \in \mathbf{J}$ 使得 $\Psi\left(f_{j}\right)=\left\langle A_{l}, A_{k}\right\rangle$，且 $l, k \in \mathbf{I}$，则 $\operatorname{dom}\left(f_{j}\right)=A_{l}$ 且 $\operatorname{cod}\left(f_{j}\right)=A_{k}$

    则称 $\mathcal{D}$ 为 $\mathscr{C}$ 中的一个图，并令 $\mathcal{D}_{V}=\left(A_{i}\right)_{i \in \mathbf{I}}$ 且 $\mathcal{D}_{E}=\left(f_{j}\right)_{j \in \mathbf{J}}$

    1. 设 $\mathscr{C}$ 为范畴，$\mathcal{D}=\langle V, E, \Psi\rangle$ 为图且 $\Gamma: \mathcal{D} \rightarrow G(\mathscr{C})$ 为图同态，若有
        1. 对任意 $v \in V, e \in E$，定义 $A_{v}=\Gamma(v), f_{e}=\Gamma(e), A_{e}=\operatorname{dom}\left(f_{e}\right), B_{e}=\operatorname{cod}\left(f_{e}\right)$
        2. 定义 $\mathcal{D}_{V}=\left(A_{v}\right)_{v \in V}, \mathcal{D}_{S}=\left(A_{e}\right)_{e \in E}, \mathcal{D}_{E}=\left(B_{e}\right)_{e \in E}$
        3. 函数 $\Psi^{\prime}\left(f_{e}\right)_{e \in E} \rightarrow\left(A_{v}\right)_{v \in V} \times\left(A_{v}\right)_{v \in V}$ 为 $\Psi^{\prime}\left(f_{e}\right)=\left\langle\operatorname{dom}\left(f_{e}\right), \operatorname{cod}\left(f_{e}\right)\right\rangle$ 对任意 $e \in E$ 成立

        则称 $\left\langle\left(A_{v}\right)_{v \in V},\left(f_{e}\right)_{e \in E}, \Psi^{\prime}\right\rangle$ 为 $\mathscr{C}$ 中一个图，记为 $\langle\mathcal{D}, \Gamma\rangle$ 或 $\Gamma(\mathcal{D})$

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
    1. 集合相关典型范畴

        <div class="text-table">

        |           范畴            | 对象  |           态射           |     复合      |
        | :-----------------------: | :---: | :----------------------: | :-----------: |
        | $\operatorname{ANMFn}(X)$ |  $X$  |   $f: X \Rightarrow X$   | $\circledast$ |
        |  $\operatorname{MFn}(X)$  |  $X$  |   $f: X \Rightarrow X$   |    $\circ$    |
        |  $\operatorname{PFn}(X)$  |  $X$  | $f: X \rightharpoonup X$ |    $\circ$    |
        |  $\operatorname{Set}(X)$  |  $X$  |   $f: X \rightarrow X$   |    $\circ$    |

        </div>

    2. 经典结构的典型范畴

        <div class="text-table">

        |       范畴       |  对象  |    态射    |        范畴        |         对象          |     态射     |
        | :--------------: | :----: | :--------: | :----------------: | :-------------------: | :----------: |
        | $\mathrm{Graph}$ |  小图  |   图同态   | $\mathrm{Preoset}$ |        拟序集         |   保序映射   |
        |  $\mathrm{Mon}$  | 幺半群 | 幺半群同态 |  $\mathrm{Poset}$  |        偏序集         |   保序映射   |
        |  $\mathrm{Grp}$  |   群   |   群同态   |  $\mathrm{Metre}$  |       度量空间        |   连续函数   |
        |  $\mathrm{Rng}$  |   环   |   环同态   |   $\mathrm{Top}$   |       拓扑空间        |   连续函数   |
        | $\mathrm{Field}$ |   域   |   域同态   |  $\mathrm{BanSP}$  | $\text{Banach}$ 空间  | 有界线性变换 |
        |  $\mathrm{Lat}$  |   格   |   格同态   | $\mathrm{HilbSP}$  | $\text{Hilbert}$ 空间 | 有界线性变换 |
        |  $\mathrm{Mod}$  |   模   |   模同态   |  $\mathrm{LinSP}$  |     连续线性空间      |   线性变换   |

        </div>

### 1.2.2 范畴运算
1. 子范畴：设范畴 $\mathscr{A}$ 和 $\mathscr{B}$ 满足
    1. $\operatorname{Ob} \mathscr{B} \subseteq \operatorname{Ob} \mathscr{A}$ 且 $\operatorname{Mor} \mathscr{B} \subseteq \operatorname{Mor} \mathscr{A}$
    2. 若 $A \in \operatorname{Ob} \mathscr{B}$，则 $\mathscr{B}$ 和 $\mathscr{A}$ 关于 $A$ 的幺态射相同
    3. $\operatorname{dom}_{\mathscr{B}} \subseteq \operatorname{dom}_{\mathscr{A}}, \operatorname{cod}_{\mathscr{B}} \subseteq \operatorname{cod}_{\mathscr{A}}$ 且 $\operatorname{comp}_{\mathscr{B}} \subseteq \operatorname{comp}_{\mathscr{A}}$

    则称 $\mathscr{B}$ 为 $\mathscr{A}$ 的子范畴，记为 $\mathscr{B} \subseteq \mathscr{A}$．易知子范畴关系 $\subseteq$ 是自反的、传递的和反对称的

    1. 若 $\mathscr{B} \subseteq \mathscr{A}$ 且 $\mathscr{B} \neq \mathscr{A}$，则称 $\mathscr{B}$ 为 $\mathscr{A}$ 的真子范畴，记为 $\mathscr{B} \subseteq \mathscr{A}$．易知真子范畴关系 $\subseteq$ 是反自反的和传递的
    2. 若 $\mathscr{B} \subseteq \mathscr{A}$ 且 $\operatorname{Ob} \mathscr{B}=\operatorname{Ob} \mathscr{A}$，则称 $\mathscr{B}$ 为 $\mathscr{A}$ 的宽子范畴
    3. 若 $\mathscr{B} \subseteq \mathscr{A}$，且当 $A, B \in \operatorname{Ob} \mathscr{B}$ 时皆有 $\mathscr{B}[A, B]=\mathscr{A}[A, B]$，则称 $\mathscr{B}$ 为 $\mathscr{A}$ 的完全子范畴

2. 商范畴：设 $\mathscr{A}$ 为范畴，若 $\operatorname{Mor} \mathscr{A}$ 上的等价关系 $\approx$ 满足
    1. 若 $A, B \in \operatorname{Ob} \mathscr{A}$ 且 $f \in \mathscr{A}[A, B]$ 则 $[f]_{\approx} \subseteq \mathscr{A}[A, B]$
    2. 若 $f, f^{\prime}, g, g^{\prime} \in \operatorname{Mor} \mathscr{A}$ 使 $f \approx f^{\prime}$ 且 $g \approx g^{\prime}$，则 $g \circ f \approx g^{\prime} \circ f^{\prime}$

    则称 $\approx$ 为 $\mathscr{A}$ 上的同余关系．若 $f, g \in \operatorname{Mor} \mathscr{A}$，则令

    $$
    \begin{aligned}
    \operatorname{dom}^{\prime}\left([f]_{\approx}\right)&=\operatorname{dom}(f) \\
    \operatorname{cod}^{\prime}\left([f]_{\approx}\right)&=\operatorname{cod}(f) \\
    \operatorname{comp}^{\prime}\left([g]_{\approx},[f]_{\approx}\right)&=
    \left\{\begin{aligned}
    & [\operatorname{comp}(g, f)]_{\approx}, & \operatorname{comp}(g, f) \downarrow \\
    & \uparrow, & \textsf{否则}
    \end{aligned}\right.
    \end{aligned}
    $$

    则称 $\mathscr{A} / \approx=\left\langle\mathrm{Ob} \mathrm{\mathscr{A}}, \mathrm{Mor} \mathscr{A} / \approx, \mathrm{dom}^{\prime}, \mathrm{cod}^{\prime}, \mathrm{comp}^{\prime}\right\rangle$ 为 $\mathscr{A}$ 关于 $\approx$ 的商，则 $\mathscr{A} / \approx$ 是一个范畴，称为 $\mathscr{A}$ 关于 $\approx$ 的商范畴

3. 积范畴：设 $\mathscr{A}_{i}=\left\langle O_{i}, M_{i} ; \operatorname{dom}_{i}, \operatorname{cod}_{i}, \operatorname{comp}_{i}\right\rangle \ (i=1,2)$ 均为范畴，令 $O=O_{1} \times O_{2}, M=M_{1} \times M_{2}$，若对任意 $\langle f, g\rangle,\left\langle f^{\prime}, g^{\prime}\right\rangle \in M$ 有

    $$
    \begin{aligned}
    \operatorname{dom}(\langle f, g\rangle)&=\left\langle\operatorname{dom}_{1}(f), \operatorname{dom}_{2}(g)\right\rangle \\
    \operatorname{cod}(\langle f, g\rangle)&=\left\langle\operatorname{cod}_{1}(f), \operatorname{cod}_{2}(g)\right\rangle \\
    \operatorname{comp}\left(\left\langle f^{\prime}, g^{\prime}\right\rangle,\langle f, g\rangle\right)&=\left\{\begin{aligned}
    & \left\langle\operatorname{comp}_{1}\left(f^{\prime}, f\right), \operatorname{comp}_{2}\left(g^{\prime}, g\right)\right\rangle, & \operatorname{comp}_{1}\left(f^{\prime}, f\right) \downarrow \wedge \operatorname{comp}_{2}\left(g^{\prime}, g\right) \downarrow \\
    & \uparrow, & \textsf{否则}
    \end{aligned}\right.
    \end{aligned}
    $$

    则 $\mathscr{A}_{1} \times \mathscr{A}_{2}=\langle O, M, \mathrm{dom}, \mathrm{cod}, \mathrm{comp}\rangle$ 是一个范畴，称为 $\mathscr{A}_{1}$ 与 $\mathscr{A}_{2}$ 的积范畴

    1. 一般地，$n$ 个范畴 $\mathscr A_1, \mathscr A_2, \cdots, \mathscr A_n$ 的积范畴 $\left(\cdots\left(\mathscr{A}_{1} \times \mathscr{A}_{2}\right) \times \cdots\right) \times \mathscr{A}_{n}$ 记作 $\mathscr{A}_{1} \times \mathscr{A}_{2} \times \cdots \times \mathscr{A}_{n}$
    2. 令 $\mathscr{A}^{0}=\mathbf{0}$，同时定义 $\mathscr{A}^{1}=\mathscr{A}$ 且 $\mathscr{A}^{n+1}=\mathscr{A}^{n} \times \mathscr{A}$

4. 和范畴：设 $\mathscr{A}_{i}=\left\langle O_{i}, M_{i} ; \operatorname{dom}_{i}, \operatorname{cod}_{i}, \operatorname{comp}_{i}\right\rangle \ (i=1,2)$ 均为范畴，令 $O=O_{1} \sqcup O_{2}, M=M_{1} \sqcup M_{2}$，若对任意 $f_{1}, g_{1} \in M_{1}, g_{2}, g_{2} \in M_{2}$ 有

    $$
    \begin{aligned}
    \operatorname{dom}\left(\left\langle f_{i}, i\right\rangle\right)&=\left\langle\operatorname{dom}_{i}\left(f_{i}\right), i\right\rangle \\
    \operatorname{cod}\left(\left\langle f_{i}, i\right\rangle\right)&=\left\langle\operatorname{cod}_{i}\left(f_{i}\right), i\right\rangle \\
    \operatorname{comp}\left(\left\langle f_i, i\right\rangle,\langle g_j, j\rangle\right)&=\left\{\begin{aligned}
    & \left\langle\operatorname{comp}_{i}\left(f_{i}, g_{i}\right), i\right\rangle, & i = j \wedge \operatorname{comp}_{i}\left(f_{i}, g_{i}\right) \downarrow \\
    & \uparrow, & \textsf{否则}
    \end{aligned}\right.
    \end{aligned}
    $$

    则 $\mathscr{A}_{1} \sqcup \mathscr{A}_{2}=\langle O, M, \mathrm{dom}, \mathrm{cod}, \mathrm{comp}\rangle$ 是一个范畴，称为 $\mathscr{A}_{1}$ 与 $\mathscr{A}_{2}$ 的和范畴，并可推广到 $n$ 个范畴的情形

5. 对偶范畴：设 $\mathscr{C}=\langle O, M$, dom, cod, comp $\rangle$ 为范畴，若令 $O^{\prime}=O$ 且 $M^{\prime}=\left\{f^{\mathrm{op}} \mid f \in M\right\}$，并对任意的 $f, g \in M$ 令

    $$
    \begin{aligned}
    \operatorname{dom}^{\prime}\left(f^{\mathrm{op}}\right) & =\operatorname{cod}(f) \\
    \operatorname{cod}^{\prime}\left(f^{\mathrm{op}}\right) & =\operatorname{dom}(f) \\
    \operatorname{comp}^{\prime}\left(g^{\mathrm{op}}, f^{\mathrm{op}}\right) & = 
    \left\{\begin{aligned}
    & (\operatorname{comp}(f, g))^{\mathrm{op}}, & \operatorname{comp}(f, g) \downarrow \\
    & \uparrow, & \textsf{否则}
    \end{aligned}\right.
    \end{aligned}
    $$

    则 $\left\langle O^{\prime}, M^{\prime}, \operatorname{dom}^{\prime}, \mathrm{cod}^{\prime}, \mathrm{comp}^{\prime}\right\rangle$ 为范畴，称为 $\mathscr{A}$ 的对偶范畴，记为 $\mathscr{A}^{\mathrm{op}}$

    1. $\left(\mathscr{A}^{\mathrm{op}}\right)^{\mathrm{op}}=\mathscr{A}$
    2. 对每个 $A \in O$，令 $A^{\mathrm{op}}=A$，称 $A^{\mathrm{op}}$ 为 $A$ 的对偶对象；对每个 $f \in M$，称 $f^{\mathrm{op}}$ 为 $f$ 的对偶态射
    3. 对偶原理：若 $S$ 是一个对所有范畴皆真的命题，则 $S$ 的对偶命题 $S^{\mathrm{op}}$ 亦然

### 1.2.3 特殊态射与对象
1. 设 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
    1. 若有 $g \in[B, A]$ 使 $f \circ g=\mathbf{I}_{B}$，则称 $f$ 有右逆或右可逆，$g$ 为 $f$ 的一个右逆，此时称 $f$ 为 $\text{retraction}$
    2. 若有 $g \in[B, A]$ 使 $g \circ f=\mathbf{I}_{A}$，则称 $f$ 有左逆或左可逆，$g$ 为 $f$ 的一个左逆，此时称 $f$ 为 $\text{section}$

    若有 $g \in[B, A]$ 使 $f \circ g=\mathbf{I}_{B}$ 且 $g \circ f=\mathbf{I}_{A}$，则称 $f$ 有逆或可逆，也称 $f$ 为同构态射，$g$ 为 $f$ 的一个逆，记为 $f^{-1}$

    1. 若 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$，则 $f$ 有逆当且仅当 $f$ 有唯一的逆
    2. 设 $\mathscr{C}$ 为范畴，$A, B, C \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B], g \in[B, C]$
        1. 若 $f$ 有逆，则 $f^{-1}$ 也有逆且 $\left(f^{-1}\right)^{-1}=f$
        2. 若 $f$ 和 $g$ 均有逆，则 $g \circ f$ 有逆且 $(g \circ f)^{-1}=f^{-1} \circ g^{-1}$
    3. 设 $\mathscr{C}$ 为范畴，$A, B, C \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B], g \in[B, C]$
        1. 若 $f$ 和 $g$ 均为 $\text{section}$，则 $g \circ f$ 亦然
        2. 若 $f$ 和 $g$ 均为 $\text{retraction}$，则 $g \circ f$ 亦然
        3. 若 $f$ 和 $g$ 均为同构态射，则 $g \circ f$ 亦然
        4. 若 $g \circ f$ 为 $\text{section}$，则 $f$ 为 $\text{section}$
        5. 若 $g \circ f$ 为 $\text{retraction}$，则 $g$ 为 $\text{retraction}$
        6. 若 $g \circ f$ 为同构态射，则 $f$ 为 $\text{section}$ 且 $g$ 为 $\text{retraction}$
    4. 设 $\mathscr{C}$ 为范畴且 $A, B \in \operatorname{Ob} \mathscr{C}$．若有同构态射 $f \in[A, B]$ 则称 $A$ 与 $B$ 等价，记为 $A \cong B$
        1. $\cong$ 是 $\operatorname{Ob} \mathscr{C}$ 上的一个等价关系
        2. 设 $\mathscr{C}$ 为范畴且 $A, B \in \operatorname{Ob} \mathscr{C}$．若 $A \cong B$，则对任意的 $C \in \operatorname{Ob} \mathscr{C}$，皆有双射 $\sigma_{C}:[A, C] \rightarrow[B, C]$ 及双射 $\widetilde{\sigma}_{C}:[C, A] \rightarrow[C, B]$

2. 设 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
    1. 若 $f$ 可左消去，即如果 $C \in \operatorname{Ob} \mathscr{C}$ 与 $h, k \in[C, A]$ 使 $f \circ h=f \circ k$，则 $h=k$，则称 $f$ 为单态射
    2. 若 $f$ 可右消去，即如果 $C \in \operatorname{Ob} \mathscr{C}$ 与 $h, k \in[B, C]$ 使 $h \circ f=k \circ f$，则 $h=k$，则称 $f$ 为外态射

    若 $f$ 可消去，即 $f$ 既可左消去又可右消去，则称 $f$ 为双态射

    1. 设 $\mathscr{C}$ 为范畴， $A, B, C \in \operatorname{Ob} \mathscr{C}, f \in[A, B]$ 且 $g \in[B, C]$
        1. 若 $f$ 和 $g$ 均为单态射，则 $g \circ f$ 亦然
        2. 若 $f$ 和 $g$ 均为外态射，则 $g \circ f$ 亦然
        3. 若 $f$ 和 $g$ 均为双态射，则 $g \circ f$ 亦然
        4. 若 $g \circ f$ 为单态射，则 $f$ 为单态射
        5. 若 $g \circ f$ 为外态射，则 $g$ 为外态射
        6. 若 $g \circ f$ 为双态射，则 $f$ 为单态射且 $g$ 为外态射
    2. 设 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
        1. 若 $f$ 为 $\text{section}$，则 $f$ 为单态射
        2. 若 $f$ 为 $\text{retraction}$，则 $f$ 为外态射
        3. 若 $f$ 为同构态射，则 $f$ 为双态射
    3. 设 $\mathscr{C}$ 为范畴且 $A, B \in \operatorname{Ob} \mathscr{E}$，若 $f \in[A, B]$，则 $f$ 为同构态射当且仅当以下任一成立
        1. $f$ 既是 $\text{section}$，又是外态射
        2. $f$ 既是 $\text{retraction}$，又是单态射
    4. 设 $f \in \operatorname{Set}[A, B]$  
        1. 若 $A \neq \varnothing$，则下列条件等价：① $f$ 为单射；② $f$ 为 $\text{section}$；③ $f$ 为单态射
        2. 下列条件等价：① $f$ 为满射；② $f$ 为 $\text{retraction}$；③ $f$ 为外态射
        3. 下列条件等价：① $f$ 为双射；② $f$ 为同构态射；③ $f$ 为双态射

3. 设 $\mathscr{C}$ 为范畴且 $A \in \operatorname{Ob} \mathscr{C}$
    1. 若对每个 $B \in \operatorname{Ob} \mathscr{C}$ 皆有 $|[A, B]|=1$，则称 $A$ 为初始对象，用 $\mathbf{I}_{A B}$ 表示 $[A, B]$ 中的唯一态射
    2. 若对每个 $B \in \operatorname{Ob} \mathscr{C}$ 皆有 $|[B, A]|=1$，则称 $A$ 为终止对象，用 $\mathbf{T}_{B A}$ 表示 $[B, A]$ 中的唯一态射

    若 $A$ 同时是初始对象与终止对象，则称 $A$ 为零对象．设 $B \in \operatorname{Ob} \mathscr{C}$，用 $\mathbf{O}_{A B}$ 与 $\mathbf{O}_{B A}$ 分别表示 $[A, B]$ 与 $[B, A]$ 中的唯一态射

    1. $\mathbf{I}_{AA}=\mathbf{T}_{AA}=\mathbf{O}_{AA}=\mathbf{I}_{A}$ 且 $\mathbf{O}_{AB}=\mathbf{I}_{A B}, \mathbf{O}_{B A}=\mathbf{T}_{BA}$
    2. 设 $\mathscr{C}$ 为范畴且 $A, B \in \operatorname{Ob} \mathscr{C}$
        1. 若 $A$ 为初始对象，则 $B$ 为初始对象当且仅当 $B \cong A$
        2. 若 $A$ 为终止对象，则 $B$ 为终止对象当且仅当 $B \cong A$
        3. 若 $A$ 为零对象，则 $B$ 为零对象当且仅当 $B \cong A$

4. 设 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B]$
    1. 若对每个 $C \in \operatorname{Ob} \mathscr{C}$ 及任意 $h, k \in[C, A]$ 皆有 $f \circ h=f \circ k$，则称 $f$ 为常态射
    2. 若对每个 $C \in \operatorname{Ob} \mathscr{C}$ 及任意 $h, k \in[B, C]$ 皆有 $h \circ f=k \circ f$，则称 $f$ 为余常态射

    若 $f$ 既是常态射，又是余常态射，则称 $f$ 为零态射

    1. 设 $\mathscr{C}$ 为范畴，若任意 $A, B \in \operatorname{Ob} \mathscr{C}$ 都有 $[A, B]$ 中存在零态射，那么称 $\mathscr{C}$ 为点化范畴
    2. 设 $\mathscr{C}$ 为范畴，$A, B, C, D \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[A, B], g \in[B, C], h \in[C, D]$
        1. 若 $g$ 为常态射，则 $h \circ g$ 和 $g \circ f$ 均为常态射
        2. 若 $g$ 为余常态射，则 $h \circ g$ 和 $g \circ f$ 均为余常态射
        3. 若 $g$ 为零态射，则 $h \circ g$ 和 $g \circ f$ 均为零态射
    3. 设 $\mathscr{C}$ 为范畴，$A, B \in \operatorname{Ob} \mathscr{C}$ 且 $f, g \in[A, B]$．若 $f$ 为常态射，$g$ 为余常态射且 $[B, A] \neq \varnothing$，则 $f=g$
    4. 设 $\mathscr{C}$ 为范畴且 $A, B \in \operatorname{Ob} \mathscr{C}$
        1. 若 $A$ 为初始对象，则 $\mathbf{I}_{A B}$ 为余常态射
        2. 若 $A$ 为终止对象，则 $\mathbf{T}_{A B}$ 与常态射
        3. 若 $A$ 为零对象，则 $\mathbf{O}_{A B}$ 为余常态射，$\mathbf{O}_{B A}$ 为常态射
        4. 若 $A$ 和 $B$ 均为零对象，则 $\mathbf{O}_{A B}$ 和 $\mathbf{O}_{B A}$ 皆为零态射
    5. 如果 $\mathscr{C}$ 为范畴，则下列条件等价：
        1. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $[A, B]$ 中有零态射
        2. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $[A, B]$ 中有唯一的零态射
        3. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $[A, B]$ 中有唯一的常态射
        4. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $[A, B]$ 中有唯一的余常态射
        5. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $[A, B]$ 中既有常态射，又有余常态射
        6. 存在函数 $\sigma: \operatorname{Ob} \mathscr{C} \times \operatorname{Ob} \mathscr{C} \rightarrow \operatorname{Mor} \mathscr{C}$ 满足如下条件：
            1. 若 $A, B \in \operatorname{Ob} \mathscr{C}$，则 $\sigma(A, B) \in[A, B]$
            2. 若 $A, B, C \in \operatorname{Ob} \mathscr{C}$ 且 $f \in[B, C]$，则 $f \circ \sigma(A, B)=\sigma(A, C)$
            3. 若 $A, B, C \in \operatorname{Ob} \mathscr{C}$ 且 $g \in[A, B]$，则 $\sigma(B, C) \circ g=\sigma(A, C)$

            称函数 $\sigma$ 为 $\mathscr{A}$ 的零态射选择函数

    6. 设 $\mathscr{C}$ 为范畴，$Z \in \operatorname{Ob} \mathscr{C}$ 为零对象且 $A, B \in \operatorname{Ob} \mathscr{C}$
        1. $\mathbf{I}_{Z B} \circ \mathbf{T}_{A Z}$ 为零态射
        2. 若 $Z^{\prime} \in \operatorname{Ob} \mathscr{C}$ 也是零对象，则 $\mathbf{I}_{Z^{\prime} B} \circ \mathbf{T}_{A Z^{\prime}}=\mathbf{I}_{Z B} \circ \mathbf{T}_{A Z}$
