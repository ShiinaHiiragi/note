# 5 高阶无穷

## 5.1 力迫
### 5.1.1 脱殊扩张
1. 令 $(\mathbf{P}, \leqslant, \mathbf{1})$ 为偏序集，其中 $\leqslant$ 为 $\mathbf{P}$ 上的偏序，且 $\mathbf{1}$ 为 $\mathbf{P}$ 的最大元，不引起歧义时可简记为 $\mathbf{P}$
    1. 称 $\mathbf{P}$ 为力迫偏序或力迫，$\mathbf{P}$ 的元素称为力迫条件．若 $p \leqslant q$，则称力迫条件 $p$ 强于力迫条件 $q$
        1. 设 $p \in \mathbf{P}$，则 $\mathbf{P}$ 的子集 $D$ 是稠密的当且仅当 $\forall p \in \mathbf{P} \ \exists q \in D \ (q \leqslant p)$；$D$ 是 $p$ 下稠密的当且仅当 $\forall q \leqslant p \ \exists r \leqslant q \ (r \in D)$
        2. $\mathbf{P}$ 的子集 $G$ 称为 $\mathbf{P}$ 上的滤当且仅当 ① $\mathbf{1} \in G$；② $\forall p, q \in G \ \exists r \in G \ (r \leqslant p \wedge r \leqslant q)$，即任意 $p, q \in G$ 都是相容的；③ $\forall p, q \in G \ (q \leqslant p \wedge q \in G \rightarrow p \in G)$
        3. 令 $M$ 为集合，若 $G \subseteq \mathbf{P}$ 是滤，且对任意稠密子集 $D \subseteq \mathbf{P}, D \in M$ 蕴涵 $G \cap D \neq \varnothing$，则称 $G$ 是 $M$ 上的 $\mathbf{P}-$脱殊滤
    2. 如果 $M$ 是 $\mathbf{ZF} - \mathrm{Pow}$ 的可数传递模型且 $\mathbf{P} \in M$，则对任意 $p \in \mathbf{P}$，存在 $M$ 上的 $\mathbf{P}-$脱殊滤 $G$ 且 $p \in G$
    3. 设 $M$ 是 $\mathbf{ZFC}$ 的传递模型，$\mathbf{P} \in M$．若 $\mathbf{P}$ 是无原子的（即对每一 $p \in \mathbf{P}$，存在不相容的 $r, q \in \mathbf{P}$ 满足 $r \leqslant p \wedge q \leqslant p$）且 $G$ 是 $M$ 上 $\mathbf{P}-$脱殊滤，则 $G \notin M$
    4. 设 $M$ 是 $\mathbf{ZFC}$ 的传递模型，$\mathbf{P} \in M, D \subseteq \mathbf{P}$ 且 $D \in M$，$G$ 为 $M$ 上的 $\mathbf{P}-$脱殊滤
        1. 或者 $G \cap D \neq \varnothing$，或者存在 $q \in G$，对任意 $r \in D$ 都有 $r \perp q$
        2. 若 $p \in G$ 且 $D$ 是 $p$ 下稠密的，则 $G \cap D \neq \varnothing$
2. 对任意力迫 $\mathbf{P}$，任意序数 $\alpha$，递归定义 $V_{\alpha}^{\mathbf{P}}$
    1. $V_{0}^{\mathbf{P}}=\varnothing$
    2. $V_{\alpha+1}^{\mathbf{P}}=\mathcal{P}\left(V_{\alpha}^{\mathbf{P}} \times \mathbf{P}\right)$
    3. 对任意极限序数 $\lambda$，$V_{\lambda}^{\mathbf{P}}={\displaystyle \bigcup_{\xi<\lambda} V_{\xi}^{\mathbf{P}}}$

    令 $\mathbf{V}^{\mathbf{P}}={\displaystyle \bigcup_{\alpha \in \mathbf{O}} V_{\alpha}^{\mathbf{P}}}$，称 $\mathbf{V}^{\mathbf{P}}$ 的元素为 $\mathbf{P}$-名字

    4. 对任意力迫 $\mathbf{P}$，对任意集合 $x$，递归定义 $\check{x}=\{(\check{y}, \mathbf{1}) \mid y \in x\}$
    5. 对任意力迫 $\mathbf{P}$，任意 $\mathbf{P}$ 上的滤 $G$，以及任意 $\mathbf{P}-$名字 $\tau$，递归定义 $\tau$ 的值 $\tau_{G}$ 或 $\operatorname{val}(\tau, G)$ 为 $\tau_{G}=\left\{\sigma_{G} \mid \exists p(\sigma, p) \in \tau \wedge p \in G\right\}$ 对于任意 $\beta<\alpha$，$\sigma \in V_{\beta}^{\mathbf{P}}, \sigma_{G}$ 已有定义的 $\tau \in V_{\alpha}^{\mathbf{P}}$ 成立

