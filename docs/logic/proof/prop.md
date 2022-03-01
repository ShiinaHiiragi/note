# 1 命题逻辑

## 1.1 Hilbert 系统
### 1.1.1 经典命题逻辑 Hilbert 系统
1. 经典命题逻辑形式语言的初始符号
    1. 可数命题变元集：$\text{Prop} = \{p_i|i<\omega\}$，用 $p, q, r$ 等表示 $\text{Prop}$ 中的任意命题变元
    2. 联结词：零元联结词 $\bot$（恒假）；二元联结词 $\wedge$（合取）、$\vee$（析取）与 $\to$（蕴含）
    3. 括号：$)$ 与 $($
2. $\text{Backus-Naur}$ 形式句法：用 $\alpha, \beta, \gamma$ 表示公式模式（可带下标），则公式集

    $$
    \mathscr L\ni \alpha ::= p|\bot|(\alpha_1 \wedge \alpha_2)|(\alpha_1 \vee \alpha_2)|(\alpha_1 \to \alpha_2)
    $$

    !!! note "缩写与简写"
        1. 定义缩写 $\neg \alpha := \alpha \to \bot$（否定）；$\top := \bot \to \bot$（恒真）；$\alpha \leftrightarrow \beta := (\alpha \to \beta) \wedge (\beta \to \alpha)$（等值）
        2. 引入省略括号的规则：① 公式最外层括号可省略；② 联结词 $\wedge$ 与 $\vee$ 优先于 $\to$

    1. 原子公式：命题变元或 $\bot$，所有原子公式的集合记为 $\text{At} = \text{Prop} \cup \{\bot\}$
    2. 基于公式定义的归纳证明：令 $\mathcal R$ 是符号串的性质，设 ① 对 $\alpha \in \text{At}$ 都有 $\mathcal R(\alpha)$；② 对任意 $\alpha, \beta \in \mathscr L$ 和 $\circ \in \{\wedge, \vee, \to\}$，若 $\mathcal R(\alpha)$ 且 $\mathcal R(\beta)$，则 $\mathcal R(\alpha \circ \beta)$，那么 $\mathcal R(\alpha)$ 对所有 $\alpha \in \mathscr L$ 都成立
    3. 公式的性质
        1. $var(\alpha)$ 表示公式 $\alpha$ 中出现的所有命题变元的集合；$\alpha(p_1, p_2, \cdots, p_n)$ 表示公式 $\alpha$ 使得 $var(\alpha) \subseteq \{p_1, \cdots, p_n\}$．若 $var(\alpha) = \varnothing$，则称 $\alpha$ 为无变元公式
        2. $d(\alpha)$ 表示公式 $\alpha$ 的复杂度，定义为 $\left\{\begin{aligned} &d(p) = 0 = d(\bot), &p\in \text{Prop} \\& d(\alpha \circ \beta) = \max\{d(\alpha), d(\beta)\} + 1, & \circ \in \{\wedge, \vee, \to\} \end{aligned}\right.$
        3. $SF(\alpha)$ 表示公式 $\alpha$ 的子公式集合，定义为 $\left\{\begin{aligned} &SF(\alpha) = \{\alpha\}, &\alpha \in \text{At} \\& SF(\alpha \circ \beta) = SF(\alpha) \cup SF(\beta) \cup \{\alpha \circ \beta\}, &\circ \in \{\wedge, \vee, \to\}\end{aligned}\right.$
        4. 一个代入是一个函数 $\sigma: \text{Prop} \to \mathscr L$，对任意代入 $\sigma$，函数 $\widehat \sigma: \mathscr L \to \mathscr L$ 定义为 $\left\{\begin{aligned} & \widehat \sigma(\bot) = \bot \\ & \widehat \sigma(p) = \sigma(p), & p\in \text{Prop} \\& \widehat \sigma(\alpha \circ \beta) = \widehat \sigma(\alpha) \circ \widehat \sigma(\beta), & \circ \in \{\wedge, \vee, \to\} \end{aligned}\right.$．对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$，用 $\alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$ 分别表示用 $\beta_1, \beta_2, \cdots, \beta_n$ 代入变元 $p_1, p_2, \cdots, p_n$ 得到的结果

3. 真值函数语义学：用 $1$ 表示「真」；用 $0$ 表示「假」，集合 $2 = \{0, 1\}$ 称为真值集
    1. 赋值：一个赋值是一个函数 $\theta: \text{Prop} \to 2$，对任意赋值 $\theta$，归纳定义函数 $\widehat \theta: \mathscr L \to 2$ 有
    
        $$
        \left\{\begin{aligned}
            &   \widehat \theta(\bot) = 0
            \\& \widehat \theta(p) = 1 \leftrightarrow \theta(p) = 1
            \\& \widehat \theta(\alpha \wedge \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 1 \wedge \widehat \theta(\beta) = 1
            \\& \widehat \theta(\alpha \vee \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 1 \vee \widehat \theta(\beta) = 1
            \\& \widehat \theta(\alpha \to \beta) = 1 \leftrightarrow \widehat \theta(\alpha) = 0 \vee \widehat \theta(\beta) = 1
        \end{aligned}\right.
        $$

        1. 对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$，设赋值 $\theta, \theta'$ 有 $\forall i \leqslant n: \theta(p_i) = \theta'(p_i)$，则 $\widehat \theta(\alpha) = \hat {\theta'}(\alpha)$
        2. 对任意公式 $\alpha(p_1, p_2, \cdots, p_n)$ 和公式 $\beta_1, \beta_2, \cdots, \beta_n$，令 $\alpha' = \alpha(p_1/\beta_1, p_2/\beta_2, \cdots, p_n/\beta_n)$．对任意赋值 $\theta$，定义赋值 $\theta': \text{Prop} \to 2$ 为 $\theta'(q) = \left\{\begin{aligned} & \widehat \theta(\beta_i), &\exists i\leqslant n: q = p_i \\& \theta(q), &\text{otherwise} \end{aligned}\right.$，则 $\theta' \vDash \alpha \leftrightarrow \theta \vDash \alpha'$

    2. 对任意公式 $\alpha$ 与赋值 $\theta$，若 $\theta(\alpha) = 1$，则称 $\theta$ 满足公式 $\alpha$，记作 $\theta \vDash \alpha$
        1. 对于公式 $\alpha$，若存在赋值 $\theta$ 使得 $\theta \vDash \alpha$，则称公式 $\alpha$ 可满足，否则称 $\alpha$ 为矛盾式．易知公式 $\alpha$ 是重言式当且仅当 $\neg \alpha$ 是矛盾式；公式 $\alpha$ 是矛盾式当且仅当 $\neg \alpha$ 是重言式
        2. 对于公式 $\alpha$，若对任何赋值 $\theta$ 均有 $\theta \vDash \alpha$，则称 $\alpha$ 是重言式，记作 $\vDash \alpha$
    3. 对任意公式集 $\Gamma$ 与赋值 $\theta$，若对任意 $\alpha$ 都有 $\theta \vDash \alpha$，则称 $\theta$ 满足 $\Gamma$，记作 $\theta \vDash \Gamma$
        1. 对于公式集 $\Gamma$，如果存在赋值 $\theta$ 使得 $\theta \vDash \Gamma$，则称 $\Gamma$ 可满足
        2. 对任意公式集 $\Gamma \cup \{\alpha\}$，如果对于任意赋值 $\theta$ 使得 $\theta \vDash \Gamma$ 都有 $\theta \vDash \alpha$，则称 $\alpha$ 是 $\gamma$ 的语义后承，记作 $\Gamma \vDash \alpha$
    4. 将经典命题逻辑 $\text{CL}$ 定义为所有重言式的集合，即 $\text{CL} = \{\alpha \in \mathscr L | \vDash \alpha\}$
        1. 对任意公式 $\alpha$ 和代入 $\sigma$，若 $\alpha \in \text{CL}$，则 $\sigma(\alpha) \in \text{CL}$
        2. 对任意公式 $\alpha, \beta$，若 $\alpha, \alpha \to \beta \in \text{CL}$，则 $\beta \in \text{CL}$
    5. 真值函数：令 $\alpha$ 是公式且 $var(\alpha) = \{p_1, p_2, \cdots, p_n\}$，如果对于 $n-$元函数 $f: 2^n \to 2$ 与 $\varepsilon = (\alpha_1, \alpha_2, \cdots, \alpha_n) \in 2^n$ 都有 $f(\theta(p_1), \theta(p_2), \cdots, \theta(p_n)) = \widehat \theta(\alpha)$，其中 $\theta$ 是任意赋值使得对每个 $1\leqslant i\leqslant n$ 都有 $\theta(p_i) = a_i$，则称 $\alpha$ 定义 $n-$元真值函数 $f$
        - 任意 $n-$元真值函数 $f: 2^n \to 2$ 在 $\mathscr L$ 中可定义

4. 经典命题逻辑的 $\text{Hilbert}$ 公理系统 $\text{HK}$
    1. 公理与推理规则：一个推理规则的形式是 $\dfrac{\alpha_1\ \alpha_2\ \cdots\ \alpha_n}{\alpha_0}(R)$，其中 $\alpha_1, \alpha_2, \cdots, \alpha_n$ 称为 $R$ 的前提，$\alpha_0$ 称为 $R$ 的结论
        1. 公理：若将 $p_0, p_1, p_2$ 替换为模式字母 $\alpha, \beta, \gamma$，可去掉代入规则 $\text{sub}$，得到的系统与 $\text{HK}$ 等价
            - $\text{A}_1: p_0 \to (p_1 \to p_0)$
            - $\text{A}_2: (p_0 \to (p_1 \to p_2)) \to ((p_0 \to p_1) \to (p_0 \to p_2))$
            - $\text{A}_3: (p_0 \wedge p_1) \to p_0$
            - $\text{A}_4: (p_0 \wedge p_1) \to p_1$
            - $\text{A}_5: p_0 \to (p_1 \to p_0 \wedge p_1)$
            - $\text{A}_6: p_0 \to (p_0 \vee p_1)$
            - $\text{A}_7: p_1 \to (p_0 \vee p_1)$
            - $\text{A}_8: (p_0 \to p_2) \to ((p_1 \to p_2) \to ((p_0 \vee p_1) \to p_2))$
            - $\text{A}_9: \bot \to p_0$
            - $\text{A}_{10}: p_0 \vee \neg p_0$
        2. 推理规则

### 1.1.2 直觉主义命题逻辑 Hilbert 系统

## 1.2 自然演绎

## 1.3 矢列演算
