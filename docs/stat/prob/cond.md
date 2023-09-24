# 4 条件期望

## 4.1 条件期望
### 4.1.1 经典定义
1. 条件概率：设 $(\Omega, \mathscr{F}, P)$ 是一个概率空间且 $B \in \mathscr{F}, P(B)>0$，记条件概率 $P_{B}(A)=P(A \mid B)=\dfrac{P(A B)}{P(B)}$
    1. 条件概率的性质
        1. 固定 $B$ 让 $A$ 在 $\mathscr{F}$ 中变化时，条件概率 $P_{B}(\cdot)$ 也是 $(\Omega, \mathscr{F})$ 上的概率测度
        2. 设 $\{A_n\}_{n \geqslant 1}$ 是互不相交的集合列，$A_n\cap A_m =\varnothing, n\neq m$，于是 ${\displaystyle P\left(\left. \bigcup_{n=1}^\infty A_n \ \right| \ A\right)=\sum_{n=1}^\infty P(A_n \mid A)}$
    2. 乘法公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\mathscr{F}$ 的一个事件列，则 $P(A_1A_2\cdots A_n)=P(A_1)P(A_2 \mid A_1)\cdots P(A_n \mid A_1A_2\cdots A_{n-1})$
    3. 全概率公式：设 $\{A_n\}_{n \geqslant 1}$ 构成了 $\Omega$ 上的一个分割，则有 ${\displaystyle P(B)=\sum_{n=1}^\infty P(A_n) \cdot P(B \mid A_n)}$
    4. $\mathrm{Bayes}$ 公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\Omega$ 的一个划分，则 $P(A_i \mid B)=\dfrac{P(B \mid A_i) \cdot P(A_i)}{{\displaystyle \sum_{j=1}^\infty P(A_j) \cdot P(B \mid A_j)}}$．其中 $P(A_i)$ 称为先验概率，$P(A_i \mid B)$ 称为后验概率
2. 条件期望：若 $X(\omega)$ 为（关于 $P$）可积随机变量，则关于 $P_{B}(\cdot)$ 的期望为 ${\displaystyle \mathrm{E}_{B}[X]=\int X(\omega) P_{B}(\mathrm{d} \omega)=\dfrac{1}{P(B)} \int_{B} X(\omega) P(\mathrm{d} \omega)}$
    1. 设 $\left\{B_{n}\right\}_{n \geqslant 1}$ 为 $\Omega$ 的可数可测分割，即 $B_{n} \in \mathscr{F},\left\{B_{n}\right\}_{n \geqslant 1}$ 互不相交且 ${\displaystyle \sum_{n \to \infty} B_{n}=\Omega}$，则对 $A \in \mathscr{F}$ 及 $P$ 可积随机变量 $X$ 有

        $$
        \begin{aligned}
        P(A)&=\sum_{n=1}^{\infty} P\left(B_{n}\right) P_{B_{n}}(A) \\
        \mathrm{E}[X]&=\sum_{n=1}^{\infty} \int_{B_{n}} X(\omega) P(\mathrm{d} \omega)=\sum_{n=1}^{\infty} P\left(B_{n}\right) \mathrm{E}_{B_{n}}[X]
        \end{aligned}
        $$

    2. 若 $V$ 为离散型随机变量，$B_{n}=\left\{\omega: V=a_{n}\right\}$，且 $\left\{B_{n}\right\}$ 为 $\Omega$ 的分割，则 ${\displaystyle \mathrm{E}\left[X \mid V=a_{n}\right]=\mathrm{E}_{B_{n}}[X]}$
    3. 考虑 ${\displaystyle \mathrm{E}[X \mid V]=\sum_{n \geqslant 1} \mathrm{E}_{B_{n}}[X] I_{V=a_{n}}=\sum_{n \geqslant 1} \mathrm{E}_{B_{n}}[X] I_{B_{n}}}$，其在 $V$ 取不同值的各种情况下都表示 $X$ 关于 $V$ 的条件期望．此时对 $C \in \sigma(V)$，若 ${\displaystyle C=\sum_{k \geqslant 1} B_{n_{k}}}$，则必有 ${\displaystyle \int_{C} \mathrm{E}[X \mid V] \mathrm{dP}=\sum_{k} \mathrm{E}_{B_{n_{k}}}[X \mid V] P\left(B_{n_{k}}\right)=\sum_{k} \int_{B_{n_{k}}} X \mathrm{dP}=\int_{C} X \mathrm{dP}}$

