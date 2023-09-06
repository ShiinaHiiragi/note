# 2 微分与积分

## 2.1 微分
1. $\text{Vitali}$ 覆盖定理：设 $E \subseteq \mathbf{R}$ 且 $m^{*} E<\infty$，$\mathscr{V}$ 是 $E$ 的 $V-$覆盖，则可选出区间列 $\left\{I_{n}\right\} \subseteq \mathscr{T}$，使得各 $I_{n}$ 互不相交且 $m\left(E - \bigcup_{k} I_{k}\right)=0$ 成立
    1. $V-$覆盖：设 $E \subseteq \mathbf{R}$，$\mathscr{V}=\{I\}$ 是长度为正的区间族．如果对于任意 $x \in E$ 及任意 $\varepsilon>0$，存在区间 $I_{x} \in \mathscr{V}$ 使 $x \in I_{x}$ 且 $m I_{x}<\varepsilon$，则称 $\mathscr{V}$ 依 $\text{Vitali}$ 意义覆盖 $E$，简称 $E$ 的 $V$-覆盖
    2. 设 $E \subseteq \mathbf{R}$ 且 $m^{*} E<\infty, \mathscr{V}$ 是 $E$ 的 $V$-覆盖，则对任何 $\varepsilon>0$，可从 $\mathscr{V}$ 中选出互不相交的有限个区间 $I_{1}, I_{2}, \cdots, I_{n}$ 使得 ${\displaystyle m^{*}\left(E - \bigcup_{i=1}^{n} I_{i}\right)<\varepsilon}$
2. 单调函数的可微性
    1. 列导数：设 $f(x)$ 为 $[a, b]$ 上的有限函数，$x_{0} \in[a, b]$．若存在数列 $h_{n} \rightarrow 0\left(h_{n} \neq 0\right)$ 使极限 ${\displaystyle \lim _{n \to \infty} \dfrac{f\left(x_{0}+h_{n}\right)-f\left(x_{0}\right)}{h_{n}}=\lambda}$ 存在（$\lambda$ 可为 $\pm \infty$），则称 $\lambda$ 为 $f(x)$ 在点 $x_{0}$ 处的一个列导数，记为 $D f\left(x_{0}\right)=\lambda$
        1. 列导数 $D f\left(x_{0}\right)$ 与数列 $\left\{h_{n}\right\}$ 的取法有关，$f(x)$ 在点 $x_{0}$ 存在导数 $f^{\prime}\left(x_{0}\right)$ 当且仅当 $f(x)$ 在点 $x_{0}$ 处的一切列导数都相等
        2. 设 $f(x)$ 为 $[a, b]$ 上的严格增函数
            - 如果对于 $E \subseteq[a, b]$ 中每一点 $x$，至少有一个列导数 $D f(x) \leqslant p \ (p \geqslant 0)$，则 $m^{*} f(E) \leqslant p m^{*} E$
            - 如果对于 $E \subseteq[a, b]$ 中每一点 $x$，至少有一个列导数 $D f(x) \geqslant q \ (q \geqslant 0)$，则 $m^{*} f(E) \geqslant q m^{*} E$
    2. 设 $f(x)$ 为 $[a, b]$ 上的单调函数
        1. $f(x)$ 在 $[a, b]$ 上几乎处处存在导数 $f^{\prime}(x)$
        2. $f^{\prime}(x)$ 在 $[a, b]$ 上可积
        3. 如果 $f(x)$ 为增函数，则有 ${\displaystyle \int_{a}^{b} f^{\prime}(x) \mathrm{d} x \leqslant f(b)-f(a)}$


