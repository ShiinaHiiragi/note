# 1 测度论

## 1.1 可测性与测度
### 1.1.1 可测空间
1. 可测空间：设 $\Omega$ 为集合，$\mathscr{F}$ 为由 $\Omega$ 的子集构成的 $\sigma$ 域，则 $(\Omega, \mathscr{F})$ 称为可测空间．$\mathscr{F}$ 中任一集合都称为 $\mathscr{F}$ 可测集，简称可测集
2. 乘积空间：若 $\left(\Omega_{i}, \mathscr{F}_{i}\right), 1 \leqslant i \leqslant n$ 是 $n$ 个可测空间，称 $\Omega=\left\{\left(\omega_{1}, \cdots, \omega_{n}\right): \omega_{i} \in \Omega_{i}, 1 \leqslant i \leqslant n\right\}$ 为乘积空间，记为 ${\displaystyle \Omega=\prod_{i} \Omega_{i}}$
    1. 矩形集：对 $A_{i} \subseteq \Omega_{i}, 1 \leqslant i \leqslant n$，集合 $A=\left\{\left(\omega_{1}, \cdots, \omega_{n}\right): \omega_{i} \in A_{i}, 1 \leqslant i \leqslant n\right\}$ 称为矩形集，记为 ${\displaystyle \prod_{i=1}^{n} A_i}$．特别地，当每个 $A_i \in \mathscr{F}_i$ 时，${\displaystyle A = \prod_{i=1}^{n} A_i}$ 又称为可测矩形
    2. $\left(\Omega_{i}, \mathscr{F}_{i}\right), 1 \leqslant i \leqslant n$ 是 $n$ 个可测空间，${\displaystyle \Omega=\prod_{i=1}^{n}} \Omega_{i}$，$\mathscr{C}$ 表示 $\Omega$ 中可测矩形全体，则 $\mathscr{C}$ 是一个半域，而互不相交的可测矩形的有限并全体 $\mathscr{A}$ 就是一个域

    若 $\left\{\left(\Omega_{\alpha}, \mathscr{F}_{\alpha}\right)\right\}_{\alpha \in J}$ 为一族可测空间，称 $\Omega=\left\{\left(\omega_{\alpha}, \alpha \in J\right): \omega_{\alpha} \in \Omega_{\alpha}, \alpha \in J\right\}$ 为 $\left(\omega_{\alpha}, \alpha \in J\right)$ 的乘积空间，记为 $\Omega={\displaystyle \prod_{\alpha \in J}} \Omega_{\alpha}$

    1. 若 $I$ 为 $J$ 的有限子集，对 $A_{\alpha} \in \mathscr{F}_{\alpha}, \alpha \in I$ 有 $B=\left\{\left(\omega_{\alpha}, \alpha \in J\right) \in \Omega: \omega_{\alpha} \in A_{\alpha}, \alpha \in I\right\}$．称 $B$ 为有限维基底可测矩形柱，简称有限维矩形柱，${\displaystyle \prod_{\alpha \in I}} A_{\alpha}$ 称为 $B$ 的底
    2. 若 $\mathscr{C}=\left\{B: B \textsf{ 为以 } {\displaystyle \prod_{\alpha \in I}} A_{\alpha} \textsf{ 为底的矩形柱，} A_{\alpha} \in \mathscr{F}_{\alpha}, \alpha \in \textsf{有限 } I \subseteq J\right\}$，其中 $I$ 取遍 $J$ 的一切有限子集，即 $\mathscr{C}$ 表示有限维基底可测矩形柱全体，则 $\mathscr{C}$ 是半域

