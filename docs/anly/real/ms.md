# 1 测度论

1. 实分析中的实数与函数运算
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

2. 一个定义在 $E \subseteq \mathbf{R}^{n}$ 上的实函数 $f(x)$ 确定了 $E$ 的一组子集 $\{x: x \in E, f(x)>a\}$（简记作 $E[f>a]$），其中 $a$ 取遍一切有限实数．反之，$f(x)$ 本身也由 $E$ 的这组子集完全确定

## 1.1 外测度与内测度
1. 外测度：设 $E$ 为 $\mathbf{R}^{n}$ 中任一点集，对于每一列覆盖 $E$ 的开区间 ${\displaystyle \bigcup_{i=1}^{\infty} I_{i} \supset E}$，作出其的体积总和 ${\displaystyle \mu=\sum_{i=1}^{\infty}\left|I_{i}\right|}$（$\mu$ 可以等于 $\infty$, 不同的区间列一般有不同的 $\mu$），所有这一切的 $\mu$ 组成一个下方有界的数集，其下确界（完全由 $E$ 确定）称为 $E$ 的 $\text{Lesbegue}$ 外测度，简称 $L$ 外测度或外测度，记为 $m^{*} E$，即 ${\displaystyle m^{*} E=\inf _{E \subseteq \bigcup_{i=1}^{\infty} I_{i}} \sum_{i=1}^{\infty}\left|I_{i}\right|}$
    1. 外测度的性质
        1. 非负性：$m^{*} E \geqslant 0$，当 $E$ 为空集时，$m^{*} E=0$
        2. 单调性：设 $A \subseteq B$，则 $m^{*} A \leqslant m^{*} B$
        3. 次可数可加性：${\displaystyle m^{*}\left(\bigcup_{i=1}^{\infty} A_{i}\right) \leqslant \sum_{i=1}^{\infty} m^{*} A_{i}}$
    2. 设 $E \subseteq \mathbf{R}^{n}$，则 $m^{*} I=m^{*}(I \cap E)+m^{*}\left(I \cap E'\right)$ 式对 $\mathbf{R}^{n}$ 中任何开区间都成立的充要条件是对 $\mathbf{R}^{n}$ 中的任何点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$
2. 内测度：设 $E$ 为 $\mathbf{R}^n$ 中的有界集，$I$ 为任一包含 $E$ 的开区间，则称 $|I|-m^*(I-E)$ 为 $E$ 的内测度，记为 $m_{*} E$
    1. $m_{*} E$ 与 $I$ 的选择无关
    2. $0 \leqslant m_{*} E \leqslant m^{*} E$ 恒成立

## 1.2 可测性
### 1.2.1 可测集
1. $L$ 可测集：设 $E$ 为 $\mathbf{R}^{n}$ 中的点集，如果对任一点集 $T$ 都有 $m^{*} T=m^{*}(T \cap E)+m^{*}\left(T \cap E'\right)$，则称 $E$ 是 $\text{Lesbegue}$ 可测的或 $L$ 可测的．此时 $E$ 的 $L$ 外测度 $m^{*} E$ 称为 $E$ 的 $\text{Lesbegue}$ 测度或 $L$ 测度，记为 $m E$，记 $L$ 可测集全体为 $\mathscr{M}$
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
        设 $E$ 为 $\mathbf{R}^n$ 中有界集，如果 $m^* E=m_{*} E$，则称 $E$ 是 $L$ 可测的．又设 $E$ 是 $\mathbf{R}^n$ 中的无界集，如果对任何开区间 $I$，有界集 $E \cap I$ 都是 $L$ 可测的，则称 $E$ 是 $L$ 可测的．对 $L$ 可测集 $E$，不管它有界或无界，一律称 $m^* E$ 为它的 $L$ 测度，简记为 $m E$

2. 常见的可测集
    1. 零测度集：凡外测度为零之集皆可测，称为零测度集
        1. 零测度集之任何子集仍为零测度集
        2. 有限个或可数个零测度集之和集仍为零测度集
    2. 区间 $I$（不论开、闭或半开半闭区间）都是可测集合，且 $m I=|I|$
    3. 凡开集、闭集皆可测

### 1.2.2 测度空间
1. $\sigma$ 代数：设 $\Omega$ 是由 $\mathbf{R}^{n}$ 的一些子集类组成的集类，如果 $\Omega$ 满足条件
    1. $\varnothing \in \Omega$
    2. 若 $E \in \Omega$，则 $E' \in \Omega$
    3. 若 $E_{n} \in \Omega \ (n=1,2, \cdots)$，则 ${\displaystyle \bigcup_{n=1}^{\infty} E_{n} \in \Omega}$

    则称 $\Omega$ 是 $\mathbf{R}^{n}$ 的一个 $\sigma$ 代数

    1. $\mathbf{R}^{n}$ 中可测集全体所成的集类 $L_{n}$ 是一个 $\sigma$ 代数，当不至于混淆时可简记为 $L$
    2. 如果 $\left\{\Omega_{\alpha}\right\}$ 是 $\mathbf{R}^{n}$ 上的一族 $\sigma$ 代数，则它们的交集 ${\displaystyle \bigcap_{\alpha} \Omega_{\alpha}}$ 也是 $\sigma$ 代数

2. 正测度：设 $\Omega$ 是 $\mathbf{R}^{n}$ 上的一个 $\sigma$ 代数，如果定义在 $\Omega$ 上的非负值集合函数 $\mu$ 满足条件
    1. $\mu(\varnothing)=0$
    2. 若 $E_{n} \in \Omega \ (n=1,2, \cdots)$ 且任意 $n \neq m, E_{n} \cap E_{m}=\varnothing$，都有 ${\displaystyle \mu\left(\bigcup_{n=1}^{\infty} E_{n}\right)=\sum_{n=1}^{\infty} \mu\left(E_{n}\right)}$

    则称 $\mu$ 是 $\Omega$ 上的（正）测度．易知 $\text{Lesbegue}$ 测度 $m$ 是定义在 $\sigma$ 代数 $L$ 上的测度

3. 凡 $\text{Borel}$ 集都是 $\text{Lesbegue}$ 可测集
    1. 设 $\Sigma$ 是 $\mathbf{R}^{n}$ 的一个子集族，则称所有包含 $\Sigma$ 的 $\sigma$ 代数的交集（即包含 $\Sigma$ 的最小 $\sigma$ 代数）为 $\Sigma$ 产生的 $\sigma$ 代数
    2. 由 $\mathbf{R}^{n}$ 中全体开集组成的子集类生成的 $\sigma$ 代数记为 $\mathscr{B}_n$，称为 $\text{Borel}$ 代数．当不至于混淆时可简记为 $\mathscr{B}$
    3. 设集合 $G$ 可表示为一列开集 $\left\{G_{i}\right\}$ 之交集 ${\displaystyle G=\bigcap_{i=1}^{\infty} G_{i}}$，则称 $G$ 为 $G_{\delta}$ 型集

        设集合 $F$ 可表示为一列闭集 $\left\{F_{i}\right\}$ 之并集 ${\displaystyle F=\bigcup_{i=1}^{\infty} F_{i}}$，则称 $F$ 为 $F_{\sigma}$ 型集

        1. 设 $E$ 是任一可测集，则一定存在 $G_{\delta}$ 型集 $G$ 使 $G \supset E$ 且 $m(G - E)=0$
        2. 设 $E$ 是任一可测集，则一定存在 $F_{\sigma}$ 型集 $F$ 使 $F \subseteq E$ 且 $m(E - F)=0$

4. 测度空间：若 $\Omega$ 是 $\mathbf{R}^{n}$ 上的一个 $\sigma$ 代数，$\mu$ 是 $\Omega$ 上的测度，则称 $\left(\mathbf{R}^{n}, \Omega, \mu\right)$ 为测度空间

### 1.2.3 可测函数
1. 可测函数：设 $f(x)$ 是定义在可测集 $E \subseteq \mathbf{R}^{n}$ 的实函数．如果对于任何有限实数 $a$，$E[f>a]$ 都是可测集，则称 $f(x)$ 为定义在 $E$ 上的可测函数
    1. 设 $f(x)$ 是定义在可测集 $E$ 上的实函数，下列任一条件都是 $f(x)$ 在 $E$ 上可测的充要条件
        1. 对任何有限实数 $a, E[f \geqslant a]$ 都可测
        2. 对任何有限实数 $a, E[f<a]$ 都可测
        3. 对任何有限实数 $a, E[f \leqslant a]$ 都可测
        4. 对任何有限实数 $a, b\ (a<b)$，$E[a \leqslant f<b]$ 都可测（但充分性要假定 $f(x)$ 是有限函数）
    2. 设 $f(x)$ 在 $E$ 上可测，则 $E[f=a]$ 总可测，不论 $a$ 是有限实数或 $\pm \infty$
    3. 可测集 $E \subseteq \mathbf{R}^{n}$ 上的连续函数是可测函数
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
        2. 设 $f(x)$ 是 $E \subseteq \mathbf{R}$ 上 $\text{a.e.}$有限的可测函数，则对任意 $\delta>0$，存在闭集 $F \subseteq E$ 及整个 $\mathbf{R}$ 上的连续函数 $g(x)$（$F$ 及 $g(x)$ 依赖于 $\delta$）使得在 $F$ 上 $g(x)=f(x)$ 且 $m(E - F)<\delta$．此外还可要求 ${\displaystyle \sup _{\mathbf{R}} g(x)=\sup _{F} f(x)}$ 及 ${\displaystyle \inf _{\mathbf{R}} g(x)=\inf _{F} f(x)}$
    3. 依测度收敛：设 $\left\{f_{n}\right\}$ 是 $E \subseteq \mathbf{R}^{q}$ 上的一列 $\text{a.e.}$有限的可测函数，若有 $E$ 上 $\text{a.e.}$有限的可测函数 $f(x)$ 有「对任意 $\sigma>0$ 有 ${\displaystyle \lim _{n \to \infty} m E\left[\left|f_{n}-f\right| \geqslant \sigma\right]=0}$」，则称函数列 $\left\{f_{n}\right\}$ 依测度收敛于 $f$，或度量收敛于 $f$，记为 $f_{n}(x) \Rightarrow f(x)$
        1. $\text{a.e.}$收敛的函数列可能不依测度收敛，依测度收敛的函数列可能不 $\text{a.e.}$收敛
        2. $\text{Riesz}$ 定理：设在 $E$ 上 $\left\{f_{n}\right\}$ 依测度收敛于 $f$，则存在子列 $\left\{f_{n_{i}}\right\}$ 在 $E$ 上 $\text{a.e.}$收敛于 $f$
        3. $\text{Lesbegue}$ 定理：设 $m E<\infty$，$\left\{f_{n}\right\}$ 是 $E$ 上 $\text{a.e.}$有限的可测函数列且在 $E$ 上 $\text{a.e.}$收敛于 $\text{a.e.}$有限的函数 $f$，则 $f_{n}(x) \Rightarrow f(x)$
        4. 设 $f_{n}(x) \Rightarrow f(x), f_{n}(x) \Rightarrow g(x)$，则 $f(x)=g(x)$ $\text{a.e.}$于 $E$
