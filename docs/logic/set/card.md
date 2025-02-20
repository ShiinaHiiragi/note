# 5 高阶无穷

## 5.1 力迫法

## 5.2 大基数理论
### 5.2.1 不可描述性
1. 不可达基数：$\Sigma_1^1-$不可描述基数
    1. 若 $\mathbf{GCH}$ 成立，则弱不可达基数等价于强不可达基数
        1. 弱不可达基数：正则的不可数极限基数
        2. 强不可达基数：正则的不可数强极限基数
    2. 设 $\gamma \in \mathbf{On}$，所有不可达基数构成的类为 $X$，则 $\gamma-$不可达基数的类 $\Lambda^{\gamma}(X)$ 定义为
        1. $\Lambda^{0}(X) = X$
        2. $\Lambda^{\gamma+1}(X)=\Lambda\left(\Lambda^{\gamma}(X)\right)=\left\{\alpha \in \Lambda^{\gamma}(X) \mid |\Lambda^{\gamma}(X) \cap \alpha| =\alpha\right\}$
        3. 若 $\gamma$ 为极限序数，则 $\Lambda^{\gamma}(X) = {\displaystyle \bigcup_{\alpha<\gamma} \Lambda^{\alpha}(X)}$
    3. $\text{Mahlo}$ 基数：若不可达基数 $M$ 中的所有正则基数构成 $M$ 的稳定集，则称 $M$ 为弱 $\text{Mahlo}$ 基数；若不可达基数 $M$ 中的所有不可达基数构成 $M$ 的稳定集，则称 $M$ 为（强）$\text{Mahlo}$ 基数
        1. 若 $\kappa$ 是 $\text{Mahlo}$ 基数，则 $\kappa$ 是 $\kappa-$不可达基数
        2. 设 $\gamma \in \mathbf{On}$，所有 $\text{Mahlo}$ 基数构成的类为 $X$，则 $\gamma-\text{Mahlo}$ 基数的类 $H^{\gamma}(X)$ 定义为
            1. $H^{0}(X) = X$
            2. $H^{\gamma+1}(X)=H\left(H^{\gamma}(X)\right)=\{\alpha \in H^{\gamma}(X) \mid H^{\gamma}(X) \cap \alpha$ 是 $\alpha$ 的稳定集$\}$
            3. 若 $\gamma$ 为极限序数，则 $H^{\gamma}(X) = {\displaystyle \bigcup_{\alpha<\gamma} H^{\alpha}(X)}$
        3. 定义超 $\text{Mahlo}$ 基数类 $H^{\triangle}(X)=\left\{\alpha \mid \forall \beta<\alpha \ (\alpha \in H^{\beta}(X))\right\}$
2. 弱紧致基数：$\Pi_1^1-$不可描述基数
    1. 不可数基数 $\kappa$ 是弱紧致基数当且仅当
        1. $\kappa \rightarrow(\kappa)^{2}$
        2. 对任意 $n < \omega$ 与 $\lambda < \kappa$，都有 $\kappa \rightarrow(\kappa)_{\lambda}^{n}$
        3. $\kappa$ 是不可达的，且具有树性质，即每个高度为 $\kappa$ 且层数基数小于 $\kappa$ 的树都有一个基数为 $\kappa$ 的分支
        4. $\kappa$ 是不可达的，且 $\mathscr{L}_{\kappa, \kappa}$（或 $\mathscr{L}_{\kappa, \omega}$）具有弱紧致性，即对于 $\mathscr{L}_{\kappa, \kappa}$（或 $\mathscr{L}_{\kappa, \omega}$）的任意一组语句 $\Sigma$，满足 $|\Sigma| \leqslant \kappa$，且对于每个 $S \subseteq \Sigma \wedge |S|<\kappa$ 的 $S$ 都有模型，则 $\Sigma$ 也有模型
    2. $\text{Erd}\ddot{\mathrm{o}}\text{s}$ 基数 $\eta_{\alpha}$：使得 $\kappa \rightarrow(\alpha)^{<\omega}$ 的最小 $\kappa$，即对于任意 $n < \omega$ 都有 $\kappa \rightarrow(\alpha)^{n}$
        1. 对于任意的 $\kappa<\eta_{\alpha}$，都有 $\eta_{\alpha} \rightarrow(\alpha)_{\kappa}^{<\omega}$
        2. 所有的 $\text{Erd}\ddot{\mathrm{o}}\text{s}$ 基数 $\eta_{\alpha}$ 都是不可达基数，且若 $\alpha<\beta$，则 $\eta_{\alpha}<\eta_{\beta}$
    3. $\text{Ramsey}$ 基数：满足划分性质 $\kappa \rightarrow(\kappa)^{<\omega}$ 的基数，即对于任意 $n < \omega$ 都有 $\kappa \rightarrow(\kappa)^{n}$
