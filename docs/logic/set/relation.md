# 2 关系与映射

## 2.1 关系
### 2.1.1 Descartes 积
1. 定义：$a\times b=\{(x,y)|x\in a \vee y\in b\}$，这个定义的合法性由内涵公理，有序对的定义和引理 $(x\in a \wedge y\in b)\to (x,y)\in \mathcal{p}(\mathcal{p}(a\cup b))$ 保证
2. 拓展到 $n$ 个集合的 $\mathrm{Descartes}$ 积：$A_1\times A_2\times \cdots \times A_n=\{(x_1,x_2,\cdots ,x_n)|x_1\in A_1,x_2\in A_2,\cdots ,x_n\in A_n\}$ 

### 2.1.2 关系
1. 定义：若 $r\subset a\times b$，则 $r$ 为 a 到 b 上的一个关系，写作 $r(x,y)$ 或 $xry$．若 $r\subset \underbrace{a\times a\times \cdots\times a}_n$，则 $r$ 称作 $a$ 的 $n$ 元关系．且有

    $$
    \displaylines{(x_1,x_2,\cdots ,x_n)\in r\leftrightarrow r(x_1,x_2,\cdots ,x_n)\\(x_1,x_2,\cdots ,x_n)\notin r\leftrightarrow \neg r(x_1,x_2,\cdots ,x_n)}
    $$

2. 相关概念
    1. $\mathrm{Dom}(r)=\{x\in a|\exists y\in b((x,y)\in r)\}$  
      $\mathrm{Ran}(r)=\{y\in b|\exists x\in a((x,y)\in r)\}$
    2. $r\subset a\times b,c\in a$，$r$ 在 $c$ 上的限制 $r|c=\{(x,y)\in r|x\in c\}$
        1. $\mathrm{Dom}(r|c)=\mathrm{Dom}(r)\cap c$
        2. 记 $\mathrm{Ran}(r|c)=r[c]$，称之为 $c$ 在 $r$ 下的象． 
          若 $c\subset b$，则 $r^{-1}[c]$ 为 $c$ 在 $r$ 下的原象
    3. $r^{-1}=\{(y,x)|(x,y)\in r\}$，于是 $\mathrm{Dom}(r^{-1})=\mathrm{Ran}(r)$，$\mathrm{Ran}(r^{-1})=\mathrm{Dom}(r)$
    4. $r\subset a\times b,s\subset b\times c$，则 $s\circ r=\{(x,z)|\exists y((x,y)\in r\wedge(y,z\in s))\}$，且有 $(s\circ r)^{-1}=r^{-1}\circ s^{-1}$
3. 二元关系： $R\subset a\times a$，则称 $R$ 是 $a$ 上的一个二元关系
    1. 自反性：$\forall x\in a(xRx)$  
      反自反性：$\forall x\in a((x,x)\notin R)$
    2. 对称性：$\forall x,y\in a(xRy\to yRx)$  
      反对称性：$\forall x,y\in a((xRy\wedge yRx)\to x=y)$
    3. 可递性：$\forall x,y,z\in a((xRy\wedge yRz)\to xRz)$
4. 等价关系：设 $R\subset a^2$，若 $R$ 同时有自反性，对称性，可递性，则称 $R$ 为 $a$ 上的等价关系．如果只有一个等价关系，则 $xRy$ 可以记作 $x\sim y$
    1. 等价类：任取 $x\in a$，记 $[x]_R=\{t\in a|t\sim x\}$，则将 $[x]_R$ 或 $[x]$ 称作 $x$ 的等价类
        1. $x\in [x]$
        2. $x\sim y\to [x]=[y]$
        3. 不同的等价类没有公共元素：$[x]\neq [y]\to [x]\cap [y]=\varnothing$
    2. 剖分/分类：集合 $a$ 的子集族 $P\subset \mathcal{P}(a)$ 若满足 $\cup P=a$ 且 $\varnothing \notin P\vee(\forall b,c\in P(b\neq c\to b\cap c=\varnothing))$，则 $P$ 称为集合 $a$ 的剖分/分类
    3. 商集：设 $R$ 是集合 $a$ 上面的一个等价关系，关于 $R$，所有的等价类的集合记作 $a/R=\{[x]|x\in a\}$，称作 $a$ 关于 $R$ 的商集
        1. $a/R$ 唯一对应了 $a$ 的一个剖分
        2. 设 $P$ 是 $a$ 的一个剖分，用 $P$ 可以唯一定义 $a$ 上的等价关系 $R=\{(x,y)\in a^2|\exists b\in P(x\in b\wedge y\in b)\}$，且有 $a/R=P$
    4. 总而言之，集合上所有等价关系与所有剖分之间存在一一对应
