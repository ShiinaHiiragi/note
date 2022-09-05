# 2 方程与不等式

## 2.1 方程
1. 方程：形如 $f(x_1, x_2, \cdots, x_n) = g(x_1, x_2, \cdots, x_n)$ 的等式称作方程，其中 $f, g$ 是变元 $x_1, x_2, \cdots, x_n$ 的函数，且至少有一个不是常值函数
    1. $x_1, x_2, \cdots, x_n$ 称作方程的未知数，$f(x_1, x_2, \cdots, x_n)$ 与 $g(x_1, x_2, \cdots, x_n)$ 的定义域的交集 $M$ 称作方程的定义域
    2. 如果有序 $n$ 元组 $(a_1, a_2, \cdots, a_n) \in M$ 且有 $f(a_1, a_2, \cdots, a_n) = g(a_1, a_2, \cdots, a_n)$，则称该 $n$ 元组为方程的解
2. 方程的分类：对于方程 $f(x_1, x_2, \cdots, x_n) = g(x_1, x_2, \cdots, x_n)$
    1. 以方程的解集 $S$ 与方程定义域之间的关系为标准：条件方程（$S \subset M$ 且 $S \neq \varnothing$）、恒等方程（$S = M$）与矛盾方程（$S = \varnothing$）
    2. 以方程所含未知数个位数为标准：一元方程、二元方程与多元方程（三元及以上的方程）
    3. 以方程两边的函数类别为标准：若 $f, g$ 都是代数函数，则称之为代数方程；如果 $f, g$ 中含有初等超越函数，则这种方程称作初等超越方程
3. 同解方程：如果两个方程的解集相等，则称它们是同解方程．方程间的同解关系是一个等价关系
    1. 如果方程 $f_1(x) = g_1(x)$ 的任意一个解都是方程 $f_2(x) = g_2(x)$ 的解，则称方程 $f_2(x) = g_2(x)$ 为方程 $f_1(x) = g_1(x)$ 的结果
    2. 导出方程：将一个方程的两边通过恒等变形或某种数学运算得出的新方程称作原方程的导出方程．导出方程与原方程的关系有三种情形
        1. 导出方程与原方程同解
        2. 导出方程是原方程的结果，增加的不适合原方程的解被称为增解
        3. 导出方程不是原方程的结果，失去的解称作失解
    3. 同解定理
        1. 恒等变形定理：对方程 $f(x) = g(x)$ 的两端分别施以恒等变形：$f(x) \equiv f_0(x), g(x) \equiv g_0(x)$ 得到新方程 $f_0(x) = g_0(x)$ 若与原方程有相同的定义域，则两方程同解
        2. 加法定理：方程 $f(x) = g(x)$ 与方程 $f(x) + h(x) = g(x) + h(x)$ 同解，其中 $h(x)$ 对于方程 $f(x) = g(x)$ 定义域中一切值都有意义
        3. 乘法定理：方程 $f(x) = g(x)$ 与方程 $f(x) h(x) = g(x) h(x)$ 同解，其中 $h(x)$ 对于方程 $f(x) = g(x)$ 定义域中一切值都有意义
        4. 因式分解定理：如果 $F(x) = f_1(x) f_2(x) \cdots f_n(x)$，则方程 $F(x) = 0$ 的解集为方程 $f_1(x) = 0, f_2(x) = 0, \cdots, f_n(x) = 0$ 的并集，其中每一个解都属于这 $n$ 个方程定义域的交集