3. 脱殊扩张：令 $M$ 为 $\mathbf{ZFC}$ 的传递模型，$\mathbf{P} \in M$，定义 $M^{\mathbf{P}}=\mathbf{V}^{\mathbf{P}} \cap M$．若 $G \subseteq \mathbf{P}$ 是 $\mathbf{P}$ 上的滤，则 $M[G]=\left\{\tau_{G} \mid \tau \in M^{\mathbf{P}}\right\}$
    1. 设 $M$ 为 $\mathbf{ZFC}$ 的传递模型，$\mathbf{P} \in M$ 为力迫，$G \subseteq \mathbf{P}$ 是非空的滤
        1. $M[G]$ 是传递的
        2. $o(M)=o(M[G])$
        3. 对任意 $\mathbf{ZFC}$ 的传递模型 $N$，如果 $M \subseteq N$ 且 $G \in N$，则 $M[G] \subseteq N$
        4. $\forall x \in M \ \left(\check{x} \in M^{\mathbf{P}} \wedge \check{x}_{G}=x\right)$，因此 $M \subseteq M[G]$
        5. 若 $\Gamma=\{(\check{p}, p) \mid p \in \mathbf{P}\}$，则 $\Gamma_{G}=G$，因此 $G \in M[G]$
        6. $\forall \tau \in M^{\mathbf{P}} \ \left(\operatorname{rank}\left(\tau_{G}\right) \leqslant \operatorname{rank}(\tau)\right)$
    2. 令 $M$ 为 $\mathbf{ZFC}$ 的可数传递模型，$\mathbf{P}$ 为 $M$ 中的力迫，$G$ 为 $M$ 上的 $\mathbf{P}-$脱殊滤，则 $M[G]$ 是 $\mathbf{ZFC}$ 的模型
        1. 令 $M$ 为 $\mathbf{ZFC}$ 的任意可数传递模型，$\mathbf{P} \in M$ 为偏序集，$G$ 为 $\mathbf{P}$ 中 $M-$脱殊滤，则存在 $\mathbf{ZFC}$ 的可数传递模型 $M[G]$，有 $M \subseteq M[G], G \in M[G]$ 且 $o(M)=o(M[G])$，同时，$M[G]$ 是满足以上条件的模型中最小的
        2. $\operatorname{Con}(\mathbf{ZF}) \rightarrow \operatorname{Con}(\mathbf{ZF}+\mathbf{V}\neq\mathbf{L})$

