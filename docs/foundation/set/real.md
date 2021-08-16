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
    \cdots }
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
    - 考察 $\overline{N}=\{[(0,0)], [(1,0)], \cdots , [(n,0)], \cdots \}$, 记 $\overline{n}=[(n,0)]$, 则 $\overline{N}=\{\overline{0}, \overline{1}, \overline{2}, \cdots \}$ 具有性质:
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
    Z=\{\cdots , -\overline{n}, \cdots , -\overline{2}, -\overline{1}, \overline{0}, \overline{1}, \overline{2}, \cdots , \overline{n}, \cdots \}
    $$

5. 将上述 $\overline{n}$ 转写为 $n$, 将 $\mathbb{Z}$ 称作整数集. 与 $N$ 相比, $N$ 的结构更加对称, 这个结构记作 $\left< Z,+,\cdot ,<,0,1\right>$

## 3.3 有理数的构造
1. 定义二元关系 $R\subset (Z\times (Z-\{0\}))^2$ 有 $R=\{((a,b),(c,d))\in (Z\times (Z-\{0\}))^2|ad=bc\}$ 是一个等价关系. 记 $Q=(Z\times (Z-\{0\}))/R=\{[(a,b)]|a,b\in Z \wedge b\neq 0\}$
2. 定义仿照整数的构造过程, 保证定义的合理性, 下列性质被称作序域性质.
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
4. 将结果写成分数形式: $[(p,q)]=\dfrac{[(p,1)]}{[(q,1)]}$, 于是有 $Q=\{\dfrac{[(p,1)]}{[(q,1)]}|p,q\in Z\wedge q\neq 0\}$. 把所有形如 $[(p,1)]$ 的元素写成 $p$, 称之为新整数. 于是 $Z\subset Q=\{\dfrac{p}{q}|p,q\in Z\wedge q\neq 0\}$, 将 $\mathbb{Q}$ 称为有理数集.
5. 与 $Z$ 相比, $Q$ 是其扩张, 更具有对称性. 有理数集形成了新的结构 $\left< Q,+,\cdot ,<,0,1\right>$.

## 3.4 算数超滤
### 3.4.1 自然数集上的滤子
1. 定义
    1. 滤子: 设 $N$ 的子集族 $F\subset \mathcal{P}(N)$ 满足下列条件, 则 $F$ 称作 $N$ 上的滤子.
        - $\varnothing \notin F, N\in F$
        - 对交封闭: $a,b\in F\to a\cap b\in F$
        - 大集性质: $((a\subset b\subset N) \wedge a\in F)\to b\in F$
    2. 极大滤子: 若 $F$ 有 $\forall G\supset F\to G=F$, 则称 $F$ 为极大滤子.
    3. 超滤: 若 $N$ 上的滤子 $F$ 有极大性, 即 $\forall a\subset N(a\in F\vee(N-a)\in F)$, 则 $F$ 为 $N$ 上的超滤. $N$ 上全体超滤组成的集合为 $\beta N$ 或 $\beta \omega$.
    4. 算术超滤: 设 $F\in \beta N$, 若 $f(F)=g(F)\to f=_Fg$, 则称 $F$ 为算术超滤.
    5. 自由超滤: 若超滤 $F$ 有 $N$ 的任一有限子集 $\notin F$, 则称 $F$ 为 $N$ 上的自由超滤.
2. 滤子的例子
    - $\{N\}$ 是一个滤子, 但不是超滤. 称作 $N$ 上的平凡滤子.
    - $F_{\sigma}=\{a\subset N||N-a|<+\infty \}$ 是一个滤子, 但不是超滤. $F_{\sigma}$ 称作余有限滤子或 Fréchet 滤子.
    - 对 $\forall i\in N$, $F_i=\overline{n} =\{a\subset N|i\in a\}$ 是超滤, 但不是自由超滤. 称 $F_i$ 为主超滤.
3. 滤子与超滤的性质
    - 超滤要么是自由超滤, 要么是主超滤.
        - 所有主超滤都是非自由的超滤, 即自由超滤一定是非主超滤.
        - $N$ 上非自由超滤一定是某个主超滤.
    - 设 $F$ 是 $N$ 上的超滤, 且 $a_1\cup a_2=a\in F$, 则有 $a_1\in F\vee a_2\in F$. 注意到令 $a_1=a,a_2=N-a$, 则该定理是超滤的定义
    - 设 $F$ 为超滤 $\leftrightarrow F$ 是极大滤子.
    - 设 $F$ 是超滤, 则有 $F$ 是自由超滤 $\leftrightarrow F\supset F_{\sigma}$
    - $N$ 的子集族 $F$ 若具有以下性质则是 $N$ 上的超滤:
        - $\varnothing \in F$
        - 对交封闭: $a,b\in F\to a\cap b\in F$
        - 极大性: $\forall a\subset N(a\in F\vee (N-a)\in F)$
    - 主超滤都是算术超滤, 自由超滤中有算术超滤也有非算术超滤(非主算术超滤).

