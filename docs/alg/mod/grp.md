# 1 群论

## 1.1 群的性质
### 1.1.1 群
1. 群：令 $M = \{\cdot, e\}$，结构 $\mathfrak M = (G, \cdot^\mathfrak M, e^\mathfrak M)$ 是一个群，则将 $\mathfrak M$ 看作代数结构时记作 $\{G; \cdot\}$
    1. 幺元：群 $\{S ; \cdot\}$ 中存在元素 $e_{1}\left(e_{2}\right)$，使 $e_{1} \cdot a=a\left(a \cdot e_{2}=a\right), \  \forall a \in S$，称 $e_{1}\left(e_{2}\right)$ 为 $S$ 的左（右）幺元，也称为单位元
    2. 逆元：群 $\{S; \cdot\}$ 的幺元为 $e$ 是幺元，$a \in S$．若 $a_{1}\left(a_{2}\right) \in S$，使 $a_{1} \cdot a=e\left(a \cdot a_{2}=e\right)$，则称 $a_{1}\left(a_{2}\right)$ 为 $a$ 的左（右）逆元．若 $b$ 既是 $a$ 的左逆元，又是 $a$ 的右逆元，即有 $b a=a b=e$，则称 $b$ 为 $a$ 的逆元，记为 $b=a^{-1}$，称 $a$ 为可逆元
2. 设 $\{G; \cdot\}$ 是一个群，称运算 $\cdot$ 为乘法，并将 $a \cdot b$ 简记为 $ab$
    1. 幺半群中的幺元惟一，群中任一元的逆元惟一
    2. 群 $G$ 的运算满足左（右）消去律，即 $\forall a, b, c \in G: a b=a c \ (b a=c a) \rightarrow b=c$
    3. 在群 $G$ 中，$\forall a, b \in G$，方程 $a x=b$ 及 $x a=b$ 的解均存在且惟一
    4. 若半群 $G$ 满足对 $\forall a, b \in G$，方程 $a x=b$ 及 $x a= b$ 均有解，则 $G$ 是群
    5. 有限半群 $G$ 若满足左、右消去律，则 $G$ 是群
3. 幂：设 $G$ 为群，$n$ 为正整数，对 $\forall a \in G$，规定

    $$
    \begin{aligned}
    a^{n}&=\small \underbrace{\normalsize a \cdot a \cdots a}_{\normalsize n} \normalsize \\
    a^{-n}&=\left(a^{-1}\right)^{n} \\
    a^{0}&=e
    \end{aligned}
    $$

    1. 对任意整数 $m, n$，有 $a^{m} a^{n}=a^{m+n}, \ \left(a^{m}\right)^{n}=a^{m n}$．若 $G$ 是交换群，则 $(a b)^{m}=a^{m} b^{m}$
    2. 当 $G$ 为交换群时，可将 $\cdot$ 记为 $+$，并将幺元记为 $0$，将 $a \in G$ 的逆元记为 $-a$，并定义幂次

    $$
    \begin{aligned}
    na&=\small \underbrace{\normalsize a + a + \cdots + a}_{\normalsize n} \normalsize \\
    (-n)a&=n\left(-a\right) \\
    0a&=0
    \end{aligned}
    $$

