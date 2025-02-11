# 5 序数分析

## 5.1 序数记号与函数
### 5.1.1 序数记号
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

    !!! note "递归序数与非递归序数"
        1. 设 $\Omega$ 为包含 $0$ 且对后继运算与长度为 $\omega$ 的序列取上确界运算封闭的最小集合，则称 $\Omega$ 为非递归序数
            1. 定义 $\text{Church}-\text{Kleene}$ 序数 $\omega_{1}^{\mathrm{CK}} = \Omega$
            2. $\Omega$ 的元素为全体递归序数
        2. 记 $\Omega_1 = \Omega$，对于任意序数 $\alpha > 1$，定义 $\Omega_\alpha$ 为包含 $\{\Omega_{\gamma} \mid 0 < \gamma < \alpha\}$ 且对后继运算与长度为 $\omega$ 的序列取上确界运算封闭的最小集合

### 5.1.2 序数折叠函数
1. $\psi$ 型定义
    1. $\text{Bachmann} \ \psi-$函数：令 $\Omega$ 为不可数序数，定义 $C^{\Omega}(\alpha, \beta)$ 为 $\beta \cup\{0, \Omega\}$ 在 $+,\left(\xi \mapsto \omega^{\xi}\right),\left(\xi \mapsto \psi_{\Omega}(\xi)\right)_{\xi<\alpha}$ 下的闭包，定义 $\psi_{\Omega}(\alpha)=\min \left\{\rho<\Omega: C^{\Omega}(\alpha, \rho) \cap \Omega=\rho\right\}$
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

        通常记 $\psi_0$ 为 $\psi$；不加说明时，默认用此函数作为默认 $\psi$ 型函数

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
        2. $\xi, \eta \in \overline{C}_{i}(\alpha, \beta) \Rightarrow \xi+\eta \in \overline{C}_{i}(\alpha, \beta)$
        3. $j \leqslant i<\omega \wedge \xi \in \overline{C}_{j}\left(\xi, \Omega_{j+1}\right) \cap \overline{C}_{i}(\alpha, \beta) \cap \alpha \Rightarrow \overline{\vartheta}_{j}(\xi) \in \overline{C}_{i}(\alpha, \beta)$
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
4. $\text{OCF}$ 定义的序数
    1. $\text{Bachmann}-\text{Howard}$ 序数：$\text{BHO} = \psi\left(\psi_{1}(0)\right)$
    2. $\text{Buchholz}$ 序数：$\text{BO} = \psi\left(\Omega_{\omega}\right)$
    3. $\text{Takeuti}-\text{Feferman}-\text{Buchholz}$ 序数：$\text{TFBO} = \psi\left(\psi_{\omega}(0)\right)$

### 5.2.2 大可数序数
1. 容许序数
2. 反射序数
3. 稳定序数

## 5.3 证明论序数
