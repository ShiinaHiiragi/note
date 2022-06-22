# 中转站

## 集族的 Descartes 积
1. 投射与自然投射
    1. 投射：设 $x_1, x_2, \cdots, x_n$ 是 $n(n\geqslant 1)$ 个集合，从 $x=x_1\times x_2\times \cdots, x_n$ 到其第 $i(1\leqslant i\leqslant n)$ 个坐标集 $x_i$ 的投射 $p_i: x\to x_i$ 定义为 $\forall x=(a_1, a_2, \cdots, a_n) \in x: p_i(x)=a_i$，即 $p_i=\{((a_1, a_2, \cdots, a_n), a_i)|(a_1, a_2, \cdots, a_n)\in x\}\subset x\times x_i$
    2. 自然投射：设 $R$ 是集合 $x$ 中的一个等价关系，从集合 $x$ 到其商集 $x/R$ 的自然投射 $p:x\to x/R$ 定义为 $\forall x\in x: p(x)=[x]$，即 $p=\{(x, [x])|x\in x\}\subset x\times x/R$
2. 设集族 $\{x_i\}_{i\in I}$ 的 $\mathrm{Descartes}$ 积为 ${\displaystyle \prod_{i\in I}x_i}=\{x: I\to \bigcup_{i\in I}x_i|\forall i\in I(x(i)\in x_i)\}$
    1. 对于每一个 $i\in I$，集合 $x_i$ 为 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{i\in I}x_i}$ 的第 $i$ 个坐标集
    2. 对于 $i\in I$，定义 $p_i: {\displaystyle \prod_{i\in I}x_i} \to x_i$，使得对于任意 $x\in {\displaystyle \prod_{i\in I}x_i}$ 有 $p_i(x)=x(i)$，称为 $\mathrm{Descartes}$ 积的第 $i$ 个投射
3. 设给定了集族 $\{x_i\}_{i\in I}$，则 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{i\in I}x_i} \neq \varnothing \leftrightarrow \forall i\in I(x_i\neq \varnothing)$
4. 给定两个集族 $\{x_i\}_{i\in I}, \{y_i\}_{i\in I}$，且 $\forall i\in I(y_i\subset x_i)$．若对于任意 $i\in I$，都有 $y_i\neq \varnothing$，则对于任意 $k\in I$ 有 $p_k\left({\displaystyle \prod_{i\in I}x_i}\right)=y_k$
    1. 设集族 $\{x_i\}_{i\in I}$ 对每一个 $i\in I$ 有 $x_i\neq \varnothing$，则对于任意 $k\in I$，$\mathrm{Descartes}$ 积 ${\displaystyle \prod_{i\in I}x_i}$ 的第 $k$ 个投影 $p_k$ 都是满射
    2. 设集族 $\{x_i\}_{i\in I}$ 对每一个 $i\in I$ 有 $x_i\neq \varnothing$，又设 $\varnothing \neq I_1 \subset I$，集族 $\{x_i\}_{i\in I}$满足条件：对于每一个 $i\in I_1$ 有 $\varnothing \neq a_i\subset x_i$，则对于每一个 $k\in I$ 有 $p_k\left(\bigcap_{i\in I_1}p^{-1}_i(a_i)\right)=\left\{\begin{aligned}&x_k, k\in I-I_1 \\&a_k, i\in I_1\end{aligned}\right.$，其中 $p_k$ 是 $\mathrm{Descartes}$ 积 ${\displaystyle \prod_{i\in I}x_i}$ 的第 $k$ 个投射

## 复数的定义
- 复数：在集合 $\mathbf C = \mathbf R \times \mathbf R$ 内定义加法和乘法运算

    $$
    \begin{aligned}
    & (a, b) + (c, d) = (a + c, b + d) \\
    & (a, b) \cdot (c, d) = (ac - bd, ad + bc)
    \end{aligned}
    $$

    称集合 $\mathbf C$ 为复数集，其中 $(a, b)$ 称作复数

    1. $a$ 为复数 $(a, b)$ 的实部，记作 $\text{Re}(a, b)$；$b$ 为复数 $(a, b)$ 的虚部，记作 $\text{Im}(a, b)$
    2. 设 $i = (0, 1)$，记 $(a, b) = a + bi \ (a, b \in \mathbf R)$，称之为复数 $(a, b)$ 的代数形式