4. 阶及其性质
    1. 群的阶：群 $G$ 中所含元素的个数 $|G|$，称为群 $G$ 的阶．若 $|G|$ 有限，则称 $G$ 为有限群；若 $|G|$ 无限，则称 $G$ 为无限群
    2. 群中元素的阶：设 $G$ 是群，运算记为乘法（加法），$a$ 是 $G$ 中一个元素．如果对 $\forall k \in \mathrm{N}$ 都有 $a^{k} \neq e \ (k a \neq 0)$，则称元素 $a$ 的阶为无穷．如果 $\exists k \in \mathrm{N}$，使 $a^{k}=e \ (k a=0)$，则称 $\min \left\{k \in \mathrm{N} \mid a^{k}=e \ (k a =0)\right\}$ 为 $a$ 的阶
        1. 任一个乘法群 $G$ 中，有且仅有幺元的阶为 $1$
        2. $G$ 中任一元 $a$ 与其逆元 $a^{-1}$ 有相同的阶
        3. 设 $a$ 是群 $G$ 中一元，则 $a$ 的阶无穷 $\leftrightarrow \forall m \neq n, m, n \in Z: a^{m} \neq a^{n}$
        4. 设 $a$ 是群 $G$ 中一元，$a$ 的阶为 $d$
            - $\forall h \in Z$，有 $a^{h}=e \leftrightarrow d \mid h$
            - $\forall m, n \in Z$，有 $a^{m}=a^{n} \leftrightarrow d \mid(m-n) \leftrightarrow m \equiv n \pmod d$
        5. 设 $a$ 是群 $G$ 中一元，$a$ 的阶为 $d$，$k \in \mathrm{N}$
            - $a^{k}$ 的阶为 $\dfrac{d}{(d, k)}$，其中 $(d, k)$ 是 $d, k$ 的最大公因数
            - $a^{k}$ 的阶为 $d \leftrightarrow(d, k)=1$
        6. 设 $a, b$ 是群 $G$ 中的元素，$a$ 的阶为 $m$，$b$ 的阶为 $n$，$a b=b a$，$(m, n)=1$，则 $a b$ 的阶为 $m n$

### 1.1.2 子群与商群
1. 子群：设 $H$ 是群 $G$ 的一个非空子集，如果 $H$ 对于 $G$ 的运算也构成群，则称 $H$ 为 $G$ 的一个子群，记作 $H \leqslant G$
    1. 子群 $H$ 的幺元就是原群 $G$ 的幺元 $e$，子群 $H$ 中任一元 $a$ 的逆元就是在 $G$ 中 $a$ 的逆元 $a^{-1}$
    2. 对任一群 $G$，$H=\{e\}$ 与 $H=G$ 都是 $G$ 的子群，称为 $G$ 的平凡子群．$G$ 的其他子群称为非平凡子群
    3. 设 $H$ 是群 $G$ 的非空子集，则下列条件等价
        1. $H \leqslant G$
        2. $a, b \in H \rightarrow a b \in H, a^{-1} \in H$
        3. $a, b \in H \rightarrow a b^{-1} \in H$
    4. 设 $H$ 为群 $G$ 的非空有限子集，则 $H \leqslant G \leftrightarrow H$ 对 $G$ 中的运算封闭
    5. 若 $H_{1}, H_{2}$ 均是群 $G$ 的子群，则 $H_{1} \cap H_{2} \leqslant G$
2. 陪集：设 $H$ 是群 $G$ 的子群，$a \in G$，则分别称 $a H=\{a h \mid h \in H\},\ H a=\{h a \mid h \in H\}$ 为以 $a$ 为代表的 $H$ 的左陪集，右陪集
    1. 设 $H$ 是群 $G$ 的子群，则由 $a R b \leftrightarrow a^{-1} b \in H$ 确定的 $G$ 中的关系 $R$ 是一个等价关系，且 $a$ 所在的等价类 $\overline{a}$ 恰为以 $a$ 为代表的 $H$ 的左陪集 $a H$．故 $H$ 的全体左陪集（重复的只取一个）的集合 $\{a H\}$ 是 $G$ 的一个分类
    2. 设 $H$ 是群 $G$ 的子群，$a, b \in G$，则 $a H=b H \leftrightarrow a^{-1} b \in H$
