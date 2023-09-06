# 2 积分与微分

## 2.1 积分论
### 2.1.1 Lesbegue 积分
1. 非负简单函数的 $\text{Lesbegue}$ 积分：设 $E \subset \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 为 $E$ 上的一个非负简单函数，即 $E$ 表示为有限个互不相交的可测集 $E_{1}, E_{2}, \cdots, E_{k}$ 之并．在每个 $E_{i}$ 上 $\varphi(x)$ 取非负常数值 $c_{i}$，即 ${\displaystyle \varphi(x)=\sum_{i=1}^{k} c_{i} \chi_{E_{i}}(x)}$，这里 $\chi_{E_{i}}(x)$ 是 $E_{i}$ 的特征函数．$\varphi(x)$ 在 $E$ 上的 $\text{Lesbegue}$ 积分（简称 $L$ 积分）定义为 ${\displaystyle \int_{E} \varphi(x) \mathrm{d} x=\sum_{i=1}^{k} c_{i} m E_{i}}$
    1. 设 $\boldsymbol{E} \subset \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 为 $E$ 上的一个非负简单函数
        1. 对于任意的非负实数 $c$ 都有 ${\displaystyle \int_{E} c \varphi(x) \mathrm{d} x=c \int_{E} \varphi(x) \mathrm{d} x}$
        2. 设 $A$ 和 $B$ 是 $E$ 的两个不相交的可测子集，则 ${\displaystyle \int_{A \cup B} \varphi(x) \mathrm{d} x=\int_{A} \varphi(x) \mathrm{d} x+\int_{B} \varphi(x) \mathrm{d} x}$
        3. 设 $\left\{A_{n}\right\}_{n=1}^{\infty}$ 是 $E$ 的一列可测子集，满足 ① $A_{1} \subset A_{2} \subset \cdots \subset A_{n} \subset A_{n+1} \subset \cdots$；② ${\displaystyle \bigcup_{n=1}^{\infty} A_{n}=E}$，则 ${\displaystyle \lim _{n \rightarrow \infty} \int_{A_{n}} \varphi(x) \mathrm{d} x=\int_{E} \varphi(x) \mathrm{d} x}$
    2. 设 $E \subset \mathbf{R}^{n}$ 为可测集，$\varphi(x)$ 和 $\psi(x)$ 都是 $E$ 上的非负简单函数
        1. ${\displaystyle \int_{E} \varphi(x) \mathrm{d} x+\int_{E} \psi(x) \mathrm{d} x=\int_{E}(\varphi(x)+\psi(x)) \mathrm{d} x}$
        2. 对于任意的非负实数 $\alpha$ 和 $\beta$ 都有 ${\displaystyle \alpha \int_{E} \varphi(x) \mathrm{d} x+\beta \int_{E} \psi(x) \mathrm{d} x=\int_{E}(\alpha \varphi(x)+\beta \psi(x)) \mathrm{d} x}$