4. 令 $\varphi\left(x_{1}, \cdots, x_{n}\right)$ 为公式，自由变元在 $x_{1}, \cdots, x_{n}$ 中．令 $M$ 为 $\mathbf{ZFC}$ 的可数传递模型，$\mathbf{P} \in M$ 为力迫，$\tau_{1}, \cdots, \tau_{n} \in M^{\mathbf{P}}$ 且 $p \in \mathbf{P}$，则 $p \Vdash_{\mathbf{P}, M} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 当且仅当 $\forall G \ ((G$ 是 $\mathbf{P}$ 中的 $M$ 脱殊滤 $\wedge p \in G) \rightarrow \varphi^{M[G]}\left(\tau_{1 G}, \cdots, \tau_{n G}\right))$；$p \Vdash \varphi$ 读作 $p$ 力迫 $\varphi$
    1. $\left(p \Vdash \varphi\left(\tau_{1}, \cdots, \tau_{n}\right) \wedge q \leqslant p\right) \rightarrow q \Vdash \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$
    2. 给定力迫 $\mathbf{P}$，令 $p \in \mathbf{P}$ 为力迫条件，$\varphi\left(x_{1}, \cdots, x_{n}\right)$ 为公式，$\tau_{1}, \cdots, \tau_{n}$ 为 $\mathbf{P}-$名字．定义 $p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 如下
        1. 若 $\varphi$ 是 $x_{1}=x_{2}$，则 $p \Vdash^{*} \tau_{1}=\tau_{2}$ 当且仅当
            1. 对任意 $\left(\pi_{1}, s_{1}\right) \in \tau_{1}$，$\left\{q \leqslant p \mid q \leqslant s_{1} \rightarrow \exists\left(\pi_{2}, s_{2}\right) \in \tau_{2}\left(q \leqslant s_{2} \wedge q \Vdash^{*} \pi_{1}=\pi_{2}\right)\right\}$ 是 $p$ 下稠密的
            2. 对任意 $\left(\pi_{2}, s_{2}\right) \in \tau_{2}$，$\left\{q \leqslant p \mid q \leqslant s_{2} \rightarrow \exists\left(\pi_{1}, s_{1}\right) \in \tau_{1}\left(q \leqslant s_{1} \wedge q \Vdash^{*} \pi_{1}=\pi_{2}\right)\right\}$ 是 $p$ 下稠密的
        2. 若 $\varphi$ 是 $x_{1} \in x_{2}$，则 $p \Vdash^{*} \tau_{1} \in \tau_{2}$ 当且仅当 $\left\{q \mid \exists(\pi, s) \in \tau_{2}\left(q \leqslant s \wedge q \Vdash^{*} \tau_{1}=\pi\right)\right\}$ 是 $p$ 下稠密的
        3. 若 $\varphi\left(x_{1}, \cdots, x_{n}\right)=\psi_{1}\left(x_{1}, \cdots, x_{n}\right) \wedge \psi_{2}\left(x_{1}, \cdots, x_{n}\right)$，则 $p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 当且仅当 $p \Vdash^{*} \psi_{1}$ 且 $p \Vdash^{*} \psi_{2}$
        4. 若 $\varphi\left(x_{1}, \cdots, x_{n}\right)=\neg \psi\left(x_{1}, \cdots, x_{n}\right)$，则 $p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 当且仅当 $\neg \exists q \leqslant p \ (q \Vdash^{*} \psi)$
        5. 若 $\varphi\left(x_{1}, \cdots, x_{n}\right)=\exists x \ \psi\left(x, x_{1}, \cdots, x_{n}\right)$，则 $p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 当且仅当 $\left\{r \mid \exists \sigma \in V^{\mathbf{P}}\left(r \Vdash^{*} \psi\right)\right\}$ 是 $p$ 下稠密的
    3. 设 $\varphi\left(x_{1}, \cdots, x_{n}\right)$ 为公式，$M$ 为 $\mathbf{ZFC}$ 的传递模型，$\mathbf{P}$ 为 $M$ 的力迫，$\tau_{1}, \cdots, \tau_{n} \in M^{\mathbf{P}}$ 为 $M$ 中的 $\mathbf{P}-$名字，令 $G$ 为 $M$ 脱殊滤
        1. 若 $p \in G$ 且 $\left(p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)\right)^{M}$，则 $\left(\varphi\left(\tau_{1 G}, \cdots, \tau_{n G}\right)\right)^{M[G]}$
        2. 若 $\left(\varphi\left(\tau_{1 G}, \cdots, \tau_{n G}\right)\right)^{M[G]}$，则 $\exists p \in G \ (\left(p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)\right)^{M})$
    4. 力迫定理：设 $M$ 为 $\mathbf{ZFC}$ 的可数传递模型，$\mathbf{P}$ 为 $M$ 的力迫．令 $\varphi\left(x_{1}, \cdots, x_{n}\right)$ 为公式，$\tau_{1}, \cdots, \tau_{n} \in M^{\mathbf{P}}$ 为 $\mathbf{P}-$名字
        1. 对任意 $p \in \mathbf{P}$，$p \Vdash \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)$ 当且仅当 $\left(p \Vdash^{*} \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)\right)^{M}$
        2. 对任意 $M$ 上的 $\mathbf{P}$ 脱殊滤 $G$，$\varphi\left(\tau_{1 G}, \cdots, \tau_{n G}\right)^{M[G]}$ 当且仅当 $\exists p \in G\left(p \Vdash \varphi\left(\tau_{1}, \cdots, \tau_{n}\right)\right)$

