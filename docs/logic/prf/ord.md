# 5 序数分析

## 5.1 序数记号与函数
### 5.1.1 递归序数
1. $\text{Veblen}$ 函数：设 $\alpha, \beta$ 为序数，则定义映射 $\varphi_\alpha: \mathbf{On} \to \mathbf{On}$ 如下
    1. $\varphi_0(\beta) = \omega^{\beta}$
    2. 对于后继序数 $\alpha + 1$，定义 $\varphi_{\alpha+1}(\beta)$ 为 $\xi \mapsto \varphi_{\alpha}(\xi)$ 的第 $\beta$ 个不动点
    3. 对于极限序数 $\alpha$，定义 $\varphi_{\alpha}(\beta)$ 为所有序数 $\gamma < \alpha$ 对应的 $\text{Veblen}$ 函数 $\xi \mapsto \varphi_{\gamma}(\xi)$ 的第 $\beta$ 个公共不动点

    所有 $\text{Veblen}$ 函数的不动点均从 $0$ 开始计数

    1. 扩展 $\text{Veblen}$ 函数：将 $\varphi_{\alpha}(\gamma)$ 视作二元函数 $\varphi(\alpha, \gamma)$，令 $z$ 为多于或等于 $0$ 个 $0$ 的简记，$s$ 为多于或等于 $0$ 个序数变量 $\alpha_1, \alpha_2, \cdots, \alpha_n \ (\alpha_1 > 0)$ 的简记，则定义
        1. $\varphi(\gamma)=\omega^\gamma$
        2. $\varphi(z,s,\gamma)=\varphi(s,\gamma)$
        3. 若 $\alpha_{n+1} > 0$，则 $\varphi(s, \alpha_{n+1}, z, \gamma)$ 表示「对所有序数 $\beta < \alpha_{n+1}$ 对应的函数 $\xi \mapsto \varphi(s, \beta, \xi, z)$」的第 $\gamma$ 个公共不动点
    2. 超限 $\text{Veblen}$ 函数：利用数阵 $\varphi \begin{pmatrix} \alpha_1 & \alpha_2 & \cdots & \alpha_n \\ \beta_1 & \beta_2 & \cdots & \beta_n \\ \end{pmatrix}$ 表示 $\text{Veblen}$ 函数，其中 $\beta_i$ 表示 $\alpha_i$ 在扩展 $\text{Veblen}$ 函数的位置

2. $\text{Kleene } \mathcal{O}-$记号：枚举所有部分递归函数 $\Phi_1, \Phi_2, \cdots$，设 $K$ 表示所有记号，$<_{\mathcal O}$ 表示 $K$ 的良基严格偏序．定义 $\mathcal O: K \to \mathbf{On}$
    1. $0 \in K$ 且 $\mathcal O(0) = 0$
    2. 若 $n \in K$ 且 $\mathcal O(n) = \alpha$，则 $n <_{\mathcal O} 2^{n} \in K$ 且 $\mathcal O(2^{n}) = \alpha + 1$
    3. 若对任意 $n \in \mathbf N$ 有 $\Phi_i(n) \in K$ 且 $\Phi_i(n) <_{\mathcal O} \Phi_i(n + 1)$，则 $3 \cdot 5^i \in K, {\displaystyle \mathcal{O}(3 \cdot 5^i) = \sup_{k \in \omega} \mathcal{O}(\Phi_i(k))}$ 且对所有 $k$ 有 $\Phi_i(k) <_\mathcal{O} 3 \cdot 5^i$

    易知可由 $\mathcal{O}$ 表示的序数集合等价于全体递归序数集合 $\Omega$

### 5.1.2 非递归序数
1. 非递归序数：记 $\{\Omega_{\alpha} \mid \alpha \in \mathbf{On}\}$ 是所有非递归序数的类
    1. $\Omega_0 = 0$
    2. $\Omega_{\alpha + 1} = {\displaystyle \sup_{X} \{X \mid X = \{x \mid x = \varphi(x)^{L_{\Omega_{\alpha}}}，\varphi \textsf{ 为 } \Sigma_1\textsf{ 公式}\}\}}$
    3. 若 $\alpha$ 为极限序数，则 $\omega_{\alpha} = \sup \{\omega_{\beta} \mid \beta < \alpha\}$

    通常将 $\Omega_1$ 记作 $\Omega$

