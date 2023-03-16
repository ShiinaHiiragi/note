# 4 序数分析

## 4.1 序数表示
### 4.1.1 序数函数
1. $\text{Veblen}$ 函数：设 $\alpha, \beta$ 为序数，则定义映射 $\varphi_\alpha: \mathbf{On} \to \mathbf{On}$ 如下
    1. $\varphi_0(\beta) = \omega^{\beta}$
    2. 对于后继序数 $\alpha + 1$，定义 $\varphi_{\alpha+1}(\beta)$ 为 $\varphi_{\alpha}(\beta)$ 的第 $\beta$ 个不动点，即 $\varphi_{\alpha}(\gamma) = \gamma$ 的第 $\beta$ 个解
    3. 对于极限序数 $\alpha$，定义 $\varphi_{\alpha}(\beta)$ 为所有序数 $\gamma < \alpha$ 对应的 $\text{Veblen}$ 函数 $\varphi_{\gamma}$ 的第 $\beta$ 个公共不动点

    所有 $\text{Veblen}$ 函数的不动点均从 $0$ 开始计数

    1. 扩展 $\text{Veblen}$ 函数：将 $\varphi_{\alpha}(\gamma)$ 视作二元函数 $\varphi(\alpha, \gamma)$，令 $z$ 为多于或等于 $0$ 个 $0$ 的简记，$s$ 为多于或等于 $0$ 个序数变量 $\alpha_1, \alpha_2, \cdots, \alpha_n \ (\alpha_1 > 0)$ 的简记，则定义
        1. $\varphi(\gamma)=\omega^\gamma$
        2. $\varphi(z,s,\gamma)=\varphi(s,\gamma)$
        3. 若 $\alpha_{n+1} > 0$，则 $\varphi(s, \alpha_{n+1}, z, \gamma)$ 表示「对所有序数 $\beta < \alpha_{n+1}$ 对应的函数 $\varphi(s, \beta, \xi, z)$」的第 $\gamma$ 个公共不动点，即 $\varphi(s, \beta, \xi, z) = \xi$ 的第 $\gamma$ 个解
    2. 超限 $\text{Veblen}$ 函数：利用数阵 $\varphi \begin{pmatrix} \alpha_1 & \alpha_2 & \cdots & \alpha_n \\ \beta_1 & \beta_2 & \cdots & \beta_n \\ \end{pmatrix}$ 表示 $\text{Veblen}$ 函数，其中 $\beta_i$ 表示 $\alpha_i$ 在扩展 $\text{Veblen}$ 函数的位置

2. 序数塌缩函数 $\text{OCF}$：设 $\Omega_{\alpha} = \aleph_{\alpha}, \Omega = \aleph_1$
    1. $\text{Feferman } \theta-$函数

        $$
        \begin{aligned}
        C_0(\alpha, \beta) & =\beta \cup\left\{0, \omega_1, \omega_2, \cdots, \omega_\omega\right\} \\
        C_{n+1}(\alpha, \beta) & =\left\{\gamma+\delta, \theta_{\xi}(\eta) \mid \gamma, \delta, \xi, \eta \in C_n(\alpha, \beta) ; \xi<\alpha\right\} \\
        C(\alpha, \beta) & =\bigcup_{n<\omega} C_n(\alpha, \beta) \\
        \theta_\alpha(\beta) & =\min \left\{\gamma \mid \gamma \notin C(\alpha, \gamma) \wedge \forall \delta<\beta: \theta_\alpha(\delta)<\gamma\right\}
        \end{aligned}
        $$

    2. $\text{Madore } \psi-$函数：当对于所有 $\beta < \alpha$ 的 $\psi(\beta)$ 都有定义时，定义 $\psi(\alpha)$ 如下

        $$
        \begin{aligned}
        C_0(\alpha) & =\{0,1, \omega, \Omega\} \\
        C_{n+1}(\alpha) & =\left\{\beta_1+\beta_2, \beta_1 \beta_2, \beta_1^{\beta_2}, \psi(\beta) \mid \beta_1, \beta_2, \beta \in C_n(\alpha) ; \beta<\alpha\right\} \\
        C(\alpha) & =\bigcup_{n<\omega} C_n(\alpha) \\
        \psi(\alpha) & =\min \{\beta \in \Omega \mid \beta \notin C(\alpha)\}
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