## 2.2 积分论
### 2.2.1 Lesbegue 积分
1. 非负简单函数的 $\text{Lesbegue}$ 积分：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 为 $E$ 上的一个非负简单函数，即 $E$ 表示为有限个互不相交的可测集 $E_{1}, E_{2}, \cdots, E_{k}$ 之并．在每个 $E_{i}$ 上 $\varphi(x)$ 取非负常数值 $c_{i}$，即 ${\displaystyle \varphi(x)=\sum_{i=1}^{k} c_{i} \chi_{E_{i}}(x)}$，这里 $\chi_{E_{i}}(x)$ 是 $E_{i}$ 的特征函数．$\varphi(x)$ 在 $E$ 上的 $\text{Lesbegue}$ 积分（简称 $L$ 积分）定义为 ${\displaystyle \int_{E} \varphi(x) \mathrm{d} x=\sum_{i=1}^{k} c_{i} m E_{i}}$
    1. 设 $\boldsymbol{E} \subseteq \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 为 $E$ 上的一个非负简单函数
        1. 对于任意的非负实数 $c$ 都有 ${\displaystyle \int_{E} c \varphi(x) \mathrm{d} x=c \int_{E} \varphi(x) \mathrm{d} x}$
        2. 设 $A$ 和 $B$ 是 $E$ 的两个不相交的可测子集，则 ${\displaystyle \int_{A \cup B} \varphi(x) \mathrm{d} x=\int_{A} \varphi(x) \mathrm{d} x+\int_{B} \varphi(x) \mathrm{d} x}$
        3. 设 $\left\{A_{n}\right\}_{n=1}^{\infty}$ 是 $E$ 的一列可测子集，满足 ① $A_{1} \subseteq A_{2} \subseteq \cdots \subseteq A_{n} \subseteq A_{n+1} \subseteq \cdots$；② ${\displaystyle \bigcup_{n=1}^{\infty} A_{n}=E}$，则 ${\displaystyle \lim _{n \rightarrow \infty} \int_{A_{n}} \varphi(x) \mathrm{d} x=\int_{E} \varphi(x) \mathrm{d} x}$
    2. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 和 $\psi(x)$ 都是 $E$ 上的非负简单函数
        1. ${\displaystyle \int_{E} \varphi(x) \mathrm{d} x+\int_{E} \psi(x) \mathrm{d} x=\int_{E}(\varphi(x)+\psi(x)) \mathrm{d} x}$
        2. 对于任意的非负实数 $\alpha$ 和 $\beta$ 都有 ${\displaystyle \alpha \int_{E} \varphi(x) \mathrm{d} x+\beta \int_{E} \psi(x) \mathrm{d} x=\int_{E}(\alpha \varphi(x)+\beta \psi(x)) \mathrm{d} x}$
2. 非负可测函数的 $\text{Lesbegue}$ 积分：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f(x)$ 是 $E$ 上的非负可测函数，$f(x)$ 在 $E$ 上的 $\text{Lesbegue}$ 积分定义为

    $$
    \int_{E} f(x) \mathrm{d} x=\sup \left\{\int_{E} \varphi(x) \mathrm{d} x: \varphi(x) \textsf{ 是 } E \textsf{ 上的简单函数且 } x \in E \textsf{ 时，} 0 \leqslant \varphi(x) \leqslant f(x) \right\}
    $$

    于是 ${\displaystyle 0 \leqslant \int_{E} f(x) \mathrm{d} x \leqslant \infty}$．若 ${\displaystyle \int_{E} f(x) \mathrm{d} x<\infty}$，则称 $f(x)$ 在 $E$ 上 $\text{Lesbegue}$ 可积．设 $A \subseteq E$ 为可测集，则 $f(x)$ 在 $A$ 上的 $\text{Lesbegue}$ 积分定义为 $f$ 在 $A$ 上的限制 $f \upharpoonright A$ 在 $A$ 上的 $\text{Lesbegue}$ 积分，即 ${\displaystyle \int_{A} f(x) \mathrm{d} x=\int_{E} f(x) \chi_{A}(x) \mathrm{d} x}$

    1. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f(x)$ 为 $E$ 上的一个非负可测函数
        1. 若 $m E=0$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
        2. 若 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$，则 $f(x)=0$ $\text{a.e.}$于 $E$
        3. 若 ${\displaystyle \int_{E} f(x) \mathrm{d} x<\infty}$，则 $0 \leqslant f(x)<\infty$ $\text{a.e.}$于 $E$
        4. 设 $A$ 和 $B$ 为 $E$ 的两个互不相交的可测子集，则 ${\displaystyle \int_{A \cup B} f(x) \mathrm{d} x=\int_{A} f(x) \mathrm{d} x+\int_{B} f(x) \mathrm{d} x}$
    2. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f(x)$ 和 $g(x)$ 都是 $E$ 上的非负可测函数
        1. 若 $f(x) \leqslant g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$；此时若 $g(x)$ 在 $E$ 上 $L$ 可积，则 $f(x)$ 也在 $E$ 上 $L$ 可积
        2. 若 $f(x)=g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{E} g(x) \mathrm{d} x}$；特别地，若 $f(x)=0$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
    3. $\text{Levi}$ 定理：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数．当 $x \in E$ 时，对于任一正整数 $n$ 有 $f_{n}(x) \leqslant f_{n+1}(x)$，令 ${\displaystyle f(x)=\lim _{n \rightarrow \infty} f_{n}(x), x \in E}$，则 ${\displaystyle \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x}$
    4. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f(x)$ 和 $g(x)$ 都是 $E$ 上的非负可测函数，$\alpha$ 和 $\beta$ 都是非负实数，则 ${\displaystyle \int_{E}(\alpha f(x)+\beta g(x)) \mathrm{d} x=\alpha \int_{E} f(x) \mathrm{d} x+\beta \int_{E} g(x) \mathrm{d} x}$．特别地，

        $$
        \begin{aligned}
        \int_{E} \alpha f(x) \mathrm{d} x&=\alpha \int_{E} f(x) \mathrm{d} x \\
        \int_{E}(f(x)+g(x)) \mathrm{d} x&=\int_{E} f(x) \mathrm{d} x+\int_{E} g(x) \mathrm{d} x
        \end{aligned}
        $$

    5. 逐项积分定理：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数，则 ${\displaystyle \int_{E}\left(\sum_{n=1}^{\infty} f_{n}(x)\right) \mathrm{d} x=\sum_{n=1}^{\infty} \int_{E} f_{n}(x) \mathrm{d} x}$
    6. $\text{Fatou}$ 引理：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数，则 ${\displaystyle \int_{E} \lim _{n \rightarrow \infty} f_{n}(x) \mathrm{d} x \leqslant \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x}$

