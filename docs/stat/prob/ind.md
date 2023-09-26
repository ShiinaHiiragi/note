# 3 统计独立性

## 3.1 独立性
设 $(\Omega, \mathscr{F}, P)$ 为概率空间，$T$ 为某个参数集

1. 独立子类族：事件族 $\left\{A_{t}\right\}_{t \in T} \subseteq \mathscr{F}$ 若有对 $T$ 的任一有限子集 $I \subseteq T$，${\displaystyle P\left(\bigcap_{t \in I} A_{t}\right)=\prod_{t \in I} P\left(A_{t}\right)}$，则该事件族为称为（关于 $P$）统计独立的．$\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为 $\mathscr{F}$ 的子类族，若对 $T$ 的任一有限子集 $I \subseteq T$ 有 ${\displaystyle \forall A_{t} \in \mathscr{C}_{t}, t \in I: P\left(\bigcap_{t \in I} A_{t}\right)=\prod_{t \in I} P\left(A_{t}\right)}$ 成立，则称 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为（关于 $P$）独立子类族．特别地，当 $\mathscr{C}_{t}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域时，$\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 称为（关于 $P$）独立的 $\sigma$ 域族
    1. 设 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为 $\mathscr{F}$ 的子类族．若对每个 $t \in T, \mathscr{C}_{t}$ 为 $\pi$ 类，且 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为独立族
        1. $\left\{\mathscr{B}_{t}=\sigma\left(\mathscr{C}_{t}\right)\right\}_{t \in T}$ 为独立族
        2. 若 $\overline{\mathscr{B}}_{t}$ 表示 $\mathscr{B}_{t}$ 的完备化 $\sigma$ 域，则 $\left\{\overline{\mathscr{B}}_{t}\right\}_{t \in T}$ 为独立族
    2. 若子 $\sigma$ 域族 $\left\{\mathscr{B}_{t}\right\}_{t \in T}$ 为独立族，$\left\{T_{\alpha}\right\}_{\alpha \in J}$ 为 $T$ 的互不相交子集，则 $\left\{\mathscr{B}_{T_{\alpha}}=\sigma\left(\mathscr{B}_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为独立族
2. 独立随机变量族：设 $(\Omega, \mathscr{F}, P)$ 上随机变量族为 $\left\{X_{t}\right\}_{t \in T}$，若 $\left\{\sigma\left(X_{t}\right)\right\}_{t \in T}$ 是独立的子 $\sigma$ 域族，则称 $\left\{X_{t}\right\}_{t \in T}$ （关于 $P$）独立
    1. 随机变量族 $\left\{X_{t}\right\}_{t \in T}$ 为独立族的充要条件有
        1. 对任意 $a_{t} \in \mathbf R$，及 $T$ 的任一有限子集 $I$ 有 ${\displaystyle P\left[\bigcap_{t \in I}\left(X_{t} \leqslant a_{t}\right)\right]=\prod_{t \in I} P\left[X_{t} \leqslant a_{t}\right]}$
        2. 对任意 $B_t\in \mathscr{B}$，及 $T$ 的任一有限子集 $I$ 有 ${\displaystyle P\left(\bigcap_{t \in I}X_{t}^{-1} (B_t)\right)=\prod_{t \in I} P\left(X_{t}^{-1} (B_t)\right)}$
        3. 对于任意 $n \in \mathbf{N}$ 都有 ${\displaystyle F_{X_1, X_2, \cdots, X_n}(x_1, x_2, \cdots, x_n)=\prod_{k=1}^n F_{X_k}(x_k)}$
        4. 对于任意 $n \in \mathbf{N}$ 都有 ${\displaystyle p_{X_1, X_2, \cdots, X_n}(x_1, x_2, \cdots, x_n)=\prod_{k=1}^n p_{X_k}(x_k)}$
    2. 设 $\left\{X_{t}\right\}_{t \in T}$ 为独立随机变量族，$\left\{T_{\alpha}, \alpha \in J\right\}$ 为 $T$ 的互不相交子集，$\left\{f_{\alpha}\left(X_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为 $\text{Borel}$ 函数族，则 $\left\{Y_{\alpha}=f_{\alpha}\left(X_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为独立随机变量族
    3. 设 $\left\{X_{t}\right\}_{t \in T}$ 为独立随机变量族，且对每个 $t \in T$ 都有 $f_{t}\left(X_{t}\right)$ 可积（非负），则对 $T$ 的任一有限子集 $I$，都有 ${\displaystyle \mathrm{E}\left[\prod_{t \in I} f_{t}\left(X_{t}\right)\right]=\prod_{t \in I} \mathrm{E}\left[f_{t}\left(X_{t}\right)\right]}$．特别地，若 $\left\{X_{t}\right\}_{t \in T}$ 为独立可积（非负）随机变量族，则对 $T$ 的任一有限子集 $I$，都有 ${\displaystyle \mathrm{E}\left[\prod_{t \in I} X_{t}\right]=\prod_{t \in I} \mathrm{E}\left[X_{t}\right]}$

    !!! note "独立随机变量的性质"
        设 $X, Y$ 是两个随机变量，则 $X$ 与 $Y$ 独立分别与下列条件等价

        1. 对于任意非负可测函数 $f, g$，有 $\mathrm{E}[f(X) \cdot g(Y)]=\mathrm{E}[f(X)] \cdot \mathrm{E}[g(Y)]$
        2. 对于任意有界可测函数 $f, g$，有 $\mathrm{E}[f(X) \cdot g(Y)]=\mathrm{E}[f(X)] \cdot \mathrm{E}[g(Y)]$
        3. $\varphi_{X, Y}(t_1, t_2)=\varphi_X(t_1)\cdot \varphi_Y(t_2)$

## 3.2 独立随机变量序列
### 3.2.1 零一律
1. 尾 $\sigma$ 域：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，记 ${\displaystyle \mathscr{B}^{*}=\bigcap_{n=1}^{\infty} \sigma\left(X_{k}, k \geqslant n\right)}$，则称 $\mathscr{B}^{*}$ 为关于 $X$ 的尾 $\sigma$ 域或尾事件域
2. $\text{Kolmogorov}$ 零一律：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，则其尾事件域 $\mathscr{B}^{*}$ 中任一事件的概率必为 $0$ 或 $1$
    1. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，$\mathscr{B}^{*}$ 为其尾事件域，则 $\mathscr{B}^{*}$ 可测随机变量 $Y$ 必为退化的，即 $Y$ 以概率 $1$ 取常数值
    2. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列
        1. ${\displaystyle \varlimsup_{n \to \infty} X_{n}, \varliminf_{n \to \infty} X_{n}}$ 为退化的
        2. $\left\{\omega: {\displaystyle \lim _{n \to \infty} X_{n}} \textsf{ 存在}\right\}, \ \left\{\omega: {\displaystyle \sum_{n \to \infty} X_{n}} \textsf{ 收敛} \right\}, \ \left\{\omega: {\displaystyle \lim _{n \to \infty} \dfrac{1}{n} \sum_{j \leqslant n} X_{j}=0}\right\}$ 诸事件的概率为 $0$ 或 $1$
3. $\text{Borel}-\text{Cantelli}$ 引理
    1. 对事件列 $\left\{A_{n}\right\}_{n \geqslant 1}$，${\displaystyle \sum_{n=1}^{\infty} P\left(A_{n}\right)<\infty \to P\left(A_{n} \text{ i.o.}\right)=0}$
    2. 若 $\left\{A_{n}\right\}_{n \geqslant 1}$ 为独立事件列，则 ${\displaystyle \sum_{n=1}^{\infty} P\left(A_{n}\right)=\infty \rightarrow P\left(A_{n} \text{ i.o.}\right)=1}$

### 3.2.2 独立项级数
1. 设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j}}$．当 $\left\{S_{n}\right\}$ $\text{a.s.}$（或依概率）收敛于有限随机变量 $S$，则称随机变量级数 ${\displaystyle \sum_{j=1}^{\infty} X_{j}}$ $\text{a.s.}$（或依概率）收敛
    1. $\text{Kolmogorov}$ 不等式：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，且 $\mathrm{E} X_{n}=0, \mathrm{E} X_{n}^{2}<\infty$．记 ${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j}}$，则对任一 $\varepsilon>0$ 都有 ${\displaystyle P\left[\max _{1 \leqslant j \leqslant n}\left|S_{j}\right| \geqslant \varepsilon\right] \leqslant \dfrac{\mathrm{E} S_{n}^{2}}{\varepsilon^{2}}}$
    2. 设 $\left\{Y_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，则 ${\displaystyle \sum_{n \geqslant 1} \mathrm{D}\left[Y_{n}\right]<\infty \to \sum_{n=1}^{\infty}\left(Y_{n}-\mathrm{E} Y_{n}\right)}$ $\text{a.s.}$收敛
    3. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，且 $\left|X_{n}\right| \leqslant C \ \text{a.s.}, \ \mathrm{E} X_{n}=0$．记 ${\displaystyle S_{n}=\sum_{j=1}^{n} X_{j}}$
        1. 对任一 $\varepsilon>0$，有 ${\displaystyle P\left[\max _{1 \leqslant j \leqslant n}\left|S_{j}\right| \leqslant \varepsilon\right] \leqslant \dfrac{(C+\varepsilon)^{2}}{\mathrm{E} S_{n}^{2}}}$
        2. 若 ${\displaystyle \sum_{n \geqslant 1} X_{n}}$ $\text{a.s.}$收敛，则 ${\displaystyle \sum_{n \geqslant 1} \mathrm{D}\left[X_{n}\right]<\infty}$
2. 对随机变量序列 $\left\{X_{n}\right\}_{n \geqslant 1}$ 及 $\left\{Y_{n}\right\}_{n \geqslant 1}$，若 $P\left(X_{n} \neq Y_{n} \  \text{ i.o.}\right)=0$，则称 $\left\{X_{n}\right\}_{n \geqslant 1}$ 与 $\left\{Y_{n}\right\}_{n \geqslant 1}$ 为等价的
    1. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 与 $\left\{Y_{n}\right\}_{n \geqslant 1}$ 等价，则 ${\displaystyle \sum_{n \geqslant 1}\left(X_{n}-Y_{n}\right)}$ $\text{a.s.}$收敛，且对趋于无穷的数列 $\left\{a_{n}\right\}$ 有 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{1}{a_{n}} \sum_{j=1}^{n}\left(X_{j}-Y_{j}\right)=0}$ $\text{a.s.}$
    2. 三级数定理：设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，记 $X_{n}^{(a)}(\omega)=X_{n}(\omega) I_{\left|X_{n}(\omega)\right| \leqslant a}$，则级数 ${\displaystyle \sum_{n \geqslant 1} X_{n}}$ $\text{a.s.}$收敛的充要条件是对某一（任一）$a \in(0, \infty)$，级数 ${\displaystyle \sum_{n \geqslant 1} P\left[\left|X_{n}\right|>a\right], \  \sum_{n \geqslant 1} \mathrm{E} X_{n}^{(a)}, \  \sum_{n \geqslant 1} \mathrm{D}\left[X_{n}^{(a)}\right]}$ 同时收敛
    3. $\text{Ottaviani}$ 不等式：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，$a, b, c$ 为正数且 ${\displaystyle P\left[\left|\sum_{j=k+1}^{n} X_{j}\right| \leqslant b\right] \geqslant a, \  0 \leqslant k \leqslant n-1}$，则 ${\displaystyle P\left[\max _{1 \leqslant k \leqslant n}\left|\sum_{j=1}^{k} X_{j}\right|>b+c\right] \leqslant \dfrac{1}{a} P\left[\left|\sum_{j=1}^{n} X_{j}\right|>c\right]}$
    4. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，则 ${\displaystyle \sum_{n \geqslant 1} X_{n}}$ $\text{a.s.}$收敛与 ${\displaystyle \sum_{n \geqslant 1} X_{n}}$ 依概率收敛是等价的
3. 若随机变量 $X$ 对任一实数 $x$ 有 $P[X \leqslant-x]=P[X \geqslant x]$，则称 $X$ 具有对称分布
    1. 对称分布的性质
        1. $X$ 具有对称分布即 $X$ 与 $-X$ 有相同分布
        2. 若 $X$ 有对称分布，则 $P[X \leqslant 0]=P[X \geqslant 0] \geqslant \dfrac{1}{2}$
        3. 对一般的随机变量 $X$，若取 $Y$ 与 $X$ 独立且有相同分布，则 $Z=X-Y$ 有对称分布
        4. 若独立随机变量序列 $\left\{X_{j}\right\}_{j \geqslant 1}$ 都具有对称分布，则 ${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j}}$ 也有对称分布
    2. $\text{L}\acute{\mathrm e}\text{vy}$ 不等式：设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为相互独立具有对称分布的随机变量序列，${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j}}$，则对任一 $\varepsilon>0$ 有

        $$
        \begin{aligned}
        P\left[\max _{1 \leqslant j \leqslant n} S_{j} \geqslant \varepsilon\right] & \leqslant 2 P\left[S_{n} \geqslant \varepsilon\right] \\
        P\left[\max _{1 \leqslant j \leqslant n}\left|S_{j}\right| \geqslant \varepsilon\right] & \leqslant 2 P\left[\left|S_{n}\right| \geqslant \varepsilon\right]
        \end{aligned}
        $$

### 3.2.3 渐进理论
1. 大数定律：设 $X=\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j}}$．若存在常数序列 $\left\{a_{n}\right\},\left\{b_{n}\right\}$ 使 $\dfrac{S_{n}}{b_{n}}-a_{n} \rightarrow 0$ $\text{a.s.}$（或依概率），则称 $X$ 满足强大数（弱大数）定律，也称 $S_{n}$ 是 $\text{a.s.}$（依概率）稳定的
    1. $\text{Markov}$ 大数定律：设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，${\displaystyle S_{n}=\sum_{j \leqslant n} X_{j},\left\{b_{n}\right\}}$ 为趋于 $+\infty$ 的序列．若当 $n \rightarrow \infty$ 时

        $$
        \begin{aligned}
        \sum_{j=1}^{n} P\left[\left|X_{j}\right|>b_{n}\right]&=o(1) \\
        \dfrac{1}{b_{n}^{2}} \sum_{j=1}^{n} \mathrm{D}\left[X_{j} I_{\left|X_{j}\right| \leqslant b_{n}}\right]&=o(1)
        \end{aligned}
        $$

        则取 ${\displaystyle a_{n}=\sum_{j=1}^{n} \mathrm{E}\left[X_{j} I_{\left|X_{j}\right| \leqslant b_{n}}\right]}$，必有 $\dfrac{1}{b_{n}}\left(S_{n}-a_{n}\right) \overset{P}{\longrightarrow} 0$．特别地，若上两式及 ${\displaystyle \dfrac{1}{b_{n}} \sum_{j=1}^{n} \mathrm{E}\left[X_{j} I_{\left|X_{j}\right| \leqslant b_{n}}\right]=o(1)}$ 成立，则必有 $\dfrac{S_{n}}{b_{n}} \overset{P}{\longrightarrow} 0$

        1. 设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立同分布（简写作 $\text{i.i.d.}$）的随机变量序列，则存在常数列 $C_{n}$，使 ${\displaystyle \left(\dfrac{1}{n} \sum_{j=1}^{n} X_{j}-C_{n}\right) \overset{P}{\longrightarrow} 0}$ 的充要条件是 ${\displaystyle \lim _{n \rightarrow \infty} n P\left[\left|X_{1}\right|>n\right]=0}$，且这时 $C_{n}$ 可取为 $C_{n}=\mathrm{E}\left[X_{1} I_{\left|X_{n}\right| \leqslant n}\right]$
        2. $\text{Khintchine}$ 大数定律：设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立同分布随机变量序列，则 ${\displaystyle \dfrac{1}{n} \sum_{j=1}^{n} X_{j} \overset{P}{\longrightarrow} a}$ 的充要条件是

            $$
            \begin{aligned}
            \lim _{n \rightarrow \infty} n P\left(\left|X_{1}\right|>n\right)&=0 \\
            \lim _{n \rightarrow \infty} \mathrm{E}\left[X_{1} I_{\left|X_{1}\right| \leqslant n}\right]&=a
            \end{aligned}
            $$

    2. $\text{Kolmogorov}$ 大数定律：设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立同分布随机变量序列，则存在常数列 $\left\{C_{n}\right\}$，使 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{1}{n} \sum_{j=1}^{n}\left(X_{j}-C_{n}\right)=0}$ $\text{a.s.}$ 的充要条件是 $\mathrm{E}\left|X_{1}\right|<\infty$，且这时必有 $C_{n}=\mathrm{E} X_{1}+o(1)$ 与 ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{1}{n} \sum_{j=1}^{n} X_{j}=\mathrm{E} X_{1} \ \text{a.s.}}$
        1. $\text{Kronecker}$ 引理：设 $\left\{x_{k}\right\}$ 为实数列，$\left\{b_{k}\right\}$ 为递增趋于 $+\infty$ 的正数列，则 ${\displaystyle \sum_{j\geqslant 1} \dfrac{x_{j}}{b_{j}}}$ 收敛 $\to$ ${\displaystyle \lim _{n \rightarrow \infty} \dfrac{1}{b_{n}} \sum_{j=1}^{n} x_{j}=0}$
            - 设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立随机变量序列，$\mathrm{E} X_{n}=0, \ \sigma_{n}^{2}=\mathrm{E} X_{n}^{2}<\infty$．记 ${\displaystyle S_{n}=\sum_{j=1}^{n} X_{j}, \  s_{n}^{2}=\sum_{j=1}^{n} \sigma_{j}^{2}}$，若 $s_{n}^{2} \rightarrow \infty$，则对任一 $\varepsilon>0$，${\displaystyle \lim _{n \rightarrow \infty} \dfrac{S_{n}}{s_{n}\left(\log s_{n}^{2}\right)^{\frac{1}{2}+\varepsilon}}=0}$ $\text{a.s.}$
            - 设 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立同分布随机变量序列，且 $\mathrm{E} X_{n}=0, \ \mathrm{E} X_{n}^{2}<\infty$，则对任一 $\varepsilon>0$ 都有

                $$
                \begin{aligned}
                \lim _{n \rightarrow \infty} \dfrac{1}{n^{\frac{1}{2}+\varepsilon}} \sum_{j=1}^{n} X_{j}&=0 \ \text{a.s.} \\
                \lim _{n \rightarrow \infty} \dfrac{1}{n^{\frac{1}{2}}(\log n)^{\frac{1}{2}+\varepsilon}} \sum_{j=1}^{n} X_{j}&=0 \ \text{a.s.}
                \end{aligned}
                $$

        2. $\text{Glivenko}-\text{Cantelli}$ 定理：若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为独立同分布随机变量序列，经验分布函数 $F_n$ 是总体分布 $F$ 的估计，定义为 ${\displaystyle F_{n}(x)=\dfrac{\#\left\{1 \leqslant j \leqslant n: X_{j} \leqslant x\right\}}{n}=\dfrac{1}{n} \sum_{j=1}^{n} I_{X_{j} \leqslant x}}$，则 ${\displaystyle \lim _{n \rightarrow \infty} \sup _{x \in \mathbf{R}}\left|F_{n}(x)-F(x)\right|=0}$ $\text{a.s.}$

    !!! note "大数定律的经典表述"
        3. $\text{Markov}$ 弱大数定律：若随机变量序列 $\left\{X_n\right\}_{n\geqslant 1}$ 满足 ${\displaystyle \lim _{n \rightarrow \infty} \frac{\mathrm{D}S_n}{n^2}=0}$，则 $\dfrac{S_n-\mathrm{E}S_n}{n} \stackrel{P}{\longrightarrow} 0$
            1. $\text{Bernoulli}$ 大数定律：设 $X_n \sim B(n, p)$，则 $\dfrac{X_n}{n} \stackrel{P}{\longrightarrow} p$
            2. $\text{Chebyshev}$ 弱大数定律：若随机变量序列 $\left\{X_n\right\}_{n\geqslant 1}$ 中的随机变量两两不相关且存在 $C>0$ 使得 $\mathrm{D}\left(X_n\right) \leq C$，则 $\dfrac{S_n-\mathrm{E}S_n}{n} \stackrel{P}{\longrightarrow} 0$
        4. $\text{Khintchine}$ 弱大数定律：设 $\left\{X_n\right\}_{n\geqslant 1}$ 为独立同分布随机变量序列，如果 $\mathrm{E}X_1=\mu$，则 $\dfrac{S_n}{n} \stackrel{P}{\longrightarrow} \mu$
        5. $\text{Kolmogorov}$ 强大数定律：设 $\left\{X_n\right\}_{n\geqslant 1}$ 为独立同分布随机变量序列，则存在常数 $a$ 使得 $\dfrac{S_n-n a}{n} \stackrel{\text{a.s.}}{\longrightarrow} 0$ 的充要条件是 $\mathrm{E}X_1=a, \mathrm{E}|X_1|<\infty$

2. 中心极限定理
