# 2 同余理论

## 2.1 同余
### 2.1.1 同余的概念
1. 同余：给定正整数 $m$，如果整数 $a, b$ 有 $m | (a - b)$，则称 $a$ 与 $b$ 对于模 $m$ 同余，记作 $a \equiv b (\bmod m)$；否则称 $a$ 与 $b$ 对于模 $m$ 不同余，记作 $a \not\equiv b (\bmod n)$
    1. 以下三种叙述等价
        1. $a \equiv b (\bmod m)$
        2. 存在整数 $q$ 使得 $a = b + qm$
        3. 存在整数 $q_1, q_2$ 使得 $a = q_1m + r, b = q_2m + r \ (0 \leqslant r < m)$
    2. 同余是等价关系
        1. $a \equiv a (\bmod m)$
        2. $a \equiv b (\bmod m) \to b \equiv a (\bmod m)$
        3. $a \equiv b (\bmod m) \wedge b \equiv c (\bmod m) \to a \equiv c (\bmod m)$
2. 同余的运算
    1. 同余的加减运算
        1. 若 $a \equiv b (\bmod m)$，$c$ 为整数，则 $a + c \equiv b + c (\bmod m)$
        2. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $a + c \equiv b + d (\bmod m)$
        3. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $a - c \equiv b - d (\bmod m)$
        4. 若 $a + b \equiv c (\bmod m)$，则 $a \equiv c - b (\bmod m)$
    2. 同余的乘除运算
        1. 若 $a \equiv b (\bmod m)$ 且 $c$ 为整数，则 $ac \equiv bc (\bmod m)$
        2. 若 $a \equiv b (\bmod m)$ 且 $c$ 为正整数，则 $ac \equiv bc (\bmod mc)$ 
        3. 若 $a \equiv b (\bmod m), c \equiv d (\bmod m)$，则 $ac \equiv bc (\bmod m)$，特别地，若 $a \equiv b (\bmod m)$ 且 $n$ 为正整数，则 $a^n \equiv b^n (\bmod m)$
        4. 若 $a_i, b_i \ (0 \leqslant i \leqslant n)$ 与 $x, y$ 均为整数，且 $x \equiv y (\bmod m), a_i \equiv b_i (\bmod m) \ (0 \leqslant i \leqslant n)$，则 $\sum_{i = 0}^n a_ix^i \equiv \sum_{i = 0}^n b_iy^i (\bmod m)$
        5. 若 $(c, m) = 1$，则 $a \equiv b (\bmod m) \leftrightarrow ac \equiv bc (\bmod m)$
        6. 若 $a \equiv b (\bmod m) \ (1 \leqslant i \leqslant k)$，则 $a \equiv b (\bmod d)$
    3. 同余与公约数、公倍数的关系
        1. 若 $a \equiv b (\bmod m)$，则 $(a, m) = (b, m)$
        2. 若 $a \equiv b (\bmod m_i) \ (1 \leqslant i \leqslant k)$，则 $a \equiv b (\bmod [m_1, m_2, \cdots, m_k])$

### 2.1.2 剩余类
1. 剩余类：给定正整数 $m$，对于每个整数 $i \ (0 \leqslant i \leqslant m - 1)$，称集合 $R_i(m) = \{n | n \equiv i (\bmod m), n \in \mathbf Z\}$ 是模 $m$ 的一个剩余类
2. 完全剩余系

### 2.1.3 Euler 定理

### 2.1.4 Fermat 定理

## 2.2 同余方程

## 2.3 二次同余式

## 2.4 原根与指标
