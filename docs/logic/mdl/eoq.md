# 2 量词消去

## 2.1 饱和性与齐次性
### 2.1.1 可数模型
1. 设 $\Sigma\left(x_{i}\right)_{i \in I}$ 是一个公式集，其中 $I$ 是一个指标集，$A$ 是一个结构．如果存在 $\left(a_{i}\right)_{i \in I}\in A^{I}$ 使得 $A \vDash \Sigma\left(a_{i}\right)_{i \in I}$，则称 $\Sigma$ 被 $A$ 实现（或被 $A$ 满足），并且称 $\left(a_{i}\right)_{i \in I}$（在 $A$ 中）实现了（或满足了）$\Sigma$，否则称 $\Sigma$ 被 $A$ 省略
    1. 设 $A, B$ 是两个 $S-$结构，$A \prec B$ 且 $\Sigma(\overline{x})$ 是一个 $S_{B}-$公式集．如果对任意有限的 $\Sigma_{0} \subseteq \Sigma$，都可以被 $A$ 实现（满足），则称 $\Sigma$ 在 $A$ 中有限可满足
    2. ...
2. 设 $A$ 是一个结构，$I$ 是一个指标集，$\left\{x_{i} \mid i \in I\right\}$ 是一族变元且 $\left(a_{i} \mid i \in\right. I) \in A^{I}, M \subseteq A$，则 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 表示公式集 $\left\{\alpha\left(x_{i_{1}}, \cdots, x_{i_{n}}\right) \mid \alpha\right.$ 是 $S_{M^{-}}$公式，$\left.A \vDash \alpha\left(a_{i_{1}}, \cdots, a_{i_{n}}\right), i_{1}, \cdots, i_{n} \in I\right\}$，称 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 为 $\left(a_{i}\right)_{i \in I}$ 在$M$ 上的 $I-$型．当 $I=\{0, 1, \cdots, n-1\}$ 时，称 $M$ 上的 $I-$型为 $M$ 上的 $n-$型；当 $M=\emptyset$ 时，将 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I} / M\right)$ 简记作 $\operatorname{tp}_{A}\left(\left(a_{i}\right)_{i \in I}\right)$
    1. 对任意指标集 $I$，任意一致的理论 $T$，$T$ 的任意 $I-$型都被 $T$ 的某个模型 $A$ 实现
    2. 公式集 $\Sigma(\overline{x})$ 是理论 $T$ 的完全 $I-$型当且仅当存在 $T$ 的模型 $A$ 及 $\overline{a} \in m^{I}$ 使得 $\Sigma=\operatorname{tp}_{A}(\overline{a})$
    3. 设 $A$ 是一个结构，$M \subseteq A,\left(I,<_{I}\right)$ 是一个线序集，则 $\left(a_{i}\right)_{i \in I} \subseteq A$ 是 $M$ 上的不可辨元序列当且仅当对任意的 $n \in \mathbf{N}$ 及任意的 $i_{0}<_{I} \cdots<_{I} i_{n-1} \in I$ 和 $j_{0}<_{I} \cdots<_{I} j_{n-1} \in I$，总有 $\operatorname{tp}_{A}\left(a_{i_{0}}, \cdots, a_{i_{n-1}}\right)= \operatorname{tp}_{A}\left(a_{j_{0}}, \cdots, a_{j_{n-1}}\right)$

### 2.1.2 不可数模型

## 2.2 量词消去