3. 一般可测函数的 $\text{Lesbegue}$ 积分：设 $f(x)$ 为可测集 $E \subseteq \mathbf{R}^{n}$ 上可测函数，$f^{+}(x)=\max \{f(x), 0\}, f^{-}(x)=\max \{-f(x), 0\}$，则 $f^{+}$ 和 $f^{-}$ 都是 $E$ 上的非负可测函数．当 $x \in E$ 时，$f^{+}(x)-f^{-}(x)=f(x), f^{+}(x)+f^{-}(x)=|f(x)|$．若 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{E} f^{-}(x) \mathrm{d} x}$ 中至少一个有限，则称 $f$ 在 $E$ 上积分确定，称 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x-\int_{E} f^{-}(x) \mathrm{d} x}$ 为 $f$ 在 $E$ 上的 $\text{Lesbegue}$ 积分，记作 ${\displaystyle \int_{E} f(x) \mathrm{d} x}$．若 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{E} f^{-}(x) \mathrm{d} x}$ 都有限，则称 $f$ 在 $E$ 上 $\text{Lesbegue}$ 可积，简称 $L$ 可积．可测集 $E$ 上 $L$ 可积函数的全体所成之集记作 $L(E)$
    1. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集
        1. 若 $E \neq \varnothing$ 但 $m E=0$，则 $E$ 上的任何实函数 $f$ 都在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
        2. 若 $f \in L(E)$，则 $m E[|f|=\infty]=0$，即 $|f(x)|<\infty$ $\text{a.e.}$于 $E$
        3. 设 $f$ 在 $E$ 上积分确定，则 $f$ 在 $E$ 的任一可测子集 $A$ 上也积分确定，又若 $E=A \cup B$，这里 $A$ 和 $B$ 都是 $E$ 的可测子集且 $A \cap B=\varnothing$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{A} f(x) \mathrm{d} x+\int_{B} f(x) \mathrm{d} x}$
        4. 设 $f$ 在 $E$ 上积分确定且 $f(x)=g(x)$ $\text{a.e.}$于 $E$，则 $g$ 也在 $E$ 上积分确定且 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{E} g(x) \mathrm{d} x}$
        5. 设 $f$ 和 $g$ 都在 $E$ 上积分确定且 $f(x) \leqslant g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$．特别地，若 $m E<\infty$，且 $b \leqslant f(x) \leqslant B$ $\text{a.e.}$于 $E$，则 ${\displaystyle b m E \leqslant \int_{E} f(x) \mathrm{d} x \leqslant B m E}$
        6. 设 $f$ 在 $E$ 上 $L$ 可积，则 $|f|$ 也在 $E$ 上 $L$ 可积且 ${\displaystyle \left|\int_{E} f(x) \mathrm{d} x\right| \leqslant \int_{E}|f(x)| \mathrm{d} x}$
        7. 设 $f$ 是 $E$ 上的可测函数，$g$ 是 $E$ 上的非负 $L$ 可积函数且 $|f(x)| \leqslant g(x)$ $\text{a.e.}$于 $E$，则 $f$ 也在 $E$ 上 $L$ 可积，且有 ${\displaystyle \left|\int_{E} f(x) \mathrm{d} x\right| \leqslant \int_{E}|f(x)| \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$ 成立
    2. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f$ 和 $g$ 都是 $E$ 上的 $L$ 可积函数
        1. 对于任意的 $\lambda \in \mathbf{R}$，$\lambda f$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E} \lambda f(x) \mathrm{d} x=\lambda \int_{E} f(x) \mathrm{d} x}$
        2. $f+g$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E}(f(x)+g(x)) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x+\int_{E} g(x) \mathrm{d} x}$
        3. 对于任意的 $\alpha, \beta \in \mathbf{R}$，$\alpha f+\beta g$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E}(\alpha f(x)+\beta g(x)) \mathrm{d} x=\alpha \int_{E} f(x) \mathrm{d} x+\beta \int_{E} g(x) \mathrm{d} x}$
    3. $\text{Lesbegue}$ 积分的性质
        1. 积分的绝对连续性：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f \in L(E)$．则对于任意的 $\varepsilon>0$，存在 $\delta>0$，使得对于任意的可测集 $A \subseteq E$，只要 $m A<\delta$，就有 ${\displaystyle \left|\int_{A} f(x) \mathrm{d} x\right| \leqslant \int_{A}|f(x)| \mathrm{d} x<\varepsilon}$
        2. 积分的可数可加性：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，${\displaystyle E=\bigcup_{n=1}^{\infty} E_{n}}$，这里每个 $E_{n}$ 都是可测集且 $i \neq j$ 时 $E_{i} \cap E_{j}=\varnothing$，设 $f$ 在 $E$ 上积分确定，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\sum_{n=1}^{\infty} \int_{E_{n}} f(x) \mathrm{d} x}$
    4. $\text{Lesbegue}$ 控制收敛定理：设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列可测函数．$F$ 是 $E$ 上的非负 $L$ 可积函数，如果对于任意的正整数 $n$，$\left|f_{n}(x)\right| \leqslant F(x)$ $\text{a.e.}$于 $E$ 且 ${\displaystyle \lim _{n \rightarrow \infty} f_{n}(x)=f(x)}$ $\text{a.e.}$于 $E$，则有
        1. ${\displaystyle \lim _{n \rightarrow \infty} \int_{E}\left|f_{n}(x)-f(x)\right| \mathrm{d} x=0}$
        2. ${\displaystyle \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x}$
    5. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f$ 和 $f_{n} \ (n=1,2,3, \cdots)$ 都是 $E$ 上的可测函数，$F$ 是 $E$ 上的非负 $L$ 可积函数．如果 $\left|f_{n}(x)\right| \leqslant F(x)$ $\text{a.e.}$于 $E$ 且 $n \rightarrow \infty$ 时 $f_{n} \Rightarrow f$，则有
        1. ${\displaystyle \lim _{n \rightarrow \infty} \int_{E}\left|f_{n}(x)-f(x)\right| \mathrm{d} x=0}$
        2. ${\displaystyle \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x}$
    6. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列 $L$ 可积函数．如果正项级数 ${\displaystyle \sum_{n=1}^{\infty} \int_{E}\left|f_{n}(x)\right| \mathrm{d} x}$ 收敛，则函数项级数 ${\displaystyle \sum_{n=1}^{\infty} f_{n}(x)}$ 在 $E$ 上 $\text{a.e.}$收敛，其和函数在 $E$ 上 $L$ 可 积，且 ${\displaystyle \int_{E}\left(\sum_{n=1}^{\infty} f_{n}(x)\right) \mathrm{d} x=\sum_{n=1}^{\infty} \int_{E} f_{n}(x) \mathrm{d} x}$
    7. 设 $E \subseteq \mathbf{R}^{n}$ 为可测集，$f(x, t)$ 是 $E \times(a, b)$ 上的实函数．如果对于任意的 $t \in(a, b), f(x, t)$ 作为 $x$ 的函数在 $E$ 上 $L$ 可积，对于 $\text{a.e.}$的 $x \in E, f(x, t)$ 作为 $t$ 的函数在 $(a, b)$ 上可导且 $\left|\dfrac{\partial}{\partial t} f(x, t)\right| \leqslant F(x)$，这里 $F$ 是 $E$ 上某个非负 $L$ 可积函数，则 ${\displaystyle \int_{E} f(x, t) \mathrm{d} x}$ 作为 $t$ 的函数在 $(a, b)$ 上可导，且 ${\displaystyle \dfrac{\mathrm{d}}{\mathrm{d} t} \int_{E} f(x, t) \mathrm{d} x=\int_{E} \dfrac{\partial}{\partial t} f(x, t) \mathrm{d} x}$
