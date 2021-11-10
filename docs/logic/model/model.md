# 1 结构与模型

## 1.1 结构与模型
1. 语言: 在不同的谓词演算系统中, 个体常元, 函数符, 谓词各不相同, 通常将这一部分称作系统的语言, 记作 $\mathcal{L}=\{R,\cdots ,f,\cdots ,c,\cdots \}$
    1. 结构: 非空集合 $A$, 连同 $A$ 上的关系, 运算 (每个关系和运算都有确定的元数), 以及 $A$ 的若干特别指定的常元形成的结构. 记作 $\left< A,R,\cdots ,f,\cdots ,c,\cdots \right>$, 或者简写作 $A$, 并说 $A$ 是语言 $\mathcal{L}=\{R,\cdots ,f,\cdots ,c,\cdots \}$ 的结构 (即 $A$ 是一种 $\mathcal{L}-$ 结构)
        1. 一种语言由三部分组成, 每一种语言都有逻辑符号和等号谓词, 所以省略
        2. 一种语言可以写出词 (项), 句 (公式), 文章 (证明) 的符号串, 但是没有实质意义. 只有放在具体的结构中才有数学意义, 并能判断真假值

            !!! note "注意"
                对于语言 $\mathcal{L}=\{0,1,<,+,\cdot \}$ 的不同结构: $Z,Q,^*Z,^*Q,R$. 它们各有不同的特性, 引进都有各自的目的

    2. 理论: 语言 $\mathcal{L}$ 的一个理论, 记作 $\mathcal{L}-$ 理论, 是 $\mathcal{L}$ 的一集语句
        1. 不涉及具体结构时, 理论的实质意义并不明确, 可以从句法角度研究有无矛盾
        2. 理论中的语句是除去逻辑公理之外, 理论的专用公理

2. 模型: 若 $\mathcal{L}-$ 理论 $T$ 的所有语句都在 $\mathcal{L}-$ 结构 $M$ 中为真, 则 $M$ 是 $T$ 的一个模型  
    模型原理: 一个理论是无矛盾的, 当且仅当它有模型
    1. 群语言 $\mathcal{L}=\{*,e\}$, $*$ 为二元运算符, $e$ 为常元. 群理论的公理:
        1. 结合律: $\forall x\forall y\forall z((x*y)*z=(x*(y*z)))$
        2. 常元性质: $\forall x(x*e=x\wedge e*x=x)$
        3. 逆元存在: $\forall x\exists y(x*y=e\wedge y*x=e)$
    2. 环语言: $\mathcal{L}=\{+,\cdot ,0\}$. 环理论的公理:
        1. $+$ 结合律: $\forall x\forall y\forall z((x+y)+z=x+(y+z))$
        2. $+$ 交换律: $\forall x\forall y(x+y=y+x)$
        3. $\cdot$ 结合律: $\forall x\forall y\forall z((x\cdot y)\cdot z=(x\cdot (y\cdot z)))$
        4. 零元: $\forall x(0+x=x)$
        5. 负元: $\forall x\exists y(x+y=0)$
        6. 分配律: $\forall x\forall y\forall z(x\cdot(y+z)=x\cdot y+x\cdot z)$, $\forall x\forall y\forall z((x+y)\cdot z)=x\cdot z+y\cdot z)$
    3. 域语言: $\mathcal{L}=\{+,\cdot ,0,1\}$. 域理论的公理除了环理论的前五条公理外, 还有
        1. $\cdot$ 交换律: $\forall x\forall y(x\cdot y=y\cdot x)$
        2. 分配律: $\forall x\forall y\forall z(x\cdot(y+z)=x\cdot y+x\cdot z)$
        3. 单位元: $\forall x(1\cdot x=x)$
        4. 逆元: $x\neq 0$ 时, $\exists y(x\cdot y=1)$
        5. 单位元与零元的关系: $1\neq 0$
    4. 序域语言: $\mathcal{L}=\{<,+,\cdot ,0,1\}$, 序域理论的公理除了域理论的公理外, 还有
        1. 反自反性: $\forall x(x\nless x)$
        2. 可递性: $\forall x\forall y\forall z((x<y\wedge y<z)\to x<z)$
        3. 三歧性: $\forall x\forall y(x<y\vee x=y\vee y<x)$
        4. 加法保序性: $\forall x\forall y\forall z(x<y\to x+z<y+z)$
        5. 乘法保序性: $\forall x\forall y\forall z(z>0\to (x<y\to x\cdot z<y\cdot z))$

## 1.2 同态与同构
1. 同构: 同一语言 $\mathcal{L}=\{R,\cdots ,f,\cdots ,c,\cdots \}$ 的两个结构 $A$ 与 $B$ 同构, 记作 $A\cong B$, 当且仅当存在双射 $F:A\to B$, 有
    1. 对 $\mathcal{L}$ 的任一常元符 $c$, $F(c_A)=c_B$
    2. 对 $\mathcal{L}$ 的任一 $n$ 元关系符 $R$ 及任意 $x_1,x_2,\cdots ,x_n\in A$, 都有 $R_A(x_1,x_2,\cdots ,x_n)\leftrightarrow R_B(F(x_1),F(x_2),\cdots ,F(x_n))$
    3. 对 $\mathcal{L}$ 的任一 $n$ 元函数符 $f$ 及任意 $x_1,x_2,\cdots ,x_n\in A$, 都有 $F(f_A(x_1,x_2,\cdots ,x_n))=f_B(F(x_1),F(x_2),\cdots ,F(x_n))$
2. 同构的结构除了形式上不同, 本质上并无不同, 可以将同构的结构视为同一
    1. 若 $F$ 是 $A$ 到 $B$ 的同构, 则逆映射 $F^{-1}$ 是 $B$ 到 $A$ 的同构; 同构的复合也是同构
    2. 完备序域在同构意义下唯一, 即任何完备序域 $\left< \overline{R},<,+,\cdot ,\overline{0},\overline{1}\right>$ 都有 $R\cong \overline{R}$.
