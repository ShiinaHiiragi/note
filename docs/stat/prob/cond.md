# 4 条件期望

## 4.1 经典定义
1. 条件概率：设 $(\Omega, \mathscr{F}, P)$ 是一个概率空间且 $B \in \mathscr{F}, P(B)>0$，记条件概率 $P_{B}(A)=P(A \mid B)=\dfrac{P(A B)}{P(B)}$
    1. 条件概率的性质
        1. 设 $\{A_n\}_{n \geqslant 1}$ 是互不相交的集合列，$A_n\cap A_m =\varnothing, n\neq m$，于是 ${\displaystyle P\left(\left. \bigcup_{n=1}^\infty A_n \ \right| \ A\right)=\sum_{n=1}^\infty P(A_n \mid A)}$
        2. 乘法公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\mathscr{F}$ 的一个事件列，则 $P(A_1A_2\cdots A_n)=P(A_1)P(A_2 \mid A_1)\cdots P(A_n \mid A_1A_2\cdots A_{n-1})$
        3. 全概率公式：设 $\{A_n\}_{n \geqslant 1}$ 构成了 $\Omega$ 上的一个分割，则有 ${\displaystyle P(B)=\sum_{n=1}^\infty P(A_n) \cdot P(B \mid A_n)}$
    2. $\mathrm{Bayes}$ 公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\Omega$ 的一个划分，则 $P(A_i \mid B)=\dfrac{P(B \mid A_i) \cdot P(A_i)}{{\displaystyle \sum_{j=1}^\infty P(A_j) \cdot P(B \mid A_j)}}$．其中 $P(A_i)$ 称为先验概率，$P(A_i \mid B)$ 称为后验概率
2. 条件分布：设条件概率 $P_{B}(A)=P(A \mid B)=\dfrac{P(A B)}{P(B)}$，固定 $B$ 并使 $A$ 在 $\mathscr{F}$ 中变化时，$P_{B}$ 也是 $(\Omega, \mathscr{F})$ 上的概率测度，可由随机变量 $X$ 诱导分布函数 $F(x) = P_{B}[X \leqslant x]$
    1. 二维连续随机向量 $(X, Y)$ 的条件密度：设随机向量 $(X, Y)$ 的联合密度为 $p(x, y)$，边缘分布为 $p_1(x)$ 与 $p_2(y)$
        1. 若 $P[a < Y \leqslant b] > 0$，则称 $p_1(x \mid [a, b]) = \dfrac{{\displaystyle \int_{a}^{b} p(x, v) \mathrm dv}}{{\displaystyle \int_{a}^{b} p_2(v) \mathrm dv}}$ 为 $X$ 在条件 $a \leqslant Y \leqslant b$ 下的条件密度函数，且有

            $$
            P[X \leqslant x_{0} \mid a \leqslant Y \leqslant b] = \int_{-\infty}^{x_{0}} p_1(x \mid [a, b]) \mathrm dx
            $$

        2. 若 $p_{2}(y_0) > 0$，则称 $p_1(x \mid y_{0}) = \dfrac{p(x, y_{0})}{p_2(y_{0})}$ 为 $X$ 在条件 $Y = y_{0}$ 下的条件密度函数，且有

            $$
            P[X \leqslant x_0 \mid Y = y_0] = \int_{-\infty}^{x_{0}} p_1(x \mid y_{0}) \mathrm dx
            $$

    2. 二维连续随机向量 $(X, Y)$ 的条件期望：设随机向量 $(X, Y)$ 的联合密度为 $p(x, y)$，且有 ${\displaystyle \int_{-\infty}^{+\infty} |x| p_1(x \mid y) \mathrm dx} < \infty$，则 $X$ 在在条件 $Y = y_{0}$ 下的条件期望 $\mathrm{E}[X \mid Y] = \mathrm{E}[X \mid Y = y_{0}] = {\displaystyle \int_{-\infty}^{+\infty} x p_1(x \mid y_{0}) \mathrm dx}$
        1. 全期望公式：若二维随机向量 $(X, Y)$ 有 $\mathrm{E} X, \mathrm{E} Y < \infty$ 且在任何条件 $Y = y$ 下都有 $g(y) = E[X \mid Y]$ 存在，则 $g(Y)$ 是一个随机变量且 $\mathrm{E}[\mathrm{E}[X \mid Y]] = \mathrm{E} X$
        2. 条件方差：定义 $\mathrm{D}[X \mid Y] = \mathrm{E}[X^{2} \mid Y] - \left(\mathrm{E}[X \mid Y]\right)^{2}$，于是等式 $\mathrm{D} X = \mathrm{D}\left[\mathrm{E}[X \mid Y]\right] + \mathrm{E}\left[\mathrm{D}[X \mid Y]\right]$ 成立
        3. 回归：设 $X, Y$ 是两个随机变量，$Y$ 与 $X$ 存在某种关联且 $X$ 可观测，则当且仅当 $f(X)=E[Y\mid X]$ 时，$Y$ 的近似 $f(X)$ 的平均误差 $E[|Y-f(X)|^2]$ 最小，称 $E[Y\mid X]$ 为 $Y$ 的一个回归．现实应用中，常用 $L(X) = aX+b$ 近似 $Y$, 使 $\mathrm{E}[Y-L(X)]^2$ 取最小值，称之为最佳线性预测
            - 易知 $L(X) = \mathrm{E}Y + r(X, Y) \dfrac{\mathrm{D}Y}{\mathrm{D}X}(X - \mathrm{E}X)$，称 $L(X)$ 为 $Y$ 的线性回归
            - 二阶矩理论：$\operatorname{Cov}(L(X), Y - L(X))=0$，说明残差 $Y - L(X)$ 中不再包含对预测 $Y$ 有用的信息