4. $\text{Riemann}$ 积分 ${\displaystyle (R) \int}$ 与 $\text{Lesbegue}$ 积分 ${\displaystyle (L) \int}$ 的关系
    1. 设 $f(x)$ 是 $[a, b]$ 上有界函数，则 $f(x)$ 在 $[a, b]$ 上 $R$ 可积的充要条件为 $f(x)$ 在 $[a, b]$ 上 $\text{a.e.}$连续
    2. 设 $f(x)$ 是 $[a, b]$ 上的一个有界函数，若 $f(x)$ 在 $[a, b]$ 上 $R$ 可积，则 $f(x)$ 在 $[a, b]$ 上 $L$ 可积且 ${\displaystyle (L)\int_{[a, b]} f(x) \mathrm{d} x=(R) \int_{a}^{b} f(x) \mathrm{d} x}$
    3. 设 $f(x)$ 是 $[a, \infty)$ 上的一个非负实函数，若对于任意的 $A>a$，$f(x)$ 在 $[a, A]$ 上 $R$ 可积且 $R$ 反常积分 ${\displaystyle (R) \int_{a}^{\infty} f(x) \mathrm{d} x}$ 收敛，则 $f(x)$ 在 $[a, \infty)$ 上 $L$ 可积且 ${\displaystyle (L) \int_{[a, \infty)} f(x) \mathrm{d} x=(R) \int_{a}^{\infty} f(x) \mathrm{d} x}$
