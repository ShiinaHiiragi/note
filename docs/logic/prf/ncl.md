# 3 非经典逻辑

## 3.1 二阶逻辑
### 3.1.1 二阶语言与标准语义
1. 二阶语言 $\mathscr L_2(S)$ 即二阶逻辑的形式语言，由逻辑符号和非逻辑符号组成
    1. 逻辑符号
        1. 变元集 $\mathbf{Var} = \mathbf V_r \cup \mathbf V_f \cup \mathbf V_l$
            - 变关系符：$\mathbf V_r = \{X_i \mid i\in \lambda\}$，用 $X, Y, Z$ 表示任意变个体符
            - 变函数符：$\mathbf V_f = \{f_i \mid i\in \lambda\}$，用 $f, g, h$ 表示任意变个体符
            - 变个体符：$\mathbf V_l = \{x_i \mid i\in \lambda\}$，用 $x, y, z$ 表示任意变个体符
        2. 联结词 $\neg, \to$ 与量词 $\forall$
        3. 括号 $)$ 与 $($
    2. 非逻辑符号：令 $S = \mathbf R \cup \mathbf F \cup \mathbf C$
        - 关系符号集 $\mathbf R = \{R_i\mid i\in \lambda\}$，用 $R, Q, H$ 表示任意关系符号
        - 函数符号集 $\mathbf F = \{\varphi_i\mid i\in \lambda\}$，用 $\varphi, \psi$ 表示任意函数符号
        - 个体符号集 $\mathbf C = \{c_i\mid i\in \lambda\}$，用 $a, b, c$ 表示任意个体符号

        一个二阶语言由非逻辑符号集合 $S$ 决定．当 $S = \varnothing$ 时，$\mathscr L_2(S)$ 可简记为 $\mathscr L_2$，这是语言中的纯逻辑部分

2. 二阶逻辑项与公式的句法
    1. 二阶语言 $\mathscr L_2(S)$ 的类型是从 $\mathbf R \cup \mathbf F$ 的正整数集合的函数 $\Omega: S \to Z_+$
        1. 对每个 $R \in \mathbf R$，$\Omega(R)$ 称为 $R$ 的元数，$R$ 为 $\Omega(R)$ 元关系符号
        2. 对每个 $f \in \mathbf F$，$\Omega(f)$ 称为 $f$ 的元数，$f$ 为 $\Omega(f)$ 元关系符号
    2. 二阶语言 $\mathscr L_2(S)$ 的项集 $\mathcal T(S)$ 归纳定义如下

        $$
        \mathcal T(S) \ni t:= x \mid c \mid ft_1t_2\cdots t_{\Omega(f)}
        $$

        其中 $x\in \mathbf V_l, c\in C$ 且 $f\in \mathbf V_f \cup \mathbf F$．不含变项的项称作闭项

        二阶语言 $\mathscr L_2(S)$ 的（合式）公式集 $\mathcal F(S)$ 归纳定义如下

        $$
        \mathcal F(S) \ni \alpha := Rt_1t_2\cdots t_{\Omega(R)} \mid \neg \alpha \mid \alpha_1 \to \alpha_2 \mid \forall u \alpha
        $$

        其中 $R\in \mathbf V_r \cup \mathbf R$，$t_1, t_2, \cdots, t_{\Omega(R)}$ 是项，$u \in \mathbf{Var}$

    3. 相关概念
        1. 设 $\alpha, \beta \in \mathscr F(S), u \in \mathbf{Var}$，则定义常用联结词如下：

            $$
            \begin{aligned}
            & \alpha \vee \beta = \neg \alpha \to \beta \\
            & \alpha \wedge \beta = \neg (\alpha \to \neg \beta) \\
            & \alpha \leftrightarrow \beta = (\alpha \to \beta) \wedge (\beta \to \alpha) \\
            & \exists u \alpha = \neg \forall u \neg \alpha
            \end{aligned}
            $$

        2. 原子公式：称形如 $Rt_1t_2\cdots t_{\Omega(R)}$ 的公式为原子公式，全体原子公式记作 $\mathbf{At}(S)$
        3. 自由出现与约束出现：记公式 $\alpha$ 中自由变元的集合为 $\mathrm{FV}(\alpha)$，约束变元的集合为 $\mathrm{BV}(\alpha)$
        4. 等词：定义 $t = u$ 为 $\forall X \ (X(t) = X(u))$

### 3.1.2 非标准语义

## 3.2 模态命题逻辑

## 3.3 代数逻辑
