# 3 域论

## 3.1 多项式理论
### 3.1.1 有限域

### 3.1.2 域上多项式环
1. 一般域上多项式环：设 $F$ 为一个域，$x$ 为一个文字（符号），则称由形如

    $$
    \left\{a_{n} x^{n}+a_{n-1} x^{n-1}+\cdots+a_{1} x+a_{0} \mid n \in \mathbf{N} \cup\{0\}, a_{i} \in F, i=1,2, \cdots, n\right\}
    $$

    的所有元素组成的集合 $F[x]$ 为 $F$ 上的一元多项式环，简称为 $F$ 上的多项式环．在 $F[x]$ 上定义加法和乘法后，$F[x]$ 构成交换幺环．设 $f(x)=a_{n} x^{n}+a_{n-1} x^{n-1}+\cdots+a_{1} x+a_{0}, a_{n} \neq 0, n \geqslant 0$，则称 $n$ 为非零多项式 $f(x)$ 的次数，记为 $\operatorname{deg} f(x)$

    1. 对任意 $f(x) \in F[x]$，存在 $q(x), r(x) \in F[x]$ 使得 $f(x)=q(x) g(x)+r(x)$，其中 $r(x)=0$ 或 $\operatorname{deg} r(x)<\operatorname{deg} g(x)$，且这样的 $q(x), r(x)$ 惟一．作 $F[x]^{*}$ 到 $\mathrm{N} \cup\{0\}$ 的映射 $\delta(f(x))=\operatorname{deg} f(x), \forall f(x) \in F[x]^{\cdot}$，则可知 $F[x]$ 是 $\text{Euclid}$ 环
    2. 设 $f(x) \in F[x]$ 不可约，则 $\langle f(x)\rangle$ 为 $F[x]$ 的极大理想，因此 $F[x] /\langle f(x)\rangle$ 是一个域

2. 有限域上多项式环

### 3.1.3 多项式的分裂域

## 3.2 域的扩张
1. 分式域：设整环 $R$ 为域 $F$ 的子环，若对任何 $a \in F$，存在 $b, c \in R$ 使得 $a=b c^{-1}$，则称 $F$ 为 $R$ 的分式域
    1. 设 $R$ 为整环，则 $R$ 的分式域存在
    2. 整环 $R$ 的分式域是包含 $R$ 的最小域，因而惟一
2. 素域：不包含任何非平凡子域的域
    1. 设 $\Pi$ 为一个素域，则 $\Pi \simeq Q$ 或 $\Pi \simeq Z$（$p$ 为质数）
    2. 设 $K$ 为域，$p$ 为质数
        1. $K$ 的特征为 $p$ 当且仅当 $p a=0, \ \forall a \in K$
        2. $K$ 的特征为零当且仅当 $n a \neq 0, \ \forall n \in \mathrm{N}, a \in K^{*}$
3. 扩域：若域 $F$ 是域 $K$ 的子域，则称 $K$ 为 $F$ 的扩张，或称 $K$ 为 $F$ 的扩域
    1. 设 $K$ 为域 $F$ 的扩域，$S \subseteq K$
        1. ${\displaystyle F(S)=\bigcup_{S^{\prime} \subseteq S} F\left(S^{\prime}\right)}$，其中 $S^{\prime}$ 取遍 $S$ 的所有有限子集
        2. 若 $S=S_{1} \cup S_{2}$，则 $F(S)=F\left(S_{1}\right)\left(S_{2}\right)=F\left(S_{2}\right)\left(S_{1}\right)$
        3. $F\left(\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}\right)=F\left(\alpha_{1}\right)\left(\alpha_{2}\right) \cdots\left(\alpha_{n}\right)$
    2. 设 $K$ 为域 $F$ 的扩域，$\alpha \in K$．若存在域 $F$ 上的非零多项式 $f(x)$ 使得 $f(\alpha)=0$，则称 $\alpha$ 为 $F$ 上的代数元，否则称 $\alpha$ 为 $F$ 上的超越元
4. 等价扩张：设 $K_{1}, K_{2}$ 都是 $F$ 的扩域，若存在 $K_{1}$ 到 $K_{2}$ 上的同构 $\phi$ 使得 $\phi \upharpoonright F=\mathrm{id}_{F}$，则称 $K_{1}, K_{2}$ 为 $F$ 的等价扩张，$\phi$ 称为 $F-$同构．当 $K_{1}=K_{2}$ 时，称 $\phi$ 为 $F-$自同构

