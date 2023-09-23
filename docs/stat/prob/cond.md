# 4 条件概率与期望

## 4.1 条件期望
1. 条件概率：设 $B \in \mathscr{F}, P(B)>0$，记条件概率 $P_{B}(A)=P(A \mid B)=\dfrac{P(A B)}{P(B)}$，固定 $B$ 让 $A$ 在 $\mathscr{F}$ 中变化时，条件概率 $P_{B}(\cdot)$ 也是 $(\Omega, \mathscr{F})$ 上的概率测度
2. 条件期望：若 $X(\omega)$ 为（关于 $P$）可积随机变量，则关于 $P_{B}(\cdot)$ 的期望为 ${\displaystyle \mathrm{E}_{B}[X]=\int X(\omega) P_{B}(\mathrm{d} \omega)=\dfrac{1}{P(B)} \int_{B} X(\omega) P(\mathrm{d} \omega)}$．设 $\left\{B_{n}\right\}_{n \geqslant 1}$ 为 $\Omega$ 的可数可测分割，即 $B_{n} \in \mathscr{F},\left\{B_{n}\right\}_{n \geqslant 1}$ 互不相交且 ${\displaystyle \sum_{n \to \infty} B_{n}=\Omega}$，则对 $A \in \mathscr{F}$ 及 $P$ 可积随机变量 $X$ 有

    $$
    \begin{aligned}
    P(A)&=\sum_{n=1}^{\infty} P\left(B_{n}\right) P_{B_{n}}(A) \\
    \mathrm{E}[X]&=\sum_{n=1}^{\infty} \int_{B_{n}} X(\omega) P(\mathrm{d} \omega)=\sum_{n=1}^{\infty} P\left(B_{n}\right) \mathrm{E}_{B_{n}}[X]
    \end{aligned}
    $$

## 4.2 条件概率分布

## 4.3 条件独立性