### 5.1.2 相对独立性
1. 若对任意 $\mathbf{ZFC}$ 的有穷子集 $S$，总存在其另一有穷子集 $T$，使得 $T$ 的任何可数传递模型 $M$ 都可扩展为 $S+\sigma$ 的可数传递模型 $N$
    1. $\mathbf{ZFC}+\sigma \vdash \tau_{\mathbf{N}} \to \mathbf{ZFC} \vdash \tau_{\mathbf{N}}$
    2. $\mathbf{ZFC}$ 一致蕴涵 $\mathbf{ZFC}+\sigma$ 一致
2. 对任意基数 $\lambda$，令 $\operatorname{Func}_{\lambda}(I, J)=\{p \mid |p| <\lambda \wedge p$ 是函数 $\wedge \operatorname{dom}(p) \subseteq I \wedge \operatorname{ran}(p) \subseteq J\}$，则相应的力迫为 $\left(\operatorname{Func}_{\lambda}(I, J), \supseteq, \varnothing\right)$
    1. 给定基数 $\kappa$，如果偏序集 $\mathbf{P}$ 的任意反链的基数都小于 $\kappa$，则称 $\mathbf{P}$ 具有 $\kappa-$反链性质，记作 $\kappa\text{-}c.c.$
        1. 对任意基数 $\lambda$，$\operatorname{Func}_{\lambda}(I, J)$ 有 $\left(|J|^{<\lambda}\right)^{+}-$反链性质
        2. 设 $\mathbf{P} \in M$，$(\kappa \textsf{ 是不可数基数 })^{M}$ 且 $(\mathbf{P}$ 有 $\kappa-$反链性质$)^{M}$，$G$ 为 $M$ 上的 $\mathbf{P}-$脱殊滤．令 $A, B \in M$，$f: A \rightarrow B \in M[G]$，则存在 $M$ 中的映射 $F: A \rightarrow \mathcal{P}(B)$，$\forall a \in A \ (f(a) \in F(a))$ 且 $\forall a \in A \ (|F(a)| \leqslant \kappa)^{M}$
    2. （广义）$\Delta-$系统引理：令 $\lambda, \kappa$ 是（无穷）正则基数且 $\kappa>\lambda$．假设对任意 $\alpha<\kappa$，都有 $\left|\alpha^{<\lambda}\right|<\kappa$．对任意集合 $\mathcal{A}$，如果 $|\mathcal{A}|=\kappa$，但对任意 $A \in \mathcal{A},|A|<\lambda$，则存在 $\mathcal{A}_{0} \in[\mathcal{A}]^{\kappa}$，$\mathcal{A}_{0}$ 是 $\Delta-$系统，即存在集合 $R$ 使得对任意 $A, B \in \mathcal{A}_{0}$，如果 $A \neq B$，则 $A \cap B=R$．称 $R$ 为 $\mathcal{A}_{0}$ 的根
    3. 设 $\mathbf{P} \in M$ 为力迫，$(\kappa$ 是基数$)^{M}$
        1. $\mathbf{P}$ 是保持 $\geqslant \kappa-$基数的当且仅当若 $G$ 是 $M$ 上的 $\mathbf{P}-$脱殊滤且 $\kappa \leqslant \beta \leqslant o(M)$，则 $(\beta$ 是基数$)^{M} \leftrightarrow(\beta$ 是基数 $)^{M[G]}$
        2. $\mathbf{P}$ 是保持 $\geqslant \kappa-$共尾的当且仅当若 $G$ 是 $M$ 上的 $\mathbf{P}-$脱殊滤而 $\gamma$是 $M$ 中的基数且 $\operatorname{cf}(\gamma)^{M} \geqslant \kappa$，则 $\operatorname{cf}(\gamma)^{M}=\operatorname{cf}(\gamma)^{M[G]}$

