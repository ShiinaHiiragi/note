# 4 集宇宙

## 4.1 von Neumann 宇宙
### 4.1.1 良基集
1. 定义良基集合类 $\mathbf{WF} = {\displaystyle \bigcup_{\alpha \in \mathrm{On}} V_{\alpha}}$，其中 $V_{\alpha}$
    1. $V_{0}=\varnothing$
    2. $V_{\alpha+1}=\mathcal{P}\left(V_{\alpha}\right)$
    3. 对任意极限序数 $\alpha$，$V_{\alpha}={\displaystyle \bigcup_{\beta<\alpha} V_{\beta}}$

    则 $\mathbf{WF}$ 是一个真类，称作 $\text{von Neumann}$ 宇宙

    1. 对任意序数 $\alpha \in \mathbf{On}$
        1. $V_{\alpha}$ 是传递的
        2. 如果 $\xi \leqslant \alpha$，则 $V_{\xi} \subseteq V_{\alpha}$
        3. 如果 $\kappa$ 是不可达基数，则 $\left|V_{\kappa}\right|=\kappa$
        4. $V_{\alpha} \cap \mathbf{O n}=\alpha$
    2. 对任意集合 $x \in \mathbf{WF}$，定义 $x$ 的秩 $\operatorname{rank}(x)$ 为使得 $x \in V_{\beta+1}$ 的最小 $\beta$，设 $\alpha \in \mathbf{On}$
        1. $V_{\alpha}=\{x \in \mathbf{WF} \mid \operatorname{rank}(x)<\alpha\}$
        2. 对任意 $x, y \in \mathbf{WF}$，如果 $x \in y$，则 $\operatorname{rank}(x)<\operatorname{rank}(y)$
        3. 对任意 $y \in \mathbf{WF}, \operatorname{rank}(y)=\sup \{\operatorname{rank}(x)+1 \mid x \in y\}$
        4. $\alpha \in \mathbf{WF}$ 且 $\operatorname{rank}(\alpha)=\alpha$
    3. $\mathbf{WF}$ 是传递的，即对任意 $y \in \mathbf{WF}$，若 $x \in y$，则 $x \in \mathbf{WF}$
        1. 对任意集合 $x$，$x \in \mathbf{WF}$ 当且仅当 $x \subseteq \mathbf{WF}$
        2. 设 $x \in \mathbf{WF}$，则 $\bigcup x, \mathcal{P}(x)$ 以及 $\{x\}$ 属于 $\mathbf{WF}$，且其秩都小于 $\operatorname{rank}(x)+\omega$
        3. 若 $x, y \in \mathbf{WF}$，则 $x \times y, x \cup y, x \cap y,\{x, y\},(x, y), x^{y}$ 都属于 $\mathbf{WF}$，且其秩都小于 $\operatorname{rank}(x)+\operatorname{rank}(y)+\omega$
        4. 整数集 $\mathbf{Z}$，有理数集 $\mathbf{Q}$ 和实数集 $\mathbf{R}$ 都属于 $V_{\omega+\omega}$
        5. 若 $A \in \mathbf{WF}$，则 $\in$ 是 $A$ 上的良基关系
        6. 假设选择公理成立
            1. 对任意群 $G$，存在 $\mathbf{WF}$ 中的群 $G^{\prime}$ 与 $G$ 同构
            2. 对任意拓扑空间 $T$，存在 $\mathbf{WF}$ 中的拓扑空间 $T^{\prime}$ 与 $T$ 同胚
    4. 任意集合 $x$，存在一个最小的传递集 ${\displaystyle \operatorname{trcl}(x)=\bigcup_{n<\omega} x_{n}}$ 使得 $x \subseteq \operatorname{trcl}(x)$，其中 ${\displaystyle x_{0} =x, x_{n+1} =\bigcup x_{n}}$
        1. 若 $A$ 是传递集，且 $\in$ 是 $A$ 上的良基关系，则 $A \in \mathbf{WF}$
        2. 若 $x$ 是传递的，则 $\operatorname{trcl}(x)=x$
        3. 若 $y \in x$，则 $\operatorname{trcl}(y) \subseteq \operatorname{trcl}(x)$
        4. $\operatorname{trcl}(x)=x \cup \bigcup\{\operatorname{trcl}(y) \mid y \in x\}$
        5. $X \in \mathbf{WF}$ 当且仅当 $\operatorname{trcl}(X) \in \mathbf{WF}$ 当且仅当 $\in$ 是 $\operatorname{trcl}(X)$ 上的良基关系
    5. 对任意序数 $\alpha \in \mathbf{On}$，若 $\kappa$ 是不可达基数，则 $\left|V_{\kappa}\right|=\kappa$
        1. 若 $\gamma>\omega$ 是无穷极限序数，则在 $\mathbf{ZF}$ 中可证明 $V_{\gamma} \vDash \mathbf{Z}$；在 $\mathbf{ZFC}$ 中可证明 $V_{\gamma} \vDash \mathbf{ZC}$
        2. 若 $\kappa$ 是不可达基数，则在 $\mathbf{ZF}^{-}$ 中可证明 $V_{\kappa} \vDash \mathbf{ZF}$；在 $\mathbf{ZFC}^{-}$ 中可证明 $V_{\kappa} \vDash \mathbf{ZFC}$
    6. 在 $\mathbf{ZF}^{-}$ 中可证明以下命题等价
        1. 基础公理
        2. 对任意集合 $X$，$\in$ 是 $X$ 上的良基关系
        3. $\mathbf{V}=\mathbf{WF}$