5. 截面与下方图形
    1. 截面：设 $E$ 是 $\mathbf{R}^{p+q}$ 中一点集，$x_{0}$ 是 $\mathbf{R}^{p}$ 中一固定点，则 $\mathbf{R}^{q}$ 中的点集 $\left\{y \in \mathbf{R}^{q}:\left(x_{0}, y\right) \in E\right\}$ 称为 $E$ 关于 $x_{0}$ 的截面，记为 $E_{x_{0}}$；也可定义 $E$ 关于 $y_{0} \in \mathbf{R}^{\prime}$ 的截面 $\left\{x \in \mathbf{R}^{p}:\left(x, y_{0}\right) \in E\right\}=E_{y_{0}}$
        1. 截面的性质
            - 如果 $A_{1} \subseteq A_{2}$，则 $\left(A_{1}\right)_{x} \subseteq \left(A_{2}\right)_{x}$
            - 如果 $A_{1} \cap A_{2}=\varnothing$，则 $\left(A_{1}\right)_{x} \cap\left(A_{2}\right)_{x}=\varnothing$
            - ${\displaystyle \left(\bigcup_{i} A_{i}\right)_{x}=\bigcup_{i}\left(A_{i}\right)_{x},\left(\bigcap_{i} A_{i}\right)_{x}=\bigcap_{i}\left(A_{i}\right)_{x}}$
            - $\left(A_{1} - A_{2}\right)_{x}=\left(A_{1}\right)_{x} -\left(A_{2}\right)_{x}$
        2. 截面定理：设 $E \subseteq \mathbf{R}^{p+q}$ 是可测集
            - 对于 $\mathbf{R}^{p}$ 中几乎所有的点 $x$，$E_{x}$ 是 $\mathbf{R}^{q}$ 中可测集
            - $m E_{x}$ 作为 $x$ 的函数，它是 $\mathbf{R}^{p}$ 上 $\text{a.e.}$有定义的可测函数
            - ${\displaystyle m E=\int_{\mathbf{R}^{p}} m E_{x} \mathrm{~d} x}$
        3. 设 $A, B$ 分别是 $\mathbf{R}^{p}, \mathbf{R}^{q}$ 中的可测集，则 $A \times B$ 是 $\mathbf{R}^{p+q}$ 中的可测集且 $m(A \times B)=m A \cdot m B$
    2. 下方图形：设 $f(x)$ 是 $E \subseteq \mathbf{R}^{n}$ 上的非负函数，则 $\mathbf{R}^{n+1}$ 中的点集 $\{(x, z): x \in E, 0 \leqslant z<f(x)\}$ 称为 $f(x)$ 在 $E$ 上的下方图形，记为 $G(E, f)$
