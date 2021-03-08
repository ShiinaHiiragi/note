# 3 实数理论

## 3.1 自然数的构造
### 3.1.1 最小归纳集
1. 由无限公理可知归纳集 $s$ 存在, 所以 $s$ 取定. 对于所有的归纳集族 $a$, 定义归纳集 $\omega = \{x\in s|\forall t\in a(x\in t)\}$
2. 关于归纳集 $\omega$ 的性质
    1. $\omega$ 是最小归纳集, $\omega$ 是实无限 (无限集)
    2. 若 $x$ 为可递集, 则 $x'$ 为可递集
    3. $\omega$ 的元素均为可递集
    4. $\forall x\in \omega (x\notin x)$
    5. $\forall x,y\in \omega (x\neq y\to x'\neq y')$

### 3.1.2 自然数集的构建
1. 由以上性质可知集合 $\omega$ 具有以下性质, 这说明 $\omega$ 具有自然数 Peano 公理所规定的全部性质
    1. $\varnothing \in \omega$
    2. $x\in \omega \to x'\in \omega$
    3. $x'\neq \varnothing$
    4. $\forall x,y\in \omega (x\neq y\to x'\neq y')$
    5. 设 $a\subset \omega$, 有 $(\varnothing \in a\wedge (x\in a\to x'\in a))\to a=\omega$

    !!! note
        在 Peano 公理体系中可以推出下列定理, 下节构造整数集合时需要用到这些性质:

        1. 加法
            - 加法交换律: $\forall a,b\in N(a+b=b+a)$
            - 加法结合律: $\forall a,b,c\in N((a+b)+c=a+(b+c))$
        2. 乘法
            - 乘法交换律: $\forall a,b\in N(a\cdot b=b\cdot a)$
            - 乘法结合律: $\forall a,b,c\in N((a\cdot b)\cdot c=a\cdot (b\cdot c))$
            - 乘法对加法的分配律: $\forall a,b,c\in N(a\cdot (b+c)=a\cdot b+a\cdot c)$
        3. 本原元
            - 零元: $\forall a\in N(a+0=a)$
            - 单位元: $\forall a\in N(a\cdot 1=a)$
            - $0\neq 1$
        4. 序
            - 反自反性: $n\nless n$
            - 可递性: $(m<n\wedge n<k)\to m<k$
            - 三歧性: $m<n\vee m=n\vee n<m$
            - 加法保序性: $m<n\to m+k<n+k$
            - 乘法保序性: $(m<n\wedge k\neq 0)\to mk<nk$

2. 令 $\omega$ 为自然数集 $\mathbb{N}$, 且有

    $$
    \displaylines{0=\varnothing ,\\
    1=0'=0\cup\{0\}=\{0\},\\
    2=1'=1\cup\{1\}=\{0,1\},\\
    ...}
    $$

### 3.1.2 归纳定义
- 递归定理: 设集合 $a$ 与函数 $h:a\to a, x_0\in a$, 则 $\exists !f:\omega \to a(f(0)=x_0 \wedge f(n')=h(f(n)))$

    !!! note
        递归定义可以证明运算符递归定义的合理性.
        
        1. 取 $a=\omega, x_0=m\in \omega, h(n)=n'$, 则 $\exists !f:\omega \to a(f(0)=x_0\wedge f(n')=f(n)')$. $f$ 仅与 $m$ 有关, 对 $\forall m\exists !f_m$, 令 $f_m(n)=m+n$. 则有 $f_m(0)=m\wedge f_m(n')=f_m(n)'$, 这样可以定义加法
        2. 取 $a=\omega, x_0=0, h(n)=n+m$, 同理可以定义乘法
        3. 取 $a=\omega, x_0=1, h(n)=nm$, 同理可以定义乘方

## 3.2 整数的构造
1. 构造 $N^2$ 上的二元关系 $R=\{((m,n),(p,q))|m,n,p,q\in N \wedge m+q=n+p\}$, 则 $R$ 是等价关系. 其商集用 $Z$ 表示: $Z=N^2/\sim =\{[(m,n)]|m,n\in N\}$.
2. 在 $Z$ 上定义的等价类运算需要与所选取的代表无关.
    1. $Z$ 上的加法: 规定 $[(m,n)]+[(p,q)]=[(m+p,n+q)]$
        - 交换律: $\forall a,b\in Z(a+b=b+a)$
        - 结合律: $\forall a,b,c\in Z((a+b)+c=a+(b+c))$
        - 零元: 令 $\overline{0}=[(0,0)]$, 则有 $\forall a\in Z(a+\overline{0} =a)$
        - 负元: $\forall a\in Z\exists !b\in Z(a+b=\overline{0})$. 也就是说, $Z$ 中每一个元素都有自己唯一的负元, $-[(m,n)]=[(n,m)]$. 从而定义减法: $b-a=b+(-a)$
    2. $Z$ 上的乘法: 规定 $[(m,n)]\cdot [(p,q)]=[(mp+nq,mq+np)]$
        - 交换律: $\forall a,b\in Z(a\cdot b=b\cdot a)$
        - 结合律: $\forall a,b,c\in Z((a\cdot b)\cdot c=a\cdot (b\cdot c))$
        - 对加法的分配律: $\forall a,b,c\in Z(a\cdot (b+c)=a\cdot b+a\cdot c)$
        - 单位元: 令 $\overline{1}=[(1,0)]$, 则 $\forall a\in Z(a\cdot \overline{1}=a)$
    3. $Z$ 上的序: 规定 $[(m,n)]<[(p,q)]\leftrightarrow m+q<n+p$
        - 反自反性: $\forall a\in Z(a\nless a)$
        - 可递性: $\forall a,b,c\in Z((a<b\wedge b<c)\to a<c)$
        - 三歧性: $\forall a,b\in Z(a<b\vee a=b\vee b<a)$
        - 加法保序性: $\forall a,b,c\in Z(a<b\to a+c<b+c)$
        - 乘法保序性: $\forall a,b,c\in Z(c>\overline{0}\to (a<b\to a\cdot c<b\cdot c))$
3. 嵌入
    - 考察 $\overline{N}=\{[(0,0)], [(1,0)], ..., [(n,0)], ...\}$, 记 $\overline{n}=[(n,0)]$, 则 $\overline{N}=\{\overline{0}, \overline{1}, \overline{2}, ...\}$ 具有性质:
        1. $\overline{m}+\overline{n}=\overline{m+n}$
        2. $\overline{m}\cdot \overline{n}=\overline{mn}$
        3. $m<n\leftrightarrow \overline{m}<\overline{n}$
    - 由于 $\overline{N}$ 构成 $Z$ 的一个封闭子集, 令 $f(n)=\overline{n}\in \overline{N} \subset Z$, 则 $f:N\to \overline{N}$ 具有性质:
        1. $f(m+n)=f(m)+g(n)$
        2. $f(mn)=f(m)\cdot f(n)$
        3. $m<n\to f(m)<f(n)$
    - 以上性质说明 $f$ 是从 $N$ 到 $\overline{N}$ 的保序双射. 此时称 $N$ 与 $\overline{N}$ 同构, 并称 $f$ 把 $N$ 同构嵌入 $Z$.
4. 任取 $[(m,n)]\in Z$, 若 $m\leqslant n$, 设 $m=n+k$, 则 $[(m,n)]=[(k,0)]=\overline{k}$; 若 $m<n$, 设 $n=m+l$, 则 $[(m,n)]=[(0,l)]=-\overline{l}$. 于是

    $$
    Z=\{..., -\overline{n}, ..., -\overline{2}, -\overline{1}, \overline{0}, \overline{1}, \overline{2}, ..., \overline{n}, ...\}
    $$

5. 将上述 $\overline{n}$ 转写为 $n$, 将 $\mathbb{Z}$ 称作整数集. 与 $N$ 相比, $N$ 的结构更加对称, 这个结构记作 $\left< Z,+,\cdot ,<,0,1\right>$

## 3.3 有理数的构造
1. 定义二元关系 $R\subset (Z\times (Z-\{0\}))^2$ 有 $R=\{((a,b),(c,d))\in (Z\times (Z-\{0\}))^2|ad=bc\}$ 是一个等价关系. 记 $Q=(Z\times (Z-\{0\}))/R=\{[(a,b)]|a,b\in Z \wedge b\neq 0\}$
2. 定义仿照整数的构造过程, 保证定义的合理性.
    1. $Q$ 上的加法: 规定 $[(a,b)]+[(c,d)]=[(ad+bc,bd)]$
        - 交换律: $\forall r,s\in Q(r+s=s+r)$
        - 结合律: $\forall r,s,t\in Q((r+s)+t=r+(s+t))$
        - 零元: 令 $\overline{0}=[(0,a)], a\neq 0$, 则有 $\forall r\in Q(r+\overline{0} =r)$
        - 负元: $\forall r\in Q\exists !s\in Q(r+s=\overline{0})$. 也就是说, $Q$ 中每一个元素 $r$ 都有自己唯一的负元 $-r$
    2. $Z$ 上的乘法: 规定 $[(a,b)]\cdot [(c,d)]=[(ac,bd)]$
        - 交换律: $\forall r,s\in Q(r\cdot s=s\cdot r)$
        - 结合律: $\forall r,s,t\in Q((r\cdot s)\cdot t=r\cdot (s\cdot t))$
        - 对加法的分配律: $\forall r,s,t\in Q(r\cdot (s+t)=r\cdot s+r\cdot t)$
        - 单位元: 令 $\overline{1}=[(a,a)], a\neq 0$, 则 $\forall r\in Q(r\cdot \overline{1}=r)$
        - 逆元: $\forall r=[(a,b)]\in Q, r\neq \overline{0}$, 则 $\exists !s\in Q(r\cdot s=\overline{1})$. 记 $s=r^{-1}=[(b,a)]$. 由此定义除法 $r\div s=r\cdot s^{-1}$
    3. $Z$ 上的序: 设 $r=[(a,b)],s=[(c,d)]\wedge (b,d>0)$ (若 $b<0$, 则写 $[(a,b)]=[(-a,-b)]$). 规定 $r<s\leftrightarrow ad<bc$
        - 反自反性: $\forall r\in Q(r\nless r)$
        - 可递性: $\forall r,s,t\in Q((r<s\wedge s<t)\to r<t)$
        - 三歧性: $\forall r,s\in Q(r<s\vee r=s\vee s<r)$
        - 加法保序性: $\forall r,s,t\in Q(r<s\to r+t<s+t)$
        - 乘法保序性: $\forall r,s,t\in Q(t>\overline{0}\to (r<s\to r\cdot t<s\cdot t))$
3. 嵌入
    - 考察 $\overline{Z}=\{[(p,1)]|p\in Z\}$, 记 $\overline{n}=[(n,1)]$, 则 $-\overline{n}=[(-n,1)]$. $\overline{Z}$ 构成 $Q$ 的封闭子集
        - $[(p,1)]+[(q,1)]=[(p+q,1)]$
        - $[(p,1)]\cdot [(q,1)]=[(pq,1)]$
        - $p<q\leftrightarrow [(p,1)]<[(q,1)]$
    - 定义 $f:Z\to \overline{Z}$ 有 $f(p)=[(p,1)]$, 则 $f$ 是一个封闭的保序双射. 此时称 $Q$ 与 $\overline{Q}$ 同构, 并称 $f$ 把 $Q$ 同构嵌入 $Q$.
4. 将结果写成分数形式: $[(p,q)]=\frac{[(p,1)]}{[(q,1)]}$, 于是有 $Q=\{\frac{[(p,1)]}{[(q,1)]}|p,q\in Z\wedge q\neq 0\}$. 把所有形如 $[(p,1)]$ 的元素写成 $p$, 称之为新整数. 于是 $Z\subset Q=\{\frac{p}{q}|p,q\in Z\wedge q\neq 0\}$, 将 $\mathbb{Q}$ 称为有理数集.
5. 与 $Z$ 相比, $Q$ 是其扩张, 更具有对称性. 有理数集形成了新的结构 $\left< Q,+,\cdot ,<,0,1\right>$.

## 3.4 算数超滤
### 3.4.1 自然数集上的滤子与超滤
1. 定义
    - 滤子: 设 $N$ 的子集族 $F\subset \mathcal{P}(N)$ 满足下列条件, 则 $F$ 称作 $N$ 上的滤子.
        - $\varnothing \notin F, N\in F$
        - 对交封闭: $a,b\in F\to a\cap b\in F$
        - 大集性质: $((a\subset b\subset N) \wedge a\in F)\to b\in F$
    - 若 $N$ 上的滤子 $F$ 有 $\forall a\subset N(a\in F\vee(N-a)\in F)$ (极大性), 则 $F$ 为 $N$ 上的超滤
    - 若超滤 $F$ 有 $N$ 的任一有限子集 $\notin F$, 则称 $F$ 为 $N$ 上的自由超滤. 