2. 定义类 $\mathbf{R}$ 是类 $\mathbf{X}$ 上的良基关系当且仅当 $\forall U \subseteq \mathbf{X} \ (U \neq \varnothing \rightarrow \exists y \in U \ (\neg \exists z \in U \ (z \mathbf{R} y)))$
    1. 定义 $\mathbf{X}$ 上的关系 $\mathbf{R}$ 是似集合的当且仅当对任意 $x \in \mathbf{X}$，$\{y \in \mathbf{X} \mid y \mathbf{R} x\}$ 是一个集合，并定义前驱 $\mathrm{pred}$ 及其闭包 $\mathrm{cl}$

        $$
        \begin{aligned}
        \operatorname{pred}^{0}(\mathbf{X}, x, \mathbf{R}) & =\{y \in \mathbf{X} \mid y \mathbf{R} x\} \\
        \operatorname{pred}^{n+1}(\mathbf{X}, x, \mathbf{R}) & =\bigcup\left\{\operatorname{pred}(\mathbf{X}, y, \mathbf{R}) \mid y \in \operatorname{pred}^{n}(\mathbf{X}, x, \mathbf{R})\right\} \\
        \operatorname{cl}(\mathbf{X}, x, \mathbf{R}) & =\bigcup_{n \in \omega} \operatorname{pred}^{n}(\mathbf{X}, x, \mathbf{R})
        \end{aligned}
        $$

        1. 通常将 $\operatorname{pred}^{0}(\mathbf{X}, x, \mathbf{R})$ 记作 $\operatorname{pred}(\mathbf{X}, x, \mathbf{R})$；如果 $\mathbf{X}$ 是传递的，则 $\operatorname{pred}(\mathbf{X}, x, \in)=x, \operatorname{cl}(\mathbf{X}, x, \in)=\operatorname{trcl}(x)$
        2. 若 $\mathbf{R}$ 是 $\mathbf{X}$ 上的似集合关系，则对任意 $y \in \operatorname{cl}(\mathbf{X}, x, \mathbf{R})$ 有 $\operatorname{pred}(\mathbf{X}, y, \mathbf{R}) \subseteq \operatorname{cl}(\mathbf{X}, x, \mathbf{R})$
        3. 若 $\mathbf{R}$ 是 $\mathbf{X}$ 上的良基关系且是似集合的，则 $\mathbf{X}$ 的每一非空子类 $\mathbf{Y}$ 都有 $\mathbf{R}$ 极小元

    2. 若 $\mathbf{R}$ 是 $\mathbf{X}$ 上的似集合良基关系，则定义 $\operatorname{rank}(x, \mathbf{X}, \mathbf{R})=\sup \{\operatorname{rank}(y, \mathbf{X}, \mathbf{R})+1 \mid y \mathbf{R} x \wedge y \in \mathbf{X}\}$
        1. 假设 $\mathbf{R}$ 是 $\mathbf{X}$ 上的似集合的良基关系。如果 $\mathbf{F}: \mathbf{X} \times \mathbf{V} \rightarrow \mathbf{V}$ 是类函数，则存在唯一的 $\mathbf{G}: \mathbf{X} \rightarrow \mathbf{V}$ 使得
        2. 在 $\mathbf{ZF}^{-}$ 中可证若 $\mathbf{X}$ 是传递的而 $\in$ 是 $\mathbf{X}$ 上的良基关系，则 $\mathbf{X} \subseteq \mathbf{WF}$，并且对任意 $x \in \mathbf{X}$ 有 $\operatorname{rank}(x, \mathbf{X}, \in)=\operatorname{rank}(x)$

