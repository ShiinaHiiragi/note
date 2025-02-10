# 4 形式算术

## 4.1 形式算术
### 4.1.1 一阶算术
初等数论的语言 $\mathscr L(S)$，其中 $S = \{=, \mathrm{S}, +, \times, 0\}$ 且 $\Omega(=) = 2, \Omega(\mathrm{S}) = 1, \Omega(+) = \Omega(\times) = 2, 0 \in \mathbf C$

1. 设 $S-$语句集为
    1. $\forall x  \ (\mathrm{S} x \not = 0)$
    2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{S} y \rightarrow x = y)$
    3. $\forall x \ (x \not = 0 \rightarrow \exists y \ (x = \mathrm{S} y))$
    4. $\forall x \ (x+0 = x)$
    5. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{S}(x+y))$
    6. $\forall x \ (x \cdot 0 = 0)$
    7. $\forall x \forall y \ (x \cdot \mathrm{S} y = x \cdot y+x)$

    定义 $\text{Robinson}$ 算术 $\mathbf{Q}$ 是以上公理的理论

    1. 对每个标准自然数 $n \in \mathbf{N}$，在 $\mathrm{Q}$ 内都存在对应项 $\small \underbrace{\normalsize \mathrm{S} \mathrm{S}\cdots \mathrm{S}}_{\normalsize n} \normalsize 0$，简记为 $\mathrm{S}^{n} \ 0$
        1. $\mathrm{Q} \not \vdash \forall x \ (\mathrm{S} x \neq x)$
        2. 对任意 $n \in \mathbf{N}$，$\mathrm{Q} \vdash \mathrm{S} n \not = \mathrm{S}^{n} \ 0$
        3. $\vdash \forall x(\mathrm{S} x+\mathrm{S}^{n} \ 0 = x+\mathrm{S} \mathrm{S}^{n} \ 0)$
        4. $\vdash \mathrm{S}^{m} \ 0+\mathrm{S}^{n} \ 0 = \mathrm{S}^{m+n} \ 0$ 且 $\vdash \mathrm{S}^{m} \ 0 \cdot \mathrm{S}^{n} \ 0 = \mathrm{S}^{m \cdot n} \ 0$
        5. 如果 $n \neq m$ 则 $\vdash \mathrm{S}^{n} \ 0 \neq \mathrm{S}^{m} \ 0$
        6. 如果 $m \leqslant n$ 则 $\vdash \mathrm{S}^{m} \ 0 \leqslant \mathrm{S}^{n} \ 0$
        7. 如果 $m \not \leqslant n$ 则 $\vdash \mathrm{S}^{m} \ 0 \not \leqslant \mathrm{S}^{n} \ 0$
        8. $\vdash \forall x(x \leqslant \mathrm{S}^{n} \ 0 \leftrightarrow x = 0 \vee \cdots \vee x = \mathrm{S}^{n} \ 0)$
        9. $\vdash \forall x(x \leqslant \mathrm{S}^{n} \ 0 \vee \mathrm{S}^{n} \ 0 \leqslant x)$
    2. $\text{Robinson}$ 算术的扩展

2. 设 $S-$语句集为
    1. $\forall x \ (\mathrm{S} x \not = 0)$
    2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{S} y \rightarrow x = y)$
    3. $\forall x \ (x+0 = x)$
    4. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{S}(x+y))$
    5. $\forall x \ (x \times 0 = 0)$
    6. $\forall x \forall y \ (x \times \mathrm{S} y = x \times y+x)$
    7. 归纳公理模式：对每个一阶公式 $\varphi$，都有对 $\varphi$ 的归纳公理 $\forall x \ ((\varphi(0) \wedge \forall x(\varphi(x) \rightarrow \varphi(\mathrm{S} x))) \rightarrow \forall x \varphi(x))$

    定义 $\text{Peano}$ 算术 $\mathbf{PA}$ 是以上公理的理论

    1. 称 $\mathfrak N$ 是 $\mathfrak N = \{\mathbf N, \{Z^{\mathfrak N}\}_{Z \in S}\}$ 的标准模型，易知存在可数的非标准 $\mathbf{PA}$ 模型 $\mathfrak M$，即 $\mathfrak M$ 与 $\mathfrak N$ 初等等价但不同构
    2. $\text{Peano}$ 算术的扩展

### 4.1.2 二阶算术

## 4.2 不完备定理
### 4.2.1 可表示性

### 4.2.2 可证性

### 4.2.3 不完备定理

## 4.3 反推数学
