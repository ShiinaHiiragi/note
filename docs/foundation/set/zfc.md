# 1 ZFC 集合论

## 1.1 ZFC 语言
1. $\mathrm{ZFC}$ 是一种特殊带等词的谓词演算
    1. 字母表: $\{= ,\in\}$, 两个都是二元谓词
    2. 等词公理只使用以下形式:
        - $x=x$
        - $(x=y)\to (p(x)\to p(y))$, 其中 $y$ 不在 $x$ 中自由出现
2. 为了方便讨论, 采用以下缩写记号. 必要时总可以展开回原来的语言
    - $\forall x(x\in a\to x\in b)$: $a\subset b$
    - $\forall x(x\in a\to p(x))$: $\forall x\in ap(x)$
    - $\exists x(x\in a \wedge p(x))$: $\exists x\in ap(x)$
    - $\exists x(p(x)\wedge \forall y(p(y)\to y=x))$: $\exists !xp(x)$

## 1.2 ZF 公理
- 集存在定理: $\vdash \exists x(x=x)$, 在有的地方被作为第零条公理而存在

### 1.2.1 外延公理
1. 等价形式
    - $\forall x(x\in a\leftrightarrow x\in b)\to a=b$
    - $(a\subset b \wedge b\subset a)\to a=b$
    - $\forall x\forall y(\forall z(z\in x\leftrightarrow x\in s \wedge p(x)))$, $p(x)$ 为公式
2. 这条公理将 $=$ 和 $\in$ 的关系做了明确规定. 由等词公理可知 $a=b\to \forall x(x\in a\leftrightarrow x\in b)$ , 于是有 $\forall x(x\in a\leftrightarrow x\in b)\leftrightarrow a=b$

### 1.2.2 内涵公理
1. 等价形式
    - $s$ 为已知集合, 则 $\exists y\forall x(x\in y\leftrightarrow x\in s \wedge p(x))$, $p(x)$ 为公式
    - $\forall s\exists y(y=\{x\in s|p(x)\})$
2. 说明
    1. 存在集合 $y$, $y$ 是由集合 $s$ 中 具有性质 $p(x)$ 的所有 $x$ 组成的
    2. 这是一个公理模式, 每一个 $p(x)$ 都对应了一个公理. 定义项 $p(x)$ 不可以出现 $y$ 自身
    3. 对于每一个给定的 $s$ 和 $p(x)$, $y$ 唯一. 即 $\exists !y\forall x(x\in y \leftrightarrow x\in s\wedge p(x))$
3. 取 $\mathrm{ZF0}$ 中断言的集合 $s$, 令 $p(x)$ 为 $(x\neq x)$. 则 $\exists y=\{x\in s|x\neq x\}$ 没有元素, 记为 $\varnothing$

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
    1. 并集用并集公理定义: 记 $\{x|\exists t\in a(x\in t)\}=\cup a$, 记 $\cup \{s,t\}=s\cup t$; 记 $\{u|u=a\vee u=b\vee u=c\}=\{a, b, c\}$, 记 $\cup\{a_i|i\in I\}=\bigcup_{i\in I}a_i$
    2. 交集用内涵公理定义: $\cap a=\{x\in \cap a|\forall t\in a(x\in t)\}$, 记 $\cap \{s,t\}=s\cap t$, 记 $\cap\{a_i|i\in I\}=\bigcap_{i\in I}a_i$

### 1.2.5 幂集公理
- 设 $a$ 已知, 则 $\exists y\forall x(x\in y \leftrightarrow x\subset a)$, 记为 $\exists y(y=\mathcal{P}(a))$