3. 令 $\mathbf{R}$ 是 $\mathbf{X}$ 上的似集合良基关系，$(\mathbf{X}, \mathbf{R})$ 上的 $\text{Mostowski}$ 函数 $\mathbf{G}$ 定义为 $\mathbf{G}(x)=\{\mathbf{G}(y) \mid y \in \mathbf{X} \wedge y \mathbf{R} x\}$
    1. $\mathbf{G}$ 的值域通常记为 $\mathbf{M}$，称为 $(\mathbf{X}, \mathbf{R})$ 的 $\text{Mostowski}$ 折叠
        1. $\forall x, y \in \mathbf{X} \ (x \mathbf{R} y \rightarrow \mathbf{G}(x) \in \mathbf{G}(y))$
        2. $\mathbf{M}$ 是传递的
        3. 假设幂集公理成立，则 $\mathbf{M} \subseteq \mathbf{WF}$
        4. 假设幂集公理成立，并且 $x \in \mathbf{X}$，则 $\operatorname{rank}(x, \mathbf{X}, \mathbf{R})= \operatorname{rank}(\mathbf{G}(x))$
    2. $\mathbf{R}$ 在 $\mathbf{X}$ 上是外延的当且仅当 $\forall x, y \in \mathbf{X} \ (\forall z \in \mathbf{X} \ (z \mathbf{R} x \leftrightarrow z \mathbf{R} y) \rightarrow x=y)$
        1. $\mathbf{R}$ 是外延的当且仅当对任意 $x, y \in \mathbf{X}$ 有 $x \neq y \rightarrow \operatorname{pred}(\mathbf{X}, x, \mathbf{R}) \neq \operatorname{pred}(\mathbf{X}, y, \mathbf{R})$
        2. 若 $\mathbf{X}$ 是传递的，则 $\in$ 在 $\mathbf{X}$ 上是外延的。
    3. $\text{Mostowski}$ 折叠定理：令 $\mathbf{R}$ 是 $\mathbf{X}$ 上的似集合良基关系且在 $\mathbf{X}$ 上是外延的，则存在传递类 $\mathbf{M}$ 与双射 $\mathbf{G}: \mathbf{X} \rightarrow \mathbf{M}$ 满足 $\mathbf{G}$ 是 $(\mathbf{X}, \mathbf{R})$ 与 $(\mathbf{M}, \in)$ 之间的同构；此外，$\mathbf{M}$ 和 $\mathbf{G}$ 都是唯一的
4. 设 $\kappa$ 为无穷基数，$H_{\kappa}=\{x \mid |\operatorname{trcl}(x)| <\kappa\}$，称 $H_{\kappa}$ 中元素的遗传基数小于 $\kappa$，$H_{\omega}$ 的元素为遗传有穷集，$H_{\omega_{1}}$ 的元素为遗传可数集
    1. 对任意无穷基数 $\kappa$，$H_{\kappa}$ 都是传递集
        1. $H_{\kappa} \subseteq V_{\kappa}$
        2. $H_{\kappa} \cap \mathbf{On}=\kappa$
        3. 若 $x \in H_{\kappa}$，则 $\bigcup x \in H_{\kappa}$
        4. 若 $x, y \in H_{\kappa}$，则 $\{x, y\} \in H_{\kappa}$
        5. 若 $x \in H_{\kappa}$ 而 $y \subseteq x$，则 $y \in H_{\kappa}$
        6. 若 $\kappa$ 是正则的，则 $\forall x \ \left(x \in H_{\kappa} \leftrightarrow x \subseteq H_{\kappa} \wedge|x|<\kappa\right)$
    2. 若 $\kappa$ 是不可数正则基数，则以下命题等价
        1. $\kappa$ 是不可达的
        2. $H_{\kappa}=V_{\kappa}$
        3. $H_{\kappa} \vDash \mathbf{ZFC}$
    3. 若 $\kappa$ 是不可数正则基数，则 $H_{\kappa}$ 是 $\mathbf{ZFC}-\mathrm{Pow}$ 的模型
    4. 若 $V_{\kappa} \vDash \mathbf{ZFC}$，则称 $\kappa$ 为世界基数