### 4.1.2 现代定义
1. 条件期望：设 $\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，$X$ 为（准）可积随机变量，$Y$ 为满足下列条件的随机变量
    1. $Y$ 为 $\mathscr{G}$ 可测的
    2. ${\displaystyle \int_{B} Y \mathrm{dP}=\int_{B} X \mathrm{dP}, \  \forall B \in \mathscr{G}}$

    则称 $Y$ 为 $X$ 关于 $\mathscr{G}$ 的条件期望，记为 $\mathrm{E}[X \mid \mathscr{G}]$．当 $\mathscr{G}=\sigma(V)$ 时，则也称 $Y$ 为 $X$ 关于 $V$ 的条件期望，记为 $\mathrm{E}[X \mid V]$

    1. 若 $X$ 为（准）可积随机变量，$\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，则必存在唯一的（不计 $\text{a.s.}$相等的差别）准可积 $\mathscr{G}$ 可测随机变量 $Y$，满足 ${\displaystyle \int_{B} Y \mathrm{dP}=\int_{B} X \mathrm{dP}, \forall B \in \mathscr{G}}$ 或等价地 ${\displaystyle \int Z Y \mathrm{dP}=\int Z X \mathrm{dP}, \forall Z \in L_{\infty}(\mathscr{G})}$，其中 $L_{\infty}(\mathscr{G})$ 表示有界 $\mathscr{G}$ 可测随机变量全体
    2. $X$ 关于 $\mathscr{G}$ 的条件期望是存在的，且不计 $\text{a.s.}$相等的差别时唯一：$\mathrm{E}[X \mid \mathscr{G}]=\left.\dfrac{\mathrm{d} \nu}{\mathrm{dP}}\right|_{\mathscr{G}}$，其中 ${\displaystyle \nu(B)=\int_{B} X \mathrm{dP}}$

2. 条件概率：设 $\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，$A \in \mathscr{F}$，则称 $\mathrm{E}\left[I_{A} \mid \mathscr{G}\right]$ 为 $A$ 关于 $\mathscr{G}$ 的条件概率，记为 $P(A \mid \mathscr{G})$
    1. $P(A \mid \mathscr{G})$ 必须满足
        1. $P(A \mid \mathscr{G})$ 是 $\mathscr{G}$ 可测的
        2. ${\displaystyle P(A B)=\int_{B} P(A \mid \mathscr{G}) \mathrm{dP}, \forall B \in \mathscr{G}}$

        且 $P(A \mid \mathscr{G})$ 是存在唯一的（若不计 $\text{a.s.}$相等的差别）

    2. 若随机变量 $X$ 存在 $\Omega$ 的 $\mathscr{G}$ 可测分割 $\left\{B_{n}\right\}_{n \geqslant 1}$，使对每个 $n, X I_{B_{n}}$ 是可积的，则称其关于 $\mathscr{G}$ 为 $\sigma$ 可积的．此时必存在 $\mathscr{G}$ 可测有限的随机变量 $Y$，使 ${\displaystyle \mathrm{E}\left[X I_{B B_{n}}\right]=\mathrm{E}\left[Y I_{B B_{n}}\right], \ \forall B \in \mathscr{G}, n \geqslant 1}$

