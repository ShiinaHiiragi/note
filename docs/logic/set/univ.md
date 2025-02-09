# 4 集宇宙

## 4.1 von Neumann 宇宙
### 4.1.1 良基集
1. 定义良基集合类 $\mathbf{WF} = {\displaystyle \bigcup_{\alpha \in \mathrm{On}} V_{\alpha}}$，其中 $V_{\alpha}$
    1. $V_{0}=\varnothing$
    2. $V_{\alpha+1}=\mathcal{P}\left(V_{\alpha}\right)$
    3. 对任意极限序数 $\lambda$，$V_{\lambda}={\displaystyle \bigcup_{\beta<\lambda} V_{\beta}}$
2. 集宇宙与正则公理

### 4.1.2 绝对性

### 4.1.3 相对一致性

## 4.2 Gödel 可构成宇宙

## 4.3 Grothendieck 宇宙
1. $\text{Grothendieck}$ 宇宙是满足以下性质的集合 $U$
    1. $U$ 是传递集
    2. 若 $x, y \in U$，则 $\{x, y\}, \mathcal P(x), \mathcal P(y) \in U$
    3. 若 $\{x_{\alpha}\}_{\alpha \in I}$ 是 $U$ 的一族元素且 $I \in U$，则 ${\displaystyle \bigcup_{\alpha \in I} x_{\alpha} \in U}$

    易知空集 $\varnothing$ 与所有遗传有穷集的集合 $V_{\omega}$ 是 $\text{Grothendieck}$ 宇宙

2. $\text{Grothendieck}$ 宇宙等价于强不可达基数：设 $\kappa$ 是强不可达基数，$S$ 是一个集合，若对于任意序列 $s_n \in ... \in s_0 \in S$ 都有 $|S_n| < \kappa$，则称集合 $S$ 是强类型 $\kappa$ 的，定义 $u(\kappa)$ 是所有强类型 $\kappa$ 的集合
    1. 对于任意 $\text{Grothendieck}$ 宇宙 $U$，$|U|$ 为 $0$，$\aleph_0$ 或某个强不可达基数
    2. 若基数 $\kappa$ 为 $0, \aleph_0$ 或某个强不可达基数，则存在 $\text{Grothendieck}$ 宇宙 $U = u(\kappa)$，此时 $u(|U|) = U, |u(\kappa)| = \kappa$
    3. 以下公理等价
        1. 对任意集合 $x$，存在 $\text{Grothendieck}$ 宇宙 $U$ 使得 $x \in U$
        2. 对任意基数 $\kappa$，存在强不可达基数 $\lambda$ 有 $\lambda > \kappa$
