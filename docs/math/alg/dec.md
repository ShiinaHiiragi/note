# 1 数制与数系

## 1.1 进位计数制
1. $r$ 进制：采用进位计数的数字系统中，如果只使用 $r$ 个符号表示数值，则称其为 $r$ 进制，$r$ 称为该数制的基数
    1. 每一种数制都有固定的符号集，常用的进位数值如下所示：

        <div style="text-align: center;">

        |   进位制   |   二进制   |          八进制          |          十进制          |                      十六进制                      |
        | :--------: | :--------: | :----------------------: | :----------------------: | :------------------------------------------------: |
        | 基数（权） |    $2$     |           $8$            |           $10$           |                        $16$                        |
        |   符号集   | $\{0, 1\}$ | $\{0, 1, 2, \cdots, 7\}$ | $\{0, 1, 2, \cdots, 9\}$ | $\{0, 1, 2, \cdots, 9, \mathrm{A, B, \cdots, F}\}$ |
        |  字母标识  | $\text{B}$ |        $\text{O}$        |        $\text{D}$        |                     $\text{H}$                     |

        </div>

    2. 每一种数制都使用位置表示法，即处于不同位置的数符所代表的值不同，与其所在位置的权值有关

2. 十进制数的转换
    1. $r$ 进制转换为十进制：将 $r$ 进制每一位乘以其权后相加

        $$
        (n)_r = n_k \times r^k + n_{k-1} \times r^{k-1} + \cdots + n_1 \times r_1 + n_0 \times r_0 + n_{-1} \times r^{-1} + \cdots + n_{-l} \times r^{-l}
        $$

    2. 十进制转换为 $r$ 进制：整数部分除 $r$ 取余，小数部分乘 $r$ 取整，然后合并两个部分

## 1.2 数系
### 1.2.1 自然数集
1. $\text{Peano}$ 公理：满足下列五条公理的集合 $\mathbf N$ 称作自然数集．其中，$0$ 与「后继」作为抽象的初始概念没有定义
    1. $0 \in \mathbf N$
    2. 若 $n \in \mathbf N$，则 $n$ 有且仅有一个后继 $n' \in \mathbf N$
    3. 对任一 $n \in \mathbf N$，都有 $n' \neq 0$
    4. 对任意 $n, m \in \mathbf N$，若 $x \neq y$，则 $x' \neq y'$
    5. （归纳公理）设 $M \subset \mathbf N$，若 $0 \in M$，每当 $n \in M$ 也有 $n' \in M$，则 $M = \mathbf N$
2. 自然数集 $\mathbf N$ 上的运算
    1. $\mathbf N$ 上的加法
        1. 加法交换律：$\forall a, b \in \mathbf N: a + b=b + a$
        2. 加法结合律：$\forall a, b, c \in \mathbf N: (a + b) + c=a + (b + c)$
        3. 零元：$\forall a \in \mathbf N: a + 0 = a$
    2. $\mathbf N$ 上的乘法
        1. 乘法交换律：$\forall a, b \in \mathbf N: a \cdot b=b \cdot a$
        2. 乘法结合律：$\forall a, b, c \in \mathbf N: (a \cdot b) \cdot c=a \cdot (b \cdot c)$
        3. 乘法对加法的分配律：$\forall a, b, c \in \mathbf N: a \cdot (b + c)=a \cdot b+a \cdot c$
        4. 单位元：$\forall a \in \mathbf N: a \cdot 1 = a$
    3. 本原元的性质：$0 \neq 1$
3. 自然数集上的序
    1. 反自反性：$\forall n \in \mathbf N: n \nless n$
    2. 可递性：$\forall m, n \in \mathbf N: (m < n \wedge n < k) \to m < k$
    3. 三歧性：$\forall m, n \in \mathbf N: m < n \vee m = n \vee n < m$
    4. 加法保序性：$\forall m, n, k \in \mathbf N: m < n \to m + k < n + k$
    5. 乘法保序性：$\forall m, n, k \in \mathbf N: (m < n \wedge k \neq 0)\to mk < nk$