### 3.2.1 单扩张
1. 单扩张：设 $K$ 为 $F$ 的扩域且存在 $\alpha \in K$ 使得 $K=F(\alpha)$，则称 $K$ 为 $F$ 的单扩张．若 $\alpha$ 为 $F$ 上的代数元，则称 $K$ 为 $F$ 的单代数扩张；若 $\alpha$ 为 $F$ 上的超越元，则 $K$ 称为 $F$ 的单超越扩张
    1. 若 $\alpha$ 是域 $F$ 上的超越元，则 $F(\alpha) \simeq F(x)$，其中 $F(x)$ 是 $F$ 上的多项式环 $F[x]$ 的分式域
    2. 若 $\alpha$ 是 $F$ 上的代数元，则 $F(\alpha) \simeq F[x] /\langle p(x)\rangle$，其中 $p(x)$ 是 $F[x]$ 的一个由 $\alpha$ 惟一确定的首一不可约多项式且 $p(\alpha)=0$
2. 不可约多项式：设 $K$ 为 $F$ 的扩域，$\alpha \in K$ 是 $F$ 上的代数元．$F [x]$ 中以 $\alpha$ 为根的不可约首一多项式称为 $\alpha$ 在 $F$ 上的不可约多项式，记为 $\operatorname{Irr}(\alpha, F)$，它的次数称为 $\alpha$ 在 $F$ 上的次数，记为 $\operatorname{deg}(\alpha, F)$
    1. 对于 $F$ 上的代数元 $\alpha, F(\alpha) \simeq F[x] /\langle\operatorname{Irr}(\alpha, F)\rangle$ 且 $\langle\operatorname{Irr}(\alpha, F)\rangle =\{f(x) \in F[x] \mid \operatorname{Irr}(\alpha, F) \mid f(x)\}$
    2. 设 $F(\alpha)$ 是 $F$ 的单代数扩张，$\operatorname{deg}(\alpha, F)=n$，则 $F(\alpha)$ 是 $F$ 上的 $n$ 维线性空间，且 $1, \alpha, \alpha^{2}, \cdots, \alpha^{n-1}$ 是 $F(\alpha)$ 的一组基
3. 单扩张的等价性
    1. 若 $F\left(\alpha_{1}\right), F\left(\alpha_{2}\right)$ 都是 $F$ 的单超越扩张，则 $F\left(\alpha_{1}\right), F\left(\alpha_{2}\right)$ 是 $F$ 的等价扩张
    2. 对任何 $F[x]$ 上的首一不可约多项式 $p(x)$，存在 $F$ 的单代数护张 $F(\beta)$ 使得 $\operatorname{Irr}(\beta, F)=p(x)$，且任何满足这个条件的两个单代数扩张一定是 $F$ 的等价扩张

### 3.2.2 代数扩张
1. 代数扩张：设 $K$ 为域 $F$ 的扩域，若 $K$ 中的每个元素都是 $F$ 上的代数元，则称 $K$ 为 $F$ 的代数扩张
    1. 有限扩张与无限扩张：设 $K$ 为 $F$ 的扩域，若 $K$ 作为 $F$ 上的线性空间是有限维的，则称 $K$ 为 $F$ 的有限扩张．$K$ 的维数称为 $K$ 在 $F$ 上的次数，记为 $[K: F]$．若 $K$ 作为 $F$ 上的线性空间是无限维的，则称 $K$ 为 $F$ 的无限扩张
    2. 设 $F(\alpha)$ 为 $F$ 的单扩张，则下列条件等价
        1. $F(\alpha)$ 是 $F$ 的代数扩张
        2. $\alpha$ 是 $F$ 上的代数元
        3. $F(\alpha)$ 是 $F$ 的有限扩张
    3. 设 $E$ 为域 $F$ 的有限扩张，$K$ 为 $E$ 的有限扩张，则 $K$ 是 $F$ 的有限扩张且 $[K: F]=[K: E][E: F]$
        1. $F\left(\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}\right)$ 是域 $F$ 的代数扩张当且仅当 $F\left(\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}\right)$ 是 $F$ 的有限扩张当且仅当 $\alpha_{1}, \alpha_{2}, \cdots, \alpha_{n}$ 是 $F$ 上的代数元
        2. 域 $F$ 上的两个代数元的和、差、积、商（分母不为零）仍为 $F$ 上的代数元
        3. 设 $E=F(S)$，其中 $S$ 的元素都是 $F$ 上的代数元，则 $E$ 是 $F$ 的代数扩张
        4. 若 $E$ 是域 $F$ 的代数扩张，$K$ 是 $E$ 的代数扩张，则 $K$ 是 $F$ 的代数扩张
2. 域扩张的一般过程：设 $K$ 为 $F$ 的扩张，$K_{0}$ 为 $F$ 在 $K$ 中的代数闭包，则 $K_{0}$ 是含于 $K$ 的 $F$ 的最大代数扩张，且对于任意 $\delta \in K-K_{0}$，$\delta$ 是 $K_{0}$ 上的超越元
    1. 代数闭包：设 $K$ 为 $F$ 的扩张，$K$ 中在 $F$ 上为代数元的元素的集合 $K_{0}$ 称为 $F$ 在 $K$ 中的代数闭包
    2. 域的扩张都可以分成两步进行：先进行代数扩张，再进行超越扩张