2. 反射序数：设公式层级 $\Phi \in \{\Pi_n, \Sigma_n\}$
    1. 设 $L_{\alpha} \in \mathbf{L}$，若 $L_{\alpha} \vDash \varphi$ 蕴含 $\beta \in (X \cap \alpha)$ 使得 $L_{\beta} \vDash \varphi$，则称 $L_{\alpha}$ 在 $X$ 上反射了公式 $\varphi$
        1. 若 $L_{\alpha}$ 在 $X$ 上反射了所有的 $\Phi$ 公式，则称 $\alpha$ 是 $X$ 上的 $\Phi$ 反射序数
        2. 若 $L_{\alpha}$ 在全体序数上反射了所有的 $\Phi$ 公式，则称 $\alpha$ 是 $\Phi$ 反射序数
    2. 反射序数的性质
        1. $\alpha$ 是 $X$ 上的 $\Pi_{n}$ 反射序数等价于 $\alpha$ 是 $X$ 上的 $\Sigma_{n+1}$ 反射序数
        2. $\alpha$ 是 $X$ 上的 $\Pi_{0}$ 反射序数等价于 $\alpha$ 是 $X$ 上的 $\Pi_{1}$ 反射序数，等价于 $\alpha$ 是 $X$ 上的上确界
        3. $\alpha$ 是 $X$ 上的 $\Pi_{2}$ 反射序数等价于 $\alpha$ 是 $X$ 上的容许序数
    3. 通常用反射序数的模式表示满足相应条件的最小反射序数，其集合 $P$ 递归定义如下
        1. 符号 $\varnothing \in P$
        2. 若 $s, t \in P$，则 $s \wedge t, \sigma_1(s), \pi_1(s) \in P$

        将 $\sigma_1(\varnothing), \pi_1(\varnothing)$ 简记作 $\sigma_1$ 与 $\pi_1$

        1. 序数 $\alpha$ 是 $\sigma_1(\varnothing)$ 反射或 $\pi_1(\varnothing)$ 反射的当且仅当 $\alpha$ 反射是 $\Sigma_1$ 或 $\Pi_1$ 反射的
        2. 若 $s \in P$，则序数 $\alpha$ 是 $\sigma(s)$ 反射的当且仅当 $\alpha$ 在 $s$ 反射序数上是 $\Sigma_1$ 反射的
        3. 若 $s \in P$，则序数 $\alpha$ 是 $\pi(s)$ 反射的当且仅当 $\alpha$ 在 $s$ 反射序数上是 $\Pi_1$ 反射的
        4. 若 $s, t \in P$，则序数 $\alpha$ 是 $s \wedge t$ 反射的当且仅当 $\alpha$ 既是 $s$ 反射的，也是 $t$ 反射的

    !!! note "$\text{Gandy}$ 序数"
        1. 定义 $\delta_{\alpha} = \sup \{\delta \mid \delta$ 是 $\alpha$ 子集上 $\alpha-$递归良序的序型$\}$，即大于 $\alpha$ 的最小非递归序数
        2. 定义 $\alpha^{+}$ 为大于 $\alpha$ 的最小容许序数

        则必有 $\delta_{\alpha} \leqslant \alpha^{+}$

        1. 若 $\delta_{\alpha} = \alpha^{+}$，则称 $\alpha$ 是 $\text{Gandy}$ 的
        2. $\sigma_1$ 是最小的非 $\text{Gandy}$ 序数

3. 稳定序数：若序数 $\alpha$ 是关于 $f(\alpha)$ 是 $\Sigma_{1}$ 稳定的，则称 $\alpha$ 是 $f-$稳定的．通常用括号函数或 $\lambda$ 表达式表示 $f$
    1. 若序数 $\alpha \leqslant \beta$ 且 $L_{\alpha} \prec_{\Sigma_{n}} L_{\beta}$，则称 $\alpha$ 关于 $\beta$ 是 $\Sigma_{n}$ 稳定的
        1. 若 $L_{\alpha} \prec_{\Sigma_{n}} L_{\beta}$ 且 $L_{\beta} \prec_{\Sigma_{n}} L_{\gamma}$，则 $L_{\alpha} \prec_{\Sigma_{n}} L_{\gamma}$
        2. 若 $L_{\alpha} \prec_{\Sigma_{n}} L_{\gamma}$ 且 $L_{\beta} \prec_{\Sigma_{n}} L_{\gamma}$，则 $L_{\alpha} \prec_{\Sigma_{n}} L_{\beta}$
        3. 若 $L_{\alpha} \prec_{\Sigma_{1}} L_{\gamma}$ 且 $\beta<\gamma$，则 $L_{\alpha} \prec_{\Sigma_{1}} L_{\beta}$
        4. 若对任意 $\alpha \in A$ 都有 $L_{\alpha} \prec_{\Sigma_{1}} L_{\beta}$，则 $L_{\sup A} \prec_{\Sigma_{1}} L_{\beta}$
        5. 若对任意 $\beta \in B$ 都有 $L_{\alpha} \prec_{\Sigma_{1}} L_{\beta}$，则 $L_{\alpha} \prec_{\Sigma_{1}} L_{\mathrm{sup} B}$

    2. 若 $\alpha$ 是 $(\cdot + 1)-$稳定的，则 $\alpha$ 是 $\Pi_{n}$ 反射序数对任意 $n \in \mathbf N$ 都成立

