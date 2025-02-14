# 5 高阶无穷

## 5.1 力迫法

## 5.2 大基数理论
### 5.2.1 不可达基数

### 5.2.2 Mahlo 基数
1. 无界闭集：令 $\alpha$ 为极限序数，$\alpha$ 的子集 $C \subseteq \alpha$ 如果满足
    1. $C$ 在 $\alpha$ 中无界．即 $\sup C=\alpha$，或等价地，对任意 $\beta<\alpha$，存在 $\xi \in C$ 使得 $\beta<\xi$
    2. $C$ 在 $\alpha$ 中是闭的．即对任意极限序数 $\gamma<\alpha$，如果 $\sup (C \cap \gamma)=\gamma$，则 $\gamma \in C$

    则称 $C$ 是 $\alpha$ 的无界闭集

    1. 假设 $C$ 是极限序数 $\alpha$ 的子集，如果 $\gamma$ 是 $C$ 某一子集的上确界且 $\gamma<\alpha$，则称 $\gamma$ 是 $C$ 的极限点
    2. 无界闭集的性质：设 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，则
        1. $\alpha$ 是 $\alpha$ 上的无界闭集
        2. 任取 $\beta<\alpha$，则集合 $\{\delta<\alpha \mid \delta>\beta\}$ 是 $\alpha$ 上的无界闭集
        3. 集合 $X=\{\beta<\alpha \mid \beta$ 是极限序数$\}$ 是 $\alpha$ 上的无界闭集
        4. 如果 $X$ 在 $\alpha$ 中无界，则 $X^{\prime}=\{\gamma \in X \mid \gamma<\alpha \wedge \textsf{ 是 } X \textsf{ 的极限点}\}$ 是 $\alpha$ 上的无界闭集

    3. 假设 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，则对任意 $\gamma<\operatorname{cf}(\alpha)$，如果 $\left\langle C_{\xi}\right\rangle_{\xi<\gamma}$ 是无界闭集的序列，则 ${\displaystyle \bigcap_{\xi<\gamma} C_{\xi}}$ 也是 $\alpha$ 的无界闭集
        1. 如果 $\alpha$ 是极限序数且 $\operatorname{cf}(\alpha)>\omega$，$f: \alpha \rightarrow \alpha$ 是严格递增且连续的
        2. 如果 $\kappa$ 是不可数正则基数，则 $\kappa$ 上的无界闭滤是 $\kappa-$完全的

2. 无界闭滤：对任意共尾数大于 $\omega$ 的极限序数 $\alpha$

    $$
    F_{C B}(\alpha)=\{X \subseteq \alpha \mid \exists C \ (C \textsf{ 是 } \alpha \textsf{ 的无界闭子集 } \wedge C \subseteq X)\}
    $$

    是一个滤，称为 $\alpha$ 上的无界闭滤

    1. 对角线交与对角线并：对任意序数 $\alpha$，$\left\langle X_{\xi} \mid \xi<\alpha\right\rangle$ 是 $\alpha$ 子集的序列
        1. $X_{\xi}$ 的对角线交定义为

            $$
            \triangle_{\xi<\alpha} X_{\xi}=\left\{\eta<\alpha \ \left|\ \eta \in \bigcap_{\xi<\eta} X_{\xi} \right.\right\}
            $$

            在不引起混淆的情况下，可简记为 $\triangle X_{\xi}$

        2. $X_{\xi}$ 的对角线并定义为

            $$
            \triangledown_{\xi<\alpha} X_{\xi}=\left\{\eta<\alpha \ \left|\ \eta \in \bigcup_{\xi<\eta} X_{\xi}\right.\right\}
            $$

            在不引起混淆的情况下，可简记为 $\triangledown X_{\xi}$

    2. $F_{CB}(\kappa)$ 关于对角线交封闭：对任意不可数正则基数 $\kappa$ 及 $\kappa$ 上的无界闭集的序列 $\left\langle X_{\gamma} \mid \gamma<\kappa\right\rangle$，$\triangle_{\gamma<\kappa} X_{\gamma}$ 是无界闭集