3. 陪集空间：设 $H$ 为群 $G$ 的子群，$G$ 关于等价关系 $a R b \leftrightarrow a^{-1} b \in H$ 的商集合 $G / R$ 称为 $G$ 对 $H$ 的左商集，也称为 $G$ 对 $H$ 的左陪集空间，也记为 $G / H$．$G / H$ 的基数 $|G / H|$ 称为 $H$ 在 $G$ 中的指数，记为 $[G: H]$
    1. $\text{Lagrange}$ 定理：设 $G$ 是有限群，$H \leqslant G$，则有 $|G|=[G: H] \cdot|H|$，从而子群 $H$ 的阶是群 $G$ 的阶的因子
    2. 设 $G$ 是有限群，$K \leqslant G$，$H \leqslant K$，则有 $[G: H]=[G: K] \cdot[K: H]$
4. 正规子群：设 $G$ 是群，$H \leqslant G$，如果有 $ghg^{-1} \in H, \forall g \in G, \forall h \in H$，则称 $H$ 为 $G$ 的一个正规子群，记为 $H \triangleleft G$
    1. 平凡子群以及交换群的任何子群都是正规子群
    2. 设 $G$ 是群，$H \leqslant G$，则下列条件等价
        1. $H \triangleleft G$
        2. $gH=Hg, \forall g \in G$
        3. $g_{1} H \cdot g_{2} H=g_{1} g_{2} H, \forall g_{1}, g_{2} \in G$
5. 商群：设 $G$ 是群，$H \leqslant G$，$R$ 是 $G$ 中由 $a R b \leftrightarrow a^{-1} b \in H$ 定义的关系，则 $R$ 是 $G$ 中的同余关系 $\leftrightarrow H \triangleleft G$．此时商集合 $G / R$ 对同余关系 $R$ 导出的运算也构成一个群，称为 $G$ 对 $H$ 的商群，记为 $G / H$

## 1.2 群同态
1. 同态：设 $\left\{G_{1} ; \cdot\right\}$ 与 $\left\{G_{2} ; *\right\}$ 是两个群，若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的同态，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个同态映射
    1. 特殊的同态
        1. 单同态：若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的嵌入，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个单同态映射
        2. 满同态：若同态 $f$ 是满射，则称 $f$ 是满同态，并称 $G_{1}$ 与 $G_{2}$ 是同态的，记为 $G_{1} \sim G_{2}$
        3. 同构：若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的同构，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个同构映射，并称群 $G_{1}$ 与 $G_{2}$ 是同构的，记为 $G_{1} \simeq G_{2}$
        4. 自然同态：设 $G$ 是一个群，$H \triangleleft G$，记 $\pi$ 是 $G$ 到 $G/H$ 的映射，$\pi(g)=g H, \  \forall g \in G$．则 $\pi$ 是满同态，称 $\pi$ 为群 $G$ 到商群 $G / H$ 的自然同态
    2. 同态与同构的性质
        1. 若 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，$g$ 是群 $G_{2}$ 到群 $G_{3}$ 的同态，则 $g f$ 是 $G_{1}$ 到 $G_{3}$ 的同态．若 $f, g$ 都是满（单）同态，则 $g f$ 也是满 (单) 同态．若 $f, g$ 都是同构，则 $g f$ 也是同构．若 $f$ 是同构，则 $f^{-1}$ 也是同构
        2. 设 $f$ 是群 $G_1$ 到群 $G_2$ 的同态，$e_{1}, e_{2}$ 分别为 $G_1, G_2$ 的幺元，则有 $f\left(e_{1}\right)=e_{2}$ 及 $\forall a \in G, f\left(a^{-1}\right)=f(a)^{-1}$
        3. 设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，$H \leqslant G_{1}$，则 $H$ 的象集合 $f(H)$ 也是 $G_{2}$ 的子群．特别地，$f\left(G_{1}\right) \leqslant G_{2}$