### 5.1.3 序数折叠函数
1. $\psi$ 型定义
    1. $\text{Bachmann} \ \psi-$函数：令 $\Omega$ 为不可数序数（例如 $\omega_1$），定义 $C^{\Omega}(\alpha, \beta)$ 为 $\beta \cup\{0, \Omega\}$ 在 $+,\left(\xi \mapsto \omega^{\xi}\right),\left(\xi \mapsto \psi_{\Omega}(\xi)\right)_{\xi<\alpha}$ 下的闭包，则有 $\psi_{\Omega}(\alpha)=\min \left\{\rho<\Omega: C^{\Omega}(\alpha, \rho) \cap \Omega=\rho\right\}$
    2. $\text{Buchholz} \ \psi-$函数
        1. $C_{\nu}^{0}(\alpha)=\left\{\beta \mid \beta<\Omega_{\nu}\right\}$
        2. $C_{\nu}^{n+1}(\alpha)=\left\{\beta+\gamma, \psi_{\mu}(\eta) \mid \mu, \beta, \gamma, \eta \in C_{\nu}^{n}(\alpha) \wedge \eta<\alpha\right\}$
        3. $C_{\nu}(\alpha)={\displaystyle \bigcup_{n<\omega} C_{\nu}^{n}(\alpha)}$
        4. $\psi_{\nu}(\alpha)=\min \left\{\gamma \mid \gamma \notin C_{\nu}(\alpha)\right\}$

        其中 $\Omega_{\nu} = \left\{\begin{aligned} & 1, & \nu=0 \\ & \aleph_{\nu}, & \nu>0 \end{aligned}\right.$

    3. $\text{Madore} \ \psi-$函数
        1. $C_{\nu}^{0}(\alpha)=\left\{\xi \mid \xi<\Omega_{\nu}\right\} \cup\left\{\Omega_{\mu} \mid \mu \in \mathbf{Ord}\right\}$
        2. $C_{\nu}^{n+1}(\alpha)=\left\{\gamma+\delta, \gamma \cdot \delta, \gamma^{\delta}, \psi_{\mu}(\eta) \mid \gamma, \delta, \mu, \eta \in C_{\nu}^{n}(\alpha), \mu<\nu, \eta<\alpha\right\}$
        3. $C_{\nu}(\alpha)={\displaystyle \bigcup_{n<\omega} C_{\nu}^{n}(\alpha)}$
        4. $\psi_{\nu}(\alpha)=\min \left\{\beta<\Omega_{\nu+1} \mid \beta \notin C_{\nu}(\alpha)\right\}$

        通常记 $\psi_0$ 为 $\psi$

    4. $\text{J}\ddot{\mathrm{a}}\text{ger} \ \psi-$函数：设 $M$ 是最小的 $\text{Mahlo}$ 基数，$R$ 为全体小于 $M$ 的不可数正则序数集合，定义

        $$
        I_{\alpha} = \operatorname{enum}\left(\operatorname{cl} \left(\left\{\beta \in R \mid \forall \gamma<\alpha\left(I_{\gamma}(\beta)=\beta\right)\right\}\right)\right)
        $$

        其中枚举函数 $\operatorname{enum}(X): \operatorname{type}(X) \to X$ 是使得 $X = \operatorname{ran}(\operatorname{enum}(X))$ 的唯一严格递增函数

        1. $\left\{\kappa^{-}\right\} \cup \kappa^{-} \subseteq C_{\kappa}^{n}(\alpha)$
        2. $S(\gamma) \subseteq C_{\kappa}^{n}(\alpha) \to \gamma \in C_{\kappa}^{n+1}(\alpha)$
        3. $\beta, \gamma \in C_{\kappa}^{n}(\alpha) \to I_{\beta}(\gamma) \in C_{\kappa}^{n+1}(\alpha)$
        4. $\gamma<\pi<\kappa \wedge \pi \in C_{\kappa}^{n}(\alpha) \to \gamma \in C_{\kappa}^{n+1}(\alpha)$
        5. $\gamma<\alpha \wedge \gamma, \pi \in C_{\kappa}^{n}(\alpha) \wedge \gamma \in C_{\pi}(\gamma) \to \psi_{\pi}(\gamma) \in C_{\kappa}^{n+1}(\alpha)$
        6. $C_{\kappa}(\alpha)=\bigcup\left\{C_{\kappa}^{n}(\alpha) \mid n<\omega\right\}$
        7. $\psi_{\kappa}(\alpha)=\min \left\{\xi \mid \xi \notin C_{\kappa}(\alpha)\right\}$

    5. $\text{J}\ddot{\mathrm{a}}\text{ger}-\text{Buchholz} \ \psi-$函数：假设存在弱不可达基数，设 $I$ 为最小的弱不可达基数，$\mathrm{Reg}_{I}$ 表示不大于 $I$ 的全体正则基数集合
        1. $\mathrm{Cl}^{0}(\alpha, \beta)=\beta \cup\{0, I\}$
        2. $\mathrm{Cl}^{n+1}(\alpha, \beta)$ 是以下四个集合的并集
            1. $\left\{\xi+\zeta \mid \xi, \zeta \in \mathrm{Cl}^{n}(\alpha, \beta)\right\}$
            2. $\left\{\varphi_{\xi}(\zeta) \mid \xi, \zeta \in \mathrm{Cl}^{n}(\alpha, \beta)\right\}$
            3. $\left\{\Omega_{\xi} \mid \xi \in \mathrm{Cl}^{n}(\alpha, \beta)\right\}$
            4. $\left\{\psi_{\pi}(\xi) \mid \xi \in \mathrm{Cl}^{n}(\alpha, \beta) \cap \alpha \wedge \pi \in \mathrm{Cl}^{n}(\alpha, \beta) \cap \operatorname{Reg}_{I}\right\}$
        3. $\mathrm{Cl}(\alpha, \beta)={\displaystyle \bigcup_{n<\omega} \mathrm{Cl}^{n}(\alpha, \beta)}$
        4. $\psi_{\kappa}(\alpha):=\min \{\xi \in \mathbf{On} \mid \kappa \in \mathrm{Cl}(\alpha, \xi) \wedge \mathrm{Cl}(\alpha, \xi) \cap \kappa \subseteq \xi\}$

        不加说明时，默认用此函数作为默认 $\psi$ 型函数

2. $\theta$ 型定义
    1. $\text{Bird} \ \theta-$函数： $\theta\left(\Omega^{n-1} a_{n-1}+\cdots+\Omega^{2} a_{2}+\Omega a_{1}+a_{0}, b\right)=\varphi\left(a_{n-1}, \ldots, a_{2}, a_{1}, a_{0}, b\right)$
    2. $\text{Feferman} \ \theta-$函数
        1. $C_{0}(\alpha, \beta)=\beta \cup\left\{0, \omega_{1}, \omega_{2}, \ldots, \omega_{\omega}\right\}$
        2. $C_{n+1}(\alpha, \beta)=\left\{\gamma+\delta, \theta_{\xi}(\eta) \mid \gamma, \delta, \xi, \eta \in C_{n}(\alpha, \beta) \wedge \xi<\alpha\right\}$
        3. $C(\alpha, \beta)={\displaystyle \bigcup_{n<\omega} C_{n}(\alpha, \beta)}$
        4. $\theta_{\alpha}(\beta)=\min \left\{\gamma \mid \gamma \notin C(\alpha, \gamma) \wedge \forall(\delta<\beta)\left(\theta_{\alpha}(\delta)<\gamma\right)\right\}$

        对任意 $\alpha, \beta<\Gamma_{0}$，有 $\theta_{\alpha}(\beta)=\varphi_{\alpha}(\beta)$；不加说明时，默认用此函数作为默认 $\theta$ 型函数

3. $\vartheta$ 型定义
    1. $\text{Wilken} \ \vartheta-$函数：令 $\Omega_{0}$ 为 $1$ 或形如 $\varepsilon_{\alpha}$ 形式的序数，$\Omega_{1}>\Omega_{0}$ 为不可数正则基数；对 $0<i<\omega$，令 $\Omega_{i+1}$ 为 $\Omega_{i}$ 的后继基数．对 $0<n<\omega, 0 \leqslant m<n$ 与 $\beta<\Omega_{m+1}$，定义
        1. $\Omega_{m} \cup \beta \subseteq C_{m}^{n}(\alpha, \beta)$
        2. $\xi, \eta \in C_{m}^{n}(\alpha, \beta) \rightarrow \xi+\eta \in C_{m}^{n}(\alpha, \beta)$
        3. $\xi \in C_{m}^{n}(\alpha, \beta) \cap \Omega_{k+2} \rightarrow \vartheta_{k}^{n}(\xi) \in C_{m}^{n}(\alpha, \beta), m<k<n$
        4. $\xi \in C_{m}^{n}(\alpha, \beta) \cap \alpha \rightarrow \vartheta_{m}^{n}(\xi) \in C_{m}^{n}(\alpha, \beta)$
        5. $\vartheta_{m}^{n}(\alpha)=\min \left(\left\{\xi<\Omega_{m+1} \mid C_{m}^{n}(\alpha, \xi) \cap \Omega_{m+1} \subseteq \xi \wedge \alpha \in C_{m}^{n}(\alpha, \xi)\right\} \cup\left\{\Omega_{m+1}\right\}\right)$
    2. $\text{Wilken}-\text{Weiermann} \ \vartheta-$函数：令 $\Omega_{0}$ 为 $1$ 或形如 $\varepsilon_{\alpha}$ 的序数，设 $\Omega_{1}>\Omega_{0}$ 为不可数正则基数；对于 $0<i<\omega$，设 $\Omega_{i+1}$ 为 $\Omega_{i}$ 的后继基数；设 $\Omega_{\omega}=\sup _{i<\omega} \Omega_{i}$．对于所有 $\beta \leqslant \Omega_{i+1}$，定义
        1. $\Omega_{i} \cup \beta \subseteq \overline{C}_{i}(\alpha, \beta)$
        2. $\xi, \eta \in \overline{C}_{i}(\alpha, \beta) \to \xi+\eta \in \overline{C}_{i}(\alpha, \beta)$
        3. $j \leqslant i<\omega \wedge \xi \in \overline{C}_{j}\left(\xi, \Omega_{j+1}\right) \cap \overline{C}_{i}(\alpha, \beta) \cap \alpha \to \overline{\vartheta}_{j}(\xi) \in \overline{C}_{i}(\alpha, \beta)$
        4. $\overline{\vartheta}_{i}(\alpha) =\min (\{\xi<\Omega_{i+1} \mid \alpha \in \overline{C}_{i}(\alpha, \xi) \wedge \overline{C}_{i}(\alpha, \xi) \cap \Omega_{i+1} \subseteq \xi\} \cup\left\{\Omega_{i+1}\right\})$
    3. $\text{Weiermann} \ \vartheta-$函数
        1. $C_{0}(\alpha, \beta)=\beta \cup\{0, \Omega\}$
        2. $C_{n+1}(\alpha, \beta)=\left\{\gamma+\delta, \omega^{\gamma}, \vartheta(\eta) \mid \gamma, \delta, \eta \in C_{n}(\alpha, \beta) ; \eta<\alpha\right\}$
        3. $C(\alpha, \beta)={\displaystyle \bigcup_{n<\omega} C_{n}(\alpha, \beta)}$
        4. $\vartheta(\alpha)=\min \{\beta<\Omega \mid C(\alpha, \beta) \cap \Omega \subseteq \beta \wedge \alpha \in C(\alpha, \beta)\}$

        不加说明时，默认用此函数作为默认 $\vartheta$ 型函数

## 5.2 可数序数
### 5.2.1 递归序数
1. $\text{Cantor}$ 序数系列
    1. 小 $\text{Cantor}$ 序数：$\text{SCO} = \varepsilon_{0}$，其中 $\varepsilon_{\gamma} = \varphi_{1}(\gamma)$ 是满足 $\omega^\xi = \xi$ 的解
    2. $\text{Cantor}$ 序数：$\text{CO} = \zeta_{0}$，其中 $\zeta_{\gamma} = \varphi_2(\gamma)$ 是满足 $\varepsilon_{\xi} = \xi$ 的解
    3. 大 $\text{Cantor}$ 序数：$\text{LCO} = \eta_{0}$，其中 $\eta_{\gamma} = \varphi_3(\gamma)$ 是满足 $\zeta_{\xi} = \xi$ 的解
    4. 超 $\text{Cantor}$ 序数：$\text{HCO} = \varphi_{\omega}(0)$
2. $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数与 $\text{Ackermann}$ 序数
    1. $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数：$\text{FSO} = \Gamma_0$，其中 $\Gamma_{\gamma} = \varphi(1, 0, \gamma)$
        1. $\Gamma_0=\varphi(1,0,0)=\varphi \begin{pmatrix} 1 \\ 2 \\ \end{pmatrix}=\theta_{\Omega}(0)=\psi\left(\Omega^{\Omega}\right)$
        2. $\Gamma_0$ 是满足 $\varphi_{\alpha}(0) = \alpha$ 的最小序数，且有 $\Gamma_0 = \varphi_{\varphi_{\varphi_{._{._..}.}(0)}(0)}(0) = \varphi(\varphi(\varphi(\cdots),0),0),0)$
    2. $\text{Ackermann}$ 序数：$\text{AO} = \varphi(1, 0, 0, 0)$
        1. $\varphi(1,0,0,0)=\theta_{\Omega^3}(0)=\psi\left(\Omega^{\Omega^2}\right)=\vartheta\left(\Omega^3\right)$
        2. $\text{Ackermann}$ 序数是 $\xi \mapsto \varphi(\xi, 0, 0)$ 的最小不动点