### 1.2.6 无限公理
1. 相关概念
    1. 后继运算: $x'=x\cup\{x\}$
        1. $x\neq \varnothing, x\subset x'$
        2. $t\in x' \to t\in x\vee t=x$
    2. 归纳集: 对于集合 $a$, 若 $\varnothing \in a \wedge (x\in a \to x'\in a)$, 则 $a$ 为归纳集
    3. 可递集: $y\in t\in x \to y\in x$. 也就是 $\forall t \in x(t\subset x)$, $\forall t\in x(t\in \mathcal{P}(x))$, $x\subset \mathcal{p}(x)$, $\cup x\subset x$
2. 无限公理断言了归纳集的存在: $\exists s(\varnothing \in s \wedge \forall x(x\in s \to x'\in s))$. 

### 1.2.7 替换公理
1. 内容: 设集合 $a$ 和公式 $\varphi (x,y)$ 满足单值性条件 $\forall x\in a\exists !y\varphi (x,y)$, 则 $\{y| \exists x\in a\varphi (x,y)\}$ 也是集合
    1. 某已知的集合 $a$ 的每个成员通过使 $\varphi (x,y)$ 成立的方式找到唯一的集合 $y$ 作为 $x$ 的替换, 这些替换构成一个集合
    2. 将上述一元集运算记为 $y=\varphi(x)$, $\varphi$ 不是一个函数, 因为此运算没有定义域, 而是所有的集合. 当将变元限定在集合 $a$ 中, 则运算 $\varphi$ 在 $a$ 上确立一个函数 $\varphi \upharpoonright a:a\to \varphi[a]$, 按习惯称作 $\varphi$ 在 $a$ 上的限制
2. 序型定理: 每个良序集都有与之同构的唯一序数. $a$ 是良序集 $\to \exists !\alpha (a\cong \alpha)$. 称 $\alpha$ 为该良序集的序型, 有相同序型的良序集有相同的序结构

### 1.2.8 正则公理
1. 内容: 每个非空集合有 $\in -$ 极小元, 即 $\forall a\neq \varnothing \exists x\in a(x\cap a=\varnothing)$
    - 假设存在一条 $\in -$ 降链 $\cdots \in x_{n+1}\in x_{n}\in \cdots \in x_2\in x_1\in x_0$, 例如集合 $a=\{a\}$, 则 $a=\{a\}=\{\{a\}\}=\cdots$, 集合的原始组成 ($\in-$ 降链上的最小元) 不存在
    - 正则公理使得 $\forall x(x\notin x)$
2. 承认正则公理后, 序数的定义可以被简化为「序数是满足 $\in -$ 三分律的可递集」

## 1.3 选择公理
### 1.3.1 选择公理的形式
1. 设 $a$ 是由非空集合组成的集族, 则存在以 $a$ 为定义域的函数 $f$ 满足 $\forall x\in a(f(x)\in x)$. 公理断言存在的函数 $f$ 称作集族 $a$ 的选择函数, $f$ 从 $a$ 的每一个集合中选出一个代表 $f(x)$

### 1.3.2 良序原理
- 单值化原则: 任何集合到集合间的关系都可以被「切削」称函数, 即$\forall r\subset a\times b, \mathrm{Dom}(r)=a$, 则 $r$ 可被单值化为 $f:a\to b\wedge f\subset r$
- 选代表原则: 任何分类都存在代表集
- 滤子扩张原则: 任何滤子都可以扩张成一个超滤, 集合论研究表明滤子扩张原则比选择公理更可靠
- $\mathrm{Zermelo}$ 定理: 任意两集合 $a,b$ 皆可比较: $\forall a\forall b(a\prec b\wedge a\approx b\wedge b\prec a)$

## 1.4 集宇宙
1. 良基集
    1. 序数函数 $v_\alpha:v_0=0, v_{\alpha+1}=\mathcal{P}(v_\alpha),v_\gamma=\bigcup_{\beta<\gamma}v_{\beta}$, 其中 $\gamma$ 为极限序数, $v$ 的下标是序数及加法运算
    2. 将每个 $v_\alpha$ 的元素称作良基集, 所有良基集构成的类记作 $\mathrm{V}=\bigcup_{\alpha \in \mathrm{On}}v_\alpha$
        - 每个 $v_\alpha$ 都是可递集
        - 严格递增性: $\gamma<\alpha \to(v_\gamma \subset v_\alpha \wedge v_\gamma \neq v_\alpha)$

    !!! note "$\mathrm{V}$ 的前几个层次"
        $$
        \displaylines{v_0=0\\
        v_1=\mathcal{P}(v_0)=\{0\}\\
        v_2=\mathcal{P}(v_1)=\{0,1\}\\
        v_3=\mathcal{P}(v_2)=\{0,1,\{1\},2\}\\
        \cdots\\
        v_\omega=\bigcup_{n\in\omega}v_n\\
        \cdots}
        $$

2. 定义良基集 $x$ 的秩 $\mathrm{rank}(x)$ 为使 $x\in v_{\beta+1}$ 的最小序数 $\beta$
    1. 一个良基集若在 $\mathrm{V}$ 的某一层出现, 则在其后的所有层出现; 对于给定的良基集 $x$, 使得 $x\in v_\alpha$ 的最小层数一定是后继序数, 而不可能是 $0$ 或极限序数
    2. $v_\alpha=\{x\in \mathrm{V}|\mathrm{rank}(x)<\alpha\}$
    3. $x\subset \mathrm{V} \to x\in \mathrm{V}$
3. 所有集合都是良基集, 即 $\mathrm{V}$ 就是集合论的论域