5. 反映定理：在 $\mathbf{ZF}$ 中可证对任意有穷公式集 $F=\left\{\varphi_{1}, \cdots, \varphi_{n}\right\}$，对任意 $V_{\alpha}$，存在 $V_{\beta}$ 有 $V_{\alpha} \subseteq V_{\beta}$ 且 $\varphi_{1}, \cdots, \varphi_{n}$ 相对于 $V_{\beta}$ 是绝对的
    1. 在 $\mathbf{ZF}$ 中可证若 $F=\left\{\sigma_{1}, \cdots, \sigma_{n}\right\}$ 为 $\mathbf{ZF}$ 公理的有穷子集，则 $\forall \alpha \exists \beta>\alpha \ (\sigma_{1}^{V_{\beta}} \wedge \cdots \wedge \sigma_{n}^{V_{\beta}})$
    2. 令 $F=\left\{\sigma_{1}, \cdots, \sigma_{n}\right\}$ 为 $\mathbf{ZF}$ 公理的有穷子集，除非 $\mathbf{ZF}$ 是不一致的，否则 $F$ 不能证明 $\mathbf{ZF}$ 的所有公理
    3. 在 $\mathbf{ZFC}$ 中可证对任意有穷公式集 $F=\left\{\varphi_{1}, \cdots, \varphi_{n}\right\}$ 与任意集合 $N$，存在集合 $M$ 使得
        1. $N \subseteq M, |M| \leqslant|N| \cdot \omega$
        2. $\varphi_{1}, \cdots, \varphi_{n}$ 相对于 $(M, \in)$ 是绝对的
        3. 若 $N$ 是至多可数的，则 $M$ 是可数的
        4. 若 $N$ 是传递的，则 $M$ 也是传递的