3. $\text{Veblen}$ 序数系列
    1. 小 $\text{Veblen}$ 序数：$\text{SVO} = \sup \left\{\varphi(1, 0), \varphi(1, 0, 0), \varphi(1, 0, 0, 0), \cdots\right\}=\varphi \begin{pmatrix} 1 \\ \omega \\ \end{pmatrix}=\theta_{\Omega^\omega}(0)=\psi\left(\Omega^{\Omega^\omega}\right)=\vartheta\left(\Omega^\omega\right)$
    2. 大 $\text{Veblen}$ 序数：$\text{LVO}= \sup \left\{\varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix}, \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix} \\ \end{pmatrix}, \cdots\right\}= \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \vdots \\ \end{pmatrix} \\ \end{pmatrix} \\ \end{pmatrix}=\theta_{\Omega^{\Omega}}(0)=\psi\left(\Omega^{\Omega^{\Omega}}\right)=\vartheta\left(\Omega^{\Omega}\right)$，是映射 $\xi \mapsto \varphi \begin{pmatrix} 1 \\ \xi \\ \end{pmatrix}$ 的最小不动点
4. $\text{OCF}$ 定义的序数：设递归不可达序数 $I = \pi_2 \wedge \pi_1(\pi_2)$
    1. $\text{Bachmann}-\text{Howard}$ 序数：$\text{BHO} = \psi\left(\psi_{1}(0)\right)$
    2. $\text{Buchholz}$ 序数：$\text{BO} = \psi\left(\Omega_{\omega}\right)$
    3. $\text{Takeuti}-\text{Feferman}-\text{Buchholz}$ 序数：$\text{TFBO} = \psi\left(\varepsilon_{\Omega_{\omega}}+1\right)$
    4. 扩展 $\text{Buchholz}$ 序数：$\text{EBO} = \psi\left(\psi_{I}(0)\right)$
    5. $\text{J}\ddot{\mathrm{a}}\text{ger}$ 序数：$\text{JO} = \psi\left(\psi_{\Omega_{I+1}}(0)\right)$