### 3.2.3 可分扩张

## 3.3 Galois 理论
1. $\text{Galois}$ 群与不变子域：设 $K$ 是域 $F$ 的有限扩张，则 $K$ 的所有 $F-$自同构的集合关于映射的乘法构成一个群，称为 $K$ 在 $F$ 上的 $\text{Galois}$ 群，记为 $\operatorname{Gal}(K / F)$．设 $G$ 为域 $K$ 的自同构群 $\operatorname{Aut}(K)$ 的一个子群，则集合 $\{a \in K \mid g(a)=a, \forall g \in G\}$ 是 $K$ 的一个子域，称为 $K$ 的 $G-$不变子域，记为 $\operatorname{Inv} G$
2. $\text{Galois}$ 扩张：若域 $F$ 的有限扩张 $K$ 满足 $\operatorname{Inv}(\operatorname{Gal}(K / F))=F$，则称 $K$ 是 $F$ 的 $\text{Galois}$ 扩张
    1. 正规扩张：设 $F$ 为域，$K$ 为 $F$ 的一个代数扩张，若 $F[x]$ 中的一个不可约多项式 $p(x)$ 在 $K$ 中有一个根，则 $p(x)$ 的所有根都在 $K$ 中，即在 $K$ 中 $p(x)$ 可以分解为一次因式的乘积，此时称 $K$ 为 $F$ 的正规扩张
    2. 设 $K$ 是域 $F$ 的扩域，则下列条件等价
        1. $K$ 是 $F$ 的 $\text{Galois}$ 扩张
        2. $K$ 是 $F$ 的有限可分正规扩张
        3. $K$ 是可分多项式 $f(x) \in F[x]$ 的分裂域，且此时有 $|\mathrm{Gal}(K / F)|=[K: F]$
3. $\text{Galois}$ 基本定理
    1. 定义 $\Sigma$ 到 $\Gamma$ 的映射 $\textrm{Gal}: E \mapsto \textrm{Gal}(K / E), \forall E \in \Sigma$，称之为 $\text{Galois}$ 映射，则 $\text{Galois}$ 映射是可逆映射，其逆映射为 $\Gamma$ 到 $\Sigma$ 的映射 $\textrm{Inv}: H \mapsto \operatorname{Inv} H, \forall H \in \Gamma$
    2. $\forall H_{1}, H_{2} \in \Gamma$ 有 $H_{2} \subseteq H_{1} \leftrightarrow \operatorname{Inv} H_{1} \subseteq \operatorname{Inv} H_{2}$
    3. $\forall H_{1}, H_{2} \in \Gamma, H_{2} \subseteq H_{1}$，则有 $\left[H_{1}: H_{2}\right]=\left[\operatorname{Inv} H_{2}: \operatorname{Inv} H_{1}\right]$
    4. $\forall H_{1}, H_{2} \in \Gamma, H_{2} \subseteq H_{1}$，则有 $H_{2} \triangleleft H_{1} \leftrightarrow \operatorname{Inv} H_{2}$ 是 $\operatorname{Inv} H_{1}$ 的正规扩张，且此时 $\mathrm{Gal}\left(\operatorname{Inv} H_{2} / \operatorname{Inv} H_{1}\right) \simeq H_{1} / H_{2}$
4. 设 $F$ 是特征为 $0$ 的域，$f(x) \in F[x]$ 是无重根的多项式，则方程 $f(x)=0$ 对 $F$ 可用根式解的充要条件是 $f(x)=0$ 对基域 $F$ 的 $\text{Galois}$ 群 $G(f(x), F)$ 为可解群
    1. 方程的 $\text{Galois}$ 群：设 $f(x)$ 是域 $F$ 上的多项式，即 $f(x) \in F[x]$．设 $F$ 是特征为 $0$ 的域，$f(x)$ 是无重根的多项式，记 $K$ 是 $f(x)$ 的分裂域，则称 $\mathrm{Gal}(K / F)$ 为方程 $f(x)=0$ 对基域 $F$ 的 $\text{Galois}$ 群，记为 $G(f(x), F)$
    2. 方程可用根式解：设 $K$ 是域 $F$ 的扩张，若有中间域序列 $F=F_{0} \subseteq F_{1} \subseteq \cdots \subseteq F_{i} \subseteq F_{i+1} \subseteq \cdots \subseteq F_{m}=K$ 使得每一 $F_{i+1}$ 都是 $x^{n_{1+1}}-a_{i+1} \in F_{i}[x]$ 的分裂域，则称 $K$ 是 $F$ 的根式扩张．设多项式 $f(x) \in F[x]$，若有 $F$ 的根式扩张 $K$ 包含 $f(x)$ 的分裂域，则称方程 $f(x)=0$ 对 $F$ 可用根式解
    3. 次数不小于 $5$ 的文字系数多项式（即方程所有系数是独立的或称代数无关的）方程不能用根式解