3. 设 $\mathbf{P}$ 是力迫，$\lambda$ 是基数，称 $\mathbf{P}$ 是 $\lambda-$封闭的当且仅当对任意 $\alpha<\lambda$，$\mathbf{P}$ 中长度为 $\alpha$ 的下降链 $\left(p_{\xi} \mid \xi<\alpha\right)$ 都有下界，即存在 $q \in \mathbf{P}$ 使得对任意 $\xi<\alpha$ 都有 $q \leqslant p_{\xi}$
    1. 设 $\mathbf{P}=\operatorname{Func}_{\lambda}(I, J) \in M$，$(\lambda \geqslant \aleph_{0}$ 是正则基数$)^{M}$，$(2^{<\lambda}=\lambda)^{M}$ 且 $(|J| \leqslant \lambda)^{M}$，则 $\mathbf{P}$ 保持共尾并且保持基数
        1. 若 $\lambda$ 是正则的，则 $\mathrm{Func}_{\lambda}(I, J)$ 是 $\lambda-$封闭的
        2. 设 $(\mathbf{P}$ 是 $\lambda-$封闭的$)^{M}$，$A, E \in M$ 且 $(|A|<\lambda)^{M}$，则若 $f: A \rightarrow E$ 是 $M[G]$ 中的函数，那么 $f$ 也属于 $M$
    2. 设在 $M$ 中有 $\mathbf{P}=\mathrm{Func}_{\lambda}(\kappa \times \lambda, 2)$，其中 $\kappa, \lambda$ 是基数且 $\kappa>\lambda \geqslant \aleph_{0}, \lambda$ 是正则的．假设 $\kappa^{\lambda}=\kappa$，且 $2^{<\lambda}=\lambda$，则 $\mathbf{P}$ 保持共尾和基数，且在 $M[G]$ 中有 $2^{\lambda}=\kappa$
        1. $\operatorname{Con}(\mathbf{ZFC}) \rightarrow \operatorname{Con}(\mathbf{ZFC}+\neg \mathbf{CH})$；特别地，$\operatorname{Con}(\mathbf{ZFC}) \rightarrow \operatorname{Con}(\mathbf{ZFC}+\neg \mathbf{GCH})$
        2. $\operatorname{Con}(\mathbf{ZFC}) \rightarrow \operatorname{Con}\left(\mathbf{ZFC}+2^{\kappa_{0}}=\kappa\right)$ 对任意满足 $\mathrm{cf}(\kappa)>\aleph_{0}$ 的基数 $\kappa$ 成立

## 5.2 大基数理论
1. 对于任意两个 $\text{LCA}$（大基数公理）$A_{1}, A_{2}$，下列情况有且仅有一种成立
    1. 除非 $\mathbf{ZFC}$ 是不一致的，否则 $\operatorname{Con}\left(\mathrm{ZFC}+A_{1}\right) \leftrightarrow \operatorname{Con}\left(\mathrm{ZFC}+A_{2}\right)$，则称 $A_{1}, A_{2}$ 的一致性强度相同
    2. 若 $\operatorname{Con}\left(\mathbf{ZFC}+A_{1}\right) \rightarrow \operatorname{Con}\left(\mathbf{ZFC}+A_{2}\right)$，反之不成立，则称 $A_{1}$ 的一致性强度高于 $A_{2}$
    3. 若 $\operatorname{Con}\left(\mathbf{ZFC}+A_{2}\right) \rightarrow \operatorname{Con}\left(\mathbf{ZFC}+A_{1}\right)$，反之不成立，则称 $A_{2}$ 的一致性强度高于 $A_{1}$