### 5.2.2 大可数序数
1. $\text{Church}-\text{Kleene}$ 序数：$\omega_{1}^{\mathrm{CK}} = \Omega_1$，即最小的容许序数
2. 反射序数
    1. 递归不可达序数：$\pi_2 \wedge \pi_1(\pi_2)$
    2. 递归 $\text{Mahlo}$ 序数：$\pi_2(\pi_2)$
    3. 不可转换序数：$\pi_2(\pi_2(\pi_2))$
    4. 递归弱紧致序数：$\pi_3$
3. 稳定序数：设 $\alpha$ 为任意序数
    1. 不可达稳定序数：定义 $f(\alpha)$ 是大于 $\alpha$ 的最小递归不可达序数，则定义不可达稳定序数为 $f-$稳定序数
    2. $\text{Mahlo}$ 稳定序数：定义 $f(\alpha)$ 是大于 $\alpha$ 的最小递归 $\text{Mahlo}$ 序数，则定义 $\text{Mahlo}$ 稳定序数为 $f-$稳定序数
    3. 不可投影序数：使得 $\alpha = \sup \{\beta < \alpha \mid L_{\beta} \prec_{\Sigma_1} L_{\alpha}\}$ 的序数，即使得 $\alpha$ 是 $\alpha-$稳定序数的序数 $\alpha$