### 2.1.1 一元方程
1. 代数基本定理：每一个复系数一元 $n$ 次代数方程（$n \geqslant 1$）至少有一个根
2. 一元 $n$ 次方程的根
    1. 余数定理：多项式 $f(x)$ 除以 $x - b$ 所得的余数等于 $f(b)$
    2. 因式定理：多项式 $f(x)$ 有一个因式 $x - b$ 当且仅当 $f(b) = 0$
    3. 复系数多项式因式分解定理：每一个复系数一元 $n$ 次多项式 $f(x)$ 有且仅有 $n$ 个一次多项式，因此 $f(x)$ 就具有唯一确定的因式分解形式 $f(x) = a_n (x - x_1)^{k_1} (x - x_2)^{k_2} \cdots (x - x_n)^{k_n}$，其中 $k_1, k_2, \cdots, k_m \in \mathbf Z_+$ 且 $k_1 + k_2 + \cdots + k_m = n$，复数 $x_1, x_2, \cdots, x_m$ 两两不等
    4. 复系数一元 $n$ 次方程在复数集中有且仅有 $n$ 个根（$k$ 重根算作 $k$ 个根）
    5. 如果既约分数 $\dfrac qp$ 是整系数一元 $n$ 次方程 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1x + a_0 = 0$ 的根，则 $p$ 一定是 $a_n$ 的约数，$q$ 一定是 $a_0$ 的约数
        1. 如果整系数一元 $n$ 次 方程的首项系数是 $1$，那么这个方程的有理数根只可能是整数
        2. 如果整系数一元 $n$ 此方程有整数根，那么它一定是常数项的约数
    6. 如果虚数 $a + bi$ 是实系数一元 $n$ 次方程 $f(x) = 0$ 的根，则 $a - bi$ 也是这个方程的根，且它们重数相等 
    7. 如果 $a + \sqrt{b}$（$a, b \in \mathbf Q$，$\sqrt{b}$ 是无理数）是有理系数一元 $n$ 次方程 $f(x) = 0$ 的根，则 $a - \sqrt{b}$ 也是方程 $f(x) = 0$ 的根
    8. $\text{Viete}$ 定理：对于一元 $n$ 次方程 $a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 = 0$，设 $x_1, x_2, \cdots, x_n$ 为它在复数集中的 $n$ 个根，则有 ${\displaystyle \sum_{i=1}^n x_i} = -\dfrac{a_{n-1}}{a_n}, {\displaystyle \prod_{i=1}^n x_i} = (-1)^n \dfrac{a_0}{a_n}$
3. 方程的变换：对于一般形式的一元 $n$ 次方程 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 = 0$，其中 $a_n \neq 0, n \in \mathbf Z_+$
    1. 差根变换：方程 $f(y +h)$ 各根分别等于方程 $f(x) = 0$ 的各根减去 $h$
    2. 倍根变换：方程 $f\left(\dfrac{y}{k}\right) = 0$ 的各根分别等于方程 $f(x) = 0$ 的各根的 $k$ 倍
    3. 倒根变换：如果方程 $f(x) = 0$ 的各根都不为零，则方程 $f\left(\dfrac 1y\right)$ 的各根分别等于方程 $f(x) = 0$ 各根的倒数
4. 实系数一元二次方程：$ax^2 + bx + c = 0 \ (a \neq 0)$
    1. 方程的两个根为

        $$
        \begin{aligned}
        & x_1 = \dfrac{-b + \sqrt{b^2 - 4ac}}{2a} \\
        & x_2 = \dfrac{-b - \sqrt{b^2 - 4ac}}{2a}
        \end{aligned}
        $$

    2. $\Delta = b^2 - 4ac$ 被称作实系数二次方程 $ax^2 + bx + c = 0$ 的判别式
        1. 如果 $\Delta \geqslant 0$，则此时方程两个实根，其中实根为重根当且仅当 $\Delta = 0$
        2. 如果 $\Delta < 0$，则此时方程有两个共轭虚根