## 4.2 现代定义
### 4.2.1 条件期望与概率
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

### 4.2.2 条件概率分布
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

### 4.2.3 条件独立性
1. $\mathscr{G}$ 是 $\mathscr{F}$ 的子 $\sigma$ 域，$\left\{\mathscr{G}_{t}\right\}_{t \in T}$ 是 $\mathscr{F}$ 的子 $\sigma$ 域族．若对 $T$ 的任一有限子集 $I$，${\displaystyle P\left(\bigcap_{t \in I} B_{t} \mid \mathscr{G}\right)=\prod_{t \in I} P\left(B_{t} \mid \mathscr{G}\right), \forall B_{t} \in \mathscr{G}_{t}, t \in I}$ 成立，则称 $\left\{\mathscr{G}_{t}\right\}_{t \in T}$ 关于 $\mathscr{G}$ 是条件独立的
    1. 若 $\mathscr{G}=\{\varnothing, \Omega\}$，则 $\left\{\mathscr{G}_{t}\right\}_{t \in T}$ 关于 $\mathscr{G}$ 的条件独立性等价于 $\left\{\mathscr{G}_{t}\right\}_{t \in T}$ 为独立的
    2. 若 $I$ 为 $T$ 的有限子集，则下列事实相互等价
        1. $\mathscr{G}_{t}=\sigma\left(\mathscr{C}_{t}\right)$，对每个 $t \in T$，$\mathscr{C}_{t}$ 为 $\pi$ 类，有 ${\displaystyle P\left(\bigcap_{t \in I} C_{t} \mid \mathscr{G}\right)=\prod_{t \in I} P\left(C_{t} \mid \mathscr{G}\right), \forall C_{t} \in \mathscr{C}_{t}, t \in I}$
        2. $\left\{\mathscr{G}_{t}\right\}_{t \in T}$ 关于 $\mathscr{G}$ 条件独立
        3. ${\displaystyle \mathrm{E}\left[\prod_{t \in I} X_{t} \mid \mathscr{G}\right]=\prod_{t \in I} \mathrm{E}\left[X_{t} \mid \mathscr{G}\right], \forall X_{t} \in L_{\infty}\left(\mathscr{G}_{t}\right), t \in I}$
2. $\mathscr{G}_{1}, \mathscr{G}_{2}$ 关于 $\mathscr{G}$ 条件独立的充要条件是 ${\displaystyle P\left(B_{1} \mid \mathscr{G} \vee \mathscr{G}_{2}\right)=P\left(B_{1} \mid \mathscr{G}\right), \forall B_{1} \in \mathscr{G}_{1}}$
    1. 下列任一条件都是 $\mathscr{G}_{1}, \mathscr{G}_{2}$ 关于 $\mathscr{G}$ 条件独立的充要条件

        $$
        \begin{array}{ll}
        P\left(B_{1} \mid \mathscr{G} \vee \mathscr{G}_{2}\right)=P\left(B_{1} \mid \mathscr{G}\right), & \forall B_{1} \in \mathscr{G}_{1} \\
        P\left(B_{2} \mid \mathscr{G} \vee \mathscr{G}_{1}\right)=P\left(B_{2} \mid \mathscr{G}\right), & \forall B_{2} \in \mathscr{G}_{2}
        \end{array}
        $$

    2. 若 $\mathscr{G}_{1}$ 与 $\mathscr{G} \vee \mathscr{G}_{2}$ 独立，则 $\mathscr{G}_{1}, \mathscr{G}_{2}$ 关于 $\mathscr{G}$ 条件独立
