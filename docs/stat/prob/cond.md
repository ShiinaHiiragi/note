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

2. 条件概率

## 4.2 条件概率分布

## 4.3 条件独立性