3. 不可描述基数：设 $\kappa$ 是基数，若对任意的 $U \subseteq V_{\kappa}$ 与使得 $\left(V_{\kappa}, \in, U\right) \vDash \sigma$ 成立的 $\Pi_{n}^{m}$（或 $\Sigma_{n}^{m}$）语句 $\sigma$，都存在 $\alpha<\kappa$，使得 $\left(V_{\alpha}, \in, U \cap V_{\alpha}\right) \vDash \sigma$，则称 $\kappa$ 是 $\Pi_{n}^{m-}-$不可描述的（或 $\Sigma_{n}^{m}-$不可描述的）
    1. 对于任意的 $n$，$\kappa$ 是 $\Sigma_{n+1}^{1}-$不可描述的当且仅当 $\kappa$ 是 $\Pi_{n}^{1}-$不可描述的
    2. 定义 $\pi_{n}^{m}$ 为最小的 $\Pi_{n}^{m}-$不可描述基数，$\sigma_{n}^{m}$ 为最小的 $\Sigma_{n}^{m}-$不可描述基数
        1. $\pi_{1}^{1}=\sigma_{2}^{1}<\pi_{2}^{1}=\sigma_{3}^{1}<\cdots$
        2. 对于 $m>1$ 和 $n>0$ 有 $\pi_{n}^{m}<\sigma_{n+1}^{m}, \pi_{n}^{m}<\pi_{n+1}^{m}$ 且 $\sigma_{n}^{m} \neq \pi_{n}^{m}$
    3. 若基数 $\kappa$ 对所有 $m, n$ 都是 $\Pi_{n}^{m}-$不可描述的，则称其为完全不可描述基数
    4. 若基数 $\kappa$ 不是不可达基数，则对某个 $n$，$\kappa$ 总是 $\Pi_{n}^{0}-$可描述的

### 5.2.2 初等嵌入
1. 可测基数：设 $\kappa$ 是基数，若存在 $\mathbf{V}$ 到传递内模型 $\mathbf{M}$ 的初等嵌入 $j: \mathbf{V} \rightarrow \mathbf{M}$，使得 $\kappa = \operatorname{crit}(j)$，则称 $\kappa$ 为可测基数
    1. 不可数基数 $\kappa$ 是可测的当且仅当 $\kappa$ 上存在 $\kappa-$完全的非主超滤
        1. 若不可数基数在 $\kappa$ 上存在非平凡的 $\kappa-$可加测度 $\mu$，则称 $\kappa$ 是实值可测的
        2. 若对可测基数 $\kappa$ 存在一个 $A \subseteq \kappa$，且 $\left\{\alpha \in \kappa: A \cap \alpha=A_{\alpha}\right\}$ 是稳定集，则称 $\kappa$ 为不可表达基数
    2. 正规测度与精细测度：记 $\mathcal{P}_{\kappa}(\lambda)=\{\sigma \subseteq \lambda \mid |\sigma| <\kappa\}$，设 $\kappa<\lambda$ 是正则基数，$U \subseteq \mathcal{P}\left(\mathcal{P}_{\kappa}(\lambda)\right)$ 是超滤
        1. 若对每个 $\alpha<\lambda$ 都有 $\left\{\sigma \in \mathcal{P}_{\kappa}(\lambda) \mid \alpha \in \sigma\right\} \in U$，则称 $U$ 是精细的
        2. 若对每个函数 $f: \mathcal{P}_{\kappa}(\lambda) \rightarrow \lambda$ 有 $\left\{\sigma \in \mathcal{P}_{\kappa}(\lambda) \mid f(\sigma) \in \sigma\right\} \in U$，存在 $\alpha<\lambda$ 有 $\left\{\sigma \in \mathcal{P}_{\kappa}(\lambda) \mid f(\sigma)=\alpha\right\} \in U$，则称 $U$ 是正规的

        则基数 $\kappa$ 是可测的当且仅当在不可数基数 $\kappa$ 上存在一个正规测度

    3. 强紧致基数：若对任何集合 $S$，每个 $S$ 上的 $\kappa-$完全滤都可扩展为 $S$ 上的 $\kappa-$完全超滤，则称不可数基数 $\kappa$ 是强紧致基数
        1. 对于任何正则基数 $\kappa$，$\kappa$ 是强紧致基数当且仅当
            1. 对于任何 $A$ 使得 $|A| \geqslant \kappa$，存在一个 $P_{\kappa}(A)$ 上的精细测度
            2. 语言 $\mathscr{L}_{\kappa, \omega}$ 满足紧致性定理
        2. 若存在一个强紧致基数，则就存在具有两个可测基数的内模型

2. 强基数
3. $\text{Woodin}$ 基数
4. 超强基数
5. 超紧致基数：设 $\kappa$ 是基数，若存在 $\mathbf{V}$ 到传递内模型 $\mathbf{M}$ 的初等嵌入 $j: \mathbf{V} \rightarrow \mathbf{M}$，使得 $\kappa = \operatorname{crit}(j)$ 且 $\kappa, j(\kappa)>\lambda, \mathbf{M}^{\lambda} \subseteq \mathbf{M}$，则称 $\kappa$ 为超紧致基数，此时它对所有序数 $\lambda$ 都是 $\lambda-$超紧致的
    1. 基数 $\kappa$ 是超紧致的当且仅当对于每个 $A$ 使得 $|A| \geqslant \kappa$，在 $\mathcal{P}_{\kappa}(A)$ 上存在正规测度
    2. 若存在一个可测基数，且是强紧致基数的极限，那么符合条件的最小基数是强紧致的但不是超紧致的
6. 可扩展基数
7. $\text{Vop}\check{\mathrm{e}}\text{nka}$ 原理
8. 巨基数
9. $\text{Rank to Rank}$ 基数
10. $\text{Reinhardt}$ 基数与 $\text{Berkeley}$ 基数与选择公理不相容

## 5.3 内模型计划
若 $\mathbf{ZF}$ 的传递模型 $\mathbf{M}$ 包含所有序数，则称 $\mathbf{M}$ 是内模型

1. $\mathbf L$
2. $\mathbf L[A]$
3. $\mathbf L[U]$
4. $\mathbf L[\mathcal U]$
5. 鼠模型
6. 终极 $\mathbf L$