2. 反射原理：令 $\varphi$ 为公式，对任意 $\mathbf{M}_{0}$，都存在类 $\mathbf{M} \supseteq \mathbf{M}_{0}$ 使得 $\varphi^{\mathbf{M}} \leftrightarrow \varphi$，则称 $\mathbf{M}$ 反射 $\varphi$
    1. 存在传递模型 $\mathbf{M} \supseteq \mathbf{M}_{0}$ 反射 $\varphi$；更进一步地，存在一个极限序数 $\alpha$，使得 $\mathbf{M}_{0} \subseteq V_{\alpha}$ 且 $V_{\alpha}$ 反射 $\varphi$
    2. 假设 $\mathbf{AC}$ 成立，则存在一个 $\mathbf{M} \supseteq \mathbf{M}_{0}$，使得 $\mathbf{M}$ 反射 $\varphi$ 且 $|\mathbf{M}| \leqslant\left|\mathbf{M}_{0}\right| \cdot \aleph_{0}$．特别地，存在一个可数的 $\mathbf{M}$ 反射 $\varphi$
3. 关键点：设 $j: \mathbf{V} \rightarrow \mathbf{M}$ 是从 $\mathbf{V}$ 到传递内模型 $\mathbf{M}$ 的初等嵌入．$j$ 将 $\mathbf{V}$ 中的序数映射为 $\mathbf{M}$ 中的序数，且是严格递增的．非平凡（非等同函数）的初等嵌入总会改变至少一个序数，称第一个被改变的序数 $\kappa$ 为初等嵌入 $j$ 的关键点，记作 $\operatorname{crit}(j)$，
    1. $j(\kappa) > \kappa$
    2. 对任意 $a \in V_{\kappa}$ 有 $j(a) = a$，因此 $V_{\kappa}^{M} = v_{\kappa}$
    3. 对任意 $X \subseteq V_{\kappa}$ 有 $j(X) \cap V_{\kappa}^{M} = X$，因而 $V_{\kappa+1}^{M} = v_{\kappa+1}$

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
        3. $\eta_{\omega}$ 的存在与 $\mathbf{V} = \mathbf{L}$ 一致；但 $\eta_{\omega_1}$ 的存在与 $\mathbf{V} = \mathbf{L}$ 不一致，此时 $\mathbf{L}$ 中只有有限个实数
    3. $\text{Ramsey}$ 基数：满足划分性质 $\kappa \rightarrow(\kappa)^{<\omega}$ 的基数，即对于任意 $n < \omega$ 都有 $\kappa \rightarrow(\kappa)^{n}$
        1. 若存在 $\text{Ramsey}$ 基数，则 $\mathbf{L}$ 中只有有限个实数
        2. 若存在 $\text{Ramsey}$ 基数 $\kappa$，设 $\lambda$ 是小于 $\kappa$ 的无穷级数，则 $|\mathcal P^{\mathbf{L}}(\lambda)| = \lambda$
3. 不可描述基数：设 $\kappa$ 是基数，若对任意新增到集合论语言的谓词 $U \subseteq V_{\kappa}$ 与使得 $\left(V_{\kappa}, \in, U\right) \vDash \sigma$ 成立的 $\Pi_{n}^{m}$（或 $\Sigma_{n}^{m}$）语句 $\sigma$，都存在 $\alpha<\kappa$，使得 $\left(V_{\alpha}, \in, U \cap V_{\alpha}\right) \vDash \sigma$，则称 $\kappa$ 是 $\Pi_{n}^{m}-$不可描述的（或 $\Sigma_{n}^{m}-$不可描述的）
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

    3. 设一元谓词 $Q \in S$，考察可数语言 $\mathscr{L}(S)$ 的结构 $\mathfrak{A}$．若 $|A|=\kappa$ 且 $\left|Q^{\mathfrak{A}}\right|=\lambda$，则称 $\mathfrak{A}$ 具有类型 $(\kappa, \lambda)$．若每个类型为 $(\kappa, \lambda)$ 的结构都有一个类型为 $(\mu, \nu)$ 的初等子结构，则记为 $(\kappa, \lambda) \rightarrow(\mu, \nu)$
        1. 设 $\kappa>\aleph_{1}$ 是一个基数，若对任意不可数基数 $\lambda<\kappa$ 都有 $(\kappa, \lambda) \rightarrow \left(\kappa, \aleph_{0}\right)$，则称 $\kappa$ 为 $\text{Rowbottom}$ 基数
        2. 设 $\kappa$ 是一个无穷基数，若每个大小为 $\kappa$ 的模型都有一个大小为 $\kappa$ 的初等子结构，则称 $\kappa$ 为 $\text{J}\acute{\mathrm{o}}\text{nsson}$ 基数
    4. 强紧致基数：若对任何集合 $S$，每个 $S$ 上的 $\kappa-$完全滤都可扩展为 $S$ 上的 $\kappa-$完全超滤，则称不可数基数 $\kappa$ 是强紧致基数
        1. 对于任何正则基数 $\kappa$，$\kappa$ 是强紧致基数当且仅当
            1. 对于任何 $A$ 使得 $|A| \geqslant \kappa$，存在一个 $P_{\kappa}(A)$ 上的精细测度
            2. 语言 $\mathscr{L}_{\kappa, \omega}$ 满足紧致性定理
        2. 若存在一个强紧致基数，则就存在具有两个可测基数的内模型
    5. 如果存在可测基数（即存在非平凡的初等嵌入 $j: \mathbf{V} \rightarrow \mathbf{M}$），则
        1. $\mathbf{V} \neq \mathbf{L}$ 且 $\mathbf{L}$ 中只有有限多个实数
        2. 所有的 $\mathbf{\Pi}_{1}^{1}$ 集都是被决定的
        3. 所有的 $\mathbf{\Sigma}_{2}^{1}$ 集都具有正则性质