2. 非负可测函数的 $\text{Lesbegue}$ 积分：设 $E \subset \mathbf{R}^{n}$ 为可测集，$f(x)$ 是 $E$ 上的非负可测函数，$f(x)$ 在 $E$ 上的 $\text{Lesbegue}$ 积分定义为

    $$
    \int_{E} f(x) \mathrm{d} x=\sup \left\{\int_{E} \varphi(x) \mathrm{d} x: \varphi(x) \textsf{ 是 } E \textsf{ 上的简单函数且 } x \in E \textsf{ 时，} 0 \leqslant \varphi(x) \leqslant f(x) \right\}
    $$

    于是 ${\displaystyle 0 \leqslant \int_{E} f(x) \mathrm{d} x \leqslant \infty}$．若 ${\displaystyle \int_{E} f(x) \mathrm{d} x<\infty}$，则称 $f(x)$ 在 $E$ 上 $\text{Lesbegue}$ 可积．设 $A \subset E$ 为可测集，则 $f(x)$ 在 $A$ 上的 $\text{Lesbegue}$ 积分定义为 $f$ 在 $A$ 上的限制 $f \upharpoonright A$ 在 $A$ 上的 $\text{Lesbegue}$ 积分，即 ${\displaystyle \int_{A} f(x) \mathrm{d} x=\int_{E} f(x) \chi_{A}(x) \mathrm{d} x}$

    1. 设 $E \subset \mathbf{R}^{n}$ 为可测集，$f(x)$ 为 $E$ 上的一个非负可测函数
        1. 若 $m E=0$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
        2. 若 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$，则 $f(x)=0$ $\text{a.e.}$于 $E$
        3. 若 ${\displaystyle \int_{E} f(x) \mathrm{d} x<\infty}$，则 $0 \leqslant f(x)<\infty$ $\text{a.e.}$于 $E$
        4. 设 $A$ 和 $B$ 为 $E$ 的两个互不相交的可测子集，则 ${\displaystyle \int_{A \cup B} f(x) \mathrm{d} x=\int_{A} f(x) \mathrm{d} x+\int_{B} f(x) \mathrm{d} x}$
    2. 设 $E \subset \mathbf{R}^{n}$ 为可测集，$f(x)$ 和 $g(x)$ 都是 $E$ 上的非负可测函数
        1. 若 $f(x) \leqslant g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$；此时若 $g(x)$ 在 $E$ 上 $L$ 可积，则 $f(x)$ 也在 $E$ 上 $L$ 可积
        2. 若 $f(x)=g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{E} g(x) \mathrm{d} x}$；特别地，若 $f(x)=0$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
    3. $\text{Levi}$ 定理：设 $E \subset \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数．当 $x \in E$ 时，对于任一正整数 $n$ 有 $f_{n}(x) \leqslant f_{n+1}(x)$，令 ${\displaystyle f(x)=\lim _{n \rightarrow \infty} f_{n}(x), x \in E}$，则 ${\displaystyle \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x}$
    4. 设 $E \subset \mathbf{R}^{n}$ 为可测集，$f(x)$ 和 $g(x)$ 都是 $E$ 上的非负可测函数，$\alpha$ 和 $\beta$ 都是非负实数，则 ${\displaystyle \int_{E}(\alpha f(x)+\beta g(x)) \mathrm{d} x=\alpha \int_{E} f(x) \mathrm{d} x+\beta \int_{E} g(x) \mathrm{d} x}$．特别地，

        $$
        \begin{aligned}
        \int_{E} \alpha f(x) \mathrm{d} x&=\alpha \int_{E} f(x) \mathrm{d} x \\
        \int_{E}(f(x)+g(x)) \mathrm{d} x&=\int_{E} f(x) \mathrm{d} x+\int_{E} g(x) \mathrm{d} x
        \end{aligned}
        $$

    5. 逐项积分定理：设 $E \subset \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数，则 ${\displaystyle \int_{E}\left(\sum_{n=1}^{\infty} f_{n}(x)\right) \mathrm{d} x=\sum_{n=1}^{\infty} \int_{E} f_{n}(x) \mathrm{d} x}$
    6. $\text{Fatou}$ 引理：设 $E \subset \mathbf{R}^{n}$ 为可测集，$\left\{f_{n}\right\}_{n=1}^{\infty}$ 为 $E$ 上的一列非负可测函数，则 ${\displaystyle \int_{E} \lim _{n \rightarrow \infty} f_{n}(x) \mathrm{d} x \leqslant \lim _{n \rightarrow \infty} \int_{E} f_{n}(x) \mathrm{d} x}$