5. 偏序
    1. 偏序关系：若集合 $a$ 上的二元关系 $r\subset a^2$ 具有自反性，反对称性和可递性，则称 $r$ 为 $a$ 上的偏序关系，并称 $a$ 为 $r-$偏序集
        - 一般记 $xry$ 为 $x\leqslant y$，偏序集 $a$ 连同其上的偏序 $r$ 形成偏序结构 $\left< a,r\right>$，也记作 $\left< a,\leqslant \right>$
    2. 若集合 $a$ 上的二元关系 $s\subset a^2$ 具有反自反性和可递性，则称 $s$ 为 $a$ 上的严格偏序关系，其结构记作 $\left< a,<\right>$．且有 $x<y\leftrightarrow x\leqslant y\wedge x\neq y$
    3. 设 $a$ 为偏序集，$x\in a$，那么最小元和最大元分别一定是极小元和极大元，其中
        1. 若 $\forall y\in a(y\nless x)$，则称 $x$ 为 $a$ 的极小元
        2. 若 $\forall y\in a(x\leqslant y)$，则称 $x$ 为 $a$ 的最小元
        3. 若 $\forall y\in a(x\nless y)$，则称 $x$ 为 $a$ 的极大元
        4. 若 $\forall y\in a(y\leqslant x)$，则称 $x$ 为 $a$ 的最大元

## 2.2 映射
1. 相关定义
    1. 映射：$f\subset a\times b$，$\forall x\in a\exists !y\in b((x,y)\in f)$，则 $f$ 称为 $a$ 到 $b$ 的映射．$(x,y)\in f$ 记作 $y=f(x)$．$f:A^n\to A$ 称作 $A$ 上的 $n$ 元运算
    2. 复合映射：$g\circ f(x)=g(f(x)), x\in a$
    3. 逆映射：$f^{-1}=\{(y,x)|(x,y)\in f\}$
2. 性质
    1. 单值性：$(x,y_1)\in f \wedge (x,y_2)\in f\to y_1=y_2$
    2. $f\subset a\times b$，则 $\mathrm{Dom}(f)=a, \mathrm{Ran}(f)\subset b$
    3. $c\subset a$，则 $f[c]=\{f(x)|x\in c\}$  
      $c\subset b$，则 $f^{-1}[c]=\{x\in a|f(x)\in c\}$
3. 映射的种类
    1. 满射，单射，双射
        1. 若 $f[a]=b$，则 $f$ 为满射
        2. 若 $\forall x_1,x_2\in a(x_1\neq x_2\to f(x_1)\neq f(x_2))$，则 $f$ 为单射
        3. 若 $f$ 同时为满射与单射，则 $f$ 为双射．此时 $\forall x\in a\exists !y\in b((x,y)\in f)$，$\forall y\in b\exists !x\in a((x,y)\in f)$
    2. 单射与单射复合为单射，双射与双射复合为双射
    3. 函数 $f$ 有反函数当且仅当 $f$ 为单射，双射的反函数仍为双射