2. 强基数
3. $\text{Woodin}$ 基数
4. 超强基数
5. 超紧致基数：设 $\kappa$ 是基数，若存在 $\mathbf{V}$ 到传递内模型 $\mathbf{M}$ 的初等嵌入 $j: \mathbf{V} \rightarrow \mathbf{M}$，使得 $\kappa = \operatorname{crit}(j)$ 且 $\kappa, j(\kappa)>\lambda, \mathbf{M}^{\lambda} \subseteq \mathbf{M}$，则称 $\kappa$ 为超紧致基数，此时它对所有序数 $\lambda$ 都是 $\lambda-$超紧致的
    1. 基数 $\kappa$ 是超紧致的当且仅当对于每个 $A$ 使得 $|A| \geqslant \kappa$，在 $\mathcal{P}_{\kappa}(A)$ 上存在正规测度
    2. 若存在一个可测基数，且是强紧致基数的极限，那么符合条件的最小基数是强紧致的但不是超紧致的
6. 可扩展基数
7. $\text{Vop}\check{\mathrm{e}}\text{nka}$ 原理
8. 巨基数
9.  $\text{Rank to Rank}$ 基数
10. $\text{Reinhardt}$ 基数与 $\text{Berkeley}$ 基数与选择公理不相容

## 5.3 内模型计划
若 $\mathbf{ZF}$ 的传递模型 $\mathbf{M}$ 包含所有序数，则称 $\mathbf{M}$ 是内模型

1. 对给定集合 $A$ 定义可构造闭包 $\mathbf{L}(A)$，即使得 $A \in \mathbf{M}$ 的最小内模型 $\mathbf{M}$
    1. $\mathbf{L}_{0}(A)=\operatorname{trcl}(\{A\})$
    2. $\mathbf{L}_{\alpha+1}(A)=\operatorname{Def}\left(\mathbf{L}_{\alpha}(A)\right)$
    3. $\mathbf{L}_{\alpha}(A)={\displaystyle \bigcup_{\gamma<\alpha} \mathbf{L}_{\gamma}(A)}$

    定义 $\mathbf{L}(A)={\displaystyle \bigcup_{\alpha} \mathbf{L}_{\alpha}(A)}$

    1. 称包含所有实数的最小内模型 $\mathbf{L}(\mathbf{R})$ 为可构成层谱
    2. 除非 $\operatorname{trcl}(\{A\})$ 在 $\mathbf{L}(A)$ 上是良序的，否则 $\mathbf{L}(A)$ 不满足 $\mathbf{AC}$

2. $\mathbf L[A]$

3. $\mathbf L[U]$

4. $\mathbf L[\mathcal U]$

5. 鼠模型

6. 终极 $\mathbf L$