### 3.4.2 超滤变换
1. 设 $F\in \beta N,f\in ^NN$, 则定义 $G=f[F]=\{a\subset N|f^{-1}[a]\in F\}$ 也为 $N$ 上的超滤.
    - 运算 $f$ 称作超滤空间上的超滤变换, $f:\beta N\to \beta N$ 事实上是用同一个符号表示的函数 $f:N\to N$ 的扩张
2. 设 $f,g\in ^NN,F\in \beta N$, 若 $\{n|f(n)=g(n)\}\in F$, 则称 $f$ 和 $g$ 关于 $F$ 几乎相等, 记作 $f=_Fg$
3. 超滤变换的性质
    1. 主超滤的像 $f(F)$ 仍是主超滤: 设 $f\in ^NN,n\in N$, 则 $f(\overline{n}) =\overline{f(n)}$
    2. 算术超滤的像 $f(F)$ 仍是算术超滤: 设 $f\in ^NN,m\in \beta N$, 则 $g(f(F))=h(f(F))\to g=_{f(F)}h$
    3. 非主超滤的像 $f(F)$ 不一定仍是非主超滤, 有可能退变为主超滤: 设 $F\in \beta N$, 且 $f\in ^NN,\forall n\in b\in F(f(n)=m)$, 则有 $f(F)=\overline{m}$, 取 $b=N$, 则 $f$ 为常值函数
    4. 设 $f,g\in ^NN,F\in \beta N$, 则有 $f=_Fg\to f(F)=g(F)$, 反之则不一定成立.

### 3.4.3 非主算术超滤模型
1. 对于某个取定的非主算术超滤做所有可能的变换, 得到 $^*N=\{f(F)|f\in ^NN\}$, 它包含了所有的主超滤, 由常值函数对 $F$ 变换而来.
2. $^*N$ 的运算可以得到结构 $\left< ^*N,\overline{0},+,\cdot ,f,g,h,\cdots \right>$, 它的语言是 $\mathcal{L}=\{0,+,\cdot ,f,g,h,\cdots \}$. $\mathcal{L}$ 中包含所有一元自然数函数符.
    - 定义加法: $f(F)+g(F)=(f+g)(F))$, 乘法: $f(F)\cdot g(F)=(f\cdot g)(F))$. 其中, $(f+g)(n)=f(n)+g(n),(f\cdot g)(n)=f(n)\cdot g(n)$.
    - 每个 $h\in ^NN$ 对应 $*N$ 上的一个一元运算: $h(f(F))=(h\circ f)(F) h\in ^{^*N}{^*N}$.
    - 定义序 $<$ 为 $f(F)<g(F)\leftrightarrow \{n|f(n)<g(n)\}\in F$, 称作 $f$ 关于 $F$ 几乎小于 $g$, 记作 $f<_Fg$.
        - $k<m\to \{n|k(n)<m(n)\}=N\in F\to k(F)<m(F)$.
3. $^*N$ 的基本性质
    1. 加法
        - 加法交换律: $\forall f(F),g(F)\in ^*N(f(F)+g(F)=g(F)+f(F))$
        - 加法结合律: $\forall f(F),g(F),h(F)\in ^*N((f(F)+g(F))+h(F)=f(F)+(g(F)+h(F)))$
    2. 乘法
        - 乘法交换律: $\forall f(F),g(F)\in ^*N(f(F)\cdot g(F)=g(F)\cdot f(F))$
        - 乘法结合律: $\forall f(F),g(F),h(F)\in ^*N((f(F)\cdot g(F))\cdot h(F)=f(F)\cdot (g(F)\cdot h(F)))$
        - 乘法对加法的分配律: $\forall f(F),g(F),h(F)\in ^*N(f(F)\cdot (g(F)+h(F))=f(F)\cdot g(F)+f(F)\cdot h(F))$
    3. 本原元
        - 零元: $\forall f(F)\in ^*N(f(F)+0(F)=f(F))$
        - 单位元: $\forall f(F)\in ^*N(f(F)\cdot 1(F)=f(F))$
        - $\overline{0}\neq \overline{1}$
    4. 序
        - 反自反性: $f(F)\nless f(F)$
        - 可递性: $(f(F)<g(F)\wedge g(F)<h(F))\to f(F)<h(F)$
        - 三歧性: $f(F)<g(F)\vee f(F)=g(F)\vee g(F)<f(F)$
        - 加法保序性: $f(F)<g(F)\to f(F)+h(F)<g(F)+h(F)$
        - 乘法保序性: $(f(F)<g(F)\wedge h(F)\neq \overline{0})\to f(F)h(F)<g(F)h(F)$