## 5.3 证明论序数
设 $I$ 为最小的弱不可达基数，设 $M$ 为最小的 $\text{Mahlo}$ 基数

### 5.3.1 一阶算术
1. $\text{Robinson}$ 算术：$\operatorname{PTO}(\mathbf{Q}) = \omega$
    1. $\operatorname{PTO}(\mathbf{I \Delta}_{0})=\omega^{2}, \operatorname{PTO}(\mathbf{I \Delta}_{0}^{+})=\operatorname{PTO}(\mathbf{I \Delta}_{0}+\exp )=\omega^{3}$
    2. $\operatorname{PTO}(\mathbf{I \Sigma}_{n+1})=\omega \uparrow \uparrow (n+2)$
2. $\text{Peano}$ 算术：$\operatorname{PTO}(\mathbf{PA}) = \varepsilon_0$
    1. $\operatorname{PTO}(\mathbf{ID}_{1}\#) = \varphi(\omega, 0)$
    2. $\operatorname{PTO}(\widehat{\mathbf{ID}}_{1}) = \varphi(\varepsilon_0, 0), \operatorname{PTO}(\widehat{\mathbf{ID}}_{<\omega}) = \Gamma_{0}, \operatorname{PTO}(\widehat{\mathbf{ID}}_{\omega}) = \Gamma_{\varepsilon_0}, \operatorname{PTO}(\widehat{\mathbf{ID}}_{<\varepsilon_0}) = \varphi(1, \varepsilon_0, 0), \operatorname{PTO}(\widehat{\mathbf{ID}}_{<\Gamma_0}) = \varphi(1, \Gamma_0, 0)$
    3. $\operatorname{PTO}(\mathbf{ID}_{1}) = \psi(\varepsilon_{\Omega+1}), \operatorname{PTO}(\mathbf{ID}_{2}) = \psi(\varepsilon_{\Omega_{2}+1}), \operatorname{PTO}(\mathbf{ID}_{<\omega}) = \psi(\Omega_{\omega}), \operatorname{PTO}(\mathbf{ID}_{\omega}) = \psi(\varepsilon_{\Omega_{\omega}+1}), \operatorname{PTO}(\mathbf{ID}_{\varepsilon_0}) = \psi(\Omega_{\varepsilon_{0}})$

### 5.3.2 二阶算术
1. $\mathbf{RCA}_0$ 子系统：$\operatorname{PTO}(\mathbf{RCA}_0) = \omega^{\omega}$
2. $\mathbf{WKL}_0$ 子系统：$\operatorname{PTO}(\mathbf{WKL}_0) = \omega^{\omega}$
3. $\mathbf{ACA}_0$ 子系统：$\operatorname{PTO}(\mathbf{ACA}_0) = \varepsilon_0$
4. $\mathbf{ATR}_0$ 子系统：$\operatorname{PTO}(\mathbf{ATR}_0) = \Gamma_0$
5. $\mathbf{\Phi}-\mathbf{CA}_0$ 子系统
    1. $\operatorname{PTO}(\mathbf{\Delta}_{1}^{1}-\mathbf{CA}_{0})=\varepsilon_{0}, \operatorname{PTO}(\mathbf{\Delta}_{1}^{1}-\mathbf{CA})=\psi(\Omega^{\varepsilon_{0}})$
    2. $\operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{CA}_{0})=\psi(\Omega_{\omega}), \operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{CA})=\psi(\Omega_{\omega} \cdot \varepsilon_{0})$
    3. $\operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{CA}_{0})=\psi(\Omega_{\omega}), \operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{CA})=\psi(\Omega_{\varepsilon_{0}})$