3. 条件期望与概率的性质：设 $\sigma$ 域 $\mathscr{G}, \mathscr{G}_{1}, \mathscr{G}_{2}$ 等都是指 $\mathscr{F}$ 的子 $\sigma$ 域，以下涉及到条件期望的等式是在概率 $1$ 意义下的等式
    1. 若 $X, Y$ 为可积随机变量，$\alpha, \beta$ 为任意常数
        1. $\mathrm{E}[\alpha X+\beta Y \mid \mathscr{G}]=\alpha \mathrm{E}[X \mid \mathscr{B}]+\beta \mathrm{E}[Y \mid \mathscr{G}]$
        2. $\mathrm{E}[1 \mid \mathscr{G}]=1$
        3. 对可积随机变量 $X, Y$，若 $X \geqslant Y$，则 $\mathrm{E}[X \mid \mathscr{G}] \geqslant \mathrm{E}[Y \mid \mathscr{G}]$．特别地，当 $X \geqslant 0$，则 $\mathrm{E}[X \mid \mathscr{G}] \geqslant 0$
        4. $|\mathrm{E}[X \mid \mathscr{G}]| \leqslant \mathrm{E}[|X| \mid \mathscr{G}]$
    2. 设 $Y$ 为可积随机变量，$\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列
        1. 条件期望的 $\text{Levi}$ 引理：若 $Y \leqslant X_{n} \uparrow X$, 则 ${\displaystyle \lim _{n \rightarrow \infty} \mathrm{E}\left[X_{n} \mid \mathscr{G}\right]=\mathrm{E}[X \mid \mathscr{G}]}$，若 $Y \geqslant X_{n} \downarrow X$，则上式也成立
        2. 条件期望的 $\text{Fatou}$ 引理：若 $X_{n} \geqslant Y$，则 ${\displaystyle \mathrm{E}\left[\varliminf_{n \to \infty} X_{n} \mid \mathscr{G}\right] \leqslant \varliminf_{n \to \infty} \mathrm{E}\left[X_{n} \mid \mathscr{G}\right]}$．若 $X_{n} \leqslant Y$，则 ${\displaystyle \mathrm{E}\left[\varlimsup_{n \to \infty} X_{n} \mid \mathscr{G}\right] \geqslant \varlimsup_{n \to \infty} \mathrm{E}\left[X_{n} \mid \mathscr{G}\right]}$
        3. 条件期望的 $\text{Lebesgue}$ 控制收敛定理：若 $\left|X_{n}\right| \leqslant Y$，且当 $n \rightarrow \infty$ 时，$X_{n} \stackrel{\text{a.s.}}{\longrightarrow} X$，则 ${\displaystyle \lim _{n \to \infty} \mathrm{E}\left[X_{n} \mid G\right]=\mathrm{E}[X \mid \xi]}$ $\text{a.s.}$
    3. 若 $Y$ 为 $\mathscr{G}$ 可测随机变量，且 $X, X Y$ 可积
        1. $\mathrm{E}[X Y \mid \mathscr{G}]=Y \mathrm{E}[X \mid \mathscr{G}]$．特别地，$\mathrm{E}[Y \mid \mathscr{G}]=Y$
        2. $\mathscr{G}_{1}$ 为 $\mathscr{G}$ 的子 $\sigma$ 域，$X$ 为可积随机变量，则 $\mathrm{E}\left[\mathrm{E}\left[X \mid \mathscr{G}_{1}\right] \mid \mathscr{G}\right]=\mathrm{E}\left[X \mid \mathscr{G}_{1}\right]=\mathrm{E}\left[\mathrm{E}[X \mid \mathscr{G}] \mid \mathscr{G}_{1}\right]$
        3. 若 $X$ 为可积随机变量，$\sigma(X)$ 与 $\mathscr{G}$ 独立，则 $\mathrm{E}[X \mid \mathscr{G}]=\mathrm{E}X$．特别地，当 $X, Y$ 相互独立时，$\mathrm{E}[X \mid Y]=\mathrm{E} X$
    4. $\text{Jensen}$ 不等式：若 $X$ 及 $\varphi(X)$ 为可积随机变量，$\varphi(x)$ 为 $\mathbf{R}$ 上的有限下凸函数，则 $\varphi(\mathrm{E}[X \mid \mathscr{G}]) \leqslant \mathrm{E}[\varphi(X) \mid \mathscr{G}]$
    5. 若 $p \geqslant 1$，对 $X \in L^{p}(\Omega, \mathscr{F}, P), T X = \mathrm{E}[X \mid \mathscr{G}]$，则 $T$ 是 $L^{p}(\Omega, \mathscr{F}, P)$ 的幂等映射 $\left(T^{2}=T\right)$，且 $\|T\| \leqslant 1$．特别当 $p=2$ 时，$T$ 是 $L^{2}(\Omega, \mathscr{F}, P)$ 到 $L^{2}(\Omega, \mathscr{G}, P)$ 的投影算子
        1. 若 $p \geqslant 1, X \in L^{p}(\Omega, \mathscr{F}, P)$，则 $\mathrm{E}[X \mid \mathscr{G}] \in L^{p}(\Omega, \mathscr{F}, P)$，且 $\|\mathrm{E}[X \mid \mathscr{G}]\|_{p} \leqslant\|X\|_{p}$
        2. 若 $Y \in L^{2}(\Omega, \mathscr{F}, P)$，$\left\{X_{t}\right\}_{t \in T}$ 为一随机变量族，则

            $$
            \mathrm{E}\left|Y-\mathrm{E}\left[Y \mid X_{t}, t \in T\right]\right|^{2}=\min \left\{\mathrm{E}[Y-Z]^{2}: Z \in L^{2}\left(\Omega, \sigma\left(X_{t}, t \in T\right), P\right)\right\}
            $$

    6. 条件概率 $P(A \mid G)$ 作为 $A$ 的函数，具有如下性质
        1. $P(\Omega)=1$ $\text{a.s.}$
        2. $P(A \mid \mathscr{G}) \geqslant 0$ $\text{a.s.}$
        3. 对互不相交的事件列 $\left\{A_{n}\right\}$，${\displaystyle P\left(\sum_{n \to \infty} A_{n} \mid \mathscr{G}\right)=\sum_{n \to \infty} P\left(A_{n} \mid \mathscr{G}\right)}$ $\text{a.s.}$