3. 乘积可测空间：若 $\left(\Omega_{i}, \mathscr{F}_{i}\right), 1 \leqslant i \leqslant n$ 是 $n$ 个可测空间，$\mathscr{C}$ 表示 $\Omega={\displaystyle \prod_{i=1}^{n}} \Omega_{i}$ 中可测矩形全体．在 $\Omega$ 上，$\mathscr{F} = \sigma(\mathscr{C})$ 称为乘积 $\sigma$ 域，并记 $\mathscr{F} = {\displaystyle \prod_{i=1}^{n}} \mathscr{F}_i$．又 $(\Omega, \mathscr{F})$ 称为乘积可测空间，记为 $(\Omega, \mathscr{F})={\displaystyle \prod_{i=1}^{n}}\left(\Omega_{i}, \mathscr{F}_{i}\right)$
    1. 设 $\left(\Omega_{i}, \mathscr{F}_{i}\right), 1 \leqslant i \leqslant n$ 是 $n$ 个可测空间，$1 \leqslant m \leqslant n$
        1. ${\displaystyle \prod_{i=1}^{n}} \Omega_{i}=\left({\displaystyle \prod_{i=1}^{m}} \Omega_{i}\right) \times\left({\displaystyle \prod_{i=m+1}^{n}} \Omega_{i}\right)$
        2. ${\displaystyle \prod_{i=1}^{n}} \mathscr{F}_{i}=\left({\displaystyle \prod_{i=1}^{m}} \mathscr{F}_{i}\right) \times\left({\displaystyle \prod_{i=m+1}^{n}} \mathscr{F}_{i}\right)$
        3. ${\displaystyle \prod_{i=1}^{n}}\left(\Omega_{i}, \mathscr{F}_{i}\right)=\left({\displaystyle \prod_{i=1}^{m}}\left(\Omega_{i}, \mathscr{F}_{i}\right)\right) \times\left({\displaystyle \prod_{i=m+1}^{n}}\left(\Omega_{i}, \mathscr{F}_{i}\right)\right)$
    2. 若 $\left(\Omega_{i}, \mathscr{F}_{i}\right), 1 \leqslant i \leqslant n$ 是 $n$ 个可测空间，$(\Omega, \mathscr{F})={\displaystyle \prod_{i=1}^{n}} \left(\Omega_{i}, \mathscr{F}_{i}\right)$．则对任一 $A \in \mathscr{F}$ 及任意固定的 $\left(\omega_{1}, \cdots, \omega_{m}\right)$，截口集 $A\left(\omega_{1}, \cdots, \omega_{m}\right)=\left\{\left(\omega_{m+1}, \cdots, \omega_{n}\right):\left(\omega_{1}, \cdots, \omega_{n}\right) \in A\right\} \in {\displaystyle \prod_{i=m+1}^{n}} \mathscr{F}_{i}$

    在 $\Omega={\displaystyle \prod_{\alpha \in J}} \Omega_{\alpha}$ 上有 $\mathscr{C}=\left\{B: B \textsf{ 为以 } {\displaystyle \prod_{\alpha \in I}} A_{\alpha} \textsf{ 为底的矩形柱，} A_{\alpha} \in \mathscr{F}_{\alpha}, \alpha \in \textsf{有限 } I \subseteq J\right\}$，称 $\mathscr{F}=\sigma(\mathscr{C})$ 为 $\left\{\mathscr{F}_{\alpha}\right\}_{\alpha \in J}$ 的乘积 $\sigma$ 域，记为 $\mathscr{F}={\displaystyle \prod_{\alpha \in J}} \mathscr{F}_{\alpha}$．而 $(\Omega, \mathscr{F})$ 称为乘积可测空间，记为 $(\Omega, \mathscr{F}) ={\displaystyle \prod_{\alpha \in J}} \left(\Omega_{\alpha}, \mathscr{F}_{\alpha}\right)$

    1. 在 $\Omega$ 中，若 $I$ 为 $J$ 的任意子集，$A \subseteq \Omega_{I}={\displaystyle \prod_{\alpha \in I}} \Omega_{\alpha}$，则 $B=A \times {\displaystyle \prod_{\alpha \in J - I}} \Omega_{\alpha}=\left\{\left(\omega_{\alpha}, \alpha \in J\right) \in \Omega:\left(\omega_{\alpha}, \alpha \in I\right) \in A\right\}$ 称为 $\Omega$ 中的柱集，$A$ 称为 $B$ 的底．当 $A \in {\displaystyle \prod_{\alpha \in I}} \mathscr{F}_{\alpha}$，柱集 $B$ 称为可测的．特别地，当 $I$ 为有限指标集时，$B$ 称为有限维基底可测柱集；当 $I$ 为可数指标集时，$B$ 称为可数维基底可测柱集，凡分别简称为有限维柱集或可数维柱集
    2. 若 $\left\{\left(\Omega_{\alpha}, \mathscr{F}_{\alpha}\right)\right\}_{\alpha \in J}$ 为一族可测空间，$J$ 为无限指标集，$(\Omega, \mathscr{F})= {\displaystyle \prod_{\alpha \in J}} \left(\Omega_{\alpha}, \mathscr{F} \alpha\right)$，又 $\mathscr{G}$ 表示 $\Omega$ 中可数维基底可测柱集全体，则 $\mathscr{F}=\mathscr{G}$
    3. 若 $\left\{\left(E_{i}, \mathscr{T}_{i}\right)\right\}_{i \in I}$ 为至多可数个具有可数基的拓扑空间，$(E, \mathscr{T})={\displaystyle \prod_{i \in I}}\left(E_{i}, \mathscr{T}_{i}\right)$ 为乘积拓扑空间，则有
        1. $\mathscr{B}_{E} ={\displaystyle \prod_{i \in I}} \mathscr{B}_{E_{i}}$
        2. $\left(E, \mathscr{B}_{E}\right) ={\displaystyle \prod_{i \in I}}\left(E_{i}, \mathscr{B}_{E_{i}}\right)$

        其中 $\mathscr{B}_{E_{i}}=\sigma\left(\mathscr{T}_{i}\right), i \in I, \mathscr{B}_{E}=\sigma(\mathscr{T})$．特别地，有 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)=\small \underbrace{\normalsize (\mathbf{R}, \mathscr{B}) \times (\mathbf{R}, \mathscr{B}) \times \cdots \times(\mathbf{R}, \mathscr{B})}_{\normalsize n} \normalsize$，其中 $\mathscr{B}^{n}$ 也可看成为由可测矩形或由有理端点开矩形全体生成的 $\sigma$ 域

    4. 无限维乘积可测空间：设 $T$ 为任意指标集，$\left\{\left(\Omega_{t}, \mathscr{F}_{t}\right): t \in T\right\}$ 为一族可测空间 ${\displaystyle \Omega=\underset{t \in T}{\prod} \Omega_{t}, \  \mathscr{F}=\underset{t \in T}{\prod} \mathscr{F}_{t}}$．又 $T_{1} \subseteq T$，$T_{1}$ 为 $T$ 的任一子集．记 ${\displaystyle \Omega_{T_{1}}=\underset{t \in T_{1}}{\prod} \Omega_{t}, \  \mathscr{F}_{T_{1}}=\underset{t \in T_{1}}{\prod} \mathscr{F}_{t}}$，则 $\Omega=\Omega_{T}, \mathscr{F}=\mathscr{F}_{T}$．对 $A \in \mathscr{F}_{T_{1}}$，${\displaystyle B_{1}=\left\{\left(\omega_{t}, t \in T\right) \in \Omega_{T}:\left(\Omega_{\alpha}, \alpha \in T_{1}\right) \in A\right\}}$ 并称 $B_{1}$ 为 $\Omega$ 中以 $A$ 为基底的柱集．对 $T_{1} \subseteq T_{2} \subseteq T$，${\displaystyle B_{2}=\left\{\left(\omega_{t}, t \in T_{2}\right) \in \Omega_{T_{2}}:\left(\omega_{\alpha}, \alpha \in T_{1}\right) \in A\right\}}$，称 $B_{2}$ 为 $\Omega_{T_{2}}$ 中以 $A$ 为基底的柱集，并以 $\overline{\mathscr{F}}_{T_{1}}$ 和 $\overline{\mathscr{F}}_{T_{1}}^{T_{2}}$ 分别表示基底在 $\mathscr{F}_{T_{1}}$ 的 $\Omega$ 和 $\Omega_{T_{2}}$ 中的柱集全体
        1. 设 $\mathscr{C}$ 表示 $\Omega$ 中基底为有限维可测矩形的柱集全体，${\displaystyle \mathscr{A}=\bigcup_{T_{1} \subseteq T} \overline{\mathscr{F}}_{T_{1}}}$ 表示 $\Omega$ 中有限维可测基底的柱集全体，其中 $T_1$ 有限．则 $\mathscr{C} \subseteq \mathscr{A}$，且 $\mathscr{A}$ 为域，$\sigma(\mathscr{C})=\sigma(\mathscr{A})=\mathscr{F}$
        2. 若 $T_{1} \subseteq T_{2} \subseteq T$，规定 $\Omega_{T_{2}}$ 到 $\Omega_{T_{1}}$ 的映射 $\pi_{T_{1}}^{T_{2}}$ 为 $\pi_{T_{1}}^{T_{2}}\left\{\omega_{t}: t \in T_{2}\right\}=\left\{\omega_{t}: t \in T_{1}\right\}$，则 $\pi_{T_{1}}^{T_{2}}$ 是 $\Omega_{T_{2}}$ 到 $\Omega_{T_{1}}$ 的投影．对 $A \in \mathscr{F}_{T_{1}}$，由于 $\left(\pi_{T_{1}}^{T_{2}}\right)^{-1} A=A \times \Omega_{T_{2} - T_{1}}$，因此 $\pi_{T_{1}}^{T_{2}}$ 是 $\left(\Omega_{T_{2}}, \mathscr{F}_{T_{2}}\right)$ 到 $\left(\Omega_{T_{1}}, \mathscr{F}_{T_{1}}\right)$ 的可测映射且 $\left(\pi_{T_{1}}^{T_{2}}\right)^{-1} \mathscr{F}_{T_{1}}=\overline{\mathscr{F}}_{T_{1}}^{T_{2}}$