5. 实系数一元三次方程：$ax^3 + bx^2 + cx + d = 0 \ (a \neq 0)$
    1. 方程化为 $x^3 + px + q = 0$，其中 $p = \dfrac{3ac - b^2}{3a^2}, q = \dfrac{2b^3 - 9abc + 27a^2d}{27a^3}$
    2. 方程 $x^3 + px + q = 0$ 的三个根为

        $$
        \begin{aligned}
        & x_1 = \sqrt[3]{-\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}} - \sqrt[3]{\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}} \\
        & x_2 = \omega \sqrt[3]{-\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}} - \omega^2 \sqrt[3]{\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}} \\
        & x_3 = \omega^2 \sqrt[3]{-\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}} - \omega \sqrt[3]{\dfrac q2 + \sqrt{\left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3}}
        \end{aligned}
        $$

        其中 $w = \dfrac{-1 + \sqrt{3}i}{2}$

    3. $\Delta = \left(\dfrac q2\right)^2 + \left(\dfrac p3\right)^3$ 被称作实系数三次方程 $x^3 + px + q = 0$ 的判别式
        1. 如果 $\Delta > 0$，则此时方程有一个实根与两个共轭虚根
        2. 如果 $\Delta = 0$，则此时方程有三个实根，其中有两个相等
        3. 如果 $\Delta < 0$，可用三角方法求出三个互不相等的实根，其求解过程无法用在根号下仅出现实数的根式形式来表示

6. 一元四次方程：对于方程 $x^4 + ax^3 + bx^2 + cx + d = 0$
    1. 解三次方程 $t^3 - bt^2 + (ac - 4d)t - (a^2d - 4bd + c^2) = 0$，设 $t_0$ 是方程的任一根
    2. 原方程化为 $\left(x^2 + \dfrac{a}{2} + \dfrac{t_0}{2}\right)^2 = (\alpha x + \beta)^2$，其中 $\alpha = \sqrt{\dfrac{a^2}{4} - b + t_0}, \beta = \sqrt{\dfrac{t_0^2}{4} - d}$，于是原方程化为两个二次方程

        $$
        \begin{aligned}
        & x^2 + \left(\dfrac{a}{2} - \alpha\right)x + \left(\dfrac{t_0}{2} - \beta\right) = 0 \\
        & x^2 + \left(\dfrac{a}{2} + \alpha\right)x + \left(\dfrac{t_0}{2} + \beta\right) = 0
        \end{aligned}
        $$

7. 倒数方程：如果复数 $z \neq 0$ 是整式方程 $f(x) = a_n x^n + a_{n-1} x^{n-1} + \cdots + a_1 x + a_0 = 0$ 的根，则 $\dfrac 1z$ 也是此方程的根，那么 $f(x) = 0$ 称作倒数方程
    1. 倒数方程的分类
        1. 第一类倒数方程：如果 $a_n = a_0, a_{n-1} = a_1, \cdots$ 则称此方程为第一类倒数方程
        2. 第二类倒数方程：如果 $a_n = -a_0, a_{n-1} = -a_1, \cdots$ 则称此方程为第二类倒数方程
    2. 标准型倒数方程：即第一类偶次倒数方程，其他类型的倒数方程可化为标准型
        1. 第一类奇次倒数方程 $f(x) = 0$ 有 $f(-1) = 0$，因此 $f(x) = (x + 1)g(x)$，而 $g(x) = 0$ 为标准型倒数方程
        2. 第二类奇次倒数方程 $f(x) = 0$ 有 $f(1) = 0$，因此 $f(x) = (x - 1)g(x)$，而 $g(x) = 0$ 为标准型倒数方程
        3. 第二类偶次倒数方程 $f(x) = 0$ 有 $f(1) = f(-1) = 0$，因此 $f(x) = (x^2 - 1)g(x)$，而 $g(x) = 0$ 为标准型倒数方程
    3. 倒数方程的解法：标准型倒数方程 $f(x) = a_{0}x^{2k} + a_1x^{2k-1} + \cdots + a_kx^k + \cdots + a_1x + a_0 = 0 \ (a_0 \neq 0)$ 可化为一个 $k$ 次方程