### 4.1.2 绝对性
1. 相对化：令 $\mathbf{M}$ 为类，$\varphi$ 为公式，则 $\varphi$ 对 $\mathbf{M}$ 的相对化 $\varphi^{\mathbf{M}}$ 递归定义为
    1. $(x=y)^{\mathbf{M}}$ 即 $x=y$
    2. $(x \in y)^{\mathbf{M}}$ 即 $x \in y$
    3. $(\varphi \rightarrow \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \rightarrow \psi^{\mathbf{M}}$
    4. $(\neg \varphi)^{\mathbf{M}}$ 即 $\neg \varphi^{\mathbf{M}}$
    5. $(\forall x \varphi)^{\mathbf{M}}$ 即 $\forall x \in \mathbf{M} \ \varphi^{\mathbf{M}}$

    $\varphi^{\mathbf{M}}$ 读作「$\varphi$ 在 $\mathbf{M}$ 中为真」，相当于 $\mathbf{M} \vDash \varphi$，且有 $\varphi^{\mathbf{V}} = \varphi$

    1. 其他逻辑符号的相对化可由定义得到
        1. $(\varphi \vee \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \vee \psi^{\mathbf{M}}$
        2. $(\varphi \wedge \psi)^{\mathbf{M}}$ 即 $\varphi^{\mathbf{M}} \wedge \psi^{\mathbf{M}}$
        3. $(\exists x \varphi)^{\mathbf{M}}$ 即 $(\exists x \in \mathbf{M}) \varphi^{\mathbf{M}}$
    2. 函数与类的相对化通过公式的相对化定义
        1. 对于 $n$ 元函数符号 $f$，假设其定义由 $\varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 给出，则 $f^{\mathbf{M}}=\left\{\left(x_{1}, \cdots, x_{n}, x_{n+1}\right) \in \mathbf{M} \mid \varphi^{\mathbf{M}}\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)\right\}$ 表示 $f$ 在 $\mathbf{M}$ 中的相对化，其中隐含了 $\mathbf{M} \vDash \forall x_{1} \cdots \forall x_{n} \exists^{1} \ x_{n+1} \varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 的要求
        2. 类 $\mathbf{X}$ 是一个公式 $\mathbf{X}(x)$，其相对化 $\mathbf{X}^{\mathbf{M}}$ 表示为 $\left\{x \in \mathbf{M} \mid \mathbf{X}^{\mathbf{M}}(x)\right\}$

2. 对任意集合论公式 $\psi\left(x_{1}, \ldots, x_{n}\right)$ 与任意满足 $\mathbf{M} \subseteq \mathbf{N}$ 的类，若 $\forall x_{1} \cdots \forall x_{n} \in \mathbf{M} \ \left(\psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right) \leftrightarrow \psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right)\right)$，则称 $\psi$ 对于 $\mathbf{M}, \mathbf{N}$ 是绝对的；若 $\mathbf{N}=\mathbf{V}$，则称 $\psi$ 对于 $\mathbf{M}$ 是绝对的
    1. 函数与类的绝对性通过公式的绝对性定义
        1. 设 $\mathbf{M} \subseteq \mathbf{N}, f\left(x_{1}, \cdots, x_{n}\right)$ 是函数，则 $f$ 相对于 $\mathbf{M}, \mathbf{N}$ 是绝对的当且仅当定义 $f$ 的公式 $\varphi\left(x_{1}, \cdots, x_{n}, x_{n+1}\right)$ 也是绝对的．因此 $f$ 相对于 $\mathbf{M}$ 是绝对的当且仅当 $f^{\mathbf{M}}=f \upharpoonright \mathbf{M}$
        2. 类 $\mathbf{X}$ 是一个公式 $\mathbf{X}(x)$，它对 $\mathbf{M}$ 是绝对的当且仅当 $\forall x \in \mathbf{M} \ \left(\mathbf{X}^{\mathbf{M}}(x) \leftrightarrow \mathbf{X}(x)\right)$ 或 $\mathbf{X}^{\mathrm{M}}=\mathbf{X} \cap \mathbf{M}$
    2. 假设 $\mathbf{M} \subseteq \mathbf{N}$，且 $\varphi, \psi$ 是公式
        1. 若 $\varphi, \psi$ 相对于 $\mathbf{M}, \mathbf{N}$ 是绝对的，则 $\neg \varphi, \varphi \rightarrow \psi$ 也是如此
        2. 若 $\varphi$ 不含量词，则 $\varphi$ 对任意 $\mathbf{M}$ 都是绝对的
        3. 若 $\mathbf{M}, \mathbf{N}$ 都是传递的，并且 $\varphi$ 相对于它们是绝对的，则 $\forall x \in y \ \varphi$ 也是如此
    3. 令 $\mathbf{M} \subseteq \mathbf{N}$ 都是传递的，$\psi\left(x_{0}, \ldots, x_{n}\right)$ 为集合论公式
        1. 若 $\psi$ 是 $\Delta_{0}$ 公式，则 $\psi$ 对于 $\mathbf{M}, \mathbf{N}$ 是绝对的
        2. 如果 $\psi$ 是 $\Sigma_{1}$ 公式，则 $\forall x_{1} \cdots \forall x_{n} \ \left(\psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right) \rightarrow \psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right)\right)$
        3. 如果 $\psi$ 是 $\Pi_{1}$ 公式，则 $\forall x_{1} \ldots \forall x_{n} \ \left(\psi^{\mathbf{N}}\left(x_{1}, \ldots, x_{n}\right) \rightarrow \psi^{\mathbf{M}}\left(x_{1}, \ldots, x_{n}\right)\right)$
    4. 绝对性的性质：设 $\mathbf{M} \subseteq \mathbf{N}$
        1. 设 $\mathbf{M}, \mathbf{N}$ 都是语句集 $\Sigma$ 的模型，$\Sigma \vdash \forall x_{1} \cdots \forall x_{n} \ \left(\varphi\left(x_{1} \cdots x_{n}\right) \leftrightarrow \psi\left(x_{1} \cdots x_{n}\right)\right)$，则 $\varphi$ 对 $\mathbf{M}, \mathbf{N}$ 是绝对的当且仅当 $\psi$ 也是
        2. 设 $\varphi\left(x_{1}, \cdots, x_{n}\right)$ 是一个公式，$f\left(x_{1}, \cdots, x_{n}\right)$，$g_{i}\left(y_{1}, \cdots, y_{m}\right), 1 \leqslant i \leqslant n$ 为一系列函数，且都相对于 $\mathbf{M}, \mathbf{N}$ 绝对，则公式 $\varphi\left(g_{1}\left(y_{1}, \cdots, y_{m}\right), \cdots, g_{n}\left(y_{1}, \cdots, y_{m}\right)\right)$ 与函数 $f\left(g_{1}\left(y_{1}, \cdots, y_{m}\right), \cdots, g_{n}\left(y_{1}, \cdots, y_{m}\right)\right)$ 也相对于 $\mathbf{M}, \mathbf{N}$ 绝对
    5. 以下关系与函数在 $\mathbf{ZFC}$ 相关理论的模型中不是绝对的
        1. 幂集
        2. $x$ 是可数集
        3. $x$ 是基数
        4. $x$ 是极限基数
        5. $x$ 是正则基数
        6. $x$ 是不可达基数

        因此 $\text{Skolem}$ 佯谬并非悖论：$\mathbf{ZFC}$ 的模型有一个初等等价的可数子模型，但 $\mathbf{ZFC}$ 中存在不可数集合

### 4.1.3 相对一致性
1. 设 $T$ 是集合论理论，$\Sigma$ 是语句集，$\mathbf{M}$ 为类且在 $T$ 中可证 $\mathbf{M} \neq \varnothing$．则若在 $T$ 中可证 $\mathbf{M} \vDash \Sigma$，即对任意 $\sigma \in \Sigma$，都在 $T$ 中可证 $\sigma^{\mathrm{M}}$
    1. 对集合论语言的任何语句 $\varphi$，如果 $\Sigma \vdash \varphi$，则 $T \vdash \varphi^{\mathbf{M}}$
    2. 如果 $T$ 一致，则以 $\Sigma$ 为公理的理论也一致