6. 非负可测函数积分的几何意义：设 $f(x)$ 为可测集 $E \subseteq \mathbf{R}^{n}$ 上的非负函数，则有 ① $f(x)$ 是 $E$ 上的可测函数的充要条件是 $G(E, f)$ 是 $\mathbf{R}^{n+1}$ 中的可测集；② 当 $f(x)$ 在 $E$ 上可测时，${\displaystyle \int_{E} f(x) \mathrm{d} x=m G(E, f)}$
    1. 设 $f(x)$ 为 $E \subseteq \mathbf{R}^{n}$ 上的可积函数，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=m G\left(E, f^{+}\right)-m G\left(E, f^{-}\right)}$
    2. 可测函数 $f(x)$ 在 $E \subseteq \mathbf{R}^{n}$ 上可积分的充要条件是 $m G\left(E, f^{+}\right)$与 $m G\left(E, f^{-}\right)$ 都是有限的
    3. $\text{Fubini}$ 定理
        1. 设 $f(P)=f(x, y)$ 在 $A \times B \subseteq \mathbf{R}^{p+q}$（$A, B$ 分别为 $\mathbf{R}^{p}$ 与 $\mathbf{R}^{q}$ 中之可测集）上非负可测，则对 $\text{a.e.}$的 $x \in A$，$f(x, y)$ 作为 $y$ 的函数在 $B$ 上可测，且 ${\displaystyle \int_{A \times B} f(P) \mathrm{d} P=\int_{A} \mathrm{d} x \int_{B} f(x, y) \mathrm{d} y}$
        2. 设 $f(P)=f(x, y)$ 在 $A \times B \subseteq \mathbf{R}^{p+q}$ 上可积，则对 $\text{a.e.}$的 $x \in A$，$f(x, y)$ 作为 $y$ 的函数在 $B$ 上可积．又 ${\displaystyle \int_{B} f(x, y) \mathrm{d} y}$ 作为 $x$ 的函数在 $A$ 上可积且 ${\displaystyle \int_{A \times B} f(P) \mathrm{d} P=\int_{A} \mathrm{d} x \int_{B} f(x, y) \mathrm{d} y}$