### 1.2.2 整数环
1. $\mathbf Z$ 构成交换环
    1. $\mathbf Z$ 上的加法
        1. 交换律：$\forall a, b \in \mathbf Z: a + b = b + a$
        2. 结合律：$\forall a, b, c \in \mathbf Z:(a + b) + c = a + (b + c)$
        3. 零元：$\forall a \in \mathbf Z: a + \overline{0} = a$
        4. 负元：$\forall a \in \mathbf Z \ \exists !b\in \mathbf Z: a + b = \overline{0}$．即 $\mathbf Z$ 中每一个元素 $a$ 都有自己唯一的负元 $-a$，从而定义减法 $b - a = b + (-a)$
    2. $\mathbf Z$ 上的乘法
        1. 交换律：$\forall a, b \in \mathbf Z: a \cdot b = b \cdot a$
        2. 结合律：$\forall a, b, c \in \mathbf Z: (a \cdot b) \cdot c = a \cdot (b \cdot c)$
        3. 乘法对加法的分配律：$\forall a, b, c \in \mathbf Z: a \cdot (b + c) = a \cdot b + a \cdot c$
        4. 单位元：$\forall a \in \mathbf Z: a \cdot \overline{1} = a$
2. 整数环上的序 
    1. 反自反性：$\forall a \in \mathbf Z: a \nless a$
    2. 可递性：$\forall a, b, c \in \mathbf Z: (a < b \wedge b < c) \to a < c$
    3. 三歧性：$\forall a, b \in \mathbf Z: a < b \vee a = b \vee b < a$
    4. 加法保序性：$\forall a, b, c \in \mathbf Z: a < b \to a + c < b + c$
    5. 乘法保序性：$\forall a, b, c \in \mathbf Z: c > \overline{0} \to (a < b \to a \cdot c < b \cdot c)$

### 1.2.3 有理数域
1. $\mathbf Q$ 构成一个数域
    1. $\mathbf Q$ 上的加法
        1. 交换律：$\forall r, s \in \mathbf Q:r + s = s + r$
        2. 结合律：$\forall r, s, t \in \mathbf Q:(r + s) + t = r + (s + t)$
        3. 零元：$\forall r \in \mathbf Q : r + \overline{0} = r$
        4. 负元：$\forall r \in \mathbf Q \ \exists !s \in \mathbf Q: r + s = \overline{0}$．即 $\mathbf Q$ 中每一个元素 $r$ 都有唯一的负元 $-r$
    2. $\mathbf Q$ 上的乘法
        1. 交换律：$\forall r, s \in \mathbf Q: r \cdot s = s \cdot r$
        2. 结合律：$\forall r, s, t \in \mathbf Q: (r \cdot s) \cdot t = r \cdot (s \cdot t)$
        3. 乘法对加法的分配律：$\forall r, s, t \in \mathbf Q: r \cdot (s + t) = r \cdot s + r \cdot t$
        4. 单位元：$\forall r \in \mathbf Q: r \cdot \overline{1} = r$
        5. 逆元：$\forall r \in \mathbf Q \ \exists !s \in \mathbf Q: r \cdot s = \overline{1}$．即 $\mathbf Q$ 中每一个元素 $r$ 都有唯一的逆元 $r^{-1}$，由此定义除法 $s \div r = s \cdot r^{-1}$
2. 有理数域上的序
    1. 反自反性：$\forall r \in \mathbf Q: r \nless r$
    2. 可递性：$\forall r, s, t \in \mathbf Q: (r < s \wedge s < t)\to r < t$
    3. 三歧性：$\forall r, s \in \mathbf Q: r < s \vee r = s \vee s < r$
    4. 加法保序性：$\forall r, s, t \in \mathbf Q:r < s \to r + t < s + t$
    5. 乘法保序性：$\forall r, s, t \in \mathbf Q:t > \overline{0} \to (r < s \to r \cdot t < s \cdot t)$

### 1.2.4 实数序域
1. $\mathbf R$ 构成一个序域
    1. $\mathbf R$ 上的加法
        1. 交换律：$\forall x, y \in \mathbf R: x + y = y + x$
        2. 结合律：$\forall x, y, z \in \mathbf R: (x + y) + z = x + (y + z)$
        3. 零元：$\forall x \in \mathbf R: x + 0  = x$
        4. 负元：$\forall x \in \mathbf R \ \exists! y\in \mathbf R: x + y = 0$
    2. $\mathbf R$ 上的乘法
        1. 交换律：$\forall x, y \in \mathbf R: x \cdot y = y \cdot x$
        2. 结合律：$\forall x, y, z \in \mathbf R: (x \cdot y) \cdot z = x \cdot (y \cdot z)$
        3. 对加法的分配律：$\forall x, y, z \in \mathbf R: x \cdot (y + z) = x \cdot y + x \cdot z$
        4. 单位元：$\forall x \in \mathbf R: x \cdot 1 = x$
        5. 逆元：$\forall x \in \mathbf R \ \exists! y\in \mathbf R: x \cdot y = 1$