2. $\mathbf{ZFC}$ 相关的相对一致性
    1. 在 $\mathbf{ZF}^{-}$ 中可证 $\mathbf{WF} \vDash \mathbf{ZF}$，因此 $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}(\mathbf{ZF})$
    2. 在 $\mathbf{ZF}^{-}$ 中可证 $V_{\omega} \vDash \mathbf{ZFC}-\operatorname{Inf}+\neg \operatorname{Inf}$，因此 $\operatorname{Con}(\mathbf{ZF}^{-}) \to \operatorname{Con}(\mathbf{ZFC}-\operatorname{Inf}+\neg \operatorname{Inf})$
    3. 记 $\mathrm{IC}$ 为「存在不可达基数」，则 $\mathbf{ZFC} \nvdash \mathrm{IC}$
        1. $\operatorname{Con}(\mathbf{ZFC}) \not \to \operatorname{Con}(\mathbf{ZFC}+\mathrm{IC})$
        2. $\operatorname{Con}(\mathbf{ZFC}) \to \operatorname{Con}(\mathbf{ZFC}+\neg \mathrm{IC})$
    4. $\operatorname{Con}(\mathbf{ZFC}) \rightarrow \operatorname{Con}(\mathbf{ZFC}-\mathrm{Pow}+\forall x \ (x$ 是可数的$))$

## 4.2 Gödel 可构成宇宙
1. $\text{G}\ddot{\mathrm o}\text{del}$ 运算：设 $X, Y$ 是集合
    1. $G_{1}(X, Y) =\{X, Y\}$
    2. $G_{2}(X, Y) =X \times Y$
    3. $G_{3}(X, Y) =\in \upharpoonright X \times Y=\{(u, v) \mid u \in X \wedge v \in Y \wedge u \in v\}$
    4. $G_{4}(X, Y) =X-Y$
    5. $G_{5}(X, Y) =X \cap Y$
    6. $G_{6}(X, Y) =\bigcap X$
    7. $G_{7}(X, Y) =\operatorname{dom}(X)$
    8. $G_{8}(X, Y) =\{(x, y) \mid(y, x) \in X\}$
    9. $G_{9}(X, Y) =\{(x, y, z) \mid(x, z, y) \in X\}$
    10. $G_{10}(X, Y) =\{(x, y, z) \mid(y, z, x) \in X\}$

    称类 $C$ 对 $\text{G}\ddot{\mathrm o}\text{del}$ 运算封闭的当且仅当对任意 $X, Y$，$X, Y \in C$ 蕴含 $G_{i}(X, Y) \in C$，其中 $1 \leqslant i \leqslant 10$

    1. 对任意集合 $M$，$\mathrm{cl}_{G}(M)$ 表示 $M$ 的 $\text{G}\ddot{\mathrm o}\text{del}$ 闭包，即包含 $M$ 并且对 $\text{G}\ddot{\mathrm o}\text{del}$ 运算封闭的最小集合
    2. 对任意 $\Delta_{0}$ 公式 $\psi\left(x_{1}, \cdots, x_{n}\right)$，存在函数 $G$ 是 $\text{G}\ddot{\mathrm o}\text{del}$ 运算的复合，并且对任意 $X_{1}, \cdots, X_{n}$ 都有

        $$
        G\left(X_{1}, \cdots, X_{n}\right)= \left\{\left(x_{1}, \cdots, x_{n}\right) \mid x_{1} \in X_{1} \wedge \cdots \wedge x_{n} \in X_{n} \wedge \psi\left(x_{1}, \cdots, x_{n}\right)\right\}
        $$

        1. 若 $M$ 是传递的且 $\mathrm{cl}_{G}(M)=M$，则对任意 $\Delta_{0}$ 公式 $\psi\left(x, y_{1}, \cdots, y_{m}\right)$，任意集合 $X \in M$，以及任意 $y_{1}, \cdots, y_{m} \in M$，若 $Y=\left\{x \in X \mid \psi\left(x, y_{1}, \cdots, y_{m}\right)\right\}$，则 $Y \in M$，即 $\Delta_{0}-$分离公理模式在 $M$ 中为真
        2. 若 $G\left(X_{1}, \cdots, X_{n}\right)$ 是 $\text{G}\ddot{\mathrm o}\text{del}$ 运算的组合，则 $Z= G\left(X_{1}, \cdots, X_{n}\right)$ 等价于一个 $\Delta_{0}$ 公式

    3. 对任意传递集 $M$，$\operatorname{Def}(M)=\operatorname{cl}_{G}(M \cup\{M\}) \cap \mathcal{P}(M)$
        1. 若 $\mathbf{M}$ 是 $\mathbf{ZF}$ 的传递模型，则对任意传递集 $M \in \mathbf{M}$，$\operatorname{Def}(M)$ 相对于 $\mathbf{M}$ 是绝对的
        2. 对任意传递集 $M$
            1. $M \subseteq \operatorname{Def}(M) \subseteq \mathcal{P}(M)$
            2. 对任意 $X \subseteq M$，如果 $X$ 有穷，则 $X \in \operatorname{Def}(M)$
            3. 假设选择公理成立且 $|M| \geqslant \omega$，则 $|\operatorname{Def}(M)|=|M|$

