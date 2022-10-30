# 1 解析式与初等函数

1. 代数解析式：一阶算术项集的元素
    1. 代数式：只含有四则运算和开方运算的解析式
    2. 超越式：含有初等超越运算的解析式
2. 解析式的恒等：设 $f(x), g(x)$ 为两个解析式
    1. 若对于其定义域的公共部分的一切值都有相等的值，则称两个解析式是恒等的，记作 $f(x) \equiv g(x)$ 或 $f(x) = g(x)$
    2. 恒等变换：将一个给定解析式换成与之恒等的解析式
3. 初等函数：由基本初等函数经过有限次代数运算及函数复合构成的，用一个解析式表示的函数
    1. 初等代数函数：由基本初等函数 $f_1(x) = x$ 与 $f_2(x) = c$（$c$ 为常数）经过有限次代数运算得到的初等函数，也称作代数显函数
    2. 初等超越函数：不是初等代数函数的初等函数
4. 代数函数：凡能作为代数方程的解的函数．假设 $P(x, y) = P_x(x) y^n + P_{n-1}y^{n-1} + \cdots + P_1(x) y + P_0$ 是两个变量 $x, y$ 的非零多项式，如果以 $y$ 为未知量，则代数方程 $P(x, y) = 0$ 的各个根就是以 $x$ 为自变量的代数函数

## 1.1 代数式
### 1.1.1 整式
1. 整式：单项式与多项式的总称，是代数式的一种
    1. 单项式：数字、字母或其乘积，其数字因数被称为单项式的系数，所有字母的指数和被称为单项式的次数
    2. 多项式：若干个单项式的和，每个单项式称作多项式的项，次数最高项的次数称作多项式的次数
        1. 常数项：不含字母的项
        2. 同类型：所含字母相同，且相同字母的指数也相同的项．特别地，常数项都是同类项
2. 一元多项式：设数域 $F$ 上的多项式 $f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots a_1x + a_0$
    1. $a_n \neq 0$ 时，称 $n$ 为多项式的次数，$a_nx^n$ 为 多项式的首项，$a_n \neq 0$ 为首项系数
    2. 若 $\forall x \in F: f(x) \equiv 0$，则 $a_i = 0 \ (i = 0, 1, \cdots, n)$
    3. 多项式恒等定理：设数域 $F$ 上的多项式 $g(x) = b_mx^m + b_{m-1}x^{m-1} + \cdots b_1x + b_0$
        1. $f(x) \equiv g(x) \leftrightarrow n = m \wedge a_i = b_i \ (i = 1, 2, \cdots, n)$
        2. 若 $f(x), g(x)$ 对于 $x$ 的 $n + 1$ 个不同的值都有相等的值，那么 $f(x) \equiv g(x)$
3. 多元多项式：含两个以上变元的多项式
    1. 特殊多项式
        1. 齐次多项式：若标准形式多项式各项次数均为 $n$，则称之为 $n$ 次齐次多项式
        2. 对称多项式：设 $f(x_1, x_2, \cdots , x_n)$ 是 $n$ 元多项式，如果对任意 $i, j \ (1 \leqslant i < j \leqslant n)$ 都有 $f(x_1, \cdots x_i, \cdots, x_j, \cdots, x_n) = f(x_1, \cdots, x_j, \cdots, x_i, \cdots, x_n)$，则称该多项式为对称多项式
        3. 交代多项式：设 $f(x_1, x_2, \cdots , x_n)$ 是 $n$ 元多项式，如果对任意 $i, j \ (1 \leqslant i < j \leqslant n)$ 都有 $f(x_1, \cdots x_i, \cdots, x_j, \cdots, x_n) = -f(x_1, \cdots, x_j, \cdots, x_i, \cdots, x_n)$，则称该多项式为交代多项式
        4. 轮换多项式：设 $f(x_1, x_2, \cdots , x_n)$ 是 $n$ 元多项式，如果将变数字母 $x_1, x_2, \cdots, x_n$ 按一定顺序轮换，多项式值不变，则称该多项式为轮换多项式
    2. 多项式的性质
        1. 对称式一定是轮换式，反之不一定成立
        2. 变元相同的两个对称式的四则运算（除法需要保证能整除）结果仍是对称式
        3. 变元相同的两个轮换式的四则运算（除法需要保证能整除）结果仍是轮换式
        4. 变元相同的两个交代式的和、差仍是交代式，其积、商（需要保证能整除）是对称式
        5. 变元相同的一个对称式与一个交代式的积、商（需要保证能整除）是交代式
4. 多项式的因式分解：给定的数域上，讲一个多项式表示成若干个不可约多项式乘积的形式

    !!! note "因式分解的常用公式"
        1. 平方差公式：$a^2 - b^2 = (a + b)(a - b)$
        2. 立方差公式：$a^3 - b^3 = (a - b)(a^2 + ab + b^2)$，用 $(-b)$ 代 $b$ 得到立方和公式：$a^3 + b^3 = (a + b)(a^2 - ab + b^2)$
        3. 完全平方公式：$a^2 + 2ab + b^2 = (a + b)^2$，用 $(-b)$ 代 $b$ 得到 $a^2 - 2ab + b^2 = (a - b)^2$