### 1.1.2 可测映射
1. 可测映射：设 $\left(\Omega_{1}, \mathscr{F}_{1}\right),\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 为可测空间，$f: \Omega_{1} \to \Omega_{2}$．若对每个 $A \in \mathscr{F}_{2}, f^{-1}[A] \in \mathscr{F}_{1}$，即 $f^{-1}\left[\mathscr{F}_{2}\right] \subseteq \mathscr{F}_{1}$，则称 $f$ 为 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 到 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 的可测映射，记为 $f \in \mathscr{F}_{1} / \mathscr{F}_{2}$，或在 $\mathscr{F}_{2}$ 不引起混淆时简记为 $f \in \mathscr{F}_{1}$．记 $\sigma(f)=\sigma_{\Omega_{1}}(f)=f^{-1}\left[\mathscr{F}_{2}\right]$，称它为由 $f$ 生成的 $\sigma$ 域
    1. 设 $f$ 为 $\Omega_{1}$ 到 $\Omega_{2}$ 的映射，$\mathscr{C}$ 为 $\mathcal{P}\left(\Omega_{2}\right)$ 的子类，则 $\sigma_{\Omega_{1}}\left(f^{-1}[\mathscr{C}]\right)=f^{-1}\left[\sigma_{\Omega_{2}}(\mathscr{C})\right]$
    2. 若 $\left(\Omega_{1}, \mathscr{F}_{1}\right),\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 为可测空间，$\mathscr{C} \subseteq \mathcal{P}\left(\Omega_{2}\right)$，又 $\mathscr{F}_{2}=\sigma(\mathscr{C})$，则 $f \in \mathscr{F}_{1} / \mathscr{F}_{2}$ 的充要条件是 $f^{-1}[\mathscr{C}] \subseteq \mathscr{F}_{1}$
    3. 设 $\left(\Omega_{i}, \mathscr{F}_{i}\right) \ (i=1,2,3)$ 为可测空间，若 $g$ 为 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 到 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 的可测映射，又 $f$ 为 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 到 $\left(\Omega_{3}, \mathscr{F}_{3}\right)$ 的可测映射，则 $f \circ g$ 是 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 到 $\left(\Omega_{3}, \mathscr{F}_{3}\right)$ 的可测映射