6. $\mathbf{\Phi}-\mathbf{TR}_0$ 子系统
    1. $\operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{TR}_{0})=\psi(\psi_{I}(0)), \operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{TR}_{0})=\psi(\psi_{I}(0) \cdot \varepsilon_{0})$
    2. $\operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{TR}_{0})=\psi(\psi_{I}(I^{\omega})), \operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{TR})=\psi(\psi_{I}(I^{\varepsilon_{0}}))$
7. $\mathbf{\Phi}-\mathbf{AC}_0$ 子系统
    1. $\operatorname{PTO}(\mathbf{\Sigma}_{1}^{1}-\mathbf{AC}_{0})=\varepsilon_{0}, \operatorname{PTO}(\mathbf{\Sigma}_{1}^{1}-\mathbf{AC})=\psi(\Omega^{\varepsilon_{0}})$
    2. $\operatorname{PTO}(\mathbf{\Sigma}_{2}^{1}-\mathbf{AC})=\psi(\Omega_{\varepsilon_{0}})$
8. $\Phi-\mathrm{BI}$ 公理相关子系统
    1. $\operatorname{PTO}(\mathbf{ACA}+\mathbf{BI})=\psi(\varepsilon_{\Omega+1})$
    2. $\operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{CA}_{0}+\mathbf{\Pi}_{2}^{1}-\mathbf{BI})=\psi(\Omega_{\omega}{ }^{\omega}), \operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{CA}+\mathbf{BI})=\psi(\varepsilon_{\Omega_{\omega}+1}), \operatorname{PTO}(\mathbf{\Pi}_{1}^{1}-\mathbf{TR}+\mathbf{BI})=\psi\left(\varepsilon_{\psi_{I}(0)+1}\right)$
    3. $\operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{CA}_{0}+\mathbf{\Sigma}_{2}^{1}-\mathbf{BI})=\psi(\psi_{I}(I^{\omega})), \operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{CA}+\mathbf{\Sigma}_{2}^{1}-\mathbf{BI})=\psi(\psi_{I}(I^{\varepsilon_{0}}))$
    4. $\operatorname{PTO}(\mathbf{\Delta}_{2}^{1}-\mathbf{CA}+\mathbf{BI})=\psi(\varepsilon_{I+1}), \operatorname{PTO}(\mathbf{\Sigma}_{2}^{1}-\mathbf{AC}+\mathbf{BI})=\psi(\varepsilon_{I+1})$