4. $N$ 嵌入 $^*N$
    - 令 $\overline{N}=\{\overline{n}|n\in N\}\subset ^*N$, 它是主超滤集合, 且构成 $^*N$ 对运算的封闭子集.
        - 考虑映射 $\varphi (n):N\to \overline{N}, \varphi (n)=\overline{n}$. 则 $\varphi$ 为保序保运算的双射.
        - 称 $N$ 与 $\overline{N}$ 同构, $\varphi$ 把 $N$ 同构嵌入 $^*N$, 将 $n$ 和 $\overline{n}$ 视作同一符号.
    - 令 $N_{\infty}=^*N-\overline{N}$, 它是非主算术超滤的集合.
        - $\tau \in N_{\infty} \to \forall m\in N(\tau >\overline{m})$. 即 $N_{\infty}$ 的成员都是「无穷大数」.
        - 可以将 $^*N$ 的元素排成一列:

        $$
        0,1,2,\cdots ,n,\cdots ,\tau ,\tau +1,\cdots 
        $$

        !!! note "转换原理"
            现取语言 $\mathcal{L}=\{0,+,\cdot ,f,g,h,\cdots \}$, 使 $^*N=\{f(F)|f\in ^NN\}$ 成为语言 $\mathcal{L}$ 的结构. 令 $\mathcal{L}\cup \{F\}=\{F,0,+,\cdot ,f,g,h,\cdots \}$, $F$ 为算术超滤. 则有

            <p align="center">$\varphi$ 在 $^*N$ 中为真 $\leftrightarrow \{n\in N|\varphi (n)\in F\}$<p>

### 3.4.4 自然数数列的延伸
1. 对 $\forall h:N\to N$, 可以扩充为 $h:^*N\to ^*N$, 于是得到以下序列, 称为自然数列的延伸:

    $$
    h(0),h(1),h(2),\cdots ,h(n),\cdots ,h(\tau ),h(\tau +1),\cdots 
    $$

2. 延伸的性质
    - 序保持: $\forall n\in N(h(n)<g(n))\to \forall \tau \in N_{\infty}(h(\tau )<g(\tau ))$.
    - 单调性保持: $\forall i,j\in N(i<j\to h(i)<h(j))\to \forall x,y\in ^*N(x<y\to h(x)<h(y))$.
    - 「分数」的单调性保持: 若 $\forall i,j\in N(i<j\to h(i)l(j)<h(j)l(i))$, 则 $\forall x,y\in ^*N(x<y\to h(x)l(y)<h(y)l(x))$.

## 3.5 实数理论
### 3.5.1 Archimedes 序域
1. 仿照先前的过程可以得到 $^*Z$ 和 $^*Q$, 两者的形象如下

    $$
    \displaylines{^*Z:\cdots ,-\tau ,\cdots ,-2,-1,0,1,2,\cdots ,n,\cdots ,\tau ,\tau +1,\cdots \\
    ^*Q=\{\dfrac{q}{p}|p\neq 0,p,q\in ^*Z\}}
    $$

2. 定义 $^*Q$ 的 Archimedes 子集:
    - $Q_<=\{x\in ^*Q|\exists k\in N(|x|\leqslant k)\}$, 这一性质意味着量的有限可测量性. 作为序域, $^*Q$ 是一种非 Archimedes 序域. 若 $x,y\in Q_<$, 则 $x+y\in Q_<,x\cdot y\in Q_<$
    - $I=\{\alpha \in ^*Q|\forall k\in N(|x|\leqslant k)\}$, 称作无穷小
        - $I\subset Q_<$
        - $\alpha ,\beta \in I\to \alpha +\beta \in I$
        - $\alpha \in I\wedge x\in Q_<\to x\cdot \alpha \in I$