### 1.1.2 分式
1. 分式：两个多项式的比 $\dfrac{f(x)}{g(x)}$ （其中 $g(x)$ 不恒为零）称作有理分式
    1. 分式的恒等：如果两个分式 $\dfrac{f_1(x)}{g_1(x)}$ 与 $\dfrac{f_2(x)}{g_2(x)}$ 对于 $x$ 在其公共定义域上的任意取值都有相等的值，那么 $\dfrac{f_1(x)}{g_1(x)} \equiv \dfrac{f_2(x)}{g_2(x)}$
        1. $\dfrac{f_1(x)}{g_1(x)} \equiv \dfrac{f_2(x)}{g_2(x)}$ 当且仅当 $f_1(x)g_2(x) = f_2(x)g_1(x)$
        2. 若 $\dfrac{f_1(x)}{g_1(x)} \equiv \dfrac{f_2(x)}{g_2(x)}$ 且 $g_1(x) = g_2(x)$，则 $f_1(x) = f_2(x)$
    2. 既约分式：如果分式 $\dfrac{f(x)}{g(x)}$ 的分子和分母除常数因子外没有其他公因式，则称该分式为既约分式或不可约分式，称 $f(x)$ 与 $g(x)$ 互质
    3. 分式的基本性质
        1. 如果 $\dfrac{f(x)}{g(x)}$ 是一个分式，$h(x)$ 是一个非零多项式，则 $\dfrac{f(x)}{g(x)} \equiv \dfrac{f(x) \cdot h(x)}{g(x) \cdot h(x)}$
        2. 任何有理分式 $\dfrac{f(x)}{g(x)}$ 都有一个既约分式与之恒等，除去数值因子外，这个既约分式是唯一的
2. 代数延拓原理：如果分式 $\dfrac{f(x)}{g(x)}$ 在 $x = x_0$ 处失去意义，即 $g(x_0) = 0$，而其既约分式 $\dfrac{f_0(x)}{g_0(x)}$ 在 $x = x_0$ 处有意义，则约定 $\dfrac{f(x_0)}{g(x_0)} = \dfrac{f_0(x_0)}{g_0(x_0)}$
3. 部分分式
    1. 真分式：如果一个分式的分子多项式次数小于分母多项式的次数，则称之为真分式，否则称之为假分式
        1. 两个真分式的和、差仍是真分式或零
        2. 设 $p_1(x)$ 与 $p_2(x)$ 是多项式，$\dfrac{f_1(x)}{g_1(x)}$ 与 $\dfrac{f_2(x)}{g_2(x)}$ 是真分式，若有 $p_1(x) + \dfrac{f_1(x)}{g_1(x)} \equiv= p_2(x) + \dfrac{f_2(x)}{g_2(x)}$，则必有 $p_1(x) \equiv p_2(x)$ 且 $\dfrac{f_1(x)}{g_1(x)} \equiv \dfrac{f_2(x)}{g_2(x)}$
    2. 部分分式：在实数集内，形如 $\dfrac{a}{(x - r)^k}$ 或 $\dfrac{bx + c}{(x^2 + px + q)^l}$（其中 $k, l \in Z_+, a, b, c \in \mathbf R, p^2 - 4q < 0$）的分式称作基本真分式或最简部分分式．将一个真分式化为基本真分式之和称作将分式展开为部分分式
        1. 设 $\dfrac{f(x)}{g_1(x)g_2(x) \cdots g_n(x)}$ 是真分式，$g_1(x), g_2(x), \cdots g_n(x)$ 都是不可约多项式且两两互质，则可求得唯一一组真分式 $\dfrac{f_1(x)}{g_1(x)}, \dfrac{f_2(x)}{g_2(x)}, \cdots, \dfrac{f_n(x)}{g_n(x)}$ 使得 $\dfrac{f(x)}{g_1(x)g_2(x) \cdots g_n(x)} = \dfrac{f_1(x)}{g_1(x)} + \dfrac{f_2(x)}{g_2(x)} + \cdots + \dfrac{f_n(x)}{g_n(x)}$
        2. 设 $\dfrac{f(x)}{g^n(x)}$ 是真分式，$f(x)$ 的次数不小于 $g(x)$ 的次数，则可求得唯一一组真分式 $\dfrac{f_1(x)}{g(x)}, \dfrac{f_2(x)}{g^2(x)}, \cdots, \dfrac{f_n(x)}{g^n(x)}$ 使得 $\dfrac{f(x)}{g^n(x)} = \dfrac{f_1(x)}{g(x)} + \dfrac{f_2(x)}{g^2(x)} + \cdots + \dfrac{f_n(x)}{g^n(x)}$，其中 $f_1(x), f_2(x), \cdots, f_n(x)$ 的次数都小于 $g(x)$ 的次数

