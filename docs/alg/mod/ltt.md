# 4 格论

## 4.1 格
1. 格：设 $(L, \leqslant)$ 为偏序集，如果任意的 $a, b \in L$ 有最小上界与最大下界时，称 $L$ 为格
    1. 记 $a \vee b=\operatorname{sup}\{a, b\}$ 表示 $a, b$ 之最小上界，$a \wedge b=\operatorname{inf}\{a, b\}$ 表示 $a, b$ 之最大下界
    2. 覆盖：设 $(L, <)$ 为格，如果 $a \leqslant b, a \neq b$（记为 $a < b$）且不存在 $u \in L-\{a, b\}$ 使 $a < u < b$，则称 $b$ 覆盖 $a$
    3. 子格：$\{L ; \vee, \wedge\}$ 为格，$\varnothing \neq T \subseteq L$．$T$ 关于 $\vee, \wedge$ 封闭时，称 $T$ 为 $L$ 的子格
2. 特殊的格
    1. 半格：若偏序集 $(L, \leqslant)$ 对任意 $a, b \in L$ 只有最小上界（最大下界），则称 $L$ 为上（下）半格
    2. 有界格：一个具有最大元 1 和最小元 0 的格 $\{L ; \vee, \wedge\}$ 称为有界格
    3. 有补格：$\{L ; \vee, \wedge\}$ 为有界格，对 $a \in L$，如果存在 $b \in L$ 使 $a \vee b=1, a \wedge b=0$，则称 $b$ 为 $a$ 的补元，记 $b$ 为 $a^{\prime}$．若 $L$ 中的每个元有补元，则称 $L$ 为有补格
    4. 分配格：$\{L ; \vee, \wedge\}$ 为格，当对其任意元 $a, b, c \in L$ 成立分配律
        1. $a \vee(b \wedge c) \leqslant(a \vee b) \wedge(a \vee c)$
        2. $(a \wedge b) \vee(a \wedge c) \leqslant a \wedge(b \vee c)$

        则称该格为分配格

    5. 完全格：$(L, \leqslant)$ 为偏序集，当任意 $A \subseteq L$ 有最大下界、最小上界时，$L$ 显然是格，称为完全格
        1. $L$ 自身的最小上界是整个格 $L$ 的最大元，记为 $1$
        2. $L$ 自身的最大下界为整个格 $L$ 的最小元，记为 $0$

        于是任意 $x \in L$，$x \leqslant 1$ 且 $0 \leqslant x$

3. 可将 $\{L ; \vee, \wedge\}$ 视为代数系统
    1. 设 $(L, \leqslant)$ 为格，则对任意 $a, b \in L$ 有
        1. $a \leqslant a \vee b, a \wedge b \leqslant a$
        2. $a \leqslant b$ 当且仅当 $a \vee b=b$
        3. $a \leqslant b$ 当且仅当 $a \wedge b=a$
    2. 设 $(L, \leqslant)$ 为格，则任意 $a, b, c \in L$ 有
        1. 幂等律：$(L_1) \ a \vee a=a, a \wedge a=a$
        2. 交换律：$(L_2) \ a \vee b=b \vee a, a \wedge b=b \wedge a$
        3. 结合律：$(L_3) \ a \vee(b \vee c)=(a \vee b) \vee c, a \wedge(b \wedge c)=(a \wedge b) \wedge c$
        4. 吸收律：$(L_4) \ a \vee(a \wedge b)=a, a \wedge(a \vee b)=a$
    3. 代数系统 $\{L ; \vee, \wedge\}$ 中二元关系 $\vee, \wedge$ 满足 $L_{1}\sim L_{4}$
        1. 定义关系 $\leqslant$ 如下：任意 $a, b \in L$，$a \leqslant b$ 当且仅当 $a \vee b=b$，则 $(L, \leqslant)$ 为偏序集（称为格序），且 $\{L ; \vee, \wedge\}$ 为格
        2. 代数系统 $\{L ; \vee, \wedge\}$ 中二元关系 $\vee, \wedge$ 满足 $L_{1}\sim L_{4}$，则对任意 $a, b \in L$，$a \wedge b=a$ 当且仅当 $a \vee b=b$
        3. 保序性：设 $\{L ; \vee, \wedge\}$ 为格，对任意 $a, b, c \in L$，当 $b \leqslant c$ 时有 $a \wedge b \leqslant a \wedge c$ 及 $a \vee b \leqslant a \vee c$
4. 格同态
    1. 格 $\{L ; \vee, \wedge\}$ 与格 $\{S ; \vee, \wedge\}$ 同态，$\varphi$ 为其同态映射，则 $\varphi$ 是保序映射，即对任意 $a, b \in L$，当 $a \leqslant b$ 时有 $\varphi(a) \leqslant \varphi(b)$
    2. $\varphi$ 是格 $L$ 到格 $S$ 的一一对应，则 $\varphi$ 是同构映射当且仅当对任何 $a, b \in L$ 都有 $a \leqslant b \leftrightarrow \varphi(a) \leqslant \varphi(b)$