### 3.5.2 实数的构造
1. 在 $Q_<$ 中定义等价关系 $x\sim y\leftrightarrow x-y\in I$.
    - 记 $x\in Q_<$ 所在的等价类为 $[x]=\{y\in Q_<|y\sim x\}$, 等价类构成的集合为 $Q_</\sim =\{[x]|x\in Q_<\}$, 记作 $R$.
2. 运算性质
    1. $Q_</\sim$ 上的加法: $[x]+[y]=[x+y]$
        - 交换律: $\forall [x],[y]\in Q_</\sim ([x]+[y]=[y]+[x])$
        - 结合律: $\forall [x],[y],[z]\in Q_</\sim (([x]+[y])+[z]=[x]+([y]+[z]))$
        - 零元: $\forall [x]\in Q_</\sim ([x]+[0] =[x])$
        - 负元: $\forall [x]\in Q_</\sim \exists [-x]\in Q_</\sim ([x]+[-x]=[0]])$.
    2. $Q_</\sim$ 上的乘法: $[x]\cdot [y]=[x\cdot y]$
        - 交换律: $\forall [x],[y]\in Q_</\sim ([x]\cdot [y]=[y]\cdot [x])$
        - 结合律: $\forall [x],[y],[z]\in Q_</\sim (([x]\cdot [y])\cdot [z]=[x]\cdot ([y]\cdot [z]))$
        - 对加法的分配律: $\forall [x],[y],[z]\in Q_</\sim ([x]\cdot ([y]+[z])=[x]\cdot [y]+[x]\cdot [z])$
        - 单位元: $\forall [x]\in Q_</\sim ([x]\cdot [1]=[x])$
        - 逆元: $[x]\neq 0\to (\dfrac{1}{x}\in Q_< \wedge [x]\cdot \left[ \dfrac{1}{x}\right]=[1])$
    3. $Q_</\sim$ 上的序: 规定 $[x]<[y]\leftrightarrow x<y\wedge x\nsim y$
        - 反自反性: $\forall [x]\in Q_</\sim ([x]\nless [x])$
        - 可递性: $\forall [x],[y],[z]\in Q_</\sim (([x]<[y]\wedge [y]<[z])\to [x]<[z])$
        - 三歧性: $\forall [x],[y]\in Q_</\sim ([x]<[y]\vee [x]=[y]\vee [y]<[x])$
        - 加法保序性: $\forall [x],[y],[z]\in Q_</\sim ([x]<[y]\to [x]+[z]<[y]+[z])$
        - 乘法保序性: $\forall [x],[y],[z]\in Q_</\sim ([z]>[0]\to ([x]<[y]\to [x]\cdot [z]<[y]\cdot [z]))$
3. $\left< Q_{<}/\sim ,+,\cdot ,<,[0],[1],\right>$ 拥有上述性质, 是一个序域.
    - $Q,Q_<$ 有 Archimedes 性质, 而 $^*Q$ 没有. 但 $Q_<$ 不是域, 而将 $Q_<$ 剖分成的 $R$ 是一个序域.
    - 定义 $\overline{Q}=\{[r]|r\in Q\}$, 它关于加法, 乘法成了 $R$ 的封闭子集. 再令 $H(r)=[r],H:Q\to \overline{Q}$ 即为所需要的嵌入映射(保运算性, 保序性, 双射). 于是 $Q$ 与 $\overline{Q}$ 同构, $H$ 把 $Q$ 同构嵌入 $R$. $\overline{Q}$ 成为 $Q$, $Q\subset R$.
    - 令实数集 $R=\left\{ \left. \left[ \dfrac{q}{p}\right] \right| p\neq 0, p,q\in ^*Z, \exists k\in N\left( \left| \dfrac{q}{p}\right| \leqslant k\right) \right\}$.
        - 新的实数零为无穷小集: $0=[0]=\{x\in Q_<|x\sim 0\}=I$.
        - Archimedes 性质: $\forall a\in R\exists k\in N(|a|\leqslant k)$.
4. $R$ 的完备性
    - $Q$ 在 $R$ 中稠密: $\forall a,b\in R(a<b\to \exists r\in Q(a<r<b))$
    - 实数的完备性: 单调递增且有上界的实数列必有最小上界. 具有这种性质的 $R$ 称为完备序域, $Q$ 不具备这种完备性.

        !!! note "证明完备性的引理"
            在 $R$ 中, 严格单调递增且有上界的有理数列必有最小上界