2. 定义可构成宇宙 $\mathbf{L}={\displaystyle \bigcup_{\alpha \in \mathbf{O} \mathbf{n}} L_{\alpha}}$，其中 $L_{\alpha}$
    1. $L_{0}=\varnothing$
    2. $L_{\alpha+1}=\operatorname{Def}\left(L_{\alpha}\right)$
    3. 对任意极限序数 $\alpha$，$L_{\alpha}={\displaystyle \bigcup_{\beta<\alpha} L_{\beta}}$

    称 $\mathbf{L}$ 内的元素为可构成集

    1. 对任意序数 $\alpha \in \mathbf{On}$
        1. $L_{\alpha}$ 是传递的
        2. 若 $\alpha<\beta$，则 $L_{\alpha} \subseteq L_{\beta}$
        3. $L_{\alpha} \subseteq V_{\alpha}$；特别地，若 $\alpha \in \omega + 1$，则 $L_{\alpha}=V_{\alpha}$
        4. $L_{\alpha} \in L_{\alpha+1}$ 且 $L_{\alpha}$ 的任意有穷子集属于 $L_{\alpha+1}$
        5. $\alpha \in \mathbf{L}$ 且 $L_{\alpha} \cap \mathbf{On}=\alpha$
        6. 若选择公理成立，则对任意 $\alpha \geqslant \omega$，$\left|L_{\alpha}\right|=|\alpha|$
    2. 若 $x \in \mathbf{L}$，则 $x$ 在 $\mathbf{L}$ 中的秩 $\operatorname{rank}_{\mathbf{L}}(x)$ 定义为 $\operatorname{rank}_{\mathbf{L}}(x)=\min \left\{\beta \mid x \in \mathbf{L}_{\beta+1}\right\}$，设 $\alpha \in \mathbf{On}$
        1. $L_{\alpha}=\left\{x \in \mathbf{L} \mid \operatorname{rank}_{\mathbf{L}}(x)<\alpha\right\}$
        2. $\operatorname{rank}_{\mathbf{L}}(\alpha)=\alpha$
    3. $\mathbf{L}$ 是 $\mathbf{ZF}$ 的最小内模型