2. 可测函数：由 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 或 $\left(\widehat{\mathbf{R}}, \mathscr{B}_{\widehat{\mathbf{R}}}\right)$ 的可测映射称为可测函数
    1. 若 $\mathscr{F}_{1}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，且 $f \in \mathscr{F}_{1} / \mathscr{B}_{\widehat{\mathbf{R}}}$，则称 $f$ 为 $\mathscr{F}_{1}$ 可测，记为 $f \in \mathscr{F}_{1}$
    2. 若 $f$ 为 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 到 $(\mathbf{R}, \mathscr{B})$ 的可测函数，则称 $f$ 为 $n$ 元 $\text{Borel}$ 可测函数或简称 $\text{Borel}$ 函数．可数维乘积空间 $\left(\mathbf{R}^{\infty}, \mathscr{B}^{\infty}\right)$ 到 $(\mathbf{R}, \mathscr{B})$ 的可测函数也称为 $\text{Borel}$ 函数
    3. 若 $(\Omega, \mathscr{F})=\left(\Omega_{1}, \mathscr{F}_{1}\right) \times\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 为乘积空间，$f$ 为 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 的可测函数，则对 $\forall \omega_{1}^{0} \in \Omega_{1}, g\left(\omega_{2}\right)=f\left(\omega_{1}^{0}, \omega_{2}\right)$ 是 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 的可测函数

### 1.1.3 测度空间
1. 集函数：设 $\Omega$ 为一空间，$\mathscr{C} \subseteq \mathcal{P}(\Omega), \mathscr{C}$ 上广义实值（可取 $\pm \infty$）函数 $\mu$ 称为集函数
    1. 若对每个 $A \in \mathscr{C}$ 有 $|\mu(A)|<\infty$，则称 $\mu$ 为有限的

        若对任意 $A, B \in \mathscr{C}, A B=\varnothing$，且 $A+B \in \mathscr{C}$，都有 $\mu(A+B)=\mu(A)+\mu(B)$，则称 $\mu$ 为有限可加的

    2. 若对每个 $A \in \mathscr{C}$，存在 $\left\{A_{n}\right\}_{n \geqslant 1} \in \mathscr{C}$，使 $A=\bigcup_{n} A_{n}$，且对每个 $n$ 都有 $\left|\mu\left(A_{n}\right)\right|<\infty$，则称 $\mu$ 为在 $\mathscr{C}$ 上为 $\sigma$ 有限的，简称为 $\sigma$ 有限的

        若对任意 $\left\{A_{n}\right\}_{n \geqslant 1} \subseteq \mathscr{C}$ 都有 $A_{i} A_{j}=\varnothing, i \neq j$，且 ${\displaystyle \sum_{i=1}^{\infty} A_{i} \in \mathscr{C}}$，则 ${\displaystyle \mu\left(\sum_{i=1}^{\infty} A_{i}\right)= \sum_{i=1}^{\infty} \mu\left(A_{i}\right)}$，则称 $\mu$ 在 $\mathscr{C}$ 上为 $\sigma$ 可加的或可数可加的

2. 测度空间：若 $(\Omega, \mathscr{F})$ 为可测空间，$\mu$ 为 $\mathscr{F}$ 上的测度，则 $(\Omega, \mathscr{F}, \mu)$ 称为测度空间
    1. 正测度：设 $\Omega$ 为一空间，$\mathscr{C} \subseteq \mathcal{P}(\Omega)$ 且 $\varnothing \in \mathscr{C}$．设 $\mu$ 为 $\mathscr{C}$ 上的集函数，若它满足
        1. $\mu(\varnothing)=0$
        2. $\mu$ 为非负的，即对每个 $A \in \mathscr{C}$ 都有 $\mu(A) \geqslant 0$
        3. $\mu$ 为可数可加的

        则称 $\mu$ 为测度或正测度

    2. 半域或域上的测度
        1. $\mathscr{S}$ 为 $\Omega$ 上的半域，$\mu$ 为 $\mathscr{S}$ 上的非负可加集函数，则存在 $\mu$ 在由 $\mathscr{S}$ 张成的域 $\mathscr{A}(\mathscr{S})$ 上的唯一延拓 $\nu$，$\nu$ 在 $\mathscr{A}(\mathscr{S})$ 亦是非负可加的，且当 $\mu$ 为可数可加时, $\nu$ 亦可数可加
        2. 若 $\mu$ 为域 $\mathscr{A} \subseteq \mathcal{P}(\Omega)$ 上的非负有限可加集函数
            - $\mu$ 是单调的，即当 $A \subseteq B$, 必有 $\mu(A) \leqslant \mu(B)$
            - $\mu$ 是半可加的：若 ${\displaystyle A \subseteq \bigcup_{m=1}^{n} A_{m}}$，则 ${\displaystyle \mu(A) \leqslant \sum_{m=1}^{n} \mu\left(A_{m}\right)}$
            - 为使 $\mu$ 是 $\sigma$ 可加的，当且仅当对每个递增序列 $\left\{A_{n}\right\}$，只要 ${\displaystyle \bigcup_{n \geqslant 1} A_{n} \in \mathscr{A}}$，则有 ${\displaystyle \lim _{n \rightarrow \infty} \uparrow \mu\left(A_{n}\right)=\mu\left(\bigcup_{n} A_{n}\right)}$
            - 若 $\mu$ 为 $\sigma$ 可加的，则对每个递减序列 $\left\{A_{n}\right\}$，只要 ${\displaystyle \bigcap_{n \geqslant 1} A_{n} \in \mathscr{A}}$，且存在 $n_{0}$ 使 $\mu\left(A_{n_{0}}\right)<\infty$，则有 ${\displaystyle \lim _{n \rightarrow \infty} \downarrow \mu\left(A_{n}\right)=\mu\left(\bigcap_{n} \dot{A}_{n}\right)}$
        3. 若 $\mu$ 为 $\sigma$ 域上的测度，$\left\{A_{n}\right\}$ 为 $\mathscr{F}$ 中序列，则 ${\displaystyle \mu\left(\varliminf_{n \rightarrow \infty} A_{n}\right) \leqslant \varliminf_{n \rightarrow \infty} \mu\left(A_{n}\right)}$．若对某个 $n_{0}$${\displaystyle \mu\left(\bigcup_{n \geqslant n_{\mathrm{c}}} A_{n}\right)<\infty}$，则 ${\displaystyle \mu\left(\varlimsup_{n \rightarrow \infty} A_{n}\right) \geqslant \varlimsup_{n \rightarrow \infty} \mu\left(A_{n}\right)}$．特别地，当 ${\displaystyle \lim _{n \rightarrow \infty} A_{n}}$ 存在，且若对某个 $n_{0}$ 有 ${\displaystyle \mu\left(\bigcup_{n \geqslant n_{0}} A_{n}\right)<\infty}$ 时，有 ${\displaystyle \mu\left(\lim _{n \rightarrow \infty} A_{n}\right)=\lim _{n \rightarrow \infty} \mu\left(A_{n}\right)}$ 成立

