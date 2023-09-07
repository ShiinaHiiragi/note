# 4 格论

## 4.1 格
1. 格：设 $(L, \leqslant)$ 为偏序集，如果任意的 $a, b \in L$ 有最小上界与最大下界时，称 $L$ 为格．$a \vee b=\operatorname{lub}(a, b)$ 表示 $a, b$ 之最小上界，$a \wedge b=\operatorname{glb}(a, b)$ 表示 $a, b$ 之最大下界
    1. 覆盖：设 $(L, <)$ 为格，如果 $a \leqslant b, a \neq b$（记为 $a < b$）且不存在 $u \in L-\{a, b\}$ 使 $a < u < b$，则称 $b$ 覆盖 $a$
    2. 完全格：$(L, \leqslant)$ 为偏序集，当任意 $A \subseteq L$ 有最大下界、最小上界时，$L$ 显然是格，称为完全格
        1. $L$ 自身的最小上界是整个格 $L$ 的最大元，记为 $1$
        2. $L$ 自身的最大下界为整个格 $L$ 的最小元，记为 $0$

        于是任意 $x \in L$，$x \leqslant 1$ 且 $0 \leqslant x$

2. 可将 $\{L ; \vee, \wedge\}$ 视为代数系统
    1. 设 $(L, \leqslant)$ 为格，则对任意 $a, b \in L$ 有
        1. $a \leqslant a \vee b, a \wedge b \leqslant a$
        2. $a \leqslant b$ 当且仅当 $a \vee b=b$
        3. $a \leqslant b$ 当且仅当 $a \wedge b=a$
    2. 设 $(L, \leqslant)$ 为格，则任意 $a, b, c \in L$ 有
        1. 幂等律：$L_1: a \vee a=a, a \wedge a=a$
        2. 交换律：$L_2: a \vee b=b \vee a, a \wedge b=b \wedge a$
        3. 结合律：$L_3: a \vee(b \vee c)=(a \vee b) \vee c, a \wedge(b \wedge c)=(a \wedge b) \wedge c$
        4. 吸收律：$L_4: a \vee(a \wedge b)=a, a \wedge(a \vee b)=a$
    3. 代数系统 $\{L ; \vee, \wedge\}$ 中二元关系 $\vee, \wedge$ 满足 $L_{1}\sim L_{4}$．定义关系 $\leqslant$ 如下：任意 $a, b \in L$，$a \leqslant b$ 当且仅当 $a \vee b=b$，则 $(L, \leqslant)$ 为偏序集且 $\{L ; \vee, \wedge\}$ 为格
        1. 代数系统 $\{L ; \vee, \wedge\}$ 中二元关系 $\vee, \wedge$ 满足 $L_{1}\sim L_{4}$，则对任意 $a, b \in L$，$a \wedge b=a$ 当且仅当 $a \vee b=b$
        2. 保序性：设 $\{L ; \vee, \wedge\}$ 为格，对任意 $a, b, c \in L$，当 $b \leqslant c$ 时有 $a \wedge b \leqslant a \wedge c$ 及 $a \vee b \leqslant a \vee c$
3. 子格：

## 4.2 Boole 代数