3. 一般可测函数的 $\text{Lesbegue}$ 积分：设 $f(x)$ 为可测集 $E \subset \mathbf{R}^{n}$ 上可测函数，$f^{+}(x)=\max \{f(x), 0\}, f^{-}(x)=\max \{-f(x), 0\}$，则 $f^{+}$ 和 $f^{-}$ 都是 $E$ 上的非负可测函数．当 $x \in E$ 时，$f^{+}(x)-f^{-}(x)=f(x), f^{+}(x)+f^{-}(x)=|f(x)|$．若 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{E} f^{-}(x) \mathrm{d} x}$ 中至少一个有限，则称 $f$ 在 $E$ 上积分确定，称 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x-\int_{E} f^{-}(x) \mathrm{d} x}$ 为 $f$ 在 $E$ 上的 $\text{Lesbegue}$ 积分，记作 ${\displaystyle \int_{E} f(x) \mathrm{d} x}$．若 ${\displaystyle \int_{E} f^{+}(x) \mathrm{d} x}$ 和 ${\displaystyle \int_{E} f^{-}(x) \mathrm{d} x}$ 都有限，则称 $f$ 在 $E$ 上 $\text{Lesbegue}$ 可积，简称 $L$ 可积．可测集 $E$ 上 $L$ 可积函数的全体所成之集记作 $L(E)$
    1. 设 $E \subset \mathbf{R}^{n}$ 为可测集
        1. 若 $E \neq \varnothing$ 但 $m E=0$，则 $E$ 上的任何实函数 $f$ 都在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E} f(x) \mathrm{d} x=0}$
        2. 若 $f \in L(E)$，则 $m E[|f|=\infty]=0$，即 $|f(x)|<\infty$ $\text{a.e.}$于 $E$
        3. 设 $f$ 在 $E$ 上积分确定，则 $f$ 在 $E$ 的任一可测子集 $A$ 上也积分确定，又若 $E=A \cup B$，这里 $A$ 和 $B$ 都是 $E$ 的可测子集且 $A \cap B=\varnothing$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{A} f(x) \mathrm{d} x+\int_{B} f(x) \mathrm{d} x}$
        4. 设 $f$ 在 $E$ 上积分确定且 $f(x)=g(x)$ $\text{a.e.}$于 $E$，则 $g$ 也在 $E$ 上积分确定且 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\int_{E} g(x) \mathrm{d} x}$
        5. 设 $f$ 和 $g$ 都在 $E$ 上积分确定且 $f(x) \leqslant g(x)$ $\text{a.e.}$于 $E$，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$．特别地，若 $m E<\infty$，且 $b \leqslant f(x) \leqslant B$ $\text{a.e.}$于 $E$，则 ${\displaystyle b m E \leqslant \int_{E} f(x) \mathrm{d} x \leqslant B m E}$
        6. 设 $f$ 在 $E$ 上 $L$ 可积，则 $|f|$ 也在 $E$ 上 $L$ 可积且 ${\displaystyle \left|\int_{E} f(x) \mathrm{d} x\right| \leqslant \int_{E}|f(x)| \mathrm{d} x}$
        7. 设 $f$ 是 $E$ 上的可测函数，$g$ 是 $E$ 上的非负 $L$ 可积函数且 $|f(x)| \leqslant g(x)$ $\text{a.e.}$于 $E$，则 $f$ 也在 $E$ 上 $L$ 可积，且有 ${\displaystyle \left|\int_{E} f(x) \mathrm{d} x\right| \leqslant \int_{E}|f(x)| \mathrm{d} x \leqslant \int_{E} g(x) \mathrm{d} x}$ 成立
    2. 设 $E \subset \mathbf{R}^{n}$ 为可测集，$f$ 和 $g$ 都是 $E$ 上的 $L$ 可积函数
        1. 对于任意的 $\lambda \in \mathbf{R}$，$\lambda f$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E} \lambda f(x) \mathrm{d} x=\lambda \int_{E} f(x) \mathrm{d} x}$
        2. $f+g$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E}(f(x)+g(x)) \mathrm{d} x=\int_{E} f(x) \mathrm{d} x+\int_{E} g(x) \mathrm{d} x}$
        3. 对于任意的 $\alpha, \beta \in \mathbf{R}$，$\alpha f+\beta g$ 在 $E$ 上 $L$ 可积且 ${\displaystyle \int_{E}(\alpha f(x)+\beta g(x)) \mathrm{d} x=\alpha \int_{E} f(x) \mathrm{d} x+\beta \int_{E} g(x) \mathrm{d} x}$
    3. $\text{Lesbegue}$ 积分的性质
        1. 积分的绝对连续性：设 $E \subset \mathbf{R}^{n}$ 为可测集，$f \in L(E)$．则对于任意的 $\varepsilon>0$，存在 $\delta>0$，使得对于任意的可测集 $A \subset E$，只要 $m A<\delta$，就有 ${\displaystyle \left|\int_{A} f(x) \mathrm{d} x\right| \leqslant \int_{A}|f(x)| \mathrm{d} x<\varepsilon}$
        2. 积分的可数可加性：设 $E \subset \mathbf{R}^{n}$ 为可测集，${\displaystyle E=\bigcup_{n=1}^{\infty} E_{n}}$，这里每个 $E_{n}$ 都是可测集且 $i \neq j$ 时 $E_{i} \cap E_{j}=\varnothing$，设 $f$ 在 $E$ 上积分确定，则 ${\displaystyle \int_{E} f(x) \mathrm{d} x=\sum_{n=1}^{\infty} \int_{E_{n}} f(x) \mathrm{d} x}$

### 2.1.2 不定积分

## 2.2 微分