2. 核：设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，则 $G_{2}$ 的幺元 $e_{2}$ 的原象 $f^{-1}[e] = \left\{a \in G_{1} \mid f(a)=e_{2}\right\}$ 称为同态映射 $f$ 的核，记为 $\operatorname{ker} f$
    1. 设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，则 $\operatorname{ker} f \triangleleft G_{1}$
    2. 设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，则 $f$ 是单同态 $\leftrightarrow \operatorname{ker} f=\left\{e_{1}\right\}$，这里 $e_{1}$ 是 $G_{1}$ 的幺元
3. 群同态基本定理：设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的满同态映射，则 $G_{1} / \operatorname{ker} f \simeq G_{2}$
    1. 设 $G$ 为一群，$f$ 是 $G$ 到另一群的同态映射，则 $G$ 的同态象 $f[G]$ 必同构于 $G$ 的商群 $G / \operatorname{ker} f$; 反之，$G$ 的任一商群都可看作 $G$ 的同态象
    2. 设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的满同态，$N=\operatorname{ker} f$
        1. $f$ 建立了 $G_{1}$ 中包含 $N$ 的子群与 $G_{2}$ 中子群间的双射
        2. 上述双射把正规子群对应到正规子群
        3. 若 $H \triangleleft G_{1}, N \subseteq H$，则 $G_{1} / H \simeq G_{2} / f[H]$
    3. 设 $G$ 是群，$N \triangleleft G$，$\pi$ 是 $G$ 到 $G / N$ 的自然同态．则 $\pi$ 建立了 $G$ 中包含 $N$ 的子群与 $G / N$ 的子群间的双射，而且把正规子群对应到正规子群．又若 $H \triangleleft G$，$N \subseteq H$，则 $G / H \simeq (G / N) /(H / N)$
    4. 设 $G$ 是群，$N \triangleleft G$，$\pi$ 是 $G$ 到 $G / N$ 的自然同态，$H \leqslant G$
        1. $H N$ 是 $G$ 中包含 $N$ 的子群，且 $H N=\pi^{-1}[\pi[H]]$，即 $H N$ 是 $H$ 在 $\pi$ 映射下的象集合 $\pi[H]$ 的原象 $\pi^{-1}[\pi[H]]$
        2. $(H \cap N) \triangleleft H$，且 $\operatorname{ker}\left(\pi \upharpoonright H\right)=H \cap N$
        3. $H N / N \simeq H /(H \cap N)$
4. 自同态与自同构：群 $G$ 到自身的同态映射称为 $G$ 的一个自同态，到自身的同构映射称为 $G$ 的一个自同构，用 $\operatorname{Aut}(G)$ 表示群 $G$ 的自同构群
    1. 设 $G$ 是群，则 $\operatorname{Aut}(G) \leqslant S_{G}$
    2. 设 $G$ 为群，$a \in G$，定义映射 $\sigma_{a}: G \rightarrow G$ 为 $\sigma_{a}(g)=a g a^{-1}, \forall g \in G$，则 $\sigma_{u} \in \operatorname{Aut}(G)$ 称为由 $a$ 决定的内自同构．记 $\operatorname{Inn}(G)=\left\{\sigma_{a} \mid a \in G\right\}$，则 $\operatorname{Inn}(G) \triangleleft \operatorname{Aut}(G)$，称 $\operatorname{Inn}(G)$ 为 $G$ 的内自同构群
    3. 群 $G$ 中，与 $G$ 中所有元素可交换的元素的集合称为群 $G$ 的中心，记为 $C(G)$．于是 $C(G)=\operatorname{ker} f$，$G / C(G) \simeq \operatorname{Inn}(G)$

