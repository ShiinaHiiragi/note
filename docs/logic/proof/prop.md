# 1 命题逻辑

## 1.1 希尔伯特系统
### 1.1.1 经典命题逻辑希尔伯特系统
1. 初始符号
    1. 可数命题变元集：$\text{Prop} = \{p_i|i<\omega\}$，用 $p, q, r$ 等表示 $\text{Prop}$ 中的任意命题变元
    2. 联结词：零元联结词 $\bot$（恒假）；二元联结词 $\wedge$（合取）、$\vee$（析取）与 $\to$（蕴含）
    3. 括号：$)$ 与 $($
2. $\text{Backus-Naur}$ 形式句法：用 $\alpha, \beta, \gamma$ 表示公式模式（可带下标），则公式集 $\mathscr L\ni \alpha ::= p|\bot|(\alpha_1 \wedge \alpha_2)|(\alpha_1 \vee \alpha_2)|(\alpha_1 \to \alpha_2)$
    1. 原子公式：命题变元或 $\bot$，所有原子公式的集合记为 $\text{At} = \text{Prop} \cup \{\bot\}$
    2. 定义缩写 $\neg \alpha := \alpha \to \bot$（否定）；$\top := \bot \to \bot$（恒真）；$\alpha \leftrightarrow \beta := (\alpha \to \beta) \wedge (\beta \to \alpha)$（等值）
3. 公式的性质
    1. 基于公式定义的归纳证明：令 $\mathcal R$ 是符号串的性质，设 ① 对 $\alpha \in \text{At}$ 都有 $\mathcal R(\alpha)$；② 对任意 $\alpha, \beta \in \mathscr L$ 和 $\circ \in \{\wedge, \vee, \to\}$，若 $\mathcal R(\alpha)$ 且 $\mathcal R(\beta)$，则 $\mathcal R(\alpha \circ \beta)$，于是 $\mathcal R(\alpha)$ 对所有 $\alpha \in \mathscr L$ 都成立
    2. 用 $var(\alpha)$ 表示公式 $\alpha$ 中出现的所有命题变元的集合，用 $\alpha(p_1, p_2, \cdots, p_n)$ 表示公式 $\alpha$ 使得 $var(\alpha) \subseteq \{p_1, \cdots, p_n\}$

### 1.1.2 直觉主义命题逻辑希尔伯特系统

## 1.2 自然演绎

## 1.3 矢列演算