2. $\mathbf R$ 上的序
    1. 反自反性：$\forall x\in \mathbf R: x\nless x$
    2. 可递性：$\forall x, y, z\in \mathbf R: (x < y\wedge y < z)\to x < z$
    3. 三歧性：$\forall x, y\in \mathbf R: x < y\vee x = y\vee y < x$
    4. 加法保序性：$\forall x, y, z\in \mathbf R: x < y\to x + z < y + z$
    5. 乘法保序性：$\forall x, y, z\in \mathbf R: z>0\to (x < y\to x\cdot z < y\cdot z)$
3. 实数的概念与分类
    1. 实数的概念：十进制小数 $\alpha = p_0.p_1 p_2 \cdots p_n \cdots$ 称作实数，其中 $p_0 \in \mathbf Z$，$p_i \ (i = 1, 2, \cdots, n \cdots)$ 是十进制数码

        !!! note "十进制小数与实数的关系"
            对于任意 $x \in \mathbf R$，取符合 $p \leqslant x$ 的最大整数 $p$，当 $p_0, p_1, \cdots, p_{k-1}$ 选定时，取符合 $p_0 + \dfrac{p_1}{10} + \cdots + \dfrac{n_k}{10^k} \leqslant x$ 的最大整数 $p_k$．令

            $$
            E = \left\{\left. p_0 + \dfrac{p_1}{10} + \cdots + \dfrac{n_k}{10^k} \right| k = 0, 1, 2, \cdots \right\}
            $$

            于是 $x = \sup E$

    2. 实数的分类：

        $$
        \textsf{实数（无限小数）} \left\{\begin{aligned}
        & \textsf{有理数（无限循环小数）} \left\{\begin{aligned}
        & \textsf{正有理数} \\
        & \textsf{零} \\
        & \textsf{负有理数}
        \end{aligned}\right. \\
        & \textsf{无理数（无限不循环小数）} \left\{\begin{aligned}
        & \textsf{正有理数} \\
        & \textsf{负有理数}
        \end{aligned}\right.
        \end{aligned}\right.
        $$

4. 根数：设实数 $\alpha \geqslant 0$，整数 $n > 1$，则称适合 $x^n = \alpha$ 的非负实数 $x$ 为 $\alpha$ 的 $n$ 次算术根，记作 $\sqrt[n]{\alpha}$
5. 绝对值：设 $x \in R$，定义绝对值

    $$
    |x| = \left\{\begin{aligned}
    & x, & x \geqslant 0 \\
    & -x, & x < 0
    \end{aligned}\right.
    $$

    该定义也适用于整数环与有理数域

### 1.2.5 复数域
1. 复数关于其加法和乘法构成复数域 $(\mathbf C, +, \cdot)$，但不是一个有序域
    1. 二次多项式 $x^2 + 1 \in \mathbf R[x]$ 无实根，构造 $\mathbf R$ 的二次扩域 $\mathbf R[x] / (x^2 + 1)$，记 $i = x + (x^2 + 1)$ 为一个陪集
    2. $\mathbf R[x] / (x^2 + 1) = \mathbf R \oplus \mathbf Ri$ 作为 $\mathbf R-$代数的结构完全由关系式 $i^2 + 1 = 0$ 确定，因此 $\mathbf R[x] / (x^2 + 1) \simeq \mathbf C$
2. 共轭复数：若 $a, b \in \mathbf R, w \in \mathbf C, z = a + bi$，则称 $\overline z = a - bi$ 为 $z$ 的共轭复数
    1. $\overline{z + w} = \overline z + \overline w$
    2. $\overline{zw} = \overline z \cdot \overline w$
    3. $z + \overline z = 2 \text{Re}(z), z - \overline z = 2i \text{Im}(z)$
    4. $z\overline z \in \mathbf R$ 且 $z \overline z \geqslant 0$
3. 模：设 $z, w \in \mathbf C$，定义模 $|z| = \sqrt{z\overline z}$
    1. $|z| >= 0$，等号成立当且仅当 $z = 0$
    2. $|\overline z| = |z|$
    3. $|zw| = |z| \cdot |w|$
    4. $|\text{Re}(z)| \leqslant |z|$
    5. $|z + w| \leqslant |z| + |w|$