## 1.3 群实例
### 1.3.1 循环群
1. 由一个元素 $a$ 反复运算生成的群 $G=\left\{a^{n} \mid n \in \mathbf{Z}\right\}$ 称为循环群，记为 $\langle a\rangle$，$a$ 称为这个循环群的生成元
    1. 循环群都是交换群
    2. 循环群的任一子群也是循环群
    3. 设群 $G=\langle a\rangle$．若 $G$ 是无限阶的，则 $G$ 与 $\{\mathbf{Z}; +\}$ 同构；若 $G$ 是有限阶 $m$ 阶的，则 $G$ 与 $\{\mathbf{Z}_{m} ;+\}$ 同构
    4. 设 $G$ 是 $m$ 阶循环群，$m_{0}$ 是 $m$ 的一个正整数因子，则存在 $G$ 的惟一的 $m_{0}$ 阶子群
    5. 设 $G$ 是 $m$ 阶群，则 $G$ 是循环群的充要条件是 对 $m$ 的每个正整数因子 $m_{0}$，都存在 $G$ 的惟一的 $m_{0}$ 阶子群
    6. 有限群 $G$ 的任一元素 $a$ 的阶是有限的，且是 $G$ 的阶的因子
2. 设 $S$ 是群 $G$ 中一个非空子集，记 $S^{-1}=\left\{a^{-1} \mid a\right. \in S\}$，则 $\left\{x_{1} \cdots x_{m} \mid x_{1}, \cdots, x_{m} \in S \cup S^{-1}\right\}$ 是 $G$ 的一个子群，称为 $S$ 生成的子群，记为 $\langle S\rangle$
    1. 若 $\langle a\rangle \subseteq G$，则 $\langle a\rangle$ 可以看作 $G$ 中所有包含 $\{a\}$ 的子群的交，它是 $G$ 中包含 $\{a\}$ 的最小的子群．若 $S$ 是 $G$ 中非空子集，则 $\langle S\rangle$ 可以看作 $G$ 中所有包含 $S$ 的子群的交，它是 $G$ 中包含 $S$ 的最小的子群
    2. 如果 $\langle S\rangle=G$，则称 $S$ 为群 $G$ 的一个生成组．如果群 $G$ 有一个有限子集 $S$ 作为 $G$ 的生成组，则称 $G$ 为有限生成群
    3. 有限群自身就可以看作一个生成组，因此有限群一定是有限生成群，但有限生成群不一定是有限群

### 1.3.2 变换群与置换群
1. 变换与置换：设 $A$ 是非空集合，$A$ 的所有可逆变换关于映射的复合运算构成的群称为 $A$ 的全变换群，记为 $\{S_{A}; \circ\}$，简记为 $S_{A}$，其子群称为 $A$ 的一个变换群．当 $A$ 为含有 $n$ 个元素的有限集时，$S_{A}$ 也称作 $n$ 元对称群，记作 $S_{n}$．$S_{n}$ 中的一个元素称为一个 $n$ 元置换．$S_{n}$ 的一个子群称为一个 $n$ 元置换群
    1. $\text{Cayley}$ 定理：任何一个群都与一个变换群同构．特别地，任一有限群都与一个置换群同构
    2. $n$ 元对称群 $S_{n}$ 的阶为 $n!$
    3. 当一个置换能表为奇（偶）数个对换的乘积时，称为奇置换（偶置换）
        1. 两个偶置换之积是偶置换
        2. 两个奇置换之积是偶置换
        3. 偶置换与奇置换之积是奇置换，奇置换与偶置换之积是奇置换
        4. 偶置换的逆置换是偶置换，奇置换的逆置换是奇置换
