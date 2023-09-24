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

### 3.2.3 渐进理论

### 3.2.4 停时