### 1.1.3 根式
1. 根式：含有开方运算的代数式
    1. $n$ 次方根：如果 $x^n = a$，则称 $x$ 为 $a$ 的 $n$ 次方根
    2. 算术根：非负数 $a$ 的非负 $n$ 次方根记作 $\sqrt[n]a \ (a \geqslant 0, n \in \mathbf Z_+, n > 1)$，它是唯一存在的
2. 运算法则与恒等变形
    1. 根式的运算法则：对于算术根而言，设 $A \geqslant 0, B \geqslant 0, n \in \mathbf Z_+, n > 1$
        1. $\sqrt[np]{A^{mp}} = \sqrt[n]{A^m}$
        2. $\sqrt[n]{AB} = \sqrt[n]{A} \cdot \sqrt[n]{B}$
        3. $\sqrt[n]{\dfrac{A}{B}} = \dfrac{\sqrt[n]{A}}{\sqrt[n]{B}}$
        4. $(\sqrt[n]{A})^m = \sqrt[n]{A^m}$
        5. $\sqrt[n]{\sqrt[m]{A}} = \sqrt[mn]{A}$
    2. 根式的化简
        1. 最简根式：如果一个根式的被开方数的幂指数与根指数互质，被开方数的每个因式的幂指数都小于根指数，且被开放数不含分母，则称此根式为最简根式
        2. 复合二次根式：设 $A > 0, B > 0$ 且 $A^2 - B > 0$，则二次根式 $\sqrt{A \pm \sqrt{B}} = \sqrt{\dfrac{A + \sqrt{A^2 - B}}{2}} \pm \sqrt{\dfrac{A - \sqrt{A^2 - B}}{2}}$
