# 1 概率与随机变量

## 1.1 概率
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
        2. 事件 $A \cup B$ 或 ${\displaystyle \bigcup_{n \geqslant 1} A_{n}}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}, n \geqslant 1\right\}$ 的并，分别表示 $A, B$ 或 $\left\{A_{n}\right\}$ 中至少有一个发生的事件

            事件 $A \cap B$ 或 ${\displaystyle \bigcap_{n \geqslant 1} A_{n}}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}, n \geqslant 1\right\}$ 的交，表示同时发生的事件．$A \cap B$ 也可记作 $AB$

        3. 若 $A B=\varnothing$，则称事件 $A, B$ 是互不相容的，此时将 $A \cup B$ 记作 $A + B$
        4. 事件 ${\displaystyle \varlimsup_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的上限事件，表示 $\left\{A_{n}\right\}$ 中有无限个同时发生的事件，也记作 $\left\{A_{n}\right.$ i.o. ${\displaystyle \}=\varlimsup_{n \to \infty} A_{n}}$

            事件 ${\displaystyle \varliminf_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的下限事件，表示 $\left\{A_{n}\right\}$ 中除有限个外同时发生的事件

### 1.1.2 概率
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
        1. 设 $\mathscr{A}$ 为由 $\Omega$ 子集构成的域，$P$ 为域 $\mathscr{A}$ 上的测度．又 $\left\{A_{n}, n \geqslant 1\right\}, \left\{B_{n}, n \geqslant 1\right\}$ 为 $\mathscr{A}$ 上的两个递增序列．若 ${\displaystyle \bigcup_{n} A_{n} \subseteq \bigcup_{n} B_{n}}$，则 ${\displaystyle \lim _{n \to \infty} P\left(A_{n}\right) \leqslant \lim _{n \to \infty} P\left(B_{n}\right)}$，进而若 ${\displaystyle \bigcup_{n} A_{n}=\bigcup_{n} B_{n}}$，则 ${\displaystyle \lim _{n \to \infty} P\left(A_{n}\right)=\lim _{n \to \infty} P\left(B_{n}\right)}$
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

## 1.2 随机变量
### 1.2.1 随机变量
1. 随机变量：设 $(\Omega, \mathscr{F})$ 为概率可测空间，则由 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 或 $\left(\widehat{\mathbf{R}}, \mathscr{B}_{\widehat{\mathbf{R}}}\right)$ 的可测函数称为（有限值）随机变量或或广义实值随机变量，也记为 $X \in \mathscr{F}$，通常用 $\text{r.v.}$作为随机变量的简写
    1. 若 $E=\left\{r_{n}\right\}$ 为 $\mathbf{R}$ 中稠密集，则 $X$ 为随机变量的充要条件是对每个 $r_{n} \in E$ 都有 $\left\{\omega: X(\omega) \leqslant r_{n}\right\} \in \mathscr{F}$
    2. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，则 ${\displaystyle \sup _{n \geqslant 1} X_{n},  \inf _{n \geqslant 1} X_{n}, \varlimsup_{n \rightarrow \infty} X_{n}, \varliminf_{n \rightarrow \infty} X_{n}}$ 都是随机变量
2. 离散随机变量：若存在 $(\Omega, \mathscr{F})$ 的一个有限分割 $\left\{A_{i}, i \in I\right\}$（即 $I$ 为有限的，$A_{i} \in \mathscr{F}$，且 $A_{i} A_{j}=\varnothing, i \neq j, {\displaystyle \sum_{i \in I} A_{i}=\Omega}$）及互不相同的实数 $\left\{x_{i}, i \in I\right\}$，使 $\Omega$ 上的函数 $X$ 可表示为 $X(\omega)=x_{i}$，当 $\omega \in A_{i}, i \in I$，则称 $X$ 为离散随机变量．显然离散随机变量是随机变量，且若 $x_{i}$ 互不相同，$x_{i}$ 与 $A_{i}$ 由 $X$ 唯一确定．对 $A \in \mathscr{F}$，$I_{A}(\omega)$ 是离散随机变量，$X$ 可表示为 ${\displaystyle X(\omega)=\sum_{i \in I} x_{i} I_{A_{i}}(\omega)}$

    1. $(\Omega, \mathscr{F})$ 上的离散随机变量全体构成一个代数和格
    2. $X$ 为 $(\Omega, \mathscr{F})$ 上的随机变量的充要条件是存在离散随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$，使 ${\displaystyle X(\omega)=\lim _{n \rightarrow \infty} X_{n}(\omega), \  \forall \omega \in \Omega}$．且当 $X$ 为非负时，$\left\{X_{n}\right\}$ 可取成是非负递增的；当 $|X| \leqslant M$ 时，$\left\{X_{n}\right\}$ 也可取成是 $\left|X_{n}\right| \leqslant M$ 的
        1. 若 $X, Y$ 为随机变量，则对任意实数 $a, b$，只要 $a X+b Y, X Y, X / Y, X \vee Y, X \wedge Y$ 对每个 $\omega$ 有意义（即不发生 $0 \cdot \infty, (+\infty)+(-\infty), 0 / 0, \infty / \infty$ 等情况），它们就都是随机变量
        2. 若 $\left\{X_{n}, n \geqslant 1\right\}$ 为随机变量列，则 ${\displaystyle \left\{\omega: \varlimsup_{n \to \infty} X_{n}(\omega)=\varliminf_{n \to \infty} X_{n}(\omega)\right\}}$ 是 $\mathscr{F}$ 可测的
    3. $\text{Doob}$ 定理：若 $f$ 是 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，$\sigma(f)= f^{-1}[\mathscr{E}]$，则 $(\Omega, \mathscr{F})$ 上的随机变量 $X$ 为 $\sigma(f)$ 可测的充要条件是存在 $(E, \mathscr{E})$ 上的随机变量 $h$，使 $X=h \circ f$
    4. 若 $\mathscr{H}$ 为 $\Omega$ 上某些有界实函数的集合，则存在 $\Omega$ 上 $\sigma$ 域 $\mathscr{F}_{1}$，使 $\mathscr{H}$ 为 $\left(\Omega, \mathscr{F}_{1}\right)$ 有界随机变量全体的充要条件是
        1. $\mathscr{H}$ 是线性空间
        2. $1 \in \mathscr{H}$
        3. $\mathscr{H}$ 是格
        4. 若 $\left\{f_{n}, n \geqslant 1\right\}$ 是 $\mathscr{H}$ 中一致有界递增随机变量序列，${\displaystyle f=\lim _{n \to \infty} f_{n}}$, 则 $f \in \mathscr{H}$，且此时 $\mathscr{F}_{1}=\sigma(f, f \in \mathscr{H})$

3. 多维随机变量：若 $X_{1}, X_{2}, \cdots, X_{n}$ 为 $n$ 个随机变量，则 $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 称为 $n$ 维随机变量，也称随机向量
    1. $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量的充要条件是 $X$ 为 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}^{n}, \mathscr{B}^{n}\right)$ 的可测映射，且 $\sigma(X)=\sigma \ \left(X_{i}, 1 \leqslant i \leqslant n\right)$
    2. 若 $X=\left(X_{1}, X_{2}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量，则有限随机变量 $Y$ 为 $\sigma(X)$ 可测的充要条件是存在 $n$ 元 $\text{Borel}$ 函数 $h\left(x_{1}, x_{2}, \cdots, x_{n}\right)$，使 $Y=h\left(X_{1}, X_{2}, \cdots, X_{n}\right)$
    3. 设 $\left\{X_{i}, i \in J\right\}$ 为 $(\Omega, \mathscr{F})$ 上的一族随机变量，则
        1. $\Omega$ 上有限实值函数 $Y$ 为 $\sigma\left(X_{i}, i \in J\right)$ 可测随机变量的充要条件是存在至多为可数的子集 $I$ 及 $\text{Borel}$ 函数 $f$，使 $Y=f\left[X_{i}, i \in I\right]$
        2. 若 $A \in \sigma\left(X_{i}, i \in J\right)$，必有 $J$ 的至多为可数的子集 $I$，使 $A \in \sigma\left(X_{i}, i \in I\right)$

### 1.2.2 分布函数
1. 分布函数：设 $(\Omega, \mathscr{F}, P)$ 为概率空间，$X$ 为有限实值随机变量, 则 $F(x)=P[X \leqslant x]$ 称为 $X$ 的分布函数．若 $X=\left(X_{1}, \cdots, X_{n}\right)$ 为 $n$ 维随机变量，则 $F\left(x_{1}, x_{2}, \cdots, x_{n}\right)=P\left[X_{1} \leqslant x_{1}, X_{2} \leqslant x_{2}, \cdots, X_{n} \leqslant x_{n}\right]$ 称为 $X$ 的 $n$ 维分布函数
    1. 导出测度：若 $(\Omega, \mathscr{F}, \mu)$ 为测度空间，$f$ 为 $(\Omega, \mathscr{F})$ 到可测空间 $(E, \mathscr{E})$ 的可测映射，则 $\nu(B)=\mu\left(f^{-1}(B)\right), \ B \in \mathscr{E}$ 规定了 $(E, \mathscr{E})$ 上的测度，称为 $f$ 在 $(E, \mathscr{E})$ 上的导出测度．特别地，当 $\mu$ 为概率测度时，$\nu$ 也是概率测度，称为 $f$ 在 $(E, \mathscr{E})$ 上的导出分布或分布
    2. 若 $F(x)$ 为有限实值随机变量 $X$ 的分布函数
        1. $F(x)$ 单调不减
        2. $F(x)$ 右连续
        3. ${\displaystyle \lim _{x \rightarrow-\infty} F(x)=0, \lim _{x \rightarrow+\infty} F(x)=1}$

        反之，若 $F(x)$ 为 $\mathbf{R}$ 上满足上述命题的函数，则必存在概率空间 $(\Omega, \mathscr{F}, P)$ 及其上的随机变量 $X$ 使 $P[X \leqslant x]=F(x)$．取 $\Omega=\mathbf{R}, \mathscr{F}=\mathscr{B}$，$P$ 为由 $F$ 在 $(\mathbf{R}, \mathscr{B})$ 上生成的 $L-S$ 测度，则它是一个概率测度；令 $X(x)=x, x \in \mathbf{R}$，则它是一个随机变量且 $P(X \leqslant y)=P\{x: x \leqslant y\}=F(y)$．分别称 $(\mathbf{R}, \mathscr{B}, P)$ 和 $X$ 为标准概率空间和标准随机变量

    3. 若随机向量 $\left(X_{1}, \cdots, X_{n}\right)$ 和 $\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同 $n$ 维分布函数，则对 $\mathbf{R}^{n}$ 到 $\mathbf{R}^{m}$ 的任一 $\text{Borel}$ 函数 $g$，$g\left(X_{1}, \cdots, X_{n}\right)$ 和 $g\left(Y_{1}, \cdots, Y_{n}\right)$ 有相同的分布，即对一切 $\mathbf{R}^{m}$ 中的 $\text{Borel}$ 集 $B$ 都有 $P\left\{g\left(X_{1}, \cdots, X_{n}\right) \in B\right\}=P\left\{g\left(Y_{1}, \cdots, Y_{n}\right) \in B\right\}$

### 1.2.3 期望与方差
1. 离散随机变量的期望：若 ${\displaystyle X(\omega)=\sum_{i} x_{i} I_{A_{i}}(\omega)}$ 为离散随机变量，则称 ${\displaystyle \sum_{i} x_{i} P\left(A_{i}\right)}$ 为 $X$ 的期望或 $X$ 关于 $P$ 的积分，记为

    $$
    \mathrm{E}[X], \mathrm{E} X, \int X(\omega), \int X \mathrm{dP} \textsf{ 或 } \int X
    $$

    1. 若 $\mathscr{E}$ 表示 $(\Omega, \mathscr{F})$ 上离散随机变量全体
        1. 期望 $\mathrm{E} X$ 是唯一满足 $\mathrm{E}\left(I_{A}\right)=P(A)$ 的 $\mathscr{E}$ 上的正线性泛函
        2. $\mathrm{E}[\cdot]$ 在 $\mathscr{E}$ 上是单调的，且若 $\left\{X_{n}, n \geqslant 1\right\} \subseteq \mathscr{E}, X_{n} \uparrow(\textsf{或 }\downarrow) X \in \mathscr{E}$，则 $\mathrm{E}\left(X_{n}\right) \uparrow(\textsf{或 } \downarrow) \mathrm{E}(X)$
        3. 若 $\mathrm{E}(\cdot)$ 为 $\mathscr{E}$ 上正线性泛函，$\mathrm{E}(1)=1$，且当 $\mathscr{E}$ 中序列 $X_{n} \downarrow 0$ 时，$\mathrm{E} X_{n} \downarrow 0$，则由 $Q(A)=\mathrm{E}\left(I_{A}\right)$ 可规定 $(\Omega, \mathscr{F})$ 上的概率测度
    2. 若 $\mathscr{E}_{+}$ 表示非负离散随机变量全体，$\left\{X_{n}, n \geqslant 1\right\},\left\{Y_{n}, n \geqslant 1\right\}$ 都是 $\mathscr{E}_{+}$ 中递增序列，且 ${\displaystyle \lim _{n \to \infty} X_{n} \leqslant \lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n} \leqslant \lim _{n \to \infty} E Y_{n}}$．特别地，若 ${\displaystyle \lim _{n \to \infty} X_{n}=\lim _{n \to \infty} Y_{n}}$，则 ${\displaystyle \lim _{n \to \infty} E X_{n}=\lim _{n \to \infty} \mathrm{E} Y_{n}}$
    3. 记 ${\displaystyle \mathscr{G}_{+}=\left\{X=\lim _{n \to \infty} \uparrow X_{n}: X_{n} \in \mathscr{E}_{+}\right\}}$，对 $X \in \mathscr{G}_{+}$，若 ${\displaystyle X=\lim _{n \to \infty} \uparrow X_{n}, X_{n} \in \mathscr{E}_{+}}$，令 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$
        1. $\mathscr{G}_{+}$ 为 $(\Omega, \mathscr{F})$ 上非负随机变量全体
        2. 由 ${\displaystyle \mathrm{E} X=\lim _{n \to \infty} \mathrm{E} X_{n}}$ 规定的 $E[\cdot]$ 是完全确定的
        3. $0 \leqslant \mathrm{E} X \leqslant \infty\left(X \in \mathscr{G}_{+}\right)$
        4. 在 $\mathscr{G}_{+}$ 中若 $X_{1} \leqslant X_{2}$，则 $\mathrm{E} X_{1} \leqslant \mathrm{E} X_{2}$
        5. 若 $X \in \mathscr{G}_{+}, c \geqslant 0$，则 $c X \in \mathscr{G}_{+}$ 且 $\mathrm{E}[c X]=c \mathrm{E}[X]$
        6. 若 $X_{1}, X_{2} \in \mathscr{G}_{+}$，则 $X_{1}+X_{2}, X_{1} \vee X_{2}, X_{1} \wedge X_{2} \in \mathscr{G}_{+}$，且

            $$
            \mathrm{E}\left[X_{1}+X_{2}\right]=\mathrm{E}\left[X_{1}\right]+\mathrm{E}\left[X_{2}\right]=\mathrm{E}\left[X_{1} \vee X_{2}\right]+\mathrm{E}\left[X_{1} \wedge X_{2}\right]
            $$

        7. $\left\{X_{n}, n \geqslant 1\right\}$ 为 $\mathscr{G}_{+}$ 中递增序列，则 $\lim _{n \to \infty} X_{n}=X \in \mathscr{G}_{+}$ 且 ${\displaystyle \mathrm{E} \lim _{n \to \infty} \uparrow X_{n}=\lim _{n \to \infty} \uparrow \mathrm{E} X_{n}}$

2. 广义实值随机变量的期望