### 5.3.2 KP 集合论
1. $\operatorname{PTO}(\mathbf{KP}^{-})=\omega, \operatorname{PTO}(\mathbf{KP}^{-\infty})=\varepsilon_0, \operatorname{PTO}(\mathbf{KP})=\psi(\varepsilon_{\Omega+1})$
    1. $\mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Pi}_{1}-\mathbf{Fnd}+\mathbf{\Sigma}_{1}-\mathbf{Ind})=\omega^{\omega}, \mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Pi}_{1}-\mathbf{Fnd}+ \mathbf{Ind})=\varepsilon_{0}$
    2. $\mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Sigma}_{1}-\mathbf{Fnd})=\varphi(\varphi(\omega, 0), 0), \mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Sigma}_{1}-\mathbf{Fnd}+ \mathbf{Ind})=\varphi(\varphi(\varepsilon_{0}, 0), 0)$
    3. $\mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Pi}_{2}-\mathbf{Fnd})=\psi\left(\Omega^{\Omega^{\omega}}\right), \mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Pi}_{2}-\mathbf{Fnd}+ \mathbf{Ind})=\psi\left(\Omega^{\Omega_{0}^{\varepsilon}}\right), \mathrm{PTO}(\mathbf{KP}^{-}+\mathbf{\Pi}_{3}-\mathbf{Fnd})=\psi\left(\Omega^{\Omega^{\Omega^{\omega}}}\right)$
2. $\mathrm{PTO}(\mathbf{KPi})=\psi(\varepsilon_{I+1})$
    1. $\mathrm{PTO}(\mathbf{KPi}^{-})=\Gamma_{0}, \mathrm{PTO}(\mathbf{KPi}^{-}+\mathbf{\Sigma}_{1}-\mathbf{Ind})=\varphi(1, \omega, 0), \mathrm{PTO}(\mathbf{KPi}^{-}+\mathbf{Ind})=\varphi(1, \varepsilon_{0}, 0)$
    2. $\mathrm{PTO}(\mathbf{KPi}^{R})=\psi(\Omega_{\omega})$
3. $\mathrm{PTO}(\mathbf{KPl})=\psi(\varepsilon_{\Omega_{\omega}+1})$
    1. $\mathrm{PTO}(\mathbf{KPl}^{-})=\Gamma_{0}, \mathrm{PTO}(\mathbf{KPl}^{-}+\mathbf{Ind})=\varphi(1,0, \varepsilon_{0})$
    2. $\mathrm{PTO}(\mathbf{KPl}^{R})=\psi(\Omega_{\omega})$
4. $\mathrm{PTO}(\mathbf{KPM}^{-})=\varphi(\omega, 0,0), \mathrm{PTO}(\mathbf{KPM})=\psi(\varepsilon_{M+1})$