3. 可构成公理：$\mathbf{V}=\mathbf{L}$，即所有集合都是可构成集
    1. 函数 $\alpha \mapsto L_{\alpha}$ 对 $\mathbf{ZF}$ 的任何传递模型都是绝对的
        1. 设 $\mathbf{M}$ 是传递的真类且是 $\mathbf{ZF}-\mathrm{Pow}$ 的模型，则 $\mathbf{L}=\mathbf{L}^{\mathbf{M}} \subseteq \mathbf{M}$
        2. $\mathbf{L} \vDash \mathbf{ZF} + \mathbf{V}=\mathbf{L}$，因此 $\operatorname{Con}(\mathbf{ZF}) \rightarrow \operatorname{Con}(\mathbf{ZF}+\mathbf{V}=\mathbf{L})$
    2. $\mathbf{L}$ 上存在良序，因此 $\mathbf{V}=\mathbf{L}$ 蕴含 $\mathbf{AC}$
        1. 存在 $\mathbf{ZF} - \mathrm{Pow}$ 公理的有穷子集 $\{\psi_{1}, \cdots, \psi_{n}\}$ 满足 $\forall M \ (M \textsf{ 传递 } \wedge \psi_{1}^{M} \wedge \cdots \wedge \psi_{n}^{M} \rightarrow (L_{\alpha^{M}}=\mathbf{L}^{M} \subseteq M))$
        2. 存在 $\mathbf{ZF}-\mathrm{Pow}+\mathbf{V}=\mathbf{L}$ 公理的有穷子集 $\left\{\psi_{1}, \cdots, \psi_{n+1}\right\}$ 满足
            1. 若 $\mathbf{M}$ 是传递真类且 $\psi_{1}^{\mathbf{M}} \wedge \cdots \wedge \psi_{n+1}^{\mathbf{M}}$，则 $\mathbf{M}=\mathbf{L}$
            2. $\forall M \ \left(M\right.$ 传递 $\wedge \psi_{1}^{M} \wedge \cdots \wedge \psi_{n+1}^{M} \rightarrow\left(L_{\alpha^{M}}=M\right)$
    3. 在 $\mathbf{ZF}$ 中可证 $(\mathbf{AC}+\mathbf{GCH})^{\mathbf{L}}$，因此 $\operatorname{Con}(\mathbf{ZF}) \rightarrow \operatorname{Con}(\mathbf{ZFC}+\mathbf{GCH})$
        1. 若 $\mathbf{V}=\mathbf{L}$，则对任意无穷序数 $\alpha$，$\mathcal{P}\left(L_{\alpha}\right) \subseteq L_{|\alpha|+}$
        2. 设 $\mathbf{V}=\mathbf{L}$，则对任意不可数正则基数 $\kappa$，$L_{\kappa}=H_{\kappa}$
        3. 设 $S_{0}=\left\{\psi_{1}, \cdots, \psi_{n}\right\}$ 是 $\mathbf{ZF}+\mathbf{V}=\mathbf{L}$ 的有穷子集，则 $\mathbf{ZF} \vdash \exists M \ (|M|=\omega \wedge M$ 是传递的 $\wedge(\psi_{1}^{M} \wedge \cdots \wedge \psi_{n}^{M}))$
        4. 若 $\kappa$ 是不可数正则基数，则 $L_{\kappa} \vDash \mathbf{ZF}-\mathrm{Pow}+\mathbf{V}=\mathbf{L}$；若 $\kappa$ 还是不可达基数，则幂集公理也在 $L_{\kappa}$ 中成立
    4. $\mathbf{V}=\mathbf{L}$ 蕴含钻石原理与 $\text{Jensen}$ 方块原理
        1. 钻石原理：存在集合序列 $\left\langle S_{\alpha}: \alpha<\omega_{1}\right\rangle$，其中 $S_{\alpha} \subseteq \alpha$，使得对每个 $X \subseteq \omega_{1}$，$\left\{\alpha<\omega_{1} \mid X \cap \alpha=S_{\alpha}\right\}$ 是 $\omega_{1}$ 的稳定子集
        2. $\text{Jensen}$ 方块原理：所有不可数集均满足 $\square_{\kappa}$ 性质，即存在一个序列 $\left\langle C_{\alpha}: \alpha \in \operatorname{lim}\left(\kappa^{+}\right)\right\rangle$ 使得
            1. $C_{\alpha}$ 是 $\alpha$ 的封闭无界子集
            2. 若 $\beta \in \operatorname{lim}\left(C_{\alpha}\right)$，则 $C_{\beta}=C_{\alpha} \cap \beta$
            3. 若 $\operatorname{cf}(\alpha)<\kappa$ 则 $\left|C_{\alpha}\right|<\kappa$

## 4.3 Grothendieck 宇宙
1. $\text{Grothendieck}$ 宇宙是满足以下性质的集合 $U$
    1. $U$ 是传递集
    2. 若 $x, y \in U$，则 $\{x, y\}, \mathcal P(x), \mathcal P(y) \in U$
    3. 若 $\{x_{\alpha}\}_{\alpha \in I}$ 是 $U$ 的一族元素且 $I \in U$，则 ${\displaystyle \bigcup_{\alpha \in I} x_{\alpha} \in U}$

    易知空集 $\varnothing$ 与所有遗传有穷集的集合 $V_{\omega}$ 是 $\text{Grothendieck}$ 宇宙

2. 设 $\kappa$ 是强不可达基数，$S$ 是集合，若对任意 $s_n \in \cdots \in s_0 \in S$ 有 $|s_n| < \kappa$，则称 $S$ 是强类型 $\kappa$ 的，令 $u(\kappa)$ 是所有强类型 $\kappa$ 的集合
    1. 对于任意 $\text{Grothendieck}$ 宇宙 $U$，$|U|$ 为 $0$，$\aleph_0$ 或某个强不可达基数
    2. 若基数 $\kappa$ 为 $0$，$\aleph_0$ 或某个强不可达基数，则存在 $\text{Grothendieck}$ 宇宙 $U = u(\kappa)$，此时 $u(|U|) = U, |u(\kappa)| = \kappa$
    3. $\text{Grothendieck}$ 宇宙等价于强不可达基数：以下两条公理互相等价
        1. 对任意集合 $x$，存在 $\text{Grothendieck}$ 宇宙 $U$ 使得 $x \in U$
        2. 对任意基数 $\kappa$，存在强不可达基数 $\lambda$ 有 $\lambda > \kappa$