3. 完备测度：设 $\mu$ 为 $\sigma$ 域 $\mathscr{F}$ 上的测度，$\mathscr{L}=\{A: A \in \mathscr{F}, \mu(A)=0\}$．又令 $\mathscr{N}=\{N \in \mathcal{P}(\Omega): \textsf{ 存在 } A \in \mathscr{L} \textsf{，使 } N \subseteq A\}$，则 $\mathscr{N}$ 中元素称为 $\mu$ 可略集．若 $\mathscr{N} \subseteq \mathscr{F}$，则称 $\mu$ 在 $\mathscr{F}$ 上为完备的
    1. 可略集：若 $(\Omega, \mathscr{F}, P)$ 为完备概率空间，则 $\mathscr{N}$ 中的元素简称为可略集
    2. 完备化扩张：若 $(\Omega, \mathscr{F}, \mu)$ 为测度空间，$\mathscr{N}$ 为 $\mu$ 可略集全体
        1. $\overline{\mathscr{F}}=\{A \cup N: A \in \mathscr{F}, N \in \mathscr{N}\}$ 为 $\sigma$ 域$，$$\overline{F} \supseteq \mathscr{F}$
        2. 在 $\overline{\mathscr{F}}$ 上，令 $\overline{\mu}(A \cup N)=\mu(A)$，则 $\overline{\mu}$ 是 $\overline{\mathscr{F}}$ 上测度，$\overline{\mu} \upharpoonright {\mathscr{F}}=\mu$，且当 $\mu$ 为概率测度时 $\overline{\mu}$ 亦然
        3. $(\Omega, \overline{F}, \overline{\mu})$ 是完备测度空间，即 $\overline{\mu}$ 在 $\mathscr{F}$ 上是完备的

        称 $(\Omega, \overline{F}, \overline{\mu})$ 为 $(\Omega, \mathscr{F}, \mu)$ 的完备化扩张

### 1.1.4 广义测度

## 1.2 Lesbegue 测度
1. 广义实数集：扩充实数集 $\mathbf R$，得到 $\widehat{\mathbf{R}}=\mathbf{R} \cup \{+\infty, -\infty\}$
    1. 允许以 $+\infty$ 或 $-\infty$ 成为函数值，$\pm \infty$ 也称为非真正的实数．通常的实数则称为有限实数，函数值都是有限实数的函数称为有限函数．因此有界函数必是有限函数，但反之不成立
    2. $+\infty$ 是全体有限实数的上确界，$-\infty$ 是全体有限实数的下确界：$-\infty<a<+\infty$（$a$ 为任何有限实数）．从而对于上（下）方无界的递增（减）数列 $\left\{a_{n}\right\}$，总有 ${\displaystyle \lim _{n \to \infty} a_{n}=+\infty \ (-\infty)}$
    3. 对于任何有限实数 $a$ 有
        1. $a+( \pm \infty)=( \pm \infty)+a=( \pm \infty)-a=a-(\mp \infty)= \pm \infty$
        2. $\dfrac{a}{ \pm \infty}=0$
        3. $(\pm \infty)+( \pm \infty)= \pm \infty$
    4. 对任何有限实数 $a>0\ (<0)$
        1. $a( \pm \infty)=( \pm \infty) a=\dfrac{ \pm \infty}{a}= \pm \infty \ (\mp \infty)$
        2. $(+\infty)(+\infty)=(-\infty)(-\infty)=+\infty$
        3. $(-\infty)(+\infty)=(+\infty)(-\infty)=-\infty$
        4. $0 \cdot( \pm \infty)=( \pm \infty) \cdot 0=0$

        反之，$( \pm \infty)-( \pm \infty),( \pm \infty)+(\mp \infty), \dfrac{ \pm \infty}{ \pm \infty}, \dfrac{\mp \infty}{ \pm \infty}, \dfrac{a}{0}, \dfrac{ \pm \infty}{0}$ 都认为是无意义的

