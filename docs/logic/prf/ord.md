# 5 序数分析

## 5.1 序数记号
### 5.1.1 递归序数记号
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

    可由 $\mathcal{O}$ 表示的序数集合等价于全体递归序数集合

### 5.1.2 序数折叠函数
1. $\text{Madore } \psi-$函数：当对于所有 $\beta < \alpha$ 的 $\psi(\beta)$ 都有定义时，定义 $\psi(\alpha)$ 如下

    $$
    \begin{aligned}
    C_0(\alpha) & =\{0,1, \omega, \Omega\} \\
    C_{n+1}(\alpha) & =\left\{\beta_1+\beta_2, \beta_1 \beta_2, \beta_1^{\beta_2}, \psi(\beta) \mid \beta_1, \beta_2, \beta \in C_n(\alpha) ; \beta<\alpha\right\} \\
    C(\alpha) & =\bigcup_{n<\omega} C_n(\alpha) \\
    \psi(\alpha) & =\min \{\beta \in \Omega \mid \beta \notin C(\alpha)\}
    \end{aligned}
    $$

2. $\text{Feferman } \theta-$函数

    $$
    \begin{aligned}
    C_0(\alpha, \beta) & =\beta \cup\left\{0, \omega_1, \omega_2, \cdots, \omega_\omega\right\} \\
    C_{n+1}(\alpha, \beta) & =\left\{\gamma+\delta, \theta_{\xi}(\eta) \mid \gamma, \delta, \xi, \eta \in C_n(\alpha, \beta) ; \xi<\alpha\right\} \\
    C(\alpha, \beta) & =\bigcup_{n<\omega} C_n(\alpha, \beta) \\
    \theta_\alpha(\beta) & =\min \left\{\gamma \mid \gamma \notin C(\alpha, \gamma) \wedge \forall \delta<\beta: \theta_\alpha(\delta)<\gamma\right\}
    \end{aligned}
    $$

3. $\text{Weiermann } \vartheta-$函数

    $$
    \begin{aligned}
    C_0(\alpha, \beta) & =\beta \cup\{0, \Omega\} \\
    C_{n+1}(\alpha, \beta) & =\left\{\gamma+\delta, \omega^\gamma, \vartheta(\eta) \mid \gamma, \delta, \eta \in C_n(\alpha, \beta) ; \eta<\alpha\right\} \\
    C(\alpha, \beta) & =\bigcup_{n<\omega} C_n(\alpha, \beta) \\
    \vartheta(\alpha) & =\min \{\beta<\Omega \mid C(\alpha, \beta) \cap \Omega \subseteq \beta \wedge \alpha \in C(\alpha, \beta)\}
    \end{aligned}
    $$

## 5.2 可数序数
### 5.2.1 递归序数
1. $\text{Cantor}$ 序数系列
    1. 小 $\text{Cantor}$ 序数 $\text{SCO} = \varepsilon_{0}$，其中 $\varepsilon_{\gamma} = \varphi_{1}(\gamma)$ 是满足 $\omega^\xi = \xi$ 的解
    2. $\text{Cantor}$ 序数 $\text{CO} = \zeta_{0}$，其中 $\zeta_{\gamma} = \varphi_2(\gamma)$ 是满足 $\varepsilon_{\xi} = \xi$ 的解
    3. 大 $\text{Cantor}$ 序数 $\text{LCO} = \eta_{0}$，其中 $\eta_{\gamma} = \varphi_3(\gamma)$ 是满足 $\zeta_{\xi} = \xi$ 的解
    4. 超 $\text{Cantor}$ 序数 $\text{HCO} = \varphi_{\omega}(0)$
2. $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数与 $\text{Ackermann}$ 序数
    1. $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数：设 $\varphi(1, 0, \gamma) = \Gamma_{\gamma}$，称 $\Gamma_0$ 为 $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数
        1. $\Gamma_0=\varphi(1,0,0)=\varphi \begin{pmatrix} 1 \\ 2 \\ \end{pmatrix}=\theta_{\Omega}(0)=\psi\left(\Omega^{\Omega}\right)$
        2. $\Gamma_0$ 是满足 $\varphi_{\alpha}(0) = \alpha$ 的最小序数，且有 $\Gamma_0 = \varphi_{\varphi_{\varphi_{._{._..}.}(0)}(0)}(0) = \varphi(\varphi(\varphi(\cdots),0),0),0)$
    2. $\text{Ackermann}$ 序数：$\varphi(1, 0, 0, 0)$
        1. $\varphi(1,0,0,0)=\theta_{\Omega^3}(0)=\psi\left(\Omega^{\Omega^2}\right)=\vartheta\left(\Omega^3\right)$
        2. $\text{Ackermann}$ 序数是 $\xi \mapsto \varphi(\xi, 0, 0)$ 的最小不动点
3. $\text{Veblen}$ 序数系列
    1. 小 $\text{Veblen}$ 序数 $\text{SVO} = \sup \left\{\varphi(1, 0), \varphi(1, 0, 0), \varphi(1, 0, 0, 0), \cdots\right\}=\varphi \begin{pmatrix} 1 \\ \omega \\ \end{pmatrix}=\theta_{\Omega^\omega}(0)=\psi\left(\Omega^{\Omega^\omega}\right)=\vartheta\left(\Omega^\omega\right)$
    2. 大 $\text{Veblen}$ 序数：$\text{LVO}= \sup \left\{\varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix}, \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix} \\ \end{pmatrix}, \cdots\right\}= \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \vdots \\ \end{pmatrix} \\ \end{pmatrix} \\ \end{pmatrix}=\theta_{\Omega^{\Omega}}(0)=\psi\left(\Omega^{\Omega^{\Omega}}\right)=\vartheta\left(\Omega^{\Omega}\right)$，是映射 $\xi \mapsto \varphi \begin{pmatrix} 1 \\ \xi \\ \end{pmatrix}$ 的最小不动点

### 5.2.2 大可数序数
1. $\text{Church}-\text{Kleene}$ 序数：$\omega_{1}^{\mathrm{CK}} = \Omega_1 = \Omega$

## 5.3 证明论序数
