# 1 概率与随机变量

## 1.1 事件与概率
### 1.1.1 事件
1. 概率可测空间：设 $(\Omega, \mathscr{F})$ 为可测空间，对其赋予下述含义
    1. $\Omega$ 表示某一试验中可能结果全体，称 $\Omega$ 为基本空间，$\Omega$ 的元素 $\omega$ 为基本事件
    2. $\mathscr{F}$ 表示随机事件全体，称为事件 $\sigma$ 域

    则称 $(\Omega, \mathscr{F})$ 为概率可测空间

2. 事件：设 $(\Omega, \mathscr{F})$ 为概率可测空间，则 $\mathscr{F}$ 中任一元素 $A$ 都可称为随机事件或事件
    1. 特殊事件
        1. 设 $A \in \mathscr{F}$，则定义 $\widetilde{A}$ 为「在一次试验中 $A$ 含有的任一基本事件出现」
        2. $\Omega$ 作为 $\mathscr{F}$ 的元素称为必然事件，$\varnothing$ 称为不可能事件
    2. 事件的运算
        1. 事件 $A'$ 称为事件 $A$ 的逆事件，表示「$A$ 不发生」的事件
        2. 事件 $A \cup B$ 或 ${\displaystyle \bigcup_{n \geqslant 1} A_{n}}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}\right\}_{n \geqslant 1}$ 的并，分别表示 $A, B$ 或 $\left\{A_{n}\right\}$ 中至少有一个发生的事件

            事件 $A \cap B$ 或 ${\displaystyle \bigcap_{n \geqslant 1} A_{n}}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}\right\}_{n \geqslant 1}$ 的交，表示同时发生的事件．$A \cap B$ 也可记作 $AB$

        3. 若 $A B=\varnothing$，则称事件 $A, B$ 是互不相容的，此时将 $A \cup B$ 记作 $A + B$
        4. 事件 ${\displaystyle \varlimsup_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的上限事件，表示 $\left\{A_{n}\right\}$ 中有无限个同时发生的事件，也记作 $\left\{A_{n}\right.$ i.o. ${\displaystyle \}=\varlimsup_{n \to \infty} A_{n}}$

            事件 ${\displaystyle \varliminf_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的下限事件，表示 $\left\{A_{n}\right\}$ 中除有限个外同时发生的事件

### 1.1.2 概率测度
1. 概率测度：设 $\Omega$ 为一空间，$\mathscr{C} \subseteq \mathcal{P}(\Omega)$ 且 $\varnothing, \Omega \in \mathscr{C}$．若 $\mathscr{C}$ 上的测度 $\mu$ 满足 $\mu(\Omega)=1$，则称 $\mu$ 为概率测度
    1. 概率：事件 $A$ 的概率测度值 $\mu(A)$ 称为 $A$ 的概率
    2. 概率空间： 若 $(\Omega, \mathscr{F})$ 为可测空间，$P$ 为 $\mathscr{F}$ 上的概率测度，则称 $(\Omega, \mathscr{F}, P)$ 为概率空间
        1. $\mathscr{S}$ 为 $\Omega$ 上的半域，$\mu$ 为 $\mathscr{S}$ 上的概率测度，则存在 $\mu$ 在由 $\mathscr{S}$ 张成的域 $\mathscr{A}(\mathscr{S})$ 上唯一延拓 $\nu$，$\nu$ 在 $\mathscr{A}(\mathscr{S})$ 亦是概率测度
        2. 若 $(\Omega, \mathscr{F}, P)$ 为概率空间，$\mathscr{A} \subseteq \mathcal{P}(\Omega)$ 为域，$\mathscr{F}=\sigma(\mathscr{A})$．则对每个 $A \in \mathscr{F}$ 及任一 $\varepsilon>0$，必存在 $B_{\varepsilon} \in \mathscr{A}$，使得 $P\left(A \triangle B_{\varepsilon}\right)<\varepsilon$
2. 概率测度的延拓和生成
    1. 若 $P$ 为域 $\mathscr{A}$ 上的概率测度，则在 $\sigma(\mathscr{A})$ 上必有唯一的延拓 $\overline{P}$，$\overline{P}$ 亦为概率
    2. 若 $P$ 为半域 $\mathscr{S}$ 上的概率测度，则在 $\sigma(\mathscr{S})$ 上必有唯一的延拓 $\overline{P}$，$\overline{P}$ 亦为概率
    3. 若 $\mu$ 为域 $\mathscr{A}$（半域 $\mathscr{S}$）上的 $\sigma$ 有限测度，则在 $\sigma(\mathscr{A})(\sigma(\mathscr{S}))$ 上必有唯一的延拓 $\overline{\mu}$

    !!! note "域上测度延拓定理"
        1. 设 $\mathscr{A}$ 为由 $\Omega$ 子集构成的域，$P$ 为域 $\mathscr{A}$ 上的测度．又 $\left\{A_{n}\right\}_{n \geqslant 1}, \left\{B_{n}\right\}_{n \geqslant 1}$ 为 $\mathscr{A}$ 上的两个递增序列．若 ${\displaystyle \bigcup_{n} A_{n} \subseteq \bigcup_{n} B_{n}}$，则 ${\displaystyle \lim _{n \to \infty} P\left(A_{n}\right) \leqslant \lim _{n \to \infty} P\left(B_{n}\right)}$，进而若 ${\displaystyle \bigcup_{n} A_{n}=\bigcup_{n} B_{n}}$，则 ${\displaystyle \lim _{n \to \infty} P\left(A_{n}\right)=\lim _{n \to \infty} P\left(B_{n}\right)}$
        2. 若 $\mathscr{A}$ 为域，$P$ 为 $\mathscr{A}$ 上概率测度，记 ${\displaystyle \mathscr{A}_{\sigma}=\left\{\bigcup_{m=1}^{\infty} A_{m}: A_{m} \in \mathscr{A}\right\}}$，则 $\mathscr{A} \subseteq \mathscr{A}_{\sigma}$．在 $\mathscr{A}_{\sigma}$ 上令 ${\displaystyle Q\left(\bigcup_{m=1}^{\infty} A_{m}\right)=\lim _{n \rightarrow \infty} P\left(\bigcup_{m=1}^{n} A_{m}\right) }$
            1. 当 $A \in \mathscr{A}_{\sigma}$ 时，$0 \leqslant Q(A) \leqslant 1$
            2. 当 $A_{1}, A_{2} \in \mathscr{A}_{\sigma}$，则 $A_{1} \cup A_{2}, A_{1} A_{2} \in \mathscr{A}_{\sigma}$，且 $Q$ 有强可加性：${\displaystyle Q\left(A_{1} \cup A_{2}\right)+Q\left(A_{1} A_{2}\right)=Q\left(A_{1}\right)+Q\left(A_{2}\right)}$
            3. $Q$ 有单调性：若 $A_{1}, A_{2} \in \mathscr{A}_{\sigma}, A_{1} \subseteq A_{2}$，则 $Q\left(A_{1}\right) \leqslant Q\left(A_{2}\right)$
            4. 若 $A_{n} \in \mathscr{A}_{\sigma}, A_{n} \uparrow A(n \rightarrow \infty)$，则 $A \in \mathscr{A}_{\sigma}$ 且 ${\displaystyle Q(A)=\lim _{n \to \infty} Q\left(A_{n}\right)}$
        3. 对 $A \in \mathcal{P}(\Omega)$，令 $P^{*}(A)=\inf \left\{Q(B): B \supseteq A, B \in \mathscr{A}_{\sigma}\right\}$，称为相应于 $P$ 的外测度
            1. $P^{*}\bigg|_{\mathscr{A}_{\sigma}}=Q$，对 $A \in \mathcal{P}(\Omega)$ 有 $0 \leqslant P^{*}(A) \leqslant 1$
            2. $P^{*}\left(A_{1} \cup A_{2}\right)+P^{*}\left(A_{1} \cap A_{2}\right) \leqslant P^{*}\left(A_{1}\right)+P^{*}\left(A_{2}\right)$．特别地，$P^{*}$ 是半可加的：$P^{*}\left(A_{1} \cup A_{2}\right) \leqslant P^{*}\left(A_{1}\right)+P^{*}\left(A_{2}\right)$
            3. $P^{*}$ 是单调的：若 $A_{1} \subseteq A_{2}$，则 $P^{*}\left(A_{1}\right) \leqslant P^{*}\left(A_{2}\right)$
            4. 若 $A_{n} \uparrow A(n \rightarrow \infty)$，则 $P^{*}(A)=\lim _{n \rightarrow \infty} P^{*}\left(A_{n}\right)$．特别地，$P^{*}$ 是半 $\sigma$ 可加的：${\displaystyle P^{*}\left(\bigcup_{n=1}^{\infty} B_{n}\right) \leqslant \sum_{n=1}^{\infty} P^{*}\left(B_{n}\right)}$
        4. 设 $\mathscr{D}=\left\{D \in \mathcal{P}(\Omega): P^{*}(D)+P^{*}\left(D'\right)=1\right\}$
            1. $\mathscr{D}$ 为 $\sigma$ 域，$\mathscr{D} \supseteq \sigma(\mathscr{A})$
            2. 若 $\overline{P}=P^{*}\bigg|_{\mathscr{D}}$，则 $\overline{P}$ 为 $\mathscr{D}$ 上完备概率测度且 $\overline{P}\bigg|_{\mathscr{A}}=P$
            3. 对每个 $C \in \mathscr{D}$，必有 $E, F \in \sigma(A), E \subseteq C \subseteq F$ 且 $\overline{P}(F- E)=0$

### 1.1.3 乘积概率测度
1. 转移概率：$\left(\Omega_{1}, \mathscr{F}_{1}\right),\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 为两个可测空间，$P\left(\omega_{1}, A_{2}\right)$ 为 $\Omega_{1} \times \mathscr{F}_{2}$ 到 $[0,1]$ 的函数，若满足
    1. 对每个 $\omega_{1} \in \Omega_{1}$，$P\left(\omega_{1}, \cdot\right)$ 是 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 上的概率测度
    2. 对每个 $A_{2} \in \mathscr{F}_{2}$，$P\left(\cdot, A_{2}\right)$ 是 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 上的可测函数

    则称 $P$ 为 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 到 $\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 的转移概率

    1. 设 $\left(\Omega_{1}, \mathscr{F}_{1}\right),\left(\Omega_{2}, \mathscr{F}_{2}\right)$ 为两个可测空间，$P_{1}$ 为 $\left(\Omega_{1}, \mathscr{F}_{1}\right)$ 上的概率测度，$P_{12}$ 是一个转移概率
        - 在 $\left(\Omega_{1} \times \Omega_{2}, \mathscr{F}_{1} \times \mathscr{F}_{2}\right)$ 上存在唯一概率测度 $P$，满足

            $$
            P\left(A_{1} \times A_{2}\right)=\int_{A_{1}} P_{12}\left(\omega_{1}, A_{2}\right) P_{1}\left(\mathrm{d} \omega_{1}\right), \  A_{1} \in \mathscr{F}_{1}, A_{2} \in \mathscr{F}_{2}
            $$

        - 对 $\left(\Omega_{1} \times \Omega_{2}, \mathscr{F}_{1} \times \mathscr{F}_{2}, P\right)$ 上每个非负（或准可积）随机变量 $X$，若 $X_{\omega_{1}}(\cdot)= X\left(\omega_{1}, \cdot\right)$ 表示 $X$ 的 $\omega_{1}$ 截口，则 ${\displaystyle Y\left(\omega_{1}\right)=\int X_{\omega_{1}}\left(\omega_{2}\right) P_{12}\left(\omega_{1}, \mathrm{d} \omega_{2}\right)}$ 是 $\Omega_{1}$ 上关于 $P_{1}$ $\text{a.s.}$有定义且非负（对 $P_{1}$ 准可积）$\mathscr{F}_{1}$ 可测随机变量．进而有

            $$
            \int_{\Omega_{1} \times \Omega_{2}} X \mathrm{d} P=\int_{\Omega_{1}}\left(\int_{\Omega_{2}} X_{\omega_{1}}\left(\omega_{2}\right) P_{12}\left(\omega_{1}, \mathrm{d} \omega_{2}\right)\right) P_{1}\left(\mathrm{d} \omega_{1}\right)
            $$

    2. $\text{Fubini}$ 定理：设 $\left(\Omega_{1}, \mathscr{F}_{1}, P_{1}\right)$ 和 $\left(\Omega_{2}, \mathscr{F}_{2}, P_{2}\right)$ 为两个概率空间，则在 $\left(\Omega_{1} \times \Omega_{2}, \mathscr{F}_{1} \times \mathscr{F}_{2}\right)$ 上存在唯一的一个概率测度 $P$ 满足 ${\displaystyle P\left(A_{1} \times A_{2}\right)=P_{1}\left(A_{1}\right) P_{2}\left(A_{2}\right), \  A_{1} \in \mathscr{F}_{1}, A_{2} \in \mathscr{F}_{2}}$

2. 二维乘积测度：由 $\text{Fubini}$ 定理规定的测度称为乘积测度，记为 $P=P_{1} \times P_{2}$．又记

    $$
    \left(\Omega_{1} \times \Omega_{2}, \mathscr{F}_{1} \times \mathscr{F}_{2}, P\right)=\left(\Omega_{1}, \mathscr{F}_{1}, P_{1}\right) \times\left(\Omega_{2}, \mathscr{F}_{2}, P_{2}\right)
    $$

    称为乘积概率空间

    1. $\left(\Omega_{1} \times \Omega_{2}, \mathscr{F}_{1} \times \mathscr{F}_{2}, P_{1} \times P_{2}\right)$ 上的随机变量 $X$ $\text{a.s.}$ $P$ 为零当且仅当其几乎每个 $\omega_{1}$ 截口 $X_{\omega_{1}}$ 在 $\left(\Omega_{2}, F_{2}, P_{2}\right)$ 上 $\text{a.s.}$ $P_{2}$ 为零
    2. 随机变量 $X$ 在乘积概率空间上可积，则几乎每个 $\omega_{1}$ 截口 $X_{\omega_{1}}$ 在 $\left(\Omega_{2}, \mathscr{F}_{2}, P_{2}\right)$ 可积
    3. 分部积分公式：若 $f, g$ 为 $(a, b]$ 上的右连续有界递增函数，由 $f, g$ 产生的测度仍分别用 $f, g$ 表示，则

        $$
        \begin{aligned}
        \int_{(a, b]} f(x) \mathrm{d} g(x) & =f(b) g(b)\bigg|_{a} ^{b}-\int_{(a, b]} g(x-0) \mathrm{d} f(x) \\
        \int_{(a, b]} f(x-0) \mathrm{d} g(x) & =f(b) g(b)\bigg|_{a} ^{b}-\int_{(a, b]} g(x-0) \mathrm{d} f(x)-\sum_{a, x \leqslant b} \Delta g(x) \Delta f(x)
        \end{aligned}
        $$

        其中 $\Delta g(x)=g(x)-g(x-0), \Delta f(x)=f(x)-f(x-0)$

    4. 联系分布的矩与尾概率：设 $p>0$
        1. 若 $X \in L^{p}$，则对任意满足 $\dfrac{\alpha+1}{\beta}+\gamma=p, \alpha>-1, \beta, \gamma>0$ 的 $\alpha, \beta, \gamma$ 有 ${\displaystyle \sum_{n=1}^{\infty} n^{\alpha} \mathrm{E}\left[|X|^{\gamma} I_{|X|>n^{\beta}}\right]<\infty}$．反之，若对某一组满足上两式的 $\alpha, \beta, \gamma$ 成立，则 $X \in L^{p}$
        2. 若 $X \in L^{p}$，则对任意满足 $\dfrac{\alpha+1}{\beta}+\gamma=p, \  \alpha<-1, \beta, \gamma>0$ 的 $\alpha, \beta, \gamma$ 有

            $$
            \begin{aligned}
            \sum_{n=1}^{\infty} n^{\alpha} \mathrm{E}\left[|X|^{\gamma} I_{|X| \leqslant n^{\beta}}\right]&<\infty \\
            \sum_{n=1}^{\infty} n^{\alpha} \mathrm{E}\left[\left|X \wedge n^{\beta}\right|^{\gamma}\right]&<\infty
            \end{aligned}
            $$

            反之，若对某一组满足上两式的 $\alpha, \beta, \gamma$ 式成立，则 $X \in L^{p}$

3. 无限维乘积测度：若 $P_{T_{2}}$ 为 $\left(\Omega_{T_{2}}, \mathscr{F}_{T_{2}}\right)$ 上的概率，则 $P_{T_{2}}\left(\pi_{T_{1}}^{T_{2}}\right)^{-1}$ 为 $\left(\Omega_{T_{1}}, \mathscr{F}_{T_{1}}\right)$ 上的概率．反之对 $B \in \overline{\mathscr{F}}_{T_{1}}^{T_{2}}$，必存在完全确定的 $A=\pi_{T_{1}}^{T_{2}}(B) \in \mathscr{F}_{T_{1}}$，使 $B=\left(\pi_{T_{1}}^{T_{2}}\right)^{-1} A$．所以对 $\left(\Omega_{T_{1}}, \mathscr{F}_{T_{1}}\right)$ 上的概率 $P_{T_{1}}$，由 $Q(B)=Q\left(\left(\pi_{T_{1}}^{T_{2}}\right)^{-1}(A)\right)=P(A)$ 亦可完全确定地在 $\left(\Omega_{T_{2}}, \overline{\mathscr{F}}_{T_{1}}^{T_{2}}\right)$ 上规定一个概率 $Q$．特别地，由 $P_{T_{1}}$ 可在 $\left(\Omega, \overline{\mathscr{F}}_{T_{1}}\right)$ 上规定一个概率
    1. 设对 $T$ 的有限子集 $T_{1}=\left\{t_{1}, \cdots, t_{n}\right\} \subseteq T$，以 $P_{T_{1}}$ 表示 $\left(\Omega_{T_{1}}, \mathscr{F}_{T_{2}}\right)$ 上的概率测度，则对测度族 $\{P_{T_{1}}, \textsf{ 有限 } T_{1} \subseteq T\}$，在 $(\Omega, \mathscr{F})$ 上存在非负有限可加集函数 $P$，满足对每个有限 $T_{1} \subseteq T$ 都有 $P\left(\pi_{T_{1}}^{T}\right)^{-1}=P_{T_{1}}$，其充要条件是 $\left\{P_{T_{1}}, T_{1} \subseteq T\right\}$ 满足下列相容性条件：对 $T$ 任意有限子集 $T_{1}, T_{2}$, $T_{1} \subseteq T_{2}$，有 $P_{T_{2}}\left(\pi_{T_{1}}^{T_{2}}\right)^{-1}=P_{T_{1}}$
    2. 设 $\left\{P_{t_{1} \cdots t_{n}}, t_{1}, \cdots, t_{n} \in T\right\}$ 为 $\left\{\left(\Omega_{t}, \mathscr{F}_{t}\right), t \in T\right\}$ 的有限维乘积空间上的满足相容性条件的概率测度族，又对每个 $t \in T$，存在 $\mathscr{F}_{t}$ 的子类 $\mathscr{C}_{t}$ 具有有限交性质，且 $P_{t}(A)=\sup \left\{P_{t}(C): C \in \mathscr{C}_{t}, C \subseteq A\right\}, \  A \in \mathscr{F}_{t}$．则在 $\left(\Omega_{T}, \mathscr{F}_{T}\right)$ 上存在唯一概率测度 $P$，满足 $P\left(\pi_{T_{1}}^{T}\right)^{-1}=P_{T_{1}}\  (\textsf{对每个有限 } T_{1} \subseteq T)$
        1. $\text{Kolmogorov}$ 定理：设对每个 $t \in T,\left(\mathbf{R}_{t}, \mathscr{B}_{t}\right)=\left(\mathbf{R}, \mathscr{B}^{1}\right), \mathscr{G}= \left\{F_{t_{1} \cdots t_{n}}: t_{1}, \cdots, t_{n} \in T\right\}$ 为 $\left\{\left(\mathbf{R}_{t}, \mathscr{B}_{t}\right): t \in T\right\}$ 的乘积空间上的相容有限维分布函数族，则在 $\left(\mathbf{R}^{T}, \mathscr{B}^{T}\right)$ 上存在概率测度 $P$，使 $P$ 以 $\mathscr{G}$ 为有限维分布函数族
        2. 称 $\left(\mathbf{R}^{T}, \mathscr{B}^{T}, P\right)$ 为标准概率空间
    3. 设 $\left\{\left(\Omega_{t}, \mathscr{F}_{t}, P_{t}\right), t \in T\right\}$ 为一族概率空间，则在乘积可测空间 $\left(\Omega_{T}, \mathscr{F}_{T}\right)$ 上存在唯一概率测度 $P$，满足对每个有限 $T_{1} \subseteq T$，有 ${\displaystyle P\left(\pi_{T_{1}}^{T}\right)^{-1}=\underset{t \in T_{1}}{\prod} P_{t}}$

## 1.2 随机变量
### 1.2.1 随机变量的概念
1. 随机变量：设 $(\Omega, \mathscr{F})$ 为概率可测空间，则由 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 或 $\left(\widehat{\mathbf{R}}, \mathscr{B}_{\widehat{\mathbf{R}}}\right)$ 的可测函数称为（有限值）随机变量或或广义实值随机变量，也记为 $X \in \mathscr{F}$，通常用 $\text{r.v.}$作为随机变量的简写
    1. 若 $E=\left\{r_{n}\right\}$ 为 $\mathbf{R}$ 中稠密集，则 $X$ 为随机变量的充要条件是对每个 $r_{n} \in E$ 都有 $\left\{\omega: X(\omega) \leqslant r_{n}\right\} \in \mathscr{F}$
    2. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，则 ${\displaystyle \sup _{n \geqslant 1} X_{n},  \inf _{n \geqslant 1} X_{n}, \varlimsup_{n \rightarrow \infty} X_{n}, \varliminf_{n \rightarrow \infty} X_{n}}$ 都是随机变量
2. 离散随机变量：若存在 $(\Omega, \mathscr{F})$ 的一个有限分割 $\left\{A_{i}\right\}_{i \in I}$（即 $I$ 为有限的，$A_{i} \in \mathscr{F}$，且 $A_{i} A_{j}=\varnothing, i \neq j, {\displaystyle \sum_{i \in I} A_{i}=\Omega}$）及互不相同的实数 $\left\{x_{i}\right\}_{i \in I}$，使 $\Omega$ 上的函数 $X$ 可表示为 $X(\omega)=x_{i}$，当 $\omega \in A_{i}, i \in I$，则称 $X$ 为离散随机变量．显然离散随机变量是随机变量，且若 $x_{i}$ 互不相同，$x_{i}$ 与 $A_{i}$ 由 $X$ 唯一确定．对 $A \in \mathscr{F}$，$I_{A}(\omega)$ 是离散随机变量，$X$ 可表示为 ${\displaystyle X(\omega)=\sum_{i \in I} x_{i} I_{A_{i}}(\omega)}$

    1. $(\Omega, \mathscr{F})$ 上的离散随机变量全体构成一个代数和格
    2. $X$ 为 $(\Omega, \mathscr{F})$ 上的随机变量的充要条件是存在离散随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，使 ${\displaystyle X(\omega)=\lim _{n \rightarrow \infty} X_{n}(\omega), \  \forall \omega \in \Omega}$．且当 $X$ 为非负时，$\left\{X_{n}\right\}$ 可取成是非负递增的；当 $|X| \leqslant M$ 时，$\left\{X_{n}\right\}$ 也可取成是 $\left|X_{n}\right| \leqslant M$ 的
        1. 若 $X, Y$ 为随机变量，则对任意实数 $a, b$，只要 $a X+b Y, X Y, X / Y, X \vee Y, X \wedge Y$ 对每个 $\omega$ 有意义（即不发生 $0 \cdot \infty, (+\infty)+(-\infty), 0 / 0, \infty / \infty$ 等情况），它们就都是随机变量
        2. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量列，则 ${\displaystyle \left\{\omega: \varlimsup_{n \to \infty} X_{n}(\omega)=\varliminf_{n \to \infty} X_{n}(\omega)\right\}}$ 是 $\mathscr{F}$ 可测的
    3. $\text{Doob}$ 定理：若 $f$ 是 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，$\sigma(f)= f^{-1}[\mathscr{E}]$，则 $(\Omega, \mathscr{F})$ 上的随机变量 $X$ 为 $\sigma(f)$ 可测的充要条件是存在 $(E, \mathscr{E})$ 上的随机变量 $h$，使 $X=h \circ f$
    4. 若 $\mathscr{H}$ 为 $\Omega$ 上某些有界实函数的集合，则存在 $\Omega$ 上 $\sigma$ 域 $\mathscr{F}_{1}$，使 $\mathscr{H}$ 为 $\left(\Omega, \mathscr{F}_{1}\right)$ 有界随机变量全体的充要条件是
        1. $\mathscr{H}$ 是线性空间
        2. $1 \in \mathscr{H}$
        3. $\mathscr{H}$ 是格
        4. 若 $\left\{f_{n}\right\}_{n \geqslant 1}$ 是 $\mathscr{H}$ 中一致有界递增随机变量序列，${\displaystyle f=\lim _{n \to \infty} f_{n}}$, 则 $f \in \mathscr{H}$，且此时 $\mathscr{F}_{1}=\sigma(f, f \in \mathscr{H})$

3. 多维随机变量：若 $X_{1}, X_{2}, \cdots, X_{n}$ 为 $n$ 个随机变量，则 $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 称为 $n$ 维随机变量，也称随机向量
    1. $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量的充要条件是 $X$ 为 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 的可测映射，且 $\sigma(X)=\sigma \ \left(X_{i}, 1 \leqslant i \leqslant n\right)$
    2. 若 $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量，则有限随机变量 $Y$ 为 $\sigma(X)$ 可测的充要条件是存在 $n$ 元 $\text{Borel}$ 函数 $h\left(x_{1}, x_{2}, \cdots, x_{n}\right)$，使 $Y=h\left(X_{1}, X_{2}, \cdots, X_{n}\right)$
    3. 设 $\left\{X_{i}, i \in J\right\}$ 为 $(\Omega, \mathscr{F})$ 上的一族随机变量，则
        1. $\Omega$ 上有限实值函数 $Y$ 为 $\sigma\left(X_{i}, i \in J\right)$ 可测随机变量的充要条件是存在至多为可数的子集 $I$ 及 $\text{Borel}$ 函数 $f$，使 $Y=f\left[X_{i}\right]_{i \in I}$
        2. 若 $A \in \sigma\left(X_{i}, i \in J\right)$，必有 $J$ 的至多为可数的子集 $I$，使 $A \in \sigma\left(X_{i}\right)_{i \in I}$

### 1.2.2 随机变量的等价类
1. 几乎必然成立：设 $D(\omega)$ 表示与 $\omega \in \Omega$ 有关的一个论断，若概率测度 $P$ 有 $P(\{\omega \in \Omega: D(\omega)\}) = 1$ 成立，则称 $D(\omega)$ 在 $\Omega$ 上几乎必然成立或 $D(\omega)$ $\text{a.s.}$于 $\Omega$
    1. 此时 $D(\omega)$ $\text{a.e.}$于 $\Omega$
    2. 特别地，对随机变量 $X, Y$，若 $P[X \neq Y]=0$，则记 $X=Y$ $\text{a.s.}$，记作 $X \sim Y$，则 $\sim$ 构成随机变量间的等价关系
2. 随机变量的等价类：记与 $X$ 等价的元素全体为 $\widetilde{X}=\left\{X^{\prime}: X^{\prime}\sim X \text{ a.s.}\right\}$．任取类内元素作为代表，同时规定等价类间的运算
    1. $c \widetilde{X} =\left\{c X^{\prime}: X^{\prime} \sim X\right\}$
    2. $\widetilde{X}+\widetilde{Y} =\left\{X^{\prime}+Y^{\prime}: X^{\prime} \sim X, Y^{\prime} \sim Y\right\}$
    3. $\widetilde{X} \widetilde{Y} =\left\{X^{\prime} Y^{\prime}: X^{\prime} \sim X, Y^{\prime} \sim Y\right\}$
    4. $\widetilde{X} \vee \widetilde{Y} =\left\{X^{\prime} \vee Y^{\prime}: X^{\prime} \sim X, Y^{\prime} \sim Y\right\}$
    5. $\widetilde{X} \wedge \widetilde{Y} =\left\{X^{\prime} \wedge Y^{\prime}: X^{\prime} \sim X, Y^{\prime} \sim Y\right\}$

### 1.2.3 随机变量的收敛性
1. 几乎必然收敛：随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$ 若有 ${\displaystyle \limsup _{n \to \infty} X_{n}=\liminf _{n \to \infty} X_{n}}$ $\text{a.s.}$，则不计等价类内的差别其唯一确定的极限 ${\displaystyle X=\limsup _{n \to \infty} X_{n}}$ 也记为 ${\displaystyle X=\lim _{n \to \infty} X_{n}}$ 或 $X_{n} \stackrel{\text{a.s.}}{\longrightarrow} X$，并称 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为几乎必然收敛于 $X$ 或以概率 $1$ 收敛于 $X$
    1. 本性上（下）确界：设 $\left\{X_{i}\right\}_{i \in I}$ 为一族随机变量，则必有唯一（不计 $\text{a.s.}$相等差别）随机变量 $Y$（可取 $\pm \infty$）满足
        1. 对每个 $i \in I$，$X_{i} \leqslant Y$ $\text{a.s.}$
        2. 若 $Y^{\prime}$ 也满足对每个 $i \in I, X_{i} \leqslant Y^{\prime}$ $\text{a.s.}$，则 $Y \leqslant Y^{\prime}$ $\text{a.s.}$

        称 $Y$ 为 $\left\{X_{i}\right\}_{i \in I}$ 的本性上确界，记为 $\underset{i \in I}{\operatorname{ess sup}} X_{i}$ 或 $\underset{i \in I}{\operatorname{esup}} X_{i}$

        同样, $\underset{i \in I}{\operatorname{ess inf}} X_{i} =-\underset{i \in I}{\operatorname{ess sup}} (-X_{i})$, 称为 $\left\{X_{i}\right\}_{i \in I}$ 的本性下确界

    2. $\text{a.s.}$收敛的性质
        1. 随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$ $\text{a.s.}$收敛于有限随机变量 $X$ 的充要条件是 ${\displaystyle P\left(\bigcap_{N=1}^{\infty} \bigcup_{n=N}^{\infty}\left\{\left|X_{n}-X\right|>\varepsilon\right\}\right)=0, \forall \varepsilon>0}$
        2. 随机变量序列 $\left\{X_{n}, n \geqslant 1\right\}$ $\text{a.s.}$收敛于有限随机变量的充要条件是它为 $\text{a.s.}$收敛意义下的 $\text{Cauchy}$ 序列，即当 $m, n \rightarrow \infty,\left\{X_{n}-X_{m}\right\}_{m, n \geqslant 1}$ $\text{a.s.}$收敛于零，或等价地 ${\displaystyle P\left(\bigcap_{N=1}^{\infty} \bigcup_{n, m=N}^{\infty}\left\{\left|X_{n}-X_{m}\right|>\varepsilon\right\}\right)=0, \forall \varepsilon>0}$
        3. 若正数列 $\left\{\varepsilon_{n}\right\}$ 满足 ${\displaystyle \sum_{n \geqslant 1} \varepsilon_{n}<\infty}$，又随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$ 满足 ${\displaystyle \sum_{n=1}^{\infty} P\left(\left|X_{n+1}-X_{n}\right|>\varepsilon_{n}\right)<\infty}$，则 $\left\{X_{n}\right\}_{n \geqslant 1}$ $\text{a.s.}$收敛于有限随机变量

2. 依概率收敛：随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，若存在有限随机变量 $X$，使 ${\displaystyle \lim _{n \rightarrow \infty} P\left(\left|X_{n}-X\right|>\varepsilon\right)=0, \forall \varepsilon>0}$，则称 $\left\{X_{n}\right\}_{n \geqslant 1}$ 依概率收敛于 $X$，记为 $X_{n} \stackrel{P}{\longrightarrow} X$ 或 $\underset{n \rightarrow \infty}{\operatorname{pr-lim}}=X$
    1. 若随机变量列 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为依概率收敛下的 $\text{Cauchy}$ 基本列，即 ${\displaystyle \lim _{n, m \rightarrow \infty} P\left(\left|X_{n}-X_{m}\right|>\varepsilon\right)=0, \forall \varepsilon>0}$，则必有 $\text{a.s.}$收敛于有限随机变量的子序列 $\left\{X_{n_{k}}\right\}_{k \geqslant 1}$
    2. 设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列
        1. 若 ${\displaystyle \lim _{n \rightarrow \infty} X_{n}=X}$ $\text{a.s.}$，且 $X$ 为有限随机变量，则 $\underset{n \rightarrow \infty}{\operatorname{pr-lim}} X_{n}=X$
        2. $\underset{n \rightarrow \infty}{\operatorname{pr-lim}} X_{n}=X$ 的充要条件是 $\left\{X_{n}\right\}$ 为依概率收敛下的 $\text{Cauchy}$ 基本列

3. 一阶平均收敛：对 $(\Omega, \mathscr{F}, P)$ 上可积随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，若存在可积随机变量$X$，使得 ${\displaystyle \lim _{n \to \infty} \mathrm{E}\left|X_{n}-X\right|=0}$，则称 $\left\{X_{n}\right\}$（一阶）平均收敛或 $L^{1}$ 收敛于 $X$，记为 $X_{n} \stackrel{L^{1}}{\longrightarrow} X$
    1. 一致可积：设 $(\Omega, \mathscr{F}, P)$ 上可积随机变量族为 $\left\{X_{i}\right\}_{i \in I}$，若 ${\displaystyle \lim _{N \rightarrow \infty} \sup _{i \in I} \int_{\left|X_{i}\right|>N}\left|X_{i}\right| \mathrm{dP}=0}$，则称 $\left\{X_{i}\right\}_{i \in I}$ 为一致可积的
        1. 设 $(\Omega, \mathscr{F}, P)$ 上可积随机变量族为 $\mathscr{H}=\left\{X_{i}\right\}_{i \in I}$
            - 若 $I$ 为有限集，则 $\mathscr{H}$ 一致可积
            - 若对每个 $i \in I,\left|X_{i}\right| \leqslant Y$，$Y$ 可积，则 $\mathscr{H}$ 一致可积
            - 若存在 $p>1, \sup _{i}$ E $\left|X_{i}\right|^{p}<\infty$，则 $\mathscr{H}$ 一致可积
        2. $(\Omega, \mathscr{F}, P)$ 上可积随机变量族 $\mathscr{H}=\left\{X_{i}\right\}_{i \in I}$ 为一致可积的充要条件是
            - 一致绝对连续：${\displaystyle \lim _{\delta \rightarrow 0} \sup _{P(A)<\delta} \sup _{i \in I} \int_{A}\left|X_{i}\right| \mathrm{dP}=0}$
            - 积分一致有界：${\displaystyle \sup _{i \in I} E\left|X_{i}\right|<\infty}$
    2. 对可积随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，下列条件等价
        1. $X_{n} \stackrel{L^{1}}{\longrightarrow} X$
        2. $\left\{X_{n}\right\}$ 为 $L^{1}$ 基本列，即 $\lim _{n, m \rightarrow \infty} \mathrm{E}\left|X_{n}-X_{m}\right|=0$
        3. $\left\{X_{n}\right\}_{n \geqslant 1}$ 为一致可积的且 $X_{n} \stackrel{P}{\longrightarrow} X$
    3. $\text{Jensen}$ 不等式：设 $f$ 为 $(a, b) \subseteq(-\infty,+\infty)$ 上的凸函数，$X$ 为取值 $(a, b)$ 的可积随机变量，则有 $\mathrm{E}[f(X)] \geqslant f(\mathrm{E} X)$
4. $p$ 阶平均收敛：对 $p \geqslant 1$ 及随机变量等价类规定 $L^{p}(\Omega, \mathscr{F}, P)=\left\{X: X \textsf{ 为随机变量，}\|X\|_{p}<\infty\right\}$，称它为 $(\Omega, \mathscr{F}, P)$ 上的 $L^{p}$ 空间，简称 $L^{p}$ 空间．对 $L^{p}$ 中元素列 $\left\{X_{n}\right\}$ 及 $Y$，若 ${\displaystyle \lim _{n \rightarrow \infty}\left\|X_{n}-Y\right\|_{p}=0}$，则称 $\left\{X_{n}\right\}$ $p$ 次平均收敛或 $p$ 阶平均收敛于 $Y$，记为 $X_{n} \stackrel{L^{p}}{\longrightarrow} Y$．由于当 $p<\infty$ 时，$P\left(\left|X_{n}-Y\right|>\varepsilon\right) \leqslant \varepsilon^{-p} \ \mathrm{E}\left|X_{n}-Y\right|^{p}$，因此 $X_{n} \stackrel{L^{p}}{\longrightarrow} Y$，必有 $X_{n} \stackrel{P}{\longrightarrow} Y$
    1. 对实随机变量 $X$，记

        $$
        \begin{aligned}
        \|X\|_{p} & =(\mathrm{E}|X| p)^{\frac{1}{p}} \\
        \|X\|_{\infty} & =\sup \{x: P(|X|>x)>0\}
        \end{aligned}
        $$

        1. $\text{H}\ddot{\mathrm o}\text{der}$ 不等式：设 $p \geqslant 1, q \geqslant 1$ 满足 $\dfrac{1}{p}+ \dfrac{1}{q}=1$（约定 $1+ \dfrac{1}{\infty}=1$），$X, Y$ 为实值随机变量，则有 $E|X Y| \leqslant\|X\|_{p}\|Y\|_{q}$，且对 $1 \leqslant r \leqslant r^{\prime} \leqslant \infty$ 有 $\|X\|_{r} \leqslant\|X\|_{r^{\prime}}$
        2. $\text{Minkowski}$ 不等式：对随机变量 $X, Y$ 及实数 $c, p \geqslant 1$，有 ① $\|c X\|_{p}=|c|\|X\|_{p}$；② $\|X+Y\|_{p} \leqslant\|X\|_{p}+\|Y\|_{p}$

    2. $L^{p}$ 的性质
        1. $\|\cdot\|_{p}$ 是 $L^{p}$ 中范数，$L^{p}$ 是线性赋范空间
        2. 对 $p \in[1, \infty], L^{p}$ 为 $\text{Banach}$ 空间，且是一个完备格
        3. 若在 $L^{2}(\Omega, \mathscr{F}, P)$ 中取 $(X, Y)=\mathrm{E}[X Y]$，则 $(X, Y)$ 是内积，$L^{2}(\Omega, \mathscr{F}, P)$ 是 $\text{Hilbert}$ 空间，且也是一个完备格
    3. 对 $1 \leqslant p \leqslant \infty$ 及 $L^{p}$ 中元素列 $\left\{X_{n}\right\}$，下列两个事实等价
        1. $X_{n} \stackrel{L^{p}}{\longrightarrow} X$
        2. $\left\{X_{n}\right\}$ 是基本列，即 ${\displaystyle \lim _{n, m \rightarrow \infty}\left\|X_{n}-X_{m}\right\|_{p}=0}$

        当 $1 \leqslant p<\infty$ 时，上述事实又与下列事实等价

        - $\left\{\left|X_{n}\right|^{p}\right\}_{n \geqslant 1}$ 一致可积，且 $X_{n} \stackrel{P}{\longrightarrow} X$

    4. 对 $p \in [1, \infty)$ 及随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，若存在 $Y \in L^{p} \ (\Omega, \mathscr{F}, P)$ 使对每个 $n$ 都有 $\left|X_{n}\right| \leqslant Y$，则当 $n \rightarrow \infty$ 时下列两个事实等价
        1. $X_{n} \stackrel{p}{\rightarrow} X$
        2. $X_{n} \stackrel{L^{p}}{\longrightarrow} X$

## 1.3 概率分布
### 1.3.1 概率分布的概念
1. 概率分布：若 $(\Omega, \mathscr{F}, \mu)$ 为测度空间，$f$ 为 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，则 $\nu(B)=\mu\left(f^{-1}(B)\right), \ B \in \mathscr{E}$ 规定 $(E, \mathscr{E})$ 上的测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的测度．特别地当 $\mu$ 为概率测度时，$\nu$ 也是概率测度，称为 $f$ 在 $(E, \mathscr{E})$ 上诱导的概率分布
2. 分布函数：设 $(\Omega, \mathscr{F}, P)$ 为概率空间，$X$ 为有限实值随机变量, 则 $F(x)=P[X \leqslant x]$ 称为 $X$ 的分布函数．若 $X=\left(X_{1}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量，则 $F\left(x_{1}, x_{2}, \cdots, x_{n}\right)=P\left[X_{1} \leqslant x_{1}, X_{2} \leqslant x_{2}, \cdots, X_{n} \leqslant x_{n}\right]$ 称为 $X$ 的 $n$ 维分布函数
    1. 若 $F(x)$ 为有限实值随机变量 $X$ 的分布函数
        1. $F(x)$ 单调不减
        2. $F(x)$ 右连续
        3. ${\displaystyle \lim _{x \rightarrow-\infty} F(x)=0, \lim _{x \rightarrow+\infty} F(x)=1}$

        反之，若 $F(x)$ 为 $\mathbf{R}$ 上满足上述命题的函数，则必存在概率空间 $(\Omega, \mathscr{F}, P)$ 及其上的随机变量 $X$ 使 $P[X \leqslant x]=F(x)$．取 $\Omega=\mathbf{R}, \mathscr{F}=\mathscr{B}$，$P$ 为由 $F$ 在 $(\mathbf{R}, \mathscr{B})$ 上生成的 $L-S$ 测度，则它是一个概率测度；令 $X(x)=x, x \in \mathbf{R}$，则它是一个随机变量且 $P[X \leqslant y]=P\{x: x \leqslant y\}=F(y)$．分别称 $(\mathbf{R}, \mathscr{B}, P)$ 和 $X$ 为标准概率空间和标准随机变量

    2. 若随机向量 $\left(X_{1}, \cdots, X_{n}\right)$ 和 $\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同 $n$ 维分布函数，则对 $\mathbf{R}^{n}$ 到 $\mathbf{R}^{m}$ 的任一 $\text{Borel}$ 函数 $g$，$g\left(X_{1}, \cdots, X_{n}\right)$ 和 $g\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同的分布，即对一切 $\mathbf{R}^{m}$ 中的 $\text{Borel}$ 集 $B$ 都有 $P\left\{g\left(X_{1}, \cdots, X_{n}\right) \in B\right\}=P\left\{g\left(Y_{1}, \cdots, Y_{n}\right) \in B\right\}$

3. 密度函数

### 1.3.2 概率分布实例

## 1.4 期望与方差
### 1.4.1 数学期望
1. 离散随机变量的期望：若 ${\displaystyle X(\omega)=\sum_{i} x_{i} I_{A_{i}}(\omega)}$ 为离散随机变量，则称 ${\displaystyle \sum_{i} x_{i} P\left(A_{i}\right)}$ 为 $X$ 的期望或 $X$ 关于 $P$ 的积分，记为

    $$
    \mathrm{E}[X], \mathrm{E} X, \int X(\omega), \int X \mathrm{dP} \textsf{ 或 } \int X
    $$

    1. 若 $\mathscr{E}$ 表示 $(\Omega, \mathscr{F})$ 上离散随机变量全体
        1. 期望 $\mathrm{E} X$ 是唯一满足 $\mathrm{E}\left(I_{A}\right)=P(A)$ 的 $\mathscr{E}$ 上的正线性泛函
        2. $\mathrm{E}[\cdot]$ 在 $\mathscr{E}$ 上是单调的，且若 $\left\{X_{n}\right\}_{n \geqslant 1} \subseteq \mathscr{E}, X_{n} \uparrow(\textsf{或 }\downarrow) X \in \mathscr{E}$，则 $\mathrm{E}\left(X_{n}\right) \uparrow(\textsf{或 } \downarrow) \mathrm{E}(X)$
        3. 若 $\mathrm{E}(\cdot)$ 为 $\mathscr{E}$ 上正线性泛函，$\mathrm{E}(1)=1$，且当 $\mathscr{E}$ 中序列 $X_{n} \downarrow 0$ 时，$\mathrm{E} X_{n} \downarrow 0$，则由 $Q(A)=\mathrm{E}\left(I_{A}\right)$ 可规定 $(\Omega, \mathscr{F})$ 上的概率测度
    2. 若 $\mathscr{E}_{+}$ 表示非负离散随机变量全体，$\left\{X_{n}\right\}_{n \geqslant 1},\left\{Y_{n}\right\}_{n \geqslant 1}$ 都是 $\mathscr{E}_{+}$ 中递增序列，且 ${\displaystyle \lim _{n \to \infty} X_{n} \leqslant \lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n} \leqslant \lim _{n \to \infty} E Y_{n}}$．特别地，若 ${\displaystyle \lim _{n \to \infty} X_{n}=\lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n}=\lim _{n \to \infty} \mathrm{E} Y_{n}}$

2. 广义实值随机变量的期望：广义实值随机变量 $X$ 若 $\mathrm{E}\left[X^{+}\right]<\infty$ 及 $\mathrm{E}\left[X^{-}\right]<\infty$，则称 $X$ 为可积的，且以 $\mathrm{E} X=\mathrm{E} [X^{+}]-\mathrm{E} [X^{-}]$ 表示 $X$ 关于 $P$ 的积分，也称为期望或数学期望，记为 ${\displaystyle \int X \mathrm{dP}}$ 等．一般地，若 $\mathrm{E} X^{+}, \mathrm{E} X^{-}$ 中至少有一个取有限值，则称 $X$ 为准可积的，用 $\mathrm{E} X=\mathrm{E}\left[X^{+}\right]-\mathrm{E}\left[X^{-}\right]$表示 $X$ 关于 $P$ 的积分或期望
    1. 记 ${\displaystyle \mathscr{G}_{+}=\left\{X=\lim _{n \to \infty} \uparrow X_{n}: X_{n} \in \mathscr{E}_{+}\right\}}$，对 $X \in \mathscr{G}_{+}$，若 ${\displaystyle X=\lim _{n \to \infty} \uparrow X_{n}, X_{n} \in \mathscr{E}_{+}}$，令 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$
        1. $\mathscr{G}_{+}$ 为 $(\Omega, \mathscr{F})$ 上非负随机变量全体
        2. 由 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$ 规定的 $E[\cdot]$ 是完全确定的
        3. $0 \leqslant \mathrm{E} X \leqslant \infty\left(X \in \mathscr{G}_{+}\right)$
        4. 在 $\mathscr{G}_{+}$ 中若 $X_{1} \leqslant X_{2}$，则 $\mathrm{E} X_{1} \leqslant \mathrm{E} X_{2}$
        5. 若 $X \in \mathscr{G}_{+}, c \geqslant 0$，则 $c X \in \mathscr{G}_{+}$ 且 $\mathrm{E}[c X]=c \mathrm{E}[X]$
        6. 若 $X_{1}, X_{2} \in \mathscr{G}_{+}$，则 $X_{1}+X_{2}, X_{1} \vee X_{2}, X_{1} \wedge X_{2} \in \mathscr{G}_{+}$，且

            $$
            \mathrm{E}\left[X_{1}+X_{2}\right]=\mathrm{E}\left[X_{1}\right]+\mathrm{E}\left[X_{2}\right]=\mathrm{E}\left[X_{1} \vee X_{2}\right]+\mathrm{E}\left[X_{1} \wedge X_{2}\right]
            $$

        7. $\left\{X_{n}\right\}_{n \geqslant 1}$ 为 $\mathscr{G}_{+}$ 中递增序列，则 ${\displaystyle \lim _{n \to \infty} X_{n}=X \in \mathscr{G}_{+}}$ 且 ${\displaystyle \mathrm{E} \lim _{n \to \infty} \uparrow X_{n}=\lim _{n \to \infty} \uparrow \mathrm{E} X_{n}}$

    2. 若 $\mathrm{E}[\cdot]$ 表示概率空间 $(\Omega, \mathscr{F}, P)$ 上的准可积随机变量的期望
        1. $E X \in \mathbf\{\widehat{R}\}, E X \in \mathbf{R}$ 的充要条件是 $X^{+}, X^{-}$ 都可积，且这时必有 $P[X= \pm \infty]=0$
        2. 若 $X \geqslant 0$（或更一般地 $P[X<0]=0$），则 $\mathrm{E} X \geqslant 0$，且这时 $\mathrm{E} X=0$ 的充要条件是 $P[X=0]=1$
        3. 对每个 $c \in \mathbf{R}$ 都有 $\mathrm{E}[c X]=c \mathrm{E} X$．又若 $X+Y$ 有确定的含义，且 $X^{-}, Y^{-}$（或 $X^{+}, Y^{+}$）可积，则 $\mathrm{E}[X+Y]=\mathrm{E} X+\mathrm{E} Y$．特别地，当 $X, Y$ 中至少有一个为可积时，前式必成立
        4. 若 $X \leqslant Y$，且 $\mathrm{E} X, \mathrm{E} Y$ 存在，则 $\mathrm{E} X \leqslant \mathrm{E} Y$
    3. $\text{Markov}$ 不等式：若 $X$ 为非负随机变量，则有

        $$
        \begin{aligned}
        P[X \geqslant a] & \leqslant \dfrac{1}{a} \mathrm{E}\left[X I_{(X \geqslant a)}\right] \leqslant \dfrac{1}{a} \mathrm{E} X, \  a \geqslant 0 \\
        P[|X| \geqslant a] & \leqslant \dfrac{1}{a^{p}} \mathrm{E}|X|^{p}, \  a>0, p>0 \\
        P[|X| \geqslant a] & \leqslant \dfrac{1}{f(a)} \mathrm{E}[f(|X|)]
        \end{aligned}
        $$

    4. $\text{Lesbegue}$ 控制收敛定理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$\left|X_{n}\right| \leqslant Y, Y$ 可积，且 ${\displaystyle \lim _{n \to \infty} X_{n}=X}$ 存在，则 ${\displaystyle \lim _{n \to \infty} \mathrm{E} X_{n}=\mathrm{E} X}$
        1. $\text{Levi}$ 引理
            - 若 $X_{n} \uparrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{-}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \uparrow \mathrm{E} X_{n}=\mathrm{E} X}$
            - 若 $X_{n} \downarrow X$，且对某个 $n_{0}$，$X_{n_{0}}^{+}$ 可积，则 ${\displaystyle \lim _{n \to \infty} \downarrow \mathrm{E} X_{n}=\mathrm{E} X}$
        2. $\text{Fatou}$ 引理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$Y, Z$ 为可积随机变量
            - 若 $X_{n} \geqslant Z, n \geqslant n_{0}$，则 ${\displaystyle E\left[\varlimsup_{n \to \infty} X_{n}\right] \leqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$
            - 若 $X_{n} \leqslant Y, n \geqslant n_{0}$，则 ${\displaystyle \mathrm{E}\left[\varlimsup_{n \to \infty} X_{n}\right] \geqslant \varlimsup_{n \to \infty} \mathrm{E} X_{n}}$

3. 不定积分：设 $X$ 为随机变量，$A \in \mathscr{F}$．若 $X$ 准可积，则记 ${\displaystyle \int_{A} X \mathrm{dP}=\mathrm{E}\left[X I_{A}\right]}$，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$ 看作为 $A \in \mathscr{F}$ 的函数时称为 $X$ 的不定积分
    1. 设 $X$ 准可积，${\displaystyle \phi(A)=\int_{A} X \mathrm{dP}}$
        1. $\phi$ 是 $\mathscr{F}$ 上的 $\sigma$ 可加集函数，特别当 $X \geqslant 0$ 时，$\phi$ 是 $\mathscr{F}$ 上的测度
        2. 若 $P(A)=0$，则 $\phi(A)=0$
    2. 对 $(\Omega, \mathscr{F}, P)$ 上的 $n$ 维随机变量 $X$，其分布函数 $F\left(x_{1}, \cdots, x_{n}\right)$ 可在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上产生一个 $\text{Lebesgue}-\text{Stieltjes}$ 测度，即 $X$ 在 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 上的分布．记这一测度与分布函数用同一符号，$\mathbf{R}^{n}$ 上 $\text{Borel}$ 函数关于它的积分记为 ${\displaystyle \int f \mathrm{d} F}$，${\displaystyle \int f(x) \mathrm{d} F(x)}$ 或 ${\displaystyle \int f(x) F(\mathrm{d} x)}$，也称为 $f$ 关于 $F$ 的 $\text{Lebesgue}-\text{Stieltjes}$ 积分，简称 $L-S$ 积分
    3. 若 $X$ 为 $(\Omega, \mathscr{F}, P)$ 上 $n$ 维随机变量，$F$ 为 $X$ 的 $n$ 元分布函数．又 $g\left(x_{1}, \cdots, x_{n}\right)$ 为 $n$ 元 $\text{Borel}$ 函数，$F_{g(X)}$ 表示 $g(X)$ 的分布函数，则当 $\mathrm{E} g(X)$ 存在时，${\displaystyle \mathrm{E} g(X)=\int_{\Omega} g(X(\omega)) P(\mathrm{d} \omega)=\int_{\mathbf{R}} y \mathrm{d} F_{g(X)}(y)=\int_{\mathbf{R}^{n}} g\left(x_{1}, \cdots, x_{n}\right) \mathrm{d} F\left(x_{1}, \cdots, x_{n}\right)}$．因此随机变量函数 $g(X)$ 的期望 ${\displaystyle \mathrm{E}[g(X)]=\int y \mathrm{d} F_{g(X)}(y)=\int g(x) \mathrm{d} F_{X}(x)}$

### 1.4.2 方差与协方差
1. 矩的相关概念：若 $X$ 为 $(\Omega, \mathscr{F}, P)$ 上的随机变量且 $p>0$，称 $E|X|^{p}$ 为 $X$ 的 $p$ 阶绝对矩，$\mathrm{E} X^{p}$（若其存在）称为 $X$ 的 $p$ 阶矩
    1. 方差：$\mathrm{D}X = \mathrm{E}[X-\mathrm{E} X]^{2}$ 称为 $X$ 的方差，也可记作 $\operatorname{Var}(X)$，方差的算术平方根称为标准差
    2. 协方差：若 $Y$ 亦为随机变量，则称 $\operatorname{Cov}(X, Y) = [(X-\mathrm{E} X)(Y-\mathrm{E} Y)]$ 为 $X, Y$ 的协方差
    3. 相关系数：定义

        $$
        \rho(X, Y)= \begin{cases}\dfrac{\operatorname{Cov}(X, Y)}{\sqrt{\mathrm{D}X \cdot \mathrm{D}Y}}, & \mathrm{D}X \cdot \mathrm{D}Y \neq 0 \\ 0, & \mathrm{D}X \cdot \mathrm{D}Y=0\end{cases}
        $$

        为 $X, Y$ 的相关系数．若 $\mathrm{E} X Y=0$，则称 $X, Y$ 为正交的；若 $\rho(X, Y)=0$，则称 $X, Y$ 为互不相关的

        1. $|\operatorname{Cov}(X, Y)| \leqslant \sqrt{\mathrm{D}X \cdot \mathrm{D}Y}$
        2. $|\rho(X, Y)| \leqslant 1$

2. $\text{Chebyshev}$ 不等式：$P(|X-\mathrm{E} X|>a) \leqslant \dfrac{1}{a^{2}} \mathrm{D}X, a>0$