3. 稳定集：设 $\alpha$ 为任意极限序数且 $\operatorname{cf}(\alpha)>\omega$．若 $S \subseteq \alpha$ 满足对任意 $\alpha$ 的无界闭集 $C$ 都有 $S \cap C \neq \varnothing$，则称 $S$ 是 $\alpha$ 上的稳定集；称 $I_{N S}(\alpha)=\{X \subseteq \alpha \mid \exists C \ (C$ 是 $\alpha$ 的无界闭子集 $\wedge X \cap C=\varnothing\}$ 为 $\alpha$ 上的非稳定理想
    1. 假设 $\alpha$ 是极限序数，$\operatorname{cf}(\alpha)>\omega$
        1. $\alpha$ 上的无界闭集都是稳定集，若 $S$ 是稳定集且 $S \subseteq T \subseteq \alpha$，则 $T$ 是稳定集
        2. $\alpha$ 上的稳定集都是无界的
        3. 存在 $\alpha$ 上无界子集 $T$，但 $T$ 不是稳定集
    2. 假设 $\alpha$ 是极限序数，$\operatorname{cf}(\alpha)>\omega$，而 $\lambda<\operatorname{cf}(\alpha)$ 是正则的，定义 $E_{\lambda}^{\alpha}=\{\beta<\alpha \mid \operatorname{cf}(\beta)=\lambda\}$，则 $E_{\lambda}^{\alpha}$ 是 $\alpha$ 上的稳定集
    3. $I_{N S}(\kappa)$ 关于对角线并封闭：对任意不可数正则基数 $\kappa$，如果 $\left\langle X_{\xi} \mid \xi<\kappa\right\rangle$ 是非稳定集的序列，则 $\nabla_{\xi<\kappa} X_{\xi}$ 仍是非稳定集
    4. $\text{Solovay}$ 定理：对任意不可数的正则基数 $\kappa$，$\kappa$ 上的任一稳定集都是 $\kappa$ 个互不相交的稳定集的并
        1. 退缩函数：定义在序数的集合 $S$ 上的函数 $f$ 如果满足对任意非 $0$ 的 $\alpha \in S$，都有 $f(\alpha)<\alpha$，则称 $f$ 是退缩的
        2. $\text{Fodor}$ 定理：任取不可数正则基数 $\kappa$，稳定集 $S \subseteq \kappa$．如果 $f$ 是定义在 $S$ 上的退缩函数，则存在稳定集 $T \subseteq S$ 和序数 $\gamma<\kappa$ 使得对任意 $\alpha \in T$ 都有 $f(\alpha)=\gamma$
        3. 令 $S$ 是不可数正则基数 $\kappa$ 上的稳定集．定义 $S$ 的子集 $T=\{\alpha \in S \mid \operatorname{cf}(\alpha)=\omega \vee(\operatorname{cf}(\alpha)>\omega \wedge S \cap \alpha \textsf{ 不是 } \alpha \textsf{ 上的稳定集})\}$，则 $T$ 是 $\kappa$ 上的稳定集
        4. 令 $\kappa$ 是不可数正则基数，$K=\{\gamma<\kappa \mid \gamma$ 是极限序数$\}$，$S \subseteq K$ 是 $\kappa$ 上的稳定集．如果对任意 $\alpha \in S$，$f_{\alpha}$ 是 $\alpha$ 中递增的共尾序列且是连续的，则以下二者必有一真
            1. 存在 $\eta<\kappa$，对任意 $\xi<\kappa$，$S_{\xi}=\left\{\alpha \in S \mid \eta \in \operatorname{dom}\left(f_{\alpha}\right) \wedge f_{\alpha}(\eta) \geqslant \xi\right\}$ 是 $\kappa$ 上的稳定集
            2. 存在 $\kappa$ 上的无界闭集 $C$，对任意 $\gamma$ 都有 $\alpha \in C \cap S, \gamma<\alpha$ 蕴涵 $\gamma=f_{\alpha}(\gamma)$
