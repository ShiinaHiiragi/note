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
        4. $\kappa$ 是不可达的，且 $\mathscr{L}_{\kappa, \kappa}$（或 $\mathscr{L}_{\kappa, \omega}$）具有弱紧致性，即对于 $\mathscr{L}_{\kappa, \kappa}$（或 $\mathscr{L}_{\kappa, \omega}$）的任意一组语句 $\Sigma$，满足 $|\Sigma| \leqslant \kappa$，且对于每个 $S \subset \Sigma \wedge |S|<\kappa$ 的 $S$ 都有模型，则 $\Sigma$ 也有模型
    2. $\text{Erd}\ddot{\mathrm{o}}\text{s}$ 基数 $\eta_{\alpha}$：使得 $\kappa \rightarrow(\alpha)^{<\omega}$ 的最小 $\kappa$，即对于任意 $n < \omega$ 都有 $\kappa \rightarrow(\alpha)^{n}$
        1. 对于任意的 $\kappa<\eta_{\alpha}$，都有 $\eta_{\alpha} \rightarrow(\alpha)_{\kappa}^{<\omega}$
        2. 所有的 $\text{Erd}\ddot{\mathrm{o}}\text{s}$ 基数 $\eta_{\alpha}$ 都是不可达基数，且若 $\alpha<\beta$，则 $\eta_{\alpha}<\eta_{\beta}$
    3. $\text{Ramsey}$ 基数：满足划分性质 $\kappa \rightarrow(\kappa)^{<\omega}$ 的基数，即对于任意 $n < \omega$ 都有 $\kappa \rightarrow(\kappa)^{n}$
3. 不可描述基数

### 5.2.2 初等嵌入

## 5.3 内模型计划
