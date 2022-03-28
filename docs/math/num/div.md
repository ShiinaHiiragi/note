# 1 整除理论

## 1.1 整除与约数
1. 整除：设 $a, b \in Z$ 且 $b \neq 0$．如果存在整数 $c$ 使得 $a = bc$ 成立，则称 $b$ 整除 $a$，记作 $b \mid a$；如果不存在这样的整数 $c$，则称 $b$ 不整除 $a$，记作 $b \nmid a$
    1. $a \mid b \to \pm a \mid \pm b$
    2. $a \mid b \wedge b \mid c \to a \mid c$
    3. $b \mid a_i(i = 1, 2, \cdots, k) \to b | a_1x_1 + a_2x_2 + \cdots + a_kx_k$，其中 $x_i \in Z$
    4. $b \mid a \to bc \mid ac$
    5. $b \mid a, a \neq 0 \to |b| \leqslant |a|$
    6. $b \mid a \wedge |a| < |b| \to a = 0$
2. 约数与倍数：设 $a, b\in Z$ 且 $b \mid a$，则称 $b$ 是 $a$ 的约数，此时称 $a$ 是 $b$ 的倍数

    !!! note "平凡约数"
        对每个 $a \in Z - \{0\}$ 都有约数 $1, -1, a, -a$，称其为平凡约数。否则称之为非平凡约数

3. 质数与合数：若整数 $a \neq 0, \pm 1$ 且只有约数 $\pm 1, \pm a$，则称 $a$ 是质数，否则称 $a$ 是合数
    1. 全体正整数可以分为三类：$1$、质数、合数
    2. 任何大于 $1$ 的整数 $a$ 都至少有一个质约数
        1. 如果 $a$ 是大于 $1$ 的整数，则 $a$ 的大于 $1$ 的最小约数必为质数
        2. 任何大于 $1$ 的合数 $a$ 必有一个不超过 $\sqrt a$ 的质约数
    3. 质数的个数是无穷的
    4. 若 $p$ 是一质数，$a$ 是任一整数，则 $a$ 能被 $p$ 整除或 $p$ 与 $a$ 互质
    5. 设 $a_1, a_2, \cdots, a_n$ 是 $n$ 个整数，$p$ 是质数．若 $p \mid a_1 a_2 \cdots a_n$，则 $\exists a_i: p \mid a_i$
4. 算术基本定理

## 1.2 取整函数
