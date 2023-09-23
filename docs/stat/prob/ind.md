# 2 统计独立性



## 2.1 独立性
设 $(\Omega, \mathscr{F}, P)$ 为概率空间，$T$ 为某个参数集

1. 独立子类族：事件族 $\left\{A_{t}\right\}_{t \in T} \subseteq \mathscr{F}$ 称为（关于 $P$）独立的，若对 $T$ 的任一有限子集 $I \subseteq T$，${\displaystyle P\left(\bigcap_{t \in I} A_{t}\right)=\prod_{t \in I} P\left(A_{t}\right)}$．$\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为 $\mathscr{F}$ 的子类族，若对 $T$ 的任一有限子集 $I \subseteq T$ 有 ${\displaystyle \forall A_{t} \in \mathscr{C}_{t}, t \in I: P\left(\bigcap_{t \in I} A_{t}\right)=\prod_{t \in I} P\left(A_{t}\right)}$ 成立，则称 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为（关于 $P$）独立子类族．特别地，当 $\mathscr{C}_{t}$ 为 $\mathscr{F}$ 的子 $\sigma$ 域时，$\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 称为（关于 $P$）独立的 $\sigma$ 域族
    1. 设 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为 $\mathscr{F}$ 的子类族．若对每个 $t \in T, \mathscr{C}_{t}$ 为 $\pi$ 类，且 $\left\{\mathscr{C}_{t}\right\}_{t \in T}$ 为独立族
        1. $\left\{\mathscr{B}_{t}=\sigma\left(\mathscr{C}_{t}\right)\right\}_{t \in T}$ 为独立族
        2. 若 $\overline{\mathscr{B}}_{t}$ 表示 $\mathscr{B}_{t}$ 的完备化 $\sigma$ 域，则 $\left\{\overline{\mathscr{B}}_{t}\right\}_{t \in T}$ 为独立族
    2. 若子 $\sigma$ 域族 $\left\{\mathscr{B}_{t}\right\}_{t \in T}$ 为独立族，$\left\{T_{\alpha}\right\}_{\alpha \in J}$ 为 $T$ 的互不相交子集，则 $\left\{\mathscr{B}_{T_{\alpha}}=\sigma\left(\mathscr{B}_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为独立族
2. 独立随机变量族：设 $(\Omega, \mathscr{F}, P)$ 上随机变量族为 $\left\{X_{t}\right\}_{t \in T}$，若 $\left\{\sigma\left(X_{t}\right)\right\}_{t \in T}$ 是独立的子 $\sigma$ 域族，则称 $\left\{X_{t}\right\}_{t \in T}$ （关于 $P$）独立
    1. 随机变量族 $\left\{X_{t}\right\}_{t \in T}$ 为独立族的充要条件是对一切实数（有理数）$a_{t}$，及 $T$ 的任一有限子集 $I$ 有

        $$
        P\left(\bigcap_{t \in I}\left(X_{t} \leqslant a_{t}\right)\right)=\prod_{t \in I} P\left(X_{t} \leqslant a_{t}\right)
        $$

    2. 设 $\left\{X_{t}\right\}_{t \in T}$ 为独立随机变量族，$\left\{T_{\alpha}, \alpha \in J\right\}$ 为 $T$ 的互不相交子集，$\left\{f_{\alpha}\left(X_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为 $\text{Borel}$ 函数族，则 $\left\{Y_{\alpha}=f_{\alpha}\left(X_{t}, t \in T_{\alpha}\right), \alpha \in J\right\}$ 为独立随机变量族
    3. 设 $\left\{X_{t}\right\}_{t \in T}$ 为独立随机变量族，且对每个 $t \in T$ 都有 $f_{t}\left(X_{t}\right)$ 可积（非负），则对 $T$ 的任一有限子集 $I$，都有 ${\displaystyle \mathrm{E}\left[\prod_{t \in I} f_{t}\left(X_{t}\right)\right]=\prod_{t \in I} \mathrm{E}\left[f_{t}\left(X_{t}\right)\right]}$

## 2.2 独立随机变量序列
### 2.2.1 零一律

### 2.2.2 独立项级数

### 2.2.3 停时

## 2.3 渐进理论
