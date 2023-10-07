# 1 群论

## 1.1 群的性质
### 1.1.1 群
1. 幺元与逆元
    1. 幺元：群 $\{S ; \circ\}$ 中存在元素 $e_{1}\left(e_{2}\right)$，使 $e_{1} \circ a=a\left(a \circ e_{2}=a\right), \  \forall a \in S$，称 $e_{1}\left(e_{2}\right)$ 为 $S$ 的左（右）幺元，也称为单位元
    2. 逆元：群 $\{S; \circ\}$ 的幺元为 $e$ 是幺元，$a \in S$．若 $a_{1}\left(a_{2}\right) \in S$，使 $a_{1} \circ a=e\left(a \circ a_{2}=e\right)$，则称 $a_{1}\left(a_{2}\right)$ 为 $a$ 的左（右）逆元．若 $b$ 既是 $a$ 的左逆元，又是 $a$ 的右逆元，即有 $b a=a b=e$，则称 $b$ 为 $a$ 的逆元，记为 $b=a^{-1}$，称 $a$ 为可逆元
2. 设 $\{G; \circ\}$ 是一个群，称运算 $\circ$ 为乘法，并将 $a \circ b$ 简记为 $ab$
    1. 幺半群中的幺元惟一，群中任一元的逆元惟一
    2. 群 $G$ 的运算满足左（右）消去律，即 $\forall a, b, c \in G: a b=a c \ (b a=c a) \rightarrow b=c$
    3. 在群 $G$ 中，$\forall a, b \in G$，方程 $a x=b$ 及 $x a=b$ 的解均存在且惟一
    4. 若半群 $G$ 满足对 $\forall a, b \in G$，方程 $a x=b$ 及 $x a= b$ 均有解，则 $G$ 是群
    5. 有限半群 $G$ 若满足左、右消去律，则 $G$ 是群
3. 幂：设 $G$ 为群，$n$ 为正整数，对 $\forall a \in G$，规定

    $$
    \begin{aligned}
    a^{n}&=\small \underbrace{\normalsize a \circ a \circ \cdots \circ a}_{\normalsize n} \normalsize \\
    a^{-n}&=\left(a^{-1}\right)^{n} \\
    a^{0}&=e
    \end{aligned}
    $$

    1. 对任意整数 $m, n$，有 $a^{m} a^{n}=a^{m+n}, \ \left(a^{m}\right)^{n}=a^{m n}$．若 $G$ 是交换群，则 $(a b)^{m}=a^{m} b^{m}$
    2. 当 $G$ 为交换群时，可将 $\circ$ 记为 $+$，并将幺元记为 $0$，将 $a \in G$ 的逆元记为 $-a$，并定义幂次

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
1. 子群：设 $H$ 是群 $G$ 的一个非空子集，如果 $H$ 对于 $G$ 的运算也构成群，则称 $H$ 为 $G$ 的一个子群，记作 $H<G$
    1. 子群 $H$ 的幺元就是原群 $G$ 的幺元 $e$，子群 $H$ 中任一元 $a$ 的逆元就是在 $G$ 中 $a$ 的逆元 $a^{-1}$
    2. 对任一群 $G$，$H=\{e\}$ 与 $H=G$ 都是 $G$ 的子群，称为 $G$ 的平凡子群．$G$ 的其他子群称为非平凡子群
    3. 设 $H$ 是群 $G$ 的非空子集，则下列条件等价
        1. $H<G$
        2. $a, b \in H \rightarrow a b \in H, a^{-1} \in H$
        3. $a, b \in H \rightarrow a b^{-1} \in H$
    4. 设 $H$ 为群 $G$ 的非空有限子集，则 $H<G \leftrightarrow H$ 对 $G$ 中的运算封闭
    5. 若 $H_{1}, H_{2}$ 均是群 $G$ 的子群，则 $H_{1} \cap H_{2}<G$
2. 陪集：设 $H$ 是群 $G$ 的子群，$a \in G$，则分别称 $a H=\{a h \mid h \in H\},\ H a=\{h a \mid h \in H\}$ 为以 $a$ 为代表的 $H$ 的左陪集，右陪集
    1. 设 $H$ 是群 $G$ 的子群，则由 $a R b \leftrightarrow a^{-1} b \in H$ 确定的 $G$ 中的关系 $R$ 是一个等价关系，且 $a$ 所在的等价类 $\overline{a}$ 恰为以 $a$ 为代表的 $H$ 的左陪集 $a H$．故 $H$ 的全体左陪集（重复的只取一个）的集合 $\{a H\}$ 是 $G$ 的一个分类
    2. 设 $H$ 是群 $G$ 的子群，$a, b \in G$，则 $a H=b H \leftrightarrow a^{-1} b \in H$