3. $\text{Kleene } \mathcal{O}-$表示：

### 4.1.2 可数序数
1. 递归序数
    1. 定义 $\varphi_{1}(\gamma) = \varepsilon_{\gamma}$，即满足 $\omega^\xi = \xi$ 的解

        $$
        \begin{aligned}
        \varepsilon_0 & = \lim(\omega, \omega^{\omega}, \omega^{\omega^{\omega}}, \cdots) = \omega \uparrow \uparrow \omega \\
        \varepsilon_{\alpha+1} & = \lim(\varepsilon_\alpha+1, \omega^{\varepsilon_\alpha+1}, \omega^{\omega^{\varepsilon_\alpha+1}}, \cdots) = \varepsilon_\alpha \uparrow \uparrow \omega \\
        \varepsilon_{\alpha} & = \sup \left\{\varepsilon_\beta \mid \beta<\alpha\right\} \ (\alpha \textsf{ 为极限序数})
        \end{aligned}
        $$

        并定义 $\varphi_2(\gamma) = \zeta_{\gamma}$，即满足 $\varepsilon_{\xi} = \xi$ 的解；定义 $\varphi_3(\gamma) = \eta_{\gamma}$，即满足 $\zeta_{\xi} = \xi$ 的解

    2. $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数：设 $\varphi(1, 0, \gamma) = \Gamma_{\gamma}$，称 $\Gamma_0$ 为 $\text{Feferman}-\text{Sch}\ddot{\mathrm u}\text{tte}$ 序数
        1. $\Gamma_0=\varphi(1,0,0)=\varphi \begin{pmatrix} 1 \\ 2 \\ \end{pmatrix}=\theta_{\Omega}(0)=\psi\left(\Omega^{\Omega}\right)$
        2. $\Gamma_0$ 是满足 $\varphi_{\alpha}(0) = \alpha$ 的最小序数，且有 $\Gamma_0 = \varphi_{\varphi_{\varphi_{._{._..}.}(0)}(0)}(0) = \varphi(\varphi(\varphi(...),0),0),0)$
    3. $\text{Ackermann}$ 序数：$\varphi(1, 0, 0, 0)$
        1. $\varphi(1,0,0,0)=\theta_{\Omega^3}(0)=\psi\left(\Omega^{\Omega^2}\right)=\vartheta\left(\Omega^3\right)$
        2. $\text{Ackermann}$ 序数是 $\varphi(\xi, 0, 0)$ 的最小不动点，即 $\varphi(\xi, 0, 0) = \xi$ 的最小解
    4. 小 $\text{Veblen}$ 序数 $\text{SVO} = \sup \left\{\varphi(1, 0), \varphi(1, 0, 0), \varphi(1, 0, 0, 0), \cdots\right\}=\varphi \begin{pmatrix} 1 \\ \omega \\ \end{pmatrix}$
        - $\text{SVO}=\theta_{\Omega^\omega}(0)=\psi\left(\Omega^{\Omega^\omega}\right)=\vartheta\left(\Omega^\omega\right)$
    5. 大 $\text{Veblen}$ 序数：$\text{LVO}= \sup \left\{0, \varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix}, \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ 0 \\ \end{pmatrix} \\ \end{pmatrix}, \cdots\right\}= \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \varphi \begin{pmatrix} 1 \\ \vdots \\ \end{pmatrix} \\ \end{pmatrix} \\ \end{pmatrix}$
        1. $\text{LVO}=\theta_{\Omega^{\Omega}}(0)=\psi\left(\Omega^{\Omega^{\Omega}}\right)=\vartheta\left(\Omega^{\Omega}\right)$
        2. $\text{LVO}$：$\varphi \begin{pmatrix} 1 \\ \xi \\ \end{pmatrix}$ 的最小不动点，即 $\varphi \begin{pmatrix} 1 \\ \xi \\ \end{pmatrix} = \xi$ 的最小解

2. 大可数序数
    1. $\omega_1^\mathfrak{Ch}$
    2. $\text{Church}-\text{Kleene}$ 序数

## 4.2 序数分析