3. 共轭根式：设 $P$ 是已知根式（$P \not\equiv 0$），若有根式 $Q$（$Q \not\equiv 0$）使乘积 $PQ$ 为有理式，则称 $Q$ 是 $P$ 的共轭根式，或称 $P, Q$ 互为共轭根式
    1. 对于根式 $P = \sqrt[n]{x_1^{r_1} x_2^{r_2} \cdots x_m^{r_m}}$，其中 $r_1, r_2, \cdots, r_m < n$ 且为正整数，则 $P$ 的共轭根式为 $Q = \sqrt[n]{x_1^{n-r_1} x_2^{n-r_2} \cdots x_m^{n-r_m}}$
    2. 对于根式 $P = \sqrt[n]{x} - \sqrt[n]{y}$，其共轭根式为 $Q = \sqrt[n]{x^{n-1}} + \sqrt[n]{x^{n-2}y} + \cdots + \sqrt[n]{xy^{n-2}} + \sqrt[n]{y^{n-1}}$
    3. 对于根式 $P = \sqrt[n]{x} + \sqrt[n]{y}$，其共轭根式为 $Q = \left\{\begin{aligned} & \sqrt[n]{x^{n-1}} - \sqrt[n]{x^{n-2}y} + \cdots - \sqrt[n]{xy^{n-2}} + \sqrt[n]{y^{n-1}} \\ & \sqrt[n]{x^{n-1}} - \sqrt[n]{x^{n-2}y} + \cdots + \sqrt[n]{xy^{n-2}} - \sqrt[n]{y^{n-1}} \end{aligned}\right.$

## 1.2 超越式
### 1.2.1 指数式与对数式
1. 指数式
    1. 有理指数幂：设 $a > 0, m, n \in \mathbf Z_+, n > 1$，规定 $a^{\frac{m}{n}} = \sqrt[n]{a^m}$ 且 $a^{-\frac{m}{n}} = \dfrac{1}{\sqrt[n]{a^m}}$
        1. 当底数 $a = 0$ 时，$0^{\frac{m}{n}} = 0 \ (m, n \in \mathbf Z_+)$，$0^0$ 无意义
        2. 当底数 $a < 0$ 时，在分母为奇数时有意义，在分母为偶数时无意义
    2. 无理指数幂
        1. 退缩闭区间：设 $a > 1$，$\alpha = p.p_1 p_2 \cdots p_n$ 是正无理数，则序列 $[a^{\alpha_0^-}, a^{\alpha_0^+}], [a^{\alpha_1^-}, a^{\alpha_1^+}], \cdots, [a^{\alpha_n^-}, a^{\alpha_n^+}]$ 是一个退缩闭区间序列，其中 $\alpha_n^-$ 与 $\alpha_n^+$ 分别表示 $\alpha$的精确到 $\dfrac{1}{10^n}$ 的不足与过剩近似值；当 $0 < a < 1$ 时，可以证明 $[a^{\alpha_0^+}, a^{\alpha_0^-}], [a^{\alpha_1^+}, a^{\alpha_1^-}], \cdots, [a^{\alpha_n^+}, a^{\alpha_n^-}]$ 是一个退缩闭区间序列
        2. 由退缩闭区间序列所确定的唯一实数称作幂 $a^\alpha$
    3. 实数指数幂的运算法则：设 $a, b > 0, m, n \in \mathbf R$
        1. $a^m \cdot a^n = a^{m + n}$
        2. $(a^m)^n = a^{mn}$
        3. $(ab)^n = a^n b^n$
2. 对数：设 $a > 0$ 且 $a \neq 1, N > 0$，如果有实数 $b$ 使得等式 $a^b = N$ 成立，则称 $b$ 是以 $a$ 为底的 $N$ 的对数，记作 $\log_a N = b$．其中 $a$ 称作底数，$N$ 称作真数
    1. 对数存在定理：设 $a > 0$ 且 $a \neq 1$，则对于任意给定的正实数 $N$．都存在唯一的实数 $b$ 使得 $a^b = N$
    2. 对数的性质：设 $a > 0, a \neq 1, M, N > 0$
        1. 对数恒等式：$a^{\log_a N} = N$
        2. $\log_a a = 1, \log_a 1 = 0 \ (a > 0, a \neq 1)$
        3. $\log_a (MN) = \log_a M + \log_a N$
        4. $\log_a \left(\dfrac{M}{N}\right) = \log_a M - \log_a N$
        5. $\log_a N^n = n\log_a N$
        6. 换底公式：$\log_a N = \dfrac{\log_b M}{\log_b N}$
    3. 常用对数：记 $\lg N = \log_{10} N$

### 1.2.2 三角式与反三角式
1. 三角式的恒等变形
    1. 同角三角式基本关系：$\sin^2 \alpha + \cos^2 \alpha = 1, 1 + \tan^2 \alpha = \sec^2 \alpha, 1 + \cot^2 \alpha = \csc^2 \alpha$
    2. 诱导公式：设 $k \in \mathbf Z$
        1. $\sin(2k \pi + \alpha) = \sin \alpha, \cos(2k \pi + \alpha) = \cos \alpha, \tan(2k \pi + \alpha) = \tan \alpha, \cot(2k \pi + \alpha) = \cot \alpha$
        2. $\sin(k \pi + \alpha) = -\sin \alpha, \cos(k \pi + \alpha) = -\cos \alpha, \tan(k \pi + \alpha) = \tan \alpha, \cot(k \pi + \alpha) = \cot \alpha$
        3. $\sin\left(\dfrac{\pi}{2} + \alpha\right) = \cos \alpha, \cos\left(\dfrac{\pi}{2} + \alpha\right) = -\sin \alpha, \tan\left(\dfrac{\pi}{2} + \alpha\right) = -\cot \alpha, \cot\left(\dfrac{\pi}{2} + \alpha\right) = -\tan \alpha$
        4. $\sin\left(\dfrac{\pi}{2} - \alpha\right) = \cos \alpha, \cos\left(\dfrac{\pi}{2} - \alpha\right) = \sin \alpha, \tan\left(\dfrac{\pi}{2} - \alpha\right) = \cot \alpha, \cot\left(\dfrac{\pi}{2} - \alpha\right) = \tan \alpha$
        5. $\sin(-\alpha) = -\sin \alpha, \cos(-\alpha) = \cos \alpha, \tan(-\alpha) = -\tan \alpha, \cot(-\alpha) = -\cot \alpha$
    3. 和角公式与差角公式
        1. $\sin(\alpha + \beta) = \sin \alpha \cdot \cos \beta + \cos \alpha \cdot \sin \beta, \sin(\alpha - \beta) = \sin \alpha \cdot \cos \beta - \cos \alpha \cdot \sin \beta$
        2. $\cos(\alpha + \beta) = \cos \alpha \cdot \cos \beta - \sin \alpha \cdot \sin \beta, \cos(\alpha - \beta) = \cos \alpha \cdot \cos \beta + \sin \alpha \cdot \sin \beta$
        3. $\tan(\alpha + \beta) = \dfrac{\tan \alpha + \tan \beta}{1 - \tan \alpha \cdot \tan \beta}, \tan(\alpha - \beta) = \dfrac{\tan \alpha - \tan \beta}{1 - \tan \alpha \cdot \tan \beta}$
    4. 二倍角公式
        1. $\sin 2\alpha = \dfrac{2\tan \alpha}{1 + \tan^2 \alpha} = 2\sin \alpha \cos \alpha$
        2. $\cos 2\alpha = \dfrac{1 - \tan^2 \alpha}{1 + \tan^2 \alpha} = \cos^2 \alpha - \sin^2 \alpha$
        3. $\tan 2\alpha = \dfrac{2\tan \alpha}{1 - \tan^2 \alpha}$
    5. 和差化积与积化和差
        1. $\sin \alpha + \sin \beta = 2\sin \dfrac{\alpha + \beta}{2} \cos \dfrac{\alpha - \beta}{2}, \sin \alpha - \sin \beta = 2\cos \dfrac{\alpha + \beta}{2} \sin \dfrac{\alpha - \beta}{2}$
        2. $\cos \alpha + \cos \beta = 2\cos \dfrac{\alpha + \beta}{2} \cos \dfrac{\alpha - \beta}{2}, \cos \alpha - \cos \beta = -2\sin \dfrac{\alpha + \beta}{2} \sin \dfrac{\alpha - \beta}{2}$
        3. $\sin \alpha \cdot \cos \beta = \dfrac{1}{2}[\sin(\alpha + \beta) + \sin (\alpha - \beta)], \cos \alpha \cdot \sin \beta = \dfrac{1}{2}[\sin(\alpha + \beta) - \sin (\alpha - \beta)]$
        4. $\cos \alpha \cdot \cos \beta = \dfrac{1}{2}[\cos(\alpha + \beta) + \cos (\alpha - \beta)], \sin \alpha \cdot \sin \beta = -\dfrac{1}{2}[\cos(\alpha + \beta) - \cos (\alpha - \beta)]$
2. 反三角式的恒等变形
    1. 三角运算
        1. $\sin(\arccos x) = \sqrt{1 - x^2}, \sin(\arctan x) = \dfrac{x}{\sqrt{1 + x^2}}, \sin(\operatorname{arccot} x) = \dfrac{1}{\sqrt{1 + x^2}}$
        2. $\cos(\arcsin x) = \sqrt{1 - x^2}, \cos(\arctan x) = \dfrac{1}{\sqrt{1 + x^2}}, \cos(\operatorname{arccot} x) = \dfrac{x}{\sqrt{1 + x^2}}$
        3. $\tan(\arcsin x) = \dfrac{x}{\sqrt{1 - x^2}}, \tan(\arccos x) = \dfrac{\sqrt{1 - x^2}}{x}, \tan(\operatorname{arccot} x) = \dfrac{1}{x}$
        4. $\cot(\arcsin x) = \dfrac{\sqrt{1 - x^2}}{x}, \cot(\arccos x) = \dfrac{x}{\sqrt{1 - x^2}}, \cot(\arctan x) = \dfrac{1}{x}$
    2. 反三角式的关系
        1. $\arcsin(-x) = -\arcsin x, \arccos(-x) = \pi - \arccos x$
        2. $\arctan(-x) = -\arctan x, \operatorname{arccot}(-x) = \pi - \operatorname{arccot} x$
        3. $\arcsin x + \arccos x = \dfrac{\pi}{2}, \arctan x + \operatorname{arccot} x = \dfrac{\pi}{2}$
    3. 互表关系
        1. $\arcsin x = \arctan \dfrac{x}{\sqrt{1 - x^2}} \ (-1 < x < 1)$
        2. $\arccos x = \operatorname{arccot} \dfrac{x}{\sqrt{1 - x^2}} \ (-1 < x < 1)$
        3. $\arctan x = \arcsin \dfrac{x}{\sqrt{1 + x^2}}$
        4. $\arcsin x = \left\{\begin{aligned} & \arccos \sqrt{1 - x^2}, & 0 \leqslant x < 1 \\ & \arccos \sqrt{1 - x^2}, & -1 \leqslant x < 0 \end{aligned}\right.$
        5. $\arccos x = \left\{\begin{aligned} & \arcsin \sqrt{1 - x^2}, & 0 \leqslant x < 1 \\ & \pi - \arcsin \sqrt{1 - x^2}, & -1 \leqslant x < 0 \end{aligned}\right.$
        6. $\arctan x = \left\{\begin{aligned} & \arccos \dfrac{1}{\sqrt{1 + x^2}}, & x \geqslant 0 \\ & -\arccos \dfrac{1}{\sqrt{1 + x^2}}, & x < 0 \end{aligned}\right.$
3. $\text{Euler}$ 公式：$e^{\pm \mathrm{i} x}=\cos x \pm \mathrm{i} \sin x \ (x \in \mathbf C)$

    !!! note "倍角的 $\text{de Moivre}$ 公式"
        $\text{de Moivre}$ 公式是 $\text{Euler}$ 公式的推论：${\displaystyle \cos n x+\mathrm{i} \sin n x=\sum_{k=0}^n \mathrm{i}^k\dbinom{n}{k} \cos ^{n-k} x \sin ^k x}$，分离复数的实部和虚部得到三角函数的倍角公式：

        $$
        \begin{aligned}
        &\cos n x=\cos ^n x-\dbinom{n}{2} \cos ^{n-2} x \sin ^2 x+\dbinom{n}{4} \cos ^{n-4} x \sin ^4 x-\cdots \\
        &\sin n x=\dbinom{n}{1} \cos ^{n-1} x \sin x-\dbinom{n}{3} \cos ^{n-3} x \sin ^3 x+\dbinom{n}{5} \cos ^{n-5} x \sin ^5 x-\cdots
        \end{aligned}
        $$

## 1.3 初等函数
### 1.3.1 函数的性质
1. 有界性：如果存在 $M > 0$，对于函数 $f(x)$ 的定义域（或其子集）内的一切值，都有 $|f(x)| \leqslant M$ 成立，那么函数 $f(x)$ 称作在定义域（或其子集）上的有界函数．如果不存在满足此条件的正数 $M$，则称这个函数是无界的
2. 单调性：对于给定区间 $E$ 上的函数 $f(x)$，对于任意 $x_1, x_2 \in E$
    1. 若有 $x_1 < x_2 \to f(x_1) < f(x_2)$，则称 $f(x)$ 在 $E$ 上是单调递增的
    2. 若有 $x_1 < x_2 \to f(x_1) > f(x_2)$，则称 $f(x)$ 在 $E$ 上是单调递减的
3. 奇偶性：设函数 $f(x)$ 的定义域为 $D$，对于任意 $x \in D$，都如果有 $f(-x) = -f(x)$，则称 $f(x)$ 为奇函数；如果对于任意 $x \in D$，都有 $f(-x) = f(x)$，则称 $f(x)$ 为偶函数
    1. 设 $g(x)$ 为奇函数，则当 $f(x)$ 为奇函数（或偶函数）时，$y = f[g(x)]$ 为奇函数（或偶函数）
    2. 设 $g(x)$ 为偶函数，则当 $f(x)$ 为奇函数或偶函数时，$y = f[g(x)]$ 为偶函数
4. 周期性：设 $f(x)$ 是定义在数集 $D$ 上的函数，如果存在常数 $T \neq 0$，对任何 $x \in D$ 都有 $x \pm T \in D$，且 $f(x + T) = f(x)$ 总成立，则称 $f(x)$ 为周期函数，常数 $T$ 称作 $f(x)$ 的一个周期
    1. 设 $f(x)$ 是定义在集合 $D$ 上的周期函数，其最小正周期是 $T$
        1. 函数 $k \cdot f(x) + c \ (k \neq 0)$ 仍然是 $D$ 上的周期函数，其最小正周期是 $T$
        2. 函数 $\dfrac{k}{f(x)} \ (k \neq 0)$ 仍然是 $D$ 上周期函数，最小正周期仍为 $T$
        3. 函数 $f(ax + b) \ (a \neq 0, ax + b \in D)$ 是以 $\dfrac{T}{|a|}$ 为最小正周期的周期函数
    2. 设 $u = g(x)$ 是定义在集合 $D$ 上的周期函数，其最小正周期为 $T$．如果 $f(x)$ 是定义在集合 $E$ 上的函数，且当 $x \in D$，$g(x) \in E$，则复合函数 $f[g(x)]$ 是集合 $D$ 上以 $T$ 为周期的周期函数
    3. 设 $f_1(x)$ 和 $f_2(x)$ 都是定义在集合 $D$ 上的周期函数，它们的正周期分别为 $T_1, T_2$．如果 $\dfrac{T_2}{T_1} \in \mathbf Q$，则其和与积也是 $D$ 上的周期函数，$T_1, T_2$ 的公倍数是其和与积的一个周期
5. 凹凸性：设函数 $f(x)$ 在区间 $D$ 上连续，对任意 $x_1, x_2 \in D$
    1. 若恒有 $f\left(\dfrac{x_1 + x_2}{2}\right) < \dfrac{f(x_1) + f(x_2)}{2}$，则称函数 $f(x)$ 在区间 $D$ 上为凹函数
    2. 若恒有 $f\left(\dfrac{x_1 + x_2}{2}\right) > \dfrac{f(x_1) + f(x_2)}{2}$，则称函数 $f(x)$ 在区间 $D$ 上为凸函数

### 1.3.2 基本初等函数
1. 常值函数：形如 $y = c$ 的函数，其中 $c$ 为常数
2. 幂函数：形如 $y = x^\alpha$ 的函数，其中 $\alpha$ 是给定的实数
3. 指数函数与对数函数：设 $\ln x = \log_e x$，其中 $e = {\displaystyle \lim_{n \to \infty} \left(1 + \dfrac 1n\right)^n}$
    1. 指数函数与对数函数的定义
        1. 对于 $a > 0, a \neq 1, x \in \mathbf R$，记 $y = a^x = e^{x \ln a}$
        2. 对于 $a > 0, a \neq 1, x > 0$，记 $y = \log_a x = \dfrac{L(x)}{L(a)} = \dfrac{\ln x}{\ln a}$
    2. 指数函数与对数函数的性质

        <div class="text-table">

        |  项目  |                    指数函数                     |                    对数函数                     |
        | :----: | :---------------------------------------------: | :---------------------------------------------: |
        | 函数式 |          $y = a^x \ (a > 0, a \neq 1)$          |       $y = \log_a x \ (a > 0, a \neq 1)$        |
        | 定义域 |                   $\mathbf R$                   |                 $(0, +\infty)$                  |
        |  值域  |                 $(0, +\infty)$                  |                   $\mathbf R$                   |
        | 单调性 | $a > 1$ 时为增函数 <br/> $0 < a < 1$ 时为减函数 | $a > 1$ 时为增函数 <br/> $0 < a < 1$ 时为减函数 |

        </div>

4. 三角函数与反三角函数
    1. 三角函数的定义
        1. 正弦函数与余弦函数

            $$
            \begin{aligned}
            & C(x) = \dfrac{e^{ix} + e^{-ix}}{2} \\
            & S(x) = \dfrac{e^{ix} - e^{-ix}}{2i}
            \end{aligned}
            $$

            其中 $e^x = {\displaystyle \sum_{n=0}^\infty \dfrac{x^n}{n!}}$．定义 $\pi$ 为方程 $\sin \pi = 0$ 在区间 $(3, 4)$ 上的根

        2. 定义正切函数 $\tan \alpha = \dfrac{\sin \alpha}{\cos \alpha}$，余切函数 $\cot \alpha = \dfrac{\cos \alpha}{\sin \alpha}$
        3. 定义正割函数 $\sec \alpha = \dfrac{1}{\cos \alpha}$，余割函数 $\csc \alpha = \dfrac{1}{\sin \alpha}$

    2. 三角函数的性质

        <div class="text-table">

        |    项目    |                                    正弦函数                                    |                      余弦函数                      |                                              正切函数                                               |                                 余切函数                                  |
        | :--------: | :----------------------------------------------------------------------------: | :------------------------------------------------: | :-------------------------------------------------------------------------------------------------: | :-----------------------------------------------------------------------: |
        |   函数式   |                                  $y = \sin x$                                  |                    $y = \cos x$                    |                                            $y = \tan x$                                             |                               $y = \cot x$                                |
        |   定义域   |                                  $\mathbf R$                                   |                    $\mathbf R$                     |                                             $\mathbf R$                                             |                                $\mathbf R$                                |
        |    值域    |                                   $[-1, 1]$                                    |                     $[-1, 1]$                      | ${\displaystyle \bigcup_{n \in \mathbf Z} \left(n \pi-\dfrac{\pi}{2}, n \pi+\dfrac{\pi}{2}\right)}$ | ${\displaystyle \bigcup_{n \in \mathbf Z} \left(n \pi, n \pi+\pi\right)}$ |
        | 最小正周期 |                                     $2\pi$                                     |                       $2\pi$                       |                                                $\pi$                                                |                                   $\pi$                                   |
        |   奇偶性   |                                     奇函数                                     |                       偶函数                       |                                               奇函数                                                |                                  奇函数                                   |
        |  递增区间  | $\left[-\dfrac{\pi}{2} + 2k\pi, \dfrac{\pi}{2} + 2k\pi\right], k\in \mathbf Z$ | $\left[-\pi + 2k\pi, 2k\pi\right], k\in \mathbf Z$ |                      $\left(n \pi-\dfrac{\pi}{2}, n \pi+\dfrac{\pi}{2}\right)$                      |                                    无                                     |
        |  递减区间  | $\left[\dfrac{\pi}{2} + 2k\pi, \dfrac{3\pi}{2} + 2k\pi\right], k\in \mathbf Z$ | $\left[2k\pi, \pi + 2k\pi\right], k\in \mathbf Z$  |                                                 无                                                  |                      $\left(n \pi, n \pi+\pi\right)$                      |

        </div>

    3. 反三角函数：对应三角函数在对应区间上的反函数

        <div class="text-table">

        |  项目  |                   反正弦函数                   |   反余弦函数    |                   反正切函数                   |          反余弦函数           |
        | :----: | :--------------------------------------------: | :-------------: | :--------------------------------------------: | :---------------------------: |
        | 函数式 |                $y = \arcsin x$                 | $y = \arccos x$ |                $y = \arctan x$                 | $y = \operatorname{arccot} x$ |
        | 定义域 |                   $[-1, 1]$                    |    $[-1, 1]$    |                  $\mathbf R$                   |          $\mathbf R$          |
        |  值域  | $\left[-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right]$ |   $[0, \pi]$    | $\left(-\dfrac{\pi}{2}, \dfrac{\pi}{2}\right)$ |          $(0, \pi)$           |
        | 奇偶性 |                     奇函数                     |    非奇非偶     |                     奇函数                     |           非奇非偶            |
        | 单调性 |                     增函数                     |     减函数      |                     增函数                     |            减函数             |

        </div>

### 1.3.3 函数实例
1. 双曲函数
    1. 双曲函数的定义
        1. 双曲正弦：$\sinh x=\dfrac{\mathrm{e}^x-\mathrm{e}^{-x}}{2}$
        2. 双曲余弦：$\cosh x=\dfrac{e^x+e^{-x}}{2}$
        3. 双曲正切：$\tanh x=\dfrac{\sinh x}{\cosh x}=\dfrac{\mathrm{e}^x-\mathrm{e}^{-x}}{\mathrm{e}^x+\mathrm{e}^{-x}}$
        4. 双曲余切：$\operatorname{coth} x=\dfrac{\cosh x}{\sinh x}=\dfrac{\mathrm{e}^x+\mathrm{e}^{-x}}{\mathrm{e}^x-\mathrm{e}^{-x}}$
        5. 双曲正割：$\operatorname{sech} x=\dfrac{1}{\cosh x}=\dfrac{2}{\mathrm{e}^x+\mathrm{e}^{-x}}$
        6. 双曲余割：$\operatorname{csch} x=\dfrac{1}{\sinh x}=\dfrac{2}{\mathrm{e}^x-\mathrm{e}^{-x}}$
    2. 双曲函数的性质

        <div class="text-table">

        |  项目  |         双曲正弦          |         双曲余弦          |         双曲正切          |            双曲余切             |
        | :----: | :-----------------------: | :-----------------------: | :-----------------------: | :-----------------------------: |
        | 函数式 | $y=\operatorname{sinh} x$ | $y=\operatorname{cosh} x$ | $y=\operatorname{tanh} x$ |    $y=\operatorname{coth} x$    |
        | 定义域 |        $\mathbf R$        |        $\mathbf R$        |        $\mathbf R$        |           $\mathbf R$           |
        |  值域  |        $\mathbf R$        |       $[1,+\infty)$       |         $(-1, 1)$         | $(-\infty, 1) \cup(1, +\infty)$ |
        | 奇偶性 |          奇函数           |          偶函数           |          偶函数           |             奇函数              |

        </div>

2. 反双曲函数
    1. 反双曲函数的定义：对应双曲函数的反函数
        1. 反双曲正弦：$\operatorname{arcsinh} x=\ln \left(x+\sqrt{x^2+1}\right)$
        2. 反双曲余弦：$\operatorname{arccosh} x=\ln \left(x\pm \sqrt{x^2-1}\right)$
        3. 反双曲正切：$\operatorname{arctanh} x=\dfrac{1}{2} \ln \dfrac{1+x}{1-x}$
        4. 反双曲余切：$\operatorname{arccoth} x=\dfrac{1}{2} \ln \dfrac{x+1}{x-1}$
        5. 反双曲正割：$\operatorname{arcsech} x=\ln \left(\dfrac{1}{x}+\dfrac{\sqrt{1-x^2}}{x}\right)$
        6. 反双曲余割：$\operatorname{arccsch} x=\ln \left(\dfrac{1}{x}+\dfrac{\sqrt{1+x^2}}{|x|}\right)$
    2. 反双曲函数的性质

        <div class="text-table">

        |  项目  |          反双曲正弦          |          反双曲余弦          |          反双曲正切          |           反双曲余切           |
        | :----: | :--------------------------: | :--------------------------: | :--------------------------: | :----------------------------: |
        | 函数式 | $y=\operatorname{arcsinh} x$ | $y=\operatorname{arccosh} x$ | $y=\operatorname{arctanh} x$ |  $y=\operatorname{arccoth} x$  |
        | 定义域 |         $\mathbf R$          |        $[1,+\infty)$         |           $(-1,1)$           | $(-\infty,-1) \cup(1,+\infty)$ |
        |  值域  |         $\mathbf R$          |        $[0,+\infty)$         |         $\mathbf R$          | $(-\infty, 0) \cup(0,+\infty)$ |

        </div>

3. 取整函数与分数部分函数：设 $x, y \in \mathbf R$，整数函数（也称 $\text{Gaussian}$ 函数）$[x]$ 是不超过 $x$ 的最大整数，称它为 $x$ 的整数部分；分数部分函数定义为 $\{x\} = x - [x]$
    1. 取整函数与分数部分函数的性质
        1. $x \leqslant y \to [x] \leqslant [y]$
        2. 若 $m\in \mathbf Z$，则 $[m + x] = m + [x]$
        3. 若 $0 \leqslant x < 1$，则 $[x] = 0$
        4. $[x] \leqslant x < [x] + 1, x - 1 < [x] \leqslant x, 0 \leqslant \{x\} < 1$
        5. $[x] + [y] \leqslant [x + y], \{x + y\} \leqslant \{x\} + \{y\}$
        6. $[x + y] = \left\{\begin{aligned} & [x] + [y], & \{x\} + \{y\} < 1 \\ & [x] + [y] + 1, & \{x\} + \{y\} \geqslant 1 \end{aligned}\right.$
        7. $[-x] = \left\{\begin{aligned} & -[x], & x\in \mathbf Z \\ & -[x] - 1, & x \notin \mathbf Z \end{aligned}\right.$
        8. $\{x\} = \left\{\begin{aligned} & 0, & x\in \mathbf Z \\ & 1 - \{x\}, & x\ \notin \mathbf Z \end{aligned}\right.$
    2. 设 $a, b \in \mathbf Z_+$，则在 $1, 2, \cdots, a$ 中能被 $b$ 整除的恰有 $\left[\dfrac{a}{b}\right]$ 个
    3. 在 $n!$ 的质因数分解中，质数 $p$ 的指数是 $\left[\dfrac{n}{p}\right] + \left[\dfrac{n}{p^2}\right] + \left[\dfrac{n}{p^3}\right] + \cdots = {\displaystyle \sum_{r = 1}^{\infty} \left[\dfrac{n}{p_r}\right]}$，进一步地，有 $n! = {\displaystyle \prod_{p \leqslant n} p^{\sum_{r=1}^{\infty}\left[\frac{n}{p^r}\right]}}$