8. 二项方程：形如 $x^n - a = 0$ 的方程
9.  三项方程：形如 $ax^{2n} + bx^{n} + c = 0 \ (a, b \neq 0)$ 的方程．零 $y = x^n$，原方程转化为解一个二次方程与两个二项方程

### 2.1.2 不定方程
1. 不定方程：方程的个数少于未知数的个数且未知数又必须为整数的方程（组）
2. 二元一次不定方程：设 $a, b, c \in \mathbf Z$ 且 $a, b \neq 0$，任何二元一次方程可以写成 $ax + by = c$，其中 $x, y \in \mathbf Z$
    1. 设 $a, b \in \mathbf Z - \{0\}, c \in \mathbf Z$，方程 $ax + by = c$ 有整数解当且仅当 $(a, b) \mid c$
    2. 若 $(a, b) = 1$，如果 $(x_0, y_0)$ 是方程 $ax + by = c$ 的一组解，则它所有整数解都可以写成

        $$
        \left\{\begin{aligned}
        & x = x_0 + bt \\
        & y = y_0 - at
        \end{aligned}\right.
        $$

        其中 $t$ 为任意整数

    3. 设 $(a, b) = d, a = a_1d, b = b_1d$，如果 $(x_0, y_0)$ 是方程 $ax + by = c$ 的一组解，则它所有的整数解都可以写作

        $$
        \left\{\begin{aligned}
        & x = x_0 + b_1t \\
        & y = y_0 - a_1t
        \end{aligned}\right.
        $$

        其中 $t$ 为任意整数

3. 多元一次不定方程：设 $n$ 是大于 $2$ 的正整数，$a_1, a_2, \cdots, a_n$ 是非零整数，$c$ 是整数．则任何 $n$ 元一次方程都可以写作 $a_1x_1 + a_2x_2 + \cdots + a_nx_n = c$ 的形式，其中 $x_1, x_2, \cdots, x_n$ 是未知数
    - 已知 $a_1, a_2, \cdots, a_n$ 是非零整数，$c$ 是整数，若 $d = (a_1, a_2, \cdots, a_n)$，则方程 $a_1x_1 + a_2x_2 + \cdots + a_nx_n$ 有整数解当且仅当 $d \mid c$
4. 二次方程 $x^2 + y^2 = z^2$ 的整数解
    1. 满足 $xyz = 0$ 的解称为显然解，例如 $(x, y, z) = (0, 0, 0)$；满足 $x > 0, y > 0, z > 0$ 且 $(x, y, z) = 1$ 的解称为本原解
    2. 若 $(x, y, z)$ 是方程 $x^2 + y^2 = z^2$ 的本原解
        1. $x$ 与 $y$ 具有不同的奇偶性
        2. $x$ 与 $y$ 中有且仅有一个数能被 $3$ 整除
        3. $x$ 与 $y$ 中有且仅有一个数能被 $4$ 整除
        4. $x$ 与 $y$ 中有且仅有一个数能被 $5$ 整除
    3. 不定方程 $xy = z^2$ 满足条件 $x > 0, y > 0, z > 0$ 且 $(x, y) = 1$ 的一切正整数解可以写作

        $$
        \left\{\begin{aligned}
        & x = a^2 \\
        & y = b^2 \\
        & z = ab
        \end{aligned}\right.
        $$

        其中，$a > 0, b > 0$ 且 $(a, b) = 1$

    4. 不定方程 $x^2 + y^2 = z^2$ 适合 $x > 0, y > 0, z > 0, (x, y) = 1$ 且 $2 \mid x$ 的一切正整数解可以写作

        $$
        \left\{\begin{aligned}
        & x = 2ab \\
        & y = a^2 - b^2 \\
        & z = a^2 + b^2
        \end{aligned}\right.
        $$

        其中 $a, b$ 一奇一偶，$a > b > 0$ 且 $(a, b) = 1$

    5. 单位圆周上坐标是有理数的点（有理点）可以写作 $\left(\pm \dfrac{2ab}{a^2 + b^2}, \pm \dfrac{a^2 - b^2}{a^2 + b^2}\right)$ 或 $\left(\pm \dfrac{a^2 - b^2}{a^2 + b^2}, \pm \dfrac{2ab}{a^2 + b^2}\right)$，其中 $a, b$ 是不全为零的整数

### 2.1.3 初等超越方程
1. 指数方程：在指数里含有未知数的方程
    1. 最简指数方程：形如 $a^x = c \ (a > 0, a \neq 1)$ 的方程
        1. 当 $c > 0$ 时，方程 $a^x = c$ 有唯一解 $x = \log_a c$
        2. 当 $c \leqslant 0$ 时，方程无解
    2. 指数方程的初等解法
        1. 方程 $a^{f(x)} = c \ (a > 0, a \neq 1, c > 0)$ 与方程 $f(x) = \log_a c$ 根据定义同解
        2. 方程 $a^{f(x)} = a^{g(x)} \ (a > 0, a \neq 1)$ 与方程 $f(x) = g(x)$ 同解
        3. 方程 $a^{f(x)} = b^{f(x)} \ (a, b > 0, a, b \neq 1, a \neq b)$ 与方程 $f(x) = 0$ 同解
        4. 方程 $a^{f(x)} = b^{g(x)} \ (a, b > 0, a, b \neq 1)$ 与方程 $f(x) \log_c a = g(x) \cdot \log_c b \ (c > 0, c \neq 1)$ 同解
        5. 方程 $f\left(a^{g(x)}\right) = 0 \ (a > 0, a \neq 1)$ 与方程组 $\left\{\begin{aligned} & t = a^{g(x)} \\ & f(t) = 0 \end{aligned}\right.$ 同解
2. 对数方程：在对数符号后含有未知数的方程．特别地，形如 $\log_a x = b \ (a > 0, a \neq 1)$ 的方程称为最简对数方程，它总有唯一解 $x = a^b$
3. 三角方程：含有未知数的三角函数的方程称作三角方程
    1. 最简三角方程：形如 $\sin x = a, \cos x = a, \tan x = a, \cot x = a$ 的方程
        1. $\sin x = a \ (|a| \leqslant 1)$ 的解集为 $x = (-1)^k \arcsin a + k\pi, k \in \mathbf Z$
        2. $\cos x = a \ (|a| \leqslant 1)$ 的解集为 $x = \pm \arccos a + 2k\pi, k \in \mathbf Z$
        3. $\tan x = a$ 的解集是 $x = \arctan a + k\pi, k \in \mathbf Z$
        4. $\cot x = a$ 的解集是 $x = \mathrm{arccot}\ a + k\pi, k \in \mathbf Z$
    2. 辅助角：对于形如 $a\sin x + b\cos x = c$（$a, b, c$ 为非零实数）的三角方程，令 $\varphi = \arctan \dfrac ba$，则方程变形为 $\sin(x + \varphi) = \dfrac{c}{\sqrt{a^2 + b^2}}$
4. 反三角方程：仅在反三角函数后含有未知数的方程

## 2.2 不等式
### 2.3.1 不等式的性质
1. 不等式：形如 $f(x_1, x_2, \cdots, x_n) > g(x_1, x_2, \cdots, x_n)$ 或 $g(x_1, x_2, \cdots, x_n) < f(x_1, x_2, \cdots, x_n)$ 的式子，称作关于变元 $x_1, x_2, \cdots, x_n$ 的不等式
    1. $f(x_1, x_2, \cdots, x_n)$ 与 $g(x_1, x_2, \cdots, x_n)$ 的定义域的交集 $M$ 称作不等式的定义域
        1. 绝对不等式：$M$ 中的一切值组都使不等式成立
        2. 矛盾不等式：$M$ 中的一切值组都不能使不等式成立
        3. 条件不等式：$M$ 中的某些值组能使不等式成立，而另一些值组不能使其成立
    2. 不等式的分类：代数不等式与初等超越不等式
2. 不等式的性质
    1. 实数域上的运算比较性质
        1. $a > b \leftrightarrow a - b > 0$
        2. $a < b \leftrightarrow a - b < 0$
        3. $a = b \leftrightarrow a - b = 0$
    2. 不等式的基本性质
        1. 对逆性：$a > b \leftrightarrow b < a$
        2. 传递性：$a > b \wedge b > c \to a > c$
        3. 加法保序性：$a < b \to a + c < b + c$
        4. 乘法单调性：若 $a > b, c > 0$，则 $ac > bc$；若 $a > b, c < 0$，则 $ac < bc$
    3. 其他性质
        1. 相加法则：若 $a > b, c > d$，则 $a + c > b + d$
        2. 相减法则：若 $a \geqslant b, c < d$，则 $a - c > b - d$
        3. 相乘法则：若 $a > b > 0, c > d > 0$，则 $ac > bd$
        4. 相除法则：若 $a \geqslant b > 0, 0 < c < d$，则 $\dfrac ac > \dfrac bd$
        5. 乘方法则：若 $a > b > 0$，整数 $n > 1$，则 $a^n > b^n$
        6. 开方法则：若 $a > b > 0$，整数 $n > 1$，则 $\sqrt[n]{a} > \sqrt[n]{b}$

### 2.3.2 常用不等式
1. $\text{Cauchy}$ 不等式：设 $a_i, b_i \in \mathbf R \ (i = 1, 2, \cdots, n)$，则有

    $$
    \left(\sum_{i=1}^n a_i b_i\right)^2 \leqslant \left(\sum_{i=1}^n a_i\right)^2 \left(\sum_{i=1}^n b_i\right)^2
    $$

    等号成立当且仅当 $b_i = ka_i \ (i = 1, 2, \cdots, n)$

2. 均值不等式：设 $a_i > 0 \ (1, 2, \cdots, n)$，则有

    $$
    \dfrac{n}{\dfrac{1}{a_1} + \dfrac{1}{a_2} + \cdots + \dfrac{1}{a_n}} \leqslant \sqrt[n]{a_1 a_2 \cdots a_n} \leqslant \dfrac{a_1 + a_2 + \cdots + a_n}{n} \leqslant \sqrt[2]{\dfrac{a_1^2 + a_2^2 + \cdots + a_n^2}{n}}
    $$

    等号成立当且仅当 $a_1 = a_2 = \cdots = a_n$，四个均值分别称作调和均值、几何均值、算术均值与平方均值

3. 三角不等式：对于任意实数 $a_i, b_i \ (i = 1, 2, \cdots, n)$ 有

    $$
    \sqrt{\left(\sum_{i=1}^n (a_i + b_i)^2\right)} \leqslant \sqrt{\left(\sum_{i=1}^n a_i^2\right)} + \sqrt{\left(\sum_{i=1}^n b_i^2\right)}
    $$

    !!! note "绝对值不等式"
        三角不等式可以可以证明绝对值不等式：设 $a, b \in R, a_i \in R \ (i = 1, 2, \cdots, n)$

        1. $\left||a| - |b|\right| \leqslant |a \pm b| \leqslant |a| + |b|$
        2. $|a_1 + a_2 + \cdots + a_n| \leqslant |a_1| + |a_2| + \cdots + |a_n|$

4. $\text{Jensen}$ 不等式：如果 $y = f(x)$ 在某区间 $D$ 上是凹函数，则对于该区间上的任意 $x_1, x_2, \cdots, x_n$ 都有

    $$
    f\left(\dfrac{x_1, x_2, \cdots, x_n}{n}\right) \leqslant \dfrac{f(x_1) + f(x_2) + \cdots + f(x_n)}{n}
    $$

    如果 $y = f(x)$ 在某区间 $D$ 上是凸函数，则对于该区间上的任意 $x_1, x_2, \cdots, x_n$ 都有

    $$
    f\left(\dfrac{x_1, x_2, \cdots, x_n}{n}\right) \geqslant \dfrac{f(x_1) + f(x_2) + \cdots + f(x_n)}{n}
    $$

    等号成立当且仅当 $x_1 = x_2 = \cdots = x_n$

### 2.3.3 解不等式
1. 不等式的解集：如果不等式两边的解析式含有变元，则其定义域 $M$ 内使不等式成立的变元的取值称作不等式的解
    1. 解集：不等式的解全体组成的集合，记作 $S$，显然 $S \subseteq M$
    2. 不等式组：由含有相同变元的集合不等式联立成一组，其各不等式解集的交集称作该不等式组的解集
2. 同解不等式：如果两个不等式解集相等，则称这两个不等式是同解不等式
    1. 不等式恒等变形定理：若对不等式 $f(x) > g(x)$ 的两边分别做恒等变形 $f(x) \equiv f_0(x), g(x) \equiv g_0(x)$，若 $f_0(x) > g_0(x)$ 与原不等式具有相同的定义域，则它们同解
    2. 对逆定理：不等式 $f(x) > g(x)$ 与 $g(x) < f(x)$ 同解
    3. 不等式同解定理
        1. 如果对于 $f(x) > g(x)$ 的定义域 $M$ 中的一切值，$h(x)$ 都有意义，则 $f(x) > g(x)$ 与 $f(x) + h(x) > g(x) + h(x)$ 同解
        2. 如果对于 $f(x) > g(x)$ 的定义域 $M$ 中的一切值总有 $h(x) > 0$，则 $f(x) > g(x)$ 与 $f(x)h(x) > g(x)h(x)$ 同解；反之如果总有 $h(x) < 0$，则 $f(x) > g(x)$ 与 $f(x)h(x) < g(x)h(x)$ 同解
        3. 不等式 $\dfrac{f(x)}{g(x)} > 0$ 与不等式 $f(x)g(x) > 0$ 同解；不等式 $\dfrac{f(x)}{g(x)} < 0$ 与不等式 $f(x)g(x) < 0$ 同解
        4. 设不等式 $f(x) > g(x)$ 在其定义域的某个子集上恒有 $f(x) > g(x) > 0$，则在此子集上 $f(x) > g(x)$ 与 $f^n(x) > g^n(x)$ 同解，其中 $n \in \mathbf Z_+$
        5. 设不等式 $f(x) > g(x)$ 在其定义域的某个子集上恒有 $f(x) > g(x) > 0$，则在此子集上 $f(x) > g(x)$ 与 $\sqrt[n]{f(x)} > \sqrt[n]{g(x)}$ 同解，其中 $n \in \mathbf Z_+$ 且 $n > 1$
    4. 不等式 $f(x)g(x) > 0$ 的解集是不等式组 $\left\{\begin{aligned} & f(x) > 0 \\ & g(x) > 0 \end{aligned}\right.$ 与 $\left\{\begin{aligned} & f(x) < 0 \\ & g(x) < 0 \end{aligned}\right.$ 的解集的并集；不等式 $f(x)g(x) < 0$ 的解集是不等式组 $\left\{\begin{aligned} & f(x) > 0 \\ & g(x) < 0 \end{aligned}\right.$ 与 $\left\{\begin{aligned} & f(x) < 0 \\ & g(x) > 0 \end{aligned}\right.$ 的解集的并集
3. 一元不等式
    1. 任何一元一次不等式都可经过恒等变形整理为 $ax > b$ 的形式
        1. $a = 0$ 时，解集为 $\left\{\begin{aligned} & \varnothing, & b \geqslant 0 \\ & \mathbf R, & b < 0 \end{aligned}\right.$
        2. $a \neq 0$ 时，解集为 $\left\{\begin{aligned} & \left(\dfrac ba, +\infty\right), & a > 0 \\ & \left(-\infty, \dfrac ba\right), & a < 0 \end{aligned}\right.$
    2. 任何一元二次不等式都可经过恒等变形整理为 $ax^2 + bx + c > 0 \ (a \neq 0)$ 的形式，从而归结为两种情形，记 $\Delta = p^2 - 4q$

        <div style="text-align: center;">

        |                           项目                            |                            $x^2 + px + q > 0$                            | $x^2 + px + q < 0$ |
        | :-------------------------------------------------------: | :----------------------------------------------------------------------: | :----------------: |
        |                       $\Delta < 0$                        |                               $\mathbf R$                                |        无解        |
        |                       $\Delta = 0$                        | $\left(-\infty, -\dfrac p2\right) \cup \left(-\dfrac p2, +\infty\right)$ |        无解        |
        | $\Delta > 0$ <br/> 设 $x^2 + px + q = (x - x_1)(x - x_2)$ |                   $(-\infty, x_1) \cup (x_2, +\infty)$                   |    $(x_1, x_2)$    |

        </div>

    3. 一元高次不等式的标准形式：$f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots a_1x + a_0 > 0 \ (a_n \neq 0)$
        1. 将 $f(x)$ 写成 $f(x) = a_n f_1(x)f_2(x)$，其中 $f_1(x), f_2(x)$ 分别是 $f(x)$ 中所有首项系数为 $1$ 的一次因式与二次既约因式的乘积
        2. 当 $a_n > 0$ 时，$f(x) > 0$ 与 $f_1(x) > 0$ 同解；当 $a_n < 0$ 时，$f(x) > 0$ 与 $f_1(x) < 0$ 同解

4. 绝对值不等式：绝对值符号内含有变元的不等式称作绝对值不等式
    1. 不等式 $|f(x)| < g(x)$ 与不等式组 $-g(x) < f(x) < g(x)$ 同解
    2. 不等式 $|f(x)| > g(x)$ 的解集等于不等式 $f(x) < -g(x)$ 与不等式 $f(x) > g(x)$ 的并集
5. 初等超越不等式
    1. 最简指数不等式：形如 $a^{f(x)} > b$ 或 $a^{f(x)} < b$ 的不等式，其中 $a > 0, a \neq 1$
        1. 若 $b \leqslant 0$，则不等式 $a^{f(x)} > b$ 为绝对不等式，$a^{f(x)} < b$ 无解
        2. 若 $b > 0$，有

            $$
            \begin{aligned}
            & a^{f(x)} > b \leftrightarrow f(x) > \log_a b, & a > 1 \\
            & a^{f(x)} < b \leftrightarrow f(x) < \log_a b, & a > 1 \\
            & a^{f(x)} > b \leftrightarrow f(x) < \log_a b, & 0 < a < 1 \\
            & a^{f(x)} < b \leftrightarrow f(x) > \log_a b, & 0 < a < 1
            \end{aligned}
            $$
    
    2. 最简对数不等式：形如 $\log_a x > b$ 或 $\log_a x < b$ 的不等式，其中 $a > 0, a \neq 1$
        1. 若 $a > 1$，则 $\log_a x > b \leftrightarrow x > a^b, \log_a x < b \leftrightarrow x < a^b$
        2. 若 $0 < a < 1$，则 $\log_a x > b \leftrightarrow x < a^b, \log_a x < b \leftrightarrow x > a^b$
    3. 最简三角不等式：形如

        $$
        \begin{aligned}
        & \sin x > a \\
        & \sin x < a \\
        & \cos x > a \\
        & \cos x < a \\
        & \tan x > a \\
        & \tan x < a
        \end{aligned}
        $$

        的不等式，其中 $a \in \mathbf R$
