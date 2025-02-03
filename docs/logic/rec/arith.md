# 5 形式算术

## 5.1 一阶算术
1. 初等数论的语言 $\mathscr L(S)$，其中 $S = \{=, \mathrm{S}, +, \times, 0\}$ 且 $\Omega(=) = 2, \Omega(\mathrm{S}) = 1, \Omega(+) = \Omega(\times) = 2, 0 \in \mathbf C$，设模型 $\mathfrak N = \{\mathbf N, \{Z^{\mathfrak N}\}_{Z \in S}\}$
    1. 设 $\text{Peano}$ 算术 $\mathbf{PA}$ 是如下公理的理论
        1. $\forall x \ (\mathrm{S} x \not = 0)$
        2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{~S} y \rightarrow x = y)$
        3. $\forall x \ (x+0 = x)$
        4. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{~S}(x+y))$
        5. $\forall x \ (x \times 0 = 0)$
        6. $\forall x \forall y \ (x \times \mathrm{S} y = x \times y+x)$
        7. 归纳公理模式：对每个一阶公式 $\varphi$，都有对 $\varphi$ 的归纳公理 $\forall x \ ((\varphi(0) \wedge \forall x(\varphi(x) \rightarrow \varphi(\mathrm{S} x))) \rightarrow \forall x \varphi(x))$

        称 $\mathfrak N$ 是 $\textbf{PA}$ 的标准模型，易知存在可数的非标准 $\mathbf{PA}$ 模型 $\mathfrak M$，即 $\mathfrak M$ 与 $\mathfrak N$ 初等等价但不同构

    2. 设 $\text{Robinson}$ 算术 $\mathbf{Q}$ 是如下公理的理论

## 5.2 不完备定理
### 5.2.1 可表示性

### 5.2.2 可证性

### 5.2.3 不完备定理

## 5.3 二阶算术
