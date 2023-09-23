# 4 条件概率与期望

## 4.1 条件期望
1. 条件概率：设 $(\Omega, \mathscr{F}, P)$ 是一个概率空间且 $B \in \mathscr{F}, P(B)>0$，记条件概率 $P_{B}(A)=P(A \mid B)=\dfrac{P(A B)}{P(B)}$
    1. 条件概率的性质
        1. 固定 $B$ 让 $A$ 在 $\mathscr{F}$ 中变化时，条件概率 $P_{B}(\cdot)$ 也是 $(\Omega, \mathscr{F})$ 上的概率测度
        2. 设 $\{A_n\}_{n \geqslant 1}$ 是互不相交的集合列，$A_n\cap A_m =\varnothing, n\neq m$，于是 ${\displaystyle P\left(\left. \bigcup_{n=1}^\infty A_n \ \right| \ A\right)=\sum_{n=1}^\infty P(A_n \mid A)}$
    2. 乘法公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\mathscr{F}$ 的一个事件列，则 $P(A_1A_2\cdots A_n)=P(A_1)P(A_2 \mid A_1)\cdots P(A_n \mid A_1A_2\cdots A_{n-1})$
    3. 全概率公式：设 $\{A_n\}_{n \geqslant 1}$ 构成了 $\Omega$ 上的一个分割，则有 ${\displaystyle P(B)=\sum_{n=1}^\infty P(A_n) \cdot P(B \mid A_n)}$
    4. $\mathrm{Bayes}$ 公式：设 $\{A_n\}_{n \geqslant 1}$ 是 $\Omega$ 的一个划分，则 $P(A_i \mid B)=\dfrac{P(B \mid A_i) \cdot P(A_i)}{{\displaystyle \sum_{j=1}^\infty P(A_j) \cdot P(B \mid A_j)}}$．其中 $P(A_i)$ 称为先验概率，$P(A_i \mid B)$ 称为后验概率
2. 条件期望：若 $X(\omega)$ 为（关于 $P$）可积随机变量，则关于 $P_{B}(\cdot)$ 的期望为 ${\displaystyle \mathrm{E}_{B}[X]=\int X(\omega) P_{B}(\mathrm{d} \omega)=\dfrac{1}{P(B)} \int_{B} X(\omega) P(\mathrm{d} \omega)}$．设 $\left\{B_{n}\right\}_{n \geqslant 1}$ 为 $\Omega$ 的可数可测分割，即 $B_{n} \in \mathscr{F},\left\{B_{n}\right\}_{n \geqslant 1}$ 互不相交且 ${\displaystyle \sum_{n \to \infty} B_{n}=\Omega}$，则对 $A \in \mathscr{F}$ 及 $P$ 可积随机变量 $X$ 有

    $$
    \begin{aligned}
    P(A)&=\sum_{n=1}^{\infty} P\left(B_{n}\right) P_{B_{n}}(A) \\
    \mathrm{E}[X]&=\sum_{n=1}^{\infty} \int_{B_{n}} X(\omega) P(\mathrm{d} \omega)=\sum_{n=1}^{\infty} P\left(B_{n}\right) \mathrm{E}_{B_{n}}[X]
    \end{aligned}
    $$

## 4.2 条件概率分布

## 4.3 条件独立性