2. 轮换：设集合 $\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$ 为 $\{1,2, \cdots, n\}$ 的一个子集．若 $\sigma \in S_{n}$ 满足 $\sigma\left(i_{1}\right)=i_{2}, \sigma\left(i_{2}\right)=i_{3}, \cdots, \sigma\left(i_{r-1}\right)=i_{r}, \sigma\left(i_{r}\right)=i_{1}$，$\sigma(k)=k, \forall k \in\{1,2, \cdots, n\} -\left\{i_{1}, i_{2}, \cdots, i_{r}\right\}$，则称 $\sigma$ 为 $S_{n}$ 中的一个 $r-$轮换或 $r-$循环置换，记为 $\sigma=\begin{pmatrix} i_1 & i_2 & \cdots & i_n \\ \end{pmatrix}$．$i_{1}, i_{2}, \cdots, i_{r}$ 均称为轮换 $\sigma$ 中的文字，$r$ 称为轮换 $\sigma$ 的长．特别地，$2-$轮换 $\begin{pmatrix} i & j \end{pmatrix}$ 称为对换，恒等置换可记为 $1-$轮换
    1. 在 $S_{n}$ 中，$r-$轮换的阶为 $r$
    2. 在 $S_{n}$ 中，如果若干个轮换间没有共同文字，则称它们是不相交的轮换
        1. 在 $S_{n}$ 中，两个不相交的轮换的乘积是可交换的
        2. $\forall \sigma \in S_{n}$，$\sigma$ 都可表示为 $S_{n}$ 中一些不相交轮换之积
        3. 任一 $n$ 元置换表示为不相交轮换的乘积时，如果不计次序，则表示方法是惟一的
        4. 任一 $n$ 元置换都可以表示为一些对换的乘积
3. 交错群：$n$ 元偶置换的全体对置换的乘法构成一个群，称为 $n$ 元交错群，记为 $A_{n}$
    1. $A_{n} \triangleleft S_{n},\left|A_{n}\right|=\dfrac{n !}{2}$
    2. 设置换 $\sigma$ 表示为不相交轮换的乘积是 $\sigma=\sigma_{1} \sigma_{2} \cdots \sigma_{s}$，其中 $\sigma_{i}$ 是 $r_{i}-$ 轮换（$i=1,2, \cdots, s$），则作为群 $S_{n}$ 中的元素，$\sigma$ 的阶是 $r_{1}, r_{2}, \cdots, r_{s}$ 的最小公倍式 $\left[r_{1}, r_{2}, \cdots, r_{s}\right]$

### 1.3.3 单群与可解群
1. 单群：如果群 $G$ 只有平凡的正规子群，则称 $G$ 为单群
    1. 设 $G$ 为交换群，$G \neq\{e\}$，则 $G$ 为单群的充分必要条件是 $G$ 为质数阶循环群
    2. 对 $n$ 元交错群 $A_{n}$，当 $n \neq 4$ 时都是单群，其中 $n= 1,2,3$ 时，$A_{n}$ 是交换单群；$n \geqslant 5$ 时，$A_{n}$ 是非交换单群
2. 可解群：设 $G$ 是群，如果有一非负整数 $k$，使 $G^{(k)}=\{e\}$，则称 $G$ 为可解群
    1. 导出群：设 $G$ 是群，$a, b \in G$，称 $a^{-1} b^{-1} a b$ 是 $a$ 与 $b$ 的换位子，记为 $[a, b]$．称 $G$ 中所有换位子生成的子群为 $G$ 的换位子群，也称为 $G$ 的 $1$ 次导出群（简称为导出群），记为 $[G, G]$，也记为 $G^{(1)}$．$\left(G^{(1)}\right)^{(1)}$ 称为 $G$ 的 $2$ 次导出群，也记为 $G^{(2)}$，从而称 $G^{(k)}=\left(G^{(k-1)}\right)^{(1)}$ 称为 $G$ 的 $k$ 次导出群．定义 $G^{(0)}$ 为 $G$
        1. $G$ 中所有换位子的集合关于 $G$ 的运算不一定构成群
        2. 设 $G$ 是群，则 $G^{(1)} \triangleleft G$
    2. 交换群都是可解群
    3. 可解群的子群都是可解群
    4. 可解群的商群或同态象是可解群
    5. 设 $G$ 是群，$H \triangleleft G$，若 $H$ 和 $G / H$ 都是可解群，则 $G$ 也是可解群
    6. 当 $n \leqslant 4$ 时，$A_{n}$ 是可解群；当 $n \geqslant 5$ 时，$A_{n}$ 不是可解群