3. 陪集空间：设 $H$ 为群 $G$ 的子群，$G$ 关于等价关系 $a R b \leftrightarrow a^{-1} b \in H$ 的商集合 $G / R$ 称为 $G$ 对 $H$ 的左商集，也称为 $G$ 对 $H$ 的左陪集空间，也记为 $G / H$．$G / H$ 的基数 $|G / H|$ 称为 $H$ 在 $G$ 中的指数，记为 $[G: H]$
    1. $\text{Lagrange}$ 定理：设 $G$ 是有限群，$H<G$，则有 $|G|=[G: H] \cdot|H|$，从而子群 $H$ 的阶是群 $G$ 的阶的因子
    2. 设 $G$ 是有限群，$K<G$，$H<K$，则有 $[G: H]=[G: K] \cdot[K: H]$
4. 正规子群：设 $G$ 是群，$H<G$，如果有 $ghg^{-1} \in H, \forall g \in G, \forall h \in H$，则称 $H$ 为 $G$ 的一个正规子群，记为 $H \triangleleft G$
    1. 平凡子群以及交换群的任何子群都是正规子群
    2. 设 $G$ 是群，$H<G$，则下列条件等价
        1. $H \triangleleft G$
        2. $gH=Hg, \forall g \in G$
        3. $g_{1} H \cdot g_{2} H=g_{1} g_{2} H, \forall g_{1}, g_{2} \in G$
5. 商群：设 $G$ 是群，$H<G$，$R$ 是 $G$ 中由 $a R b \leftrightarrow a^{-1} b \in H$ 定义的关系，则 $R$ 是 $G$ 中的同余关系 $\leftrightarrow H \triangleleft G$．此时商集合 $G / R$ 对同余关系 $R$ 导出的运算也构成一个群，称为 $G$ 对 $H$ 的商群，记为 $G / H$

## 1.2 群同态
1. 同态：设 $\left\{G_{1} ; \cdot\right\}$ 与 $\left\{G_{2} ; *\right\}$ 是两个群，若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的同态，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个同态映射
    1. 特殊的同态
        1. 自同态：若 $G_{1}$ 与 $G_{2}$ 是同一个群，则称 $f$ 是自同态
        2. 单同态：若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的嵌入，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个单同态映射
        3. 满同态：若同态 $f$ 是满射，则称 $f$ 是满同态，并称 $G_{1}$ 与 $G_{2}$ 是同态的，记为 $G_{1} \sim G_{2}$
        4. 同构：若 $f$ 是 $G_{1}$ 到 $G_{2}$ 的同构，则称 $f$ 是 $G_{1}$ 到 $G_{2}$ 的一个同构映射，并称群 $G_{1}$ 与 $G_{2}$ 是同构的，记为 $G_{1} \simeq G_{2}$
        5. 自然同态：设 $G$ 是一个群，$H \triangleleft G$，记 $\pi$ 是 $G$ 到 $G/H$ 的映射，$\pi(g)=g H, \  \forall g \in G$．则 $\pi$ 是满同态，称 $\pi$ 为群 $G$ 到商群 $G / H$ 的自然同态
    2. 同态与同构的性质
        1. 若 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，$g$ 是群 $G_{2}$ 到群 $G_{3}$ 的同态，则 $g f$ 是 $G_{1}$ 到 $G_{3}$ 的同态．若 $f, g$ 都是满（单）同态，则 $g f$ 也是满 (单) 同态．若 $f, g$ 都是同构，则 $g f$ 也是同构．若 $f$ 是同构，则 $f^{-1}$ 也是同构
        2. 设 $f$ 是群 $G_1$ 到群 $G_2$ 的同态，$e_{1}, e_{2}$ 分别为 $G_1, G_2$ 的幺元，则有 $f\left(e_{1}\right)=e_{2}$ 及 $\forall a \in G, f\left(a^{-1}\right)=f(a)^{-1}$
        3. 设 $f$ 是群 $G_{1}$ 到群 $G_{2}$ 的同态，$H<G_{1}$，则 $H$ 的象集合 $f(H)$ 也是 $G_{2}$ 的子群．特别地，$f\left(G_{1}\right)<G_{2}$
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
    4. 设 $G$ 是群，$N \triangleleft G$，$\pi$ 是 $G$ 到 $G / N$ 的自然同态，$H<G$
        1. $H N$ 是 $G$ 中包含 $N$ 的子群，且 $H N=\pi^{-1}[\pi[H]]$，即 $H N$ 是 $H$ 在 $\pi$ 映射下的象集合 $\pi[H]$ 的原象 $\pi^{-1}[\pi[H]]$
        2. $(H \cap N) \triangleleft H$，且 $\operatorname{ker}\left(\pi \upharpoonright H\right)=H \cap N$
        3. $H N / N \simeq H /(H \cap N)$

## 1.3 群实例
### 1.3.1 循环群

### 1.3.2 变换群

### 1.3.3 置换群