2. 一个定义在 $E \subseteq \widehat{\mathbf{R}}^{n}$ 上的实函数 $f(x)$ 确定了 $E$ 的一组子集 $\{x: x \in E, f(x)>a\}$（简记作 $E[f>a]$），其中 $a$ 取遍一切有限实数．反之，$f(x)$ 本身也由 $E$ 的这组子集完全确定

### 1.2.1 外侧度与内测度
1. 外测度：设 $E$ 为 $\widehat{\mathbf{R}}^{n}$ 中任一点集，对于每一列覆盖 $E$ 的开区间 ${\displaystyle \bigcup_{i=1}^{\infty} I_{i} \supset E}$，作出其的体积总和 ${\displaystyle \mu=\sum_{i=1}^{\infty}\left|I_{i}\right|}$（$\mu$ 可以等于 $\infty$, 不同的区间列一般有不同的 $\mu$），所有这一切的 $\mu$ 组成一个下方有界的数集，其下确界（完全由 $E$ 确定）称为 $E$ 的 $\text{Lesbegue}$ 外测度，简称 $L$ 外测度或外测度，记为 $m^{*} E$，即 ${\displaystyle m^{*} E=\inf _{E \subseteq \bigcup_{i=1}^{\infty} I_{i}} \sum_{i=1}^{\infty}\left|I_{i}\right|}$
    1. 外测度的性质
        1. 非负性：$m^{*} E \geqslant 0$，当 $E$ 为空集时，$m^{*} E=0$
        2. 单调性：设 $A \subseteq B$，则 $m^{*} A \leqslant m^{*} B$
        3. 次可数可加性：${\displaystyle m^{*}\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leqslant \sum_{i=1}^{\infty} m^{*} A_{i}}$
    2. 设 $E \subseteq \widehat{\mathbf{R}}^{n}$，则 $m^{*} I=m^{*}(I \cap E)+m^{*}\left(I \cap E'\right)$ 式对 $\widehat{\mathbf{R}}^{n}$ 中任何开区间都成立的充要条件是对 $\widehat{\mathbf{R}}^{n}$ 中的任何点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$
2. 内测度：设 $E$ 为 $\widehat{\mathbf{R}}^n$ 中的有界集，$I$ 为任一包含 $E$ 的开区间，则称 $|I|-m^*(I-E)$ 为 $E$ 的内测度，记为 $m_{*} E$
    1. $m_{*} E$ 与 $I$ 的选择无关
    2. $0 \leqslant m_{*} E \leqslant m^{*} E$ 恒成立

### 1.2.2 可测性
1. $L$ 可测集：设 $E$ 为 $\widehat{\mathbf{R}}^{n}$ 中的点集，如果对任一点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$，则称 $E$ 是 $\text{Lesbegue}$ 可测的或 $L$ 可测的．此时 $E$ 的 $L$ 外测度 $m^{*} E$ 称为 $E$ 的 $\text{Lesbegue}$ 测度或 $L$ 测度，记为 $m E$，记 $L$ 可测集全体为 $\mathscr{M}$
    1. 集合 $E$ 可测的充要条件是对于任意 $A \subseteq E, B \subseteq E'$ 总有 $m^{*}(A \cup B)=m^{*} A+m^{*} B$
    2. $S$ 可测的充要条件是 $S'$ 可测
    3. 设 $S_{1}, S_{2}$ 可测，则 $S_{1} \cup S_{2}$ 可测且当 $S_{1} \cap S_{2}=\varnothing$ 时，对于任意 $T$ 总有 $m^{*}\left[T \cap\left(S_{1} \cup S_{2}\right)\right]=m^{*}\left(T \cap S_{1}\right)+m^{*}\left(T \cap S_{2}\right)$
        1. 设 $S_{i}\ (i=1,2, \cdots, n)$ 可测，则 ${\displaystyle \bigcup_{i=1}^{n} S_{i}}$ 也可测，且当 $S_{i} \cap S_{j}=\varnothing(i \neq j)$ 时，对于任意集合 $T$ 总有 ${\displaystyle m^{*}\left(T \cap\left(\bigcup_{i=1}^{n} S_{i}\right)\right)=\sum_{i=1}^{n} m^{*}\left(T \cap S_{i}\right)}$
        2. 设 $S_{i}\ (i=1,2, \cdots, n)$ 可测，则 ${\displaystyle \bigcap_{i=1}^{n} S_{i}}$ 也可测

    4. 设 $\left\{S_{i}\right\}$ 是一列互不相交的可测集，则 ${\displaystyle \bigcup_{i=1}^{\infty} S_{i}}$ 也是可测集且 ${\displaystyle m\left(\bigcup_{i=1}^{\infty} S_{i}\right)=\sum_{i=1}^{\infty} m S_{i}}$
        1. 设 $\left\{S_{i}\right\}$ 是一列可测集合，则 ${\displaystyle \bigcup_{i=1}^{\infty} S_{i}}$ 也是可测集合
        2. 设 $\left\{S_{i}\right\}$ 是一列可测集合，则 ${\displaystyle \bigcap_{i=1}^{\infty} S_{i}}$ 也是可测集合
    5. 设 $\left\{S_{i}\right\}$ 是一列递增的可测集合 $S_{1} \subseteq S_{2} \subseteq \cdots \subseteq S_{n} \subseteq \cdots$，令 ${\displaystyle S=\bigcup_{i=1}^{\infty} S_{i}=\lim _{n \rightarrow \infty} S_{n}}$，则 ${\displaystyle m S=\lim _{n \rightarrow \infty} m S_{n}}$

        设 $\left\{S_{i}\right\}$ 是一列递降的可测集合 $S_{1} \supset S_{2} \supset \cdots \supset S_{n} \supset \cdots$，令 ${\displaystyle S=\bigcap_{i=1}^{\infty} S_{i}=\lim _{n \rightarrow \infty} S_{n}}$，则 $m S_{1}<\infty$ 时，${\displaystyle m S=\lim _{n \rightarrow \infty} m S_{n}}$

    6. 正规性：若 $E$ 是一可测集，则有
        1. 外正规性：$m E=\inf \{m G: G$ 是开集$, E \subseteq G\}$
        2. 内正规性：$m E=\sup \{m K: K$ 是紧集$, K \subseteq E\}$

    !!! note "利用外测度与内测度定义可测集"
        设 $E$ 为 $\widehat{\mathbf{R}}^n$ 中有界集，如果 $m^* E=m_{*} E$，则称 $E$ 是 $L$ 可测的．又设 $E$ 是 $\widehat{\mathbf{R}}^n$ 中的无界集，如果对任何开区间 $I$，有界集 $E \cap I$ 都是 $L$ 可测的，则称 $E$ 是 $L$ 可测的．对 $L$ 可测集 $E$，不管它有界或无界，一律称 $m^* E$ 为它的 $L$ 测度，简记为 $m E$

2. 凡 $\text{Borel}$ 集都是 $\text{Lesbegue}$ 可测集
    1. 设 $\Sigma$ 是 $\widehat{\mathbf{R}}^{n}$ 的一个子集族，则称所有包含 $\Sigma$ 的 $\sigma$ 域的交集（即包含 $\Sigma$ 的最小 $\sigma$ 域）为 $\Sigma$ 产生的 $\sigma$ 域
    2. 由 $\widehat{\mathbf{R}}^{n}$ 中全体开集组成的子集族生成的 $\sigma$ 域记为 $\mathscr{B}_n$，称为 $\text{Borel}$ 域．当不至于混淆时可简记为 $\mathscr{B}$
    3. 设集合 $G$ 可表示为一列开集 $\left\{G_{i}\right\}$ 之交集 ${\displaystyle G=\bigcap_{i=1}^{\infty} G_{i}}$，则称 $G$ 为 $G_{\delta}$ 型集

        设集合 $F$ 可表示为一列闭集 $\left\{F_{i}\right\}$ 之并集 ${\displaystyle F=\bigcup_{i=1}^{\infty} F_{i}}$，则称 $F$ 为 $F_{\sigma}$ 型集

        1. 设 $E$ 是任一可测集，则一定存在 $G_{\delta}$ 型集 $G$ 使 $G \supset E$ 且 $m(G - E)=0$
        2. 设 $E$ 是任一可测集，则一定存在 $F_{\sigma}$ 型集 $F$ 使 $F \subseteq E$ 且 $m(E - F)=0$

### 1.2.3 简单函数
1. 可测函数：设 $f(x)$ 是定义在可测集 $E \subseteq \widehat{\mathbf{R}}^{n}$ 的实函数．如果对于任何有限实数 $a$，$E[f>a]$ 都是可测集，则称 $f(x)$ 为定义在 $E$ 上的可测函数
    1. 设 $f(x)$ 是定义在可测集 $E$ 上的实函数，下列任一条件都是 $f(x)$ 在 $E$ 上可测的充要条件
        1. 对任何有限实数 $a, E[f \geqslant a]$ 都可测
        2. 对任何有限实数 $a, E[f<a]$ 都可测
        3. 对任何有限实数 $a, E[f \leqslant a]$ 都可测
        4. 对任何有限实数 $a, b\ (a<b)$，$E[a \leqslant f<b]$ 都可测（但充分性要假定 $f(x)$ 是有限函数）
    2. 设 $f(x)$ 在 $E$ 上可测，则 $E[f=a]$ 总可测，不论 $a$ 是有限实数或 $\pm \infty$
    3. 可测集 $E \subseteq \widehat{\mathbf{R}}^{n}$ 上的连续函数是可测函数
2. 简单函数：设 $f(x)$ 的定义域 $E$ 可分为有限个互不相交的可测集 $E_{1}, E_{2}, \cdots, E_{s}, E={\displaystyle \bigcup_{i=1}^{j} E_{i}}$，使 $f(x)$ 在每个 $E_{i}$ 上都等于某常数 $c_{i}$，则称 $f(x)$ 为简单函数
    1. 设 $f(x)$ 是可测集 $E$ 上的可测函数，$E_{1} \subseteq E$ 为 $E$ 的可测子集，则 $f(x)$ 看作定义在 $E_{1}$ 上的函数时是 $E_{1}$ 上的可测函数

        设 $f(x)$ 定义在有限个可测集 $E_{i} \ (1 \leqslant i \leqslant s)$ 的并集 ${\displaystyle E=\bigcup_{i=1}^{s} E_{i}}$ 上，且 $f(x)$ 在每个 $E_{i}$ 上都可测，则 $f(x)$ 在 $E$ 上也可测

    2. 设 $f(x)$ 与 $g(x)$ 为 $E$ 上的可测函数，则 $E[f>g]$ 与 $E[f \geqslant g]$ 都是可测集
    3. 设 $f(x), g(x)$ 在 $E$ 上可测，则下列函数（假定它们在 $E$ 上有意义）皆在 $E$ 上可测
        1. $f(x)+g(x)$
        2. $|f(x)|$
        3. $\dfrac{1}{f(x)}$
        4. $f(x) \cdot g(x)$
    4. 设 $\left\{f_{n}(x)\right\}$ 是 $E$ 上一列（或有限个）可测函数，则 ${\displaystyle \mu(x)=\inf _{n} f_{n}(x)}$ 与 ${\displaystyle \lambda(x)=\sup _{n} f_{n}(x)}$ 都在 $E$ 上可测
    5. 设 $\left\{f_{n}(x)\right\}$ 是 $E$ 上一列可测函数，则 ${\displaystyle F(x)=\varliminf_{n \rightarrow \infty} f_{n}(x), G(x)=\varlimsup_{n \rightarrow \infty} f_{n}(x)}$ 也在 $E$ 上可测．特别地，当 ${\displaystyle F(x)=\lim _{n \to \infty} f_{n}(x)}$ 存在时，它也在 $E$ 上可测

    !!! note "可测函数与简单函数的关系"
        1. 若 $f(x)$ 在 $E$ 上非负可测，则存在可测简单函数列 $\left\{\varphi_{k}(x)\right\}$ 使得对任意 $x \in E$ 都有 $\varphi_{k}(x) \leqslant \varphi_{k+1}(x) \ (k=1,2, \cdots)$ 且 ${\displaystyle \lim _{k \rightarrow \infty} \varphi_{k}(x)=f(x)}$
        2. 若 $f(x)$ 在 $E$ 上可测，则存在可测简单函数列 $\left\{\varphi_{k}(x)\right\}$ 使得对任意 $x \in E$ 都有 ${\displaystyle \lim _{k \rightarrow \infty} \varphi_{k}(x)=f(x)}$．若 $f(x)$ 在 $E$ 上有界，则上述收敛可以是一致的

3. 设 $\pi$ 是一个与集合 $E$ 的点 $x$ 有关的命题．若存在 $E$ 的子集 $M$，满足 $m M=0$ 使得 $\pi$ 在 $E - M$ 上恒成立， 即 $E - E[\pi$ 成立$]$ 是零测度集，则称 $\pi$ 在 $E$ 上几乎处处成立，或说 $\pi$ $\text{a.e.}$于 $E$
    1. $\text{Egorov}$ 定理：设 $m E<\infty$，$\left\{f_{n}\right\}$ 是 $E$ 上一列 $\text{a.e.}$收敛于一个 $\text{a.e.}$有限的函数 $f$ 的可测函数．则对任意 $\delta>0$，存在子集 $E_{\delta} \subseteq E$ 使 $\left\{f_{n}\right\}$ 在 $E_{\delta}$ 上一致收敛且 $m\left(E - E_{\delta}\right)<\delta$
    2. $\text{Lusin}$ 定理：设 $f(x)$ 是 $E$ 上 $\text{a.e.}$有限的可测函数，则对任意 $\delta>0$，存在闭子集 $F_{\delta} \subseteq E$ 使 $f(x)$ 在 $F_{\delta}$ 上是连续函数且 $m\left(E - F_{\delta}\right)<\delta$
        1. $\text{Lusin}$ 定理的逆命题也成立
        2. 设 $f(x)$ 是 $E \subseteq \widehat{\mathbf{R}}$ 上 $\text{a.e.}$有限的可测函数，则对任意 $\delta>0$，存在闭集 $F \subseteq E$ 及整个 $\widehat{\mathbf{R}}$ 上的连续函数 $g(x)$（$F$ 及 $g(x)$ 依赖于 $\delta$）使得在 $F$ 上 $g(x)=f(x)$ 且 $m(E - F)<\delta$．此外还可要求 ${\displaystyle \sup _{\widehat{\mathbf{R}}} g(x)=\sup _{F} f(x)}$ 及 ${\displaystyle \inf _{\widehat{\mathbf{R}}} g(x)=\inf _{F} f(x)}$
    3. 依测度收敛：设 $\left\{f_{n}\right\}$ 是 $E \subseteq \widehat{\mathbf{R}}^{q}$ 上的一列 $\text{a.e.}$有限的可测函数，若有 $E$ 上 $\text{a.e.}$有限的可测函数 $f(x)$ 有「对任意 $\sigma>0$ 有 ${\displaystyle \lim _{n \to \infty} m E\left[\left|f_{n}-f\right| \geqslant \sigma\right]=0}$」，则称函数列 $\left\{f_{n}\right\}$ 依测度收敛于 $f$，或度量收敛于 $f$，记为 $f_{n}(x) \Rightarrow f(x)$
        1. $\text{a.e.}$收敛的函数列可能不依测度收敛，依测度收敛的函数列可能不 $\text{a.e.}$收敛
        2. $\text{Riesz}$ 定理：设在 $E$ 上 $\left\{f_{n}\right\}$ 依测度收敛于 $f$，则存在子列 $\left\{f_{n_{i}}\right\}$ 在 $E$ 上 $\text{a.e.}$收敛于 $f$
        3. $\text{Lesbegue}$ 定理：设 $m E<\infty$，$\left\{f_{n}\right\}$ 是 $E$ 上 $\text{a.e.}$有限的可测函数列且在 $E$ 上 $\text{a.e.}$收敛于 $\text{a.e.}$有限的函数 $f$，则 $f_{n}(x) \Rightarrow f(x)$
        4. 设 $f_{n}(x) \Rightarrow f(x), f_{n}(x) \Rightarrow g(x)$，则 $f(x)=g(x)$ $\text{a.e.}$于 $E$
