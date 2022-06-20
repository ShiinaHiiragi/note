# 1 解析式与初等函数

1. 代数解析式：$\text{ZFC}$ 公理集合论语言的项集的元素
    1. 代数式：只含有四则运算和开方运算的解析式
    2. 超越式：含有初等超越运算的解析式
2. 解析式的恒等：设 $f(x), g(x)$ 为两个解析式，若对于其定义域的公共部分的一切值都有相等的值，则称两个解析式是恒等的，记作 $f(x) \equiv g(x)$ 或 $f(x) = g(x)$．将一个给定解析式换成与之恒等的解析式称作恒等变换

## 1.1 代数式
### 1.1.1 多项式
1. 一元多项式：设数域 $F$ 上的多项式 $f(x) = a_nx^n + a_{n-1}x^{n-1} + \cdots a_1x + a_0$
    1. $a_n \neq 0$ 时，称 $n$ 为多项式的次数，$a_nx^n$ 为 多项式的首项，$a_n \neq 0$ 为首项系数
    2. 若 $\forall x \in F: f(x) \equiv 0$，则 $a_i = 0 \ (i = 0, 1, \cdots, n)$
    3. 多项式恒等定理：设数域 $F$ 上的多项式 $g(x) = b_mx^m + b_{m-1}x^{m-1} + \cdots b_1x + b_0$
        1. $f(x) \equiv g(x) \leftrightarrow n = m \wedge a_i = b_i \ (i = 1, 2, \cdots, n)$
        2. 若 $f(x), g(x)$ 对于 $x$ 的 $n + 1$ 个不同的值都有相等的值，那么 $f(x) \equiv g(x)$
2. 多元多项式：含两个以上变元的多项式
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
3. 多项式的因式分解：给定的数域上，讲一个多项式表示成若干个不可约多项式乘积的形式

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
1. 根式：含有开方运算地代数式
    1. 方根：如果 $x^n = a$，则称 $x$ 为 $a$ 的 $n$ 次方根
    2. 算术根：非负数 $a$ 的非负 $n$ 次方根，记作 $\sqrt[n]a \ (a \geqslant 0, n \in \mathbf Z_+, n > 1)$，它是唯一存在的
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
    1. 对数存在定理：设 $a > 0$ 且 $a \neq 1$，则对于任意给定的正实数 $N$。都存在唯一的实数 $b$ 使得 $a^b = N$
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
    1. 同角三角函数基本关系
        1. $\sin^2 \alpha + \cos^2 \alpha = 1, 1 + \tan^2 \alpha = \sec^2 \alpha, 1 + \cot^2 \alpha = \csc^2 \alpha$
        2. $\tan \alpha = \dfrac{\sin \alpha}{\cos \alpha}, \cot \alpha = \dfrac{\cos \alpha}{\sin \alpha}$
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
        1. $\sin(\arccos x) = \sqrt{1 - x^2}, \sin(\arctan x) = \dfrac{x}{\sqrt{1 + x^2}}, \sin(\mathrm{arccot}\ x) = \dfrac{1}{\sqrt{1 + x^2}}$
        2. $\cos(\arcsin x) = \sqrt{1 - x^2}, \cos(\arctan x) = \dfrac{1}{\sqrt{1 + x^2}}, \cos(\mathrm{arccot}\ x) = \dfrac{x}{\sqrt{1 + x^2}}$
        3. $\tan(\arcsin x) = \dfrac{x}{\sqrt{1 - x^2}}, \tan(\arccos x) = \dfrac{\sqrt{1 - x^2}}{x}, \tan(\mathrm{arccot}\ x) = \dfrac{1}{x}$
        4. $\cot(\arcsin x) = \dfrac{\sqrt{1 - x^2}}{x}, \cot(\arccos x) = \dfrac{x}{\sqrt{1 - x^2}}, \cot(\arctan x) = \dfrac{1}{x}$
    2. 反三角式的关系
        1. $\arcsin(-x) = -\arcsin x, \arccos(-x) = \pi - \arccos x$
        2. $\arctan(-x) = -\arctan x, \mathrm{arccot}(-x) = \pi - \mathrm{arccot}\ x$
        3. $\arcsin x + \arccos x = \dfrac{\pi}{2}, \arctan x + \mathrm{arccot}\ x = \dfrac{\pi}{2}$
    3. 互表关系
        1. $\arcsin x = \arctan \dfrac{x}{\sqrt{1 - x^2}} \ (-1 < x < 1)$
        2. $\arccos x = \mathrm{arccot}\ \dfrac{x}{\sqrt{1 - x^2}} \ (-1 < x < 1)$
        3. $\arctan x = \arcsin \dfrac{x}{\sqrt{1 + x^2}}$
        4. $\arcsin x = \left\{\begin{aligned} & \arccos \sqrt{1 - x^2}, & 0 \leqslant x < 1 \\ & \arccos \sqrt{1 - x^2}, & -1 \leqslant x < 0 \end{aligned}\right.$
        5. $\arccos x = \left\{\begin{aligned} & \arcsin \sqrt{1 - x^2}, & 0 \leqslant x < 1 \\ & \pi - \arcsin \sqrt{1 - x^2}, & -1 \leqslant x < 0 \end{aligned}\right.$
        6. $\arctan x = \left\{\begin{aligned} & \arccos \dfrac{1}{\sqrt{1 + x^2}}, & x \geqslant 0 \\ & -\arccos \dfrac{1}{\sqrt{1 + x^2}}, & x < 0 \end{aligned}\right.$

## 1.3 初等函数
