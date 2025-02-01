# 5 形式算术

## 5.1 一阶算术
1. 算术（初等数论）的语言 $\mathscr L(S)$，其中 $S = \{=, \mathrm{S}, +, \times, 0\}$ 且 $\Omega(=) = 2, \Omega(\mathrm{S}) = 1, \Omega(+) = \Omega(\times) = 2, 0 \in \mathbf C$
    1. 设 $\mathbf{PA}$ 是公理集
        1. $\forall x \ (\mathrm{S} x \not = 0)$
        2. $\forall x \forall y \ (\mathrm{S} x = \mathrm{~S} y \rightarrow x = y)$
        3. $\forall x \ (x+0 = x)$
        4. $\forall x \forall y \ (x+\mathrm{S} y = \mathrm{~S}(x+y))$
        5. $\forall x \ (x \times 0 = 0)$
        6. $\forall x \forall y \ (x \times \mathrm{S} y = x \times y+x)$
        7. 归纳公理模式：对每个一阶公式 $\varphi$，都有对 $\varphi$ 的归纳公理 $\forall x \ ((\varphi(0) \wedge \forall x(\varphi(x) \rightarrow \varphi(\mathrm{S} x))) \rightarrow \forall x \varphi(x))$

        则称 $\mathbf{PA}$ 的模型 $\mathfrak N = (\mathbf N, I)$ 为自然数的标准模型

    2. 存在可数的非标准 $\mathbf{PA}$ 的模型 $\mathfrak M$，即 $\mathfrak M$ 与 $\mathfrak N$ 初等等价但不同构

2. ...

## 5.2 不完全性定理
1. 可判定性
    1. 任何完备的可公理化理论都是可判定的
2. ...