### 2.2.2 不定积分
1. 有界变差函数：设 $f(x)$ 为 $[a, b]$ 上的有限函数，如果对于 $[a, b]$ 的一切分划 $T$，使 ${\displaystyle \left\{\sum_{i=1}^{n}\left|f\left(x_{i}\right)-f\left(x_{i-1}\right)\right|\right\}}$ 成一有界数集，则称 $f(x)$ 为 $[a, b]$ 上的有界变差函数（或囿变函数），并称该有界数集的上确界为 $f(x)$ 在 $[a, b]$ 上的全变差，记为 $\stackrel{b}{\underset{a}{\large \textbf{V} \large}}(f)$．用一个分划作成的和数 ${\displaystyle V=\sum_{i=1}^{n}\left|f\left(x_{i}\right)-f\left(x_{i-1}\right)\right|}$ 称为 $f(x)$ 在此分划下对应的变差
    1. 弧长：设 $C$ 是平面上一条连续弧，$x=\varphi(t), y=\psi(t)$，$\alpha \leqslant t \leqslant \beta$ 是它的参数表示．$\varphi(t), \psi(t)$ 为 $[\alpha, \beta]$ 上的连续函数，相应于区间 $[\alpha, \beta]$ 的任一分划 $T: \alpha=t_{0}<t_{1}<\cdots<t_{n}=\beta$ 得到 $C$ 上一组分点 $P_{i}=\left(\varphi\left(t_{i}\right), \psi\left(t_{i}\right)\right), i=0,1,2, \cdots, n$．设依次联结各分点 $P_{i}$ 所得内接折线的长为 $L(T)$，如果对于 $[\alpha, \beta]$ 的一切分划 $T,\{L(T)\}$ 成一有界数集，则称 $C$ 为可求长的，并称其上确界 $L=\sup _{T} L(T)$ 为 $C$ 之长
    2. 连续弧 $x=\varphi(t), y=\psi(t), \alpha \leqslant t \leqslant \beta$ 可求长的充要条件是 $\varphi(t)$ 与 $\psi(t)$ 都是 $[\alpha, \beta]$ 上的有界变差函数
    3. 设 $f(x), g(x)$ 在 $[a, b]$ 上都有界变差，则有
        1. 可加性：在其任一子区间 $\left[a_{1}, b_{1}\right]$ 上有界变差．若 $a<c<b$ 且 $f(x)$ 分别在 $[a, c]$ 及 $[c, b]$ 上有界变差，则 $f(x)$ 在 $[a, b]$ 上也有界变差且 $\stackrel{b}{\underset{a}{\large \textbf{V} \large}}(f)=\stackrel{c}{\underset{a}{\large \textbf{V} \large}}(f)+\stackrel{b}{\underset{c}{\large \textbf{V} \large}}(f)$
        2. $f(x)$ 在 $[a, b]$ 上有界
        3. $f(x) \pm g(x), f(x) g(x)$ 在 $[a, b]$ 上有界变差
    4. $\text{Jordan}$ 分解：在 $[a, b]$ 上的任一有界变差函数 $f(x)$ 都可表示为 两个增函数之差
    5. 设 $f(x)$ 为 $[a, b]$ 上的有界变差函数
        1. $f(x)$ 在 $[a, b]$ 上几乎处处存在导数 $f^{\prime}(x)$
        2. $f^{\prime}(x)$ 在 $[a, b]$ 上可积
2. 不定积分：设 $f(x)$ 在 $[a, b]$ 上 $L$ 可积，则 $[a, b]$ 上的函数 ${\displaystyle F(x)=\int_{a}^{x} f(t) \mathrm{d} t+C}$（$C$ 为任一常数）称为 $f(x)$ 的一个不定积分
    1. 绝对连续函数：设 $F(x)$ 为 $[a, b]$ 上的有限函数，如果对任意 $\varepsilon>0$，存在 $\delta>0$ 使对 $[a, b]$ 中互不相交的任意有限个开区间 $\left(a_{i}, b_{i}\right), i=1,2, \cdots, n$，只要 ${\displaystyle \sum_{i=1}^{n}\left(b_{i}-a_{i}\right)<\delta}$，就有 ${\displaystyle \sum_{i=1}^{n}\left|F\left(b_{i}\right)-F\left(a_{i}\right)\right|<\varepsilon}$，则称 $F(x)$ 为 $[a, b]$ 上的绝对连续函数
        1. 设 $f(x)$ 在 $[a, b]$ 上可积，则其不定积分为绝对连续函数
        2. 设 $F(x)$ 为 $[a, b]$ 上的绝对连续函数，且 $F^{\prime}(x)=0$ $\text{a.e.}$于 $[a, b]$，则 $F(x)$ 等于一常数
        3. 设 $f(x)$ 在 $[a, b]$ 上可积，则存在绝对连续函数 $F(x)$ 使 $F^{\prime}(x)=f(x)$ $\text{a.e.}$于 $[a, b]$（只需取 ${\displaystyle F(x)=\int_{a}^{x} f(t) \mathrm{d} t}$）
    2. 设 $F(x)$ 是 $[a, b]$ 上的绝对连续函数，则 $\text{a.e.}$有定义的 $F^{\prime}(x)$ 在 $[a, b]$ 上可积且 ${\displaystyle F(x)=F(a)+\int_{a}^{x} F^{\prime}(t) \mathrm{d} t}$．即 $F(x)$ 总是 $[a, b]$ 上可积函数的不定积分

### 2.2.3 Stieltjes 积分