5. 对偶原理
    1. 设 $P$ 是对任意偏序集都为真的一个命题，$P^{\prime}$ 是将 $P$ 中所有 $\leqslant, \geqslant$ 对换得到的对偶命题，则 $P^{\prime}$ 对任意偏序集也为真
    2. 设 $P$ 是从格 $\{B ; \vee, \wedge\}$ 推出的命题，$P^{\prime}$ 是将 $P$ 中 $\vee$ 与 $\wedge$ 对换得到的对偶命题，则 $P^{\prime}$ 对格 $\{B ; \wedge, \vee\}$ 也为真

## 4.2 Boole 代数
1. $\text{Boole}$ 格：有补分配格，习惯上写成 $(B, \leqslant)$．对任意 $a, b \in B$，都有
    1. $a$ 的补元是唯一的
    2. $(a \wedge b)^{\prime}=a^{\prime} \vee b^{\prime},(a \vee b)^{\prime}=a^{\prime} \wedge b^{\prime}$
    3. $(a \wedge b)=0 \leftrightarrow a \leqslant b^{\prime}$
2. $\text{Boole}$ 代数：$\text{Boole}$ 格 $(B, \leqslant)$ 也可被定义为 $\{B; \vee, \wedge, '\}$
    1. $\text{Boole}$ 代数 $\{B; \vee, \wedge, '\}$ 的运算满足下述各性质
        1. $L_{1}:  a \wedge a=a, a \vee a=a$
        2. $L_{2}:  a \wedge b=b \wedge a, a \vee b=b \vee a$
        3. $L_{3}:  a \wedge(b \wedge c)=(a \wedge b) \wedge c, a \vee(b \vee c)=(a \vee b) \vee c$
        4. $L_{4}:  a \wedge(b \vee a)=a, a \vee(b \wedge a)=a$
        5. $D_{1}:  a \wedge(b \vee c)=(a \wedge b) \vee(a \wedge c), a \vee(b \wedge c)=(a \vee b) \wedge(a \vee c)$
        6. $D_{2}: (a \wedge b) \vee(b \wedge c) \vee(c \wedge a)=(a \vee b) \wedge(b \vee c) \wedge(c \vee a)$
        7. $B_{1}:  a \wedge 0=0, a \vee 1=1$
        8. $B_{2}:  a \wedge 1=a, a \vee 0=a$
        9. $C_{1}:  a \wedge a^{\prime}=0, a \vee a^{\prime}=1$
        10. $C_{2}: 0^{\prime}=1,1^{\prime}=0$
        11. $C_{3}: (a \wedge b)^{\prime}=a^{\prime} \vee b^{\prime},(a \vee b)^{\prime}=a^{\prime} \wedge b^{\prime}$
        12. $P_{1}:  a \wedge b=\operatorname{inf}\{a, b\}, a \vee b=\operatorname{sup}\{a, b\}$
        13. $P_{2}:  a \leqslant b \leftrightarrow a \wedge b=a \leftrightarrow a \vee b=b$
        14. $P_{3}:  a \leqslant b \leftrightarrow a \wedge b^{\prime}=0 \leftrightarrow b^{\prime} \leqslant a^{\prime} \leftrightarrow a^{\prime} \vee b=1$

        其中 $L_{1}\sim L_{4}$ 是因为 $B$ 为格，$D_{1}\sim D_{2}$ 是因为 $B$ 为分配格，$B_{1}\sim B_{2}$ 因为 $B$ 是有界格，$C_{1}\sim C_{3}$ 因为 $B$ 是有补格，$P_{1}\sim P_{3}$ 因为 $B$ 有偏序关系是否是 $\text{Boole}$ 代数

    2. 设 $B$ 至少包含两个元素，$\wedge, \vee$ 是 $B$ 上的两个二元运算，$'$ 为 $B$ 上的一元运算．如对任何 $a, b, c \in B$ 都有
        1. $H_{1}: a \wedge b=b \wedge a, a \vee b=b \vee a$
        2. $H_{2}: a \wedge(b \vee c)=(a \wedge b) \vee(a \wedge c), a \vee(b \wedge c)=(a \vee b) \wedge(a \vee c)$
        3. $H_{3}:$ 在 $B$ 中存在零元 $0$ 使 $a \wedge 0=0, a \vee 0=a$，存在单位元 $1$ 使 $a \wedge 1=a, a \vee 1=1$
        4. $H_{4}: a^{\prime} \in B$，使 $a \wedge a^{\prime}=0, a \vee a^{\prime}=1$

        则 $\{B; \vee, \wedge, '\}$ 为布尔代数

3. $\text{Boole}$ 环：$[B ; \vee, \wedge, ']$ 为 $\text{Boole}$ 代数，定义 $a+b=\left(a \wedge b^{\prime}\right) \vee\left(a^{\prime} \wedge b\right), a \cdot b=a \wedge b$，则 $\{B ; +, \cdot\}$ 为环，称为 $\text{Boole}$ 环
