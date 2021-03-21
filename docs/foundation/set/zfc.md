# 1 ZFC 集合论

## 1.1 ZFC 语言
1. ZFC 是一种特殊带等词的谓词演算.
    1. 字母表: $\{= ,\in\}$, 两个都是二元谓词.
    2. 等词公理只使用以下形式:
        - $x=x$
        - $(x=y)\to (p(x)\to p(y))$, 其中 $y$ 不在 $x$ 中自由出现.
2. 为了方便讨论, 采用以下缩写记号. 必要时总可以展开回原来的语言.
    - $\forall x(x\in a\to x\in b)$: $a\subset b$
    - $\forall x(x\in a\to p(x))$: $\forall x\in ap(x)$
    - $\exists x(x\in a \wedge p(x))$: $\exists x\in ap(x)$
    - $\exists x(p(x)\wedge \forall y(p(y)\to y=x))$: $\exists !xp(x)$

## 1.2 ZF 公理
- 集存在定理: $\vdash \exists x(x=x)$, 在有的地方被作为第零条公理而存在.

### 1.2.1 外延公理
1. 等价形式
    - $\forall x(x\in a\leftrightarrow x\in b)\to a=b$
    - $(a\subset b \wedge b\subset a)\to a=b$
    - $\forall x\forall y(\forall z(z\in x\leftrightarrow x\in s \wedge p(x)))$, $p(x)$ 为公式.
2. 这条公理将 $=$ 和 $\in$ 的关系做了明确规定. 由等词公理可知 $a=b\to \forall x(x\in a\leftrightarrow x\in b)$ , 于是有 $\forall x(x\in a\leftrightarrow x\in b)\leftrightarrow a=b$.

### 1.2.2 内涵公理
1. 等价形式
    - $s$ 为已知集合, 则 $\exists y\forall x(x\in y\leftrightarrow x\in s \wedge p(x))$, $p(x)$ 为公式
    - $\forall s\exists y(y=\{x\in s|p(x)\})$
2. 说明
    - 存在集合 $y$, $y$ 是由集合 $s$ 中 具有性质 $p(x)$ 的所有 $x$ 组成的.
    - 这是一个公理模式, 每一个 $p(x)$ 都对应了一个公理. 定义项 $p(x)$ 不可以出现 $y$ 自身.
    - 对于每一个给定的 $s$ 和 $p(x)$, $y$ 唯一. 即 $\exists !y\forall x(x\in y \leftrightarrow x\in s\wedge p(x))$
3. 取 ZF0 中断言的集合 $s$, 令 $p(x)$ 为 $(x\neq x)$. 则 $\exists y=\{x\in s|x\neq x\}$ 没有元素, 记为 $\varnothing$

### 1.2.3 无序对公理
1. 等价形式
    - 设 $a, b$ 为已知集, 则 $\exists y \forall x(x\in y \leftrightarrow (x=a \vee x=b))$
    - $\forall a\forall b\exists y\forall x(x\in y \leftrightarrow (x=a \vee x=b))$
    - $\exists y(y=\{a,b\})$
2. 利用无序对公理构造有序对

    $$
    \displaylines{(a,b)=\{\{a\},\{a,b\}\},\\(a,b,c)=((a,b), c),\\(a,b,c,d)=((a,b,c),d),\\\cdots}
    $$
    
    - 对于有序对 $(a,b),(c,d)$, 有 $(a,b)=(c,d)\to (a=c\wedge b=d)$

### 1.2.4 并集公理
1. 内容: 设 $a$ 已知, 则 $\exists y\forall x(x\in y)\leftrightarrow \exists t\in a(x\in t)$
2. 并集和交集
    - 并集用并集公理定义: 记 $\{x|\exists t\in a(x\in t)\}$ 为 $\cup a$, 则 $\cup \{s,t\}$ 记为 $s\cup t$; $\{u|u=a\vee u=b\vee u=c\}$ 记为 $\{a, b, c\}$
    - 交集用内涵公理定义: $\cap a=\{x\in \cap a|\forall t\in a(x\in t)\}$, 且记 $\cap \{s,t\}$ 为 $s\cap t$.

### 1.2.5 幂集公理
- 设 $a$ 已知, 则 $\exists y\forall x(x\in y \leftrightarrow x\subset a)$, 记为 $\exists y(y=\mathcal{P}(a))$

### 1.2.6 无限公理
1. 相关概念
    - 后继运算: $x'=x\cup\{x\}$
        1. $x\neq \varnothing, x\subset x'$
        2. $t\in x' \to t\in x\vee t=x$
    - 归纳集: 对于集合 $a$, 若 $\varnothing \in a \wedge (x\in a \to x'\in a)$, 则 $a$ 为归纳集.
    - 可递集: $y\in t\in x \to y\in x$. 也就是 $\forall t \in x(t\subset x)$, $\forall t\in x(t\in \mathcal{P}(x))$, $x\subset \mathcal{p}(x)$, $\cup x\subset x$
2. 内容: $\exists s(\varnothing \in s \wedge \forall x(x\in s \to x'\in s))$
    - 无限公理断言了归纳集的存在

## 1.3 选择公理
### 1.3.1 选择公理的一般形式
- 设 $a$ 是由非空集合组成的集族, 则存在以 $a$ 为定义域的函数 $f$ 满足 $\forall x\in a(f(x)\in x)$. 公理断言存在的函数 $f$ 称作集族 $a$ 的选择函数, $f$ 从 $a$ 的每一个集合中选出一个代表 $f(x)$.

### 1.3.2 选择公理的等价形式
1. 单值化原则: 任何集合到集合间的关系都可以被「切削」称函数, 即$\forall r\subset a\times b, Dom(r)=a$, 则 $r$ 可被单值化为 $f:a\to b\wedge f\subset r$
2. 选代表原则: 任何分类都存在代表集.
3. 滤子扩张原则: 任何滤子都可以扩张成一个超滤, 集合论研究表明滤子扩张原则比选择公理更可靠.