4. 其他定义
    1. $g=f|c$，即 $\forall x\in c(f(x)=g(x))$，称 $f$ 为 $g$ 的扩张，$g$ 为 $f$ 的限制
    2. 定义 $^{a}b=\{f|f:a\to b\}$，该定义的合法性由 $^{a}b\subset \mathcal{P}(a\times b)$ 保证．当 $b\subset c$ 时，$^{a}b\subset ^{a}c$
    3. 单位映射：集合 $a$ 中的恒同关系，即定义 $i_a: a\to a, \forall x\in a((x, x)\in i_a)$，当 $f: a\to b$ 为双射时，$f^{-1}\circ f=i_a, f\circ f^{-1}=i_b$

## 2.3 集族的 Descartes 积
1. 投射与自然投射
    1. 投射：设 $x_1, x_2, \cdots, x_n$ 是 $n(n\geqslant 1)$ 个集合，从 $x=x_1\times x_2\times \cdots, x_n$ 到其第 $i(1\leqslant i\leqslant n)$ 个坐标集 $x_i$ 的投射 $p_i: x\to x_i$ 定义为 $\forall x=(a_1, a_2, \cdots, a_n) \in x: p_i(x)=a_i$，即 $p_i=\{((a_1, a_2, \cdots, a_n), a_i)|(a_1, a_2, \cdots, a_n)\in x\}\subset x\times x_i$
    2. 自然投射：设 $R$ 是集合 $x$ 中的一个等价关系，从集合 $x$ 到其商集 $x/R$ 的自然投射 $p:x\to x/R$ 定义为 $\forall x\in x: p(x)=[x]$，即 $p=\{(x, [x])|x\in x\}\subset x\times x/R$
2. 设集族 $\{x_i\}_{i\in I}$ 的 $\mathrm{Descartes}$ 积为 $\prod_{i\in I}x_i=\{x: I\to \bigcup_{i\in I}x_i|\forall i\in I(x(i)\in x_i)\}$
    1. 对于每一个 $i\in I$，集合 $x_i$ 为 $\mathrm{Descartes}$ 积 $\prod_{i\in I}x_i$ 的第 $i$ 个坐标集
    2. 对于 $i\in I$，定义 $p_i: \prod_{i\in I}x_i \to x_i$，使得对于任意 $x\in \prod_{i\in I}x_i$ 有 $p_i(x)=x(i)$，称为 $\mathrm{Descartes}$ 积的第 $i$ 个投射
3. 设给定了集族 $\{x_i\}_{i\in I}$，则 $\mathrm{Descartes}$ 积 $\prod_{i\in I}x_i \neq \varnothing \leftrightarrow \forall i\in I(x_i\neq \varnothing)$
4. 给定两个集族 $\{x_i\}_{i\in I}, \{y_i\}_{i\in I}$，且 $\forall i\in I(y_i\subset x_i)$．若对于任意 $i\in I$，都有 $y_i\neq \varnothing$，则对于任意 $k\in I$ 有 $p_k\left(\prod_{i\in I}x_i\right)=y_k$
    1. 设集族 $\{x_i\}_{i\in I}$ 对每一个 $i\in I$ 有 $x_i\neq \varnothing$，则对于任意 $k\in I$，$\mathrm{Descartes}$ 积 $\prod_{i\in I}x_i$ 的第 $k$ 个投影 $p_k$ 都是满射
    2. 设集族 $\{x_i\}_{i\in I}$ 对每一个 $i\in I$ 有 $x_i\neq \varnothing$，又设 $\varnothing \neq I_1 \subset I$，集族 $\{x_i\}_{i\in I}$满足条件：对于每一个 $i\in I_1$ 有 $\varnothing \neq a_i\subset x_i$，则对于每一个 $k\in I$ 有 $p_k\left(\bigcap_{i\in I_1}p^{-1}_i(a_i)\right)=\left\{\begin{aligned}&x_k, k\in I-I_1 \\&a_k, i\in I_1\end{aligned}\right.$，其中 $p_k$ 是 $\mathrm{Descartes}$ 积 $\prod_{i\in I}x_i$ 的第 $k$ 个投射