## 4.2 条件概率分布
1. 设 $\mathscr{F}_{1}, \mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，$\Omega \times \mathscr{F}_{1}$ 上的函数 $P(\omega, A)$ 若满足
    1. 对每个 $\omega \in \Omega$，$P(\omega, \cdot)$ 是 $\mathscr{F}_{1}$ 上的概率测度
    2. 对每个 $A \in \mathscr{F}_{1}, P(\cdot, A)$ 是 $(\Omega, \mathscr{G})$ 上的可测函数，且 $P(\omega, A)=P(A \mid \mathscr{G})$ $\text{a.s.}$

    则称 $P(\omega, A)$ 为 $\mathscr{F}_{1}$ 上关于 $\mathscr{G}$ 的（正则）条件概率分布

2. 设 $X=\left(X_{1}, \cdots, X_{n}\right)$ 或 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为 $(\Omega, \mathscr{F}, P)$ 上的随机向量或随机变量序列，$\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，$\mathscr{B}^{n}$ 表示 $\mathbf{R}^{n}$ 中 $\text{Borel}$ 点集全体．若 $\Omega \times \mathscr{G}^{n}$，$1 \leqslant n \leqslant \infty$ 上的函数 $P_{X}(\omega, A)$ 满足
    1. 对每个 $\omega$，$P_{X}(\omega, \cdot)$ 是 $\mathscr{B}^{n}$ 上概率测度
    2. 对每个 $A \in \mathscr{B}^{n}$，$P_{X}(\cdot, A)$ 是 $\mathscr{G}$ 可测的，且 $P_{X}(\omega, A)=P\left(X^{-1}(A) \mid \mathscr{G}\right)$ $\text{a.s.}$

    则称 $P_{X}(\omega, A)$ 为 $X$ 关于 $\mathscr{G}$ 的（正则）条件概率分布

    1. $\text{Doob}$ 定理：若 $X=\left(X_{1}, \cdots, X_{n}\right)$ 为 $(\Omega, \mathscr{F}, P)$ 上的随机向量，$\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，则存在 $X$ 关于 $\mathscr{G}$ 的条件概率分布
    2. 若 $X=\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，$\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域，则存在 $X$ 关于 $\mathscr{G}$ 的正则条件概率分布
    3. 设 $X=\left(X_{1}, \cdots, X_{n}\right)$ 或 $X=\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机向量或随机变量序列，$\mathscr{G}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域．若 $X$ 的值域 $\{X(\omega): \omega \in \Omega\}$ 为 $\text{Borel}$ 集，则存在 $\sigma(X)$ 上关于 $\mathscr{G}$ 的（正则）条件概率分布
    4. 若 $P(\omega, A)$ 为 $\mathscr{F}_{1}$ 上关于 $\mathscr{G}$ 的条件概率分布，$Y=Y(\omega)$ 为 $\mathscr{F}_{1}$ 可测准可积随机变量，则 ${\displaystyle \mathrm{E}[Y \mid \mathcal{G}]=\int_{\Omega} Y\left(\omega^{\prime}\right) P\left(\omega, \mathrm{d} \omega^{\prime}\right)}$

        若 $X$ 为 $n$ 维随机向量（或随机变量序列），$P_{X}(\omega, A)$ 为 $X$ 关于 $\mathscr{G}$ 的正则条件概率分布，$h$ 为 $\text{Borel}$ 函数，$h(X)$ 准可积，则有 ${\displaystyle \mathrm{E}[h(X) \mid \mathscr{G}]=\int_{\mathbf{R}^{n}\left(\mathbf{R}^{\infty}\right)} h(x) P(\omega, \mathrm{d} x)}$

## 4.3 条件独立性
