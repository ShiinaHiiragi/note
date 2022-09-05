# 2 计算复杂性理论

## 2.1 时间复杂性
### 2.1.1 复杂性模型
1. 时间复杂度
    1. 令 $M$ 是一个确定型判定机，$M$ 的时间复杂度或运行时间是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是 $M$ 在所有长度为 $n$ 的输入上运行时所经过的最大步数．此时称 $M$ 在时间 $f(n)$ 内运行，$M$ 是 $f(n)$ 时间 $\text{Turing}$ 机
    2. 令 $N$ 是一个非确定型判定机，$N$ 的时间复杂度或运行时间是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是在任何长度为 $n$ 的输入上所有计算分支中的最大步数
2. 渐进分析：设 $g: \mathbf N \to \mathbf R_+$ 是一个函数
    1. 渐进上界与渐进下界
        1. 渐进紧确界：令 $\Theta(g(n)) = \{f(n) \mid \exists c_1, c_2, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant c_1g(n) \leqslant f(n) \leqslant c_2g(n))\}$，若 $f(n) \in \Theta(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进紧确界
        2. 渐进上界：令 $O(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) \leqslant cg(n))\}$，若 $f(n) \in O(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进上界

            非渐进紧确上界：令 $\omicron(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) < cg(n))\}$，若 $f(n) \in \omicron(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确上界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{f(n)}{g(n)} = 0}$

        3. 渐进下界：令 $\Omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) \leqslant f(n))\}$，若 $f(n) \in \Omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进下界

            非渐进紧确下界：令 $\omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) < f(n))\}$，若 $f(n) \in \omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确下界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{f(n)}{g(n)} = +\infty}$

    2. 渐进比较的性质
        1. 对任意两个函数 $f, g: N \to \mathbf R_+$，有 $f(n) \in \Theta(g(n))$ 当且仅当 $f(n) \in O(g(n))$ 且 $f(n) \in \Omega(g(n))$
        2. 传递性
            - $f(n) \in \Theta(g(n)) \wedge g(n) \in \Theta(h(n)) \to f(n) \in \Theta(h(n))$
            - $f(n) \in O(g(n)) \wedge g(n) \in O(h(n)) \to f(n) \in O(h(n))$
            - $f(n) \in \Omega(g(n)) \wedge g(n) \in \Omega(h(n)) \to f(n) \in \Omega(h(n))$
            - $f(n) \in \omicron(g(n)) \wedge g(n) \in \omicron(h(n)) \to f(n) \in \omicron(h(n))$
            - $f(n) \in \omega(g(n)) \wedge g(n) \in \omega(h(n)) \to f(n) \in \omega(h(n))$
        3. 自反性
            - $f(n) \in \Theta(f(n))$
            - $f(n) \in O(f(n))$
            - $f(n) \in \omicron(f(n))$
        4. 对称性与转置对称性
            - $f(n) \in \Theta(g(n))$ 当且仅当 $g(n) \in \Theta(f(n))$
            - $f(n) \in O(g(n))$ 当且仅当 $g(n) \in \Omega(f(n))$
            - $f(n) \in \omicron(g(n))$ 当且仅当 $g(n) \in \omega(f(n))$

    3. 多项式界：形如 $n^c$ 的界，其中 $c > 0$

        指数界：形如 $2^{n^\delta}$ 的界，其中 $\delta > 0$

### 2.1.2 时间复杂性类
1. 时间复杂性类：令 $t: \mathbf N \to R_+$ 是一个函数
    1. $\mathrm{TIME}(t(n)) := \{L \mid L$ 是一个被 $O(t(n))$ 时间的确定型 $\text{Turing}$ 机判定的语言$\}$

        $\mathrm{NTIME}(t(n)) := \{L \mid L$ 是一个被 $O(t(n))$ 时间的非确定型 $\text{Turing}$ 机判定的语言$\}$

    2. $\mathrm{EXPTIME} := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{TIME}(2^{n^k})}$
    3. 设 $t(n) \geqslant n$ 是一个函数，则每一个 $t(n)$ 时间的多带 $\text{Turing}$ 机都和某一个 $O(t^2(n))$ 时间的单带 $\text{Turing}$ 机等价

        设 $t(n) \geqslant n$ 是一个函数，则每一个 $t(n)$ 时间的非确定型单带 $\text{Turing}$ 机都与某个 $2^{O(t(n))}$ 时间的确定型单带 $\text{Turing}$ 机等价

2. $\mathrm P$ 类：确定型单带 $\text{Turing}$ 机在多项式时间内可判定的语言类，即 $\mathrm P := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{TIME}(n^k)}$
    1. 对于所有与确定型单带 $\text{Turing}$ 机多项式等价的计算模型而言，$\mathrm P$ 是不变的
    2. $\mathrm{CFL} \subset \mathrm P$
3. $\mathrm{NP}$ 类：具有多项式时间验证机的语言类
    1. 验证机：语言 $L$ 的验证机是一个算法 $V$，这里 $L = \{w \mid$ 对某个字符串 $c,V$ 接受 $\left<w, c\right>\}$，其中 $c$ 称为 $A$ 的成员资格证书或证明
        1. 多项式时间验证机：算法 $V$ 在 $w$ 的长度的多项式时间内运行
        2. 若语言 $L$ 有一个多项式时间验证机，则称语言 $L$ 为多项式可验证的
    2. 语言 $L \in \mathrm{NP}$ 当且仅当 $L$ 能被某个非确定型多项式时间 $\text{Turing}$ 机判定，则有 $\mathrm{NP} := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{NTIME}(n^k)}, \mathrm{coNP} := \overline{\mathrm{NP}}$
    3. 已知最好的判定语言是 $\mathrm{NP}$ 的确定型方法使用指数时间，即 $\mathrm{NP} \subseteq \mathrm{EXPTIME}$
4. $\mathrm{NP}$ 完全性：如果语言 $L$ 满足
    1. $L \in \mathrm{NP}$
    2. $L$ 是 $\text{NP}$ 难的，即任意 $K \in \mathrm{NP}$ 都有 $K \leqslant_P L$

    则称 $L$ 为 $\mathrm{NP}$ 完全的

    1. 可满足性问题：判定一个 $\text{Boole}$ 公式是否可满足，即定义 $\mathrm{SAT} := \{\left<\varphi\right> \mid \varphi$ 是可满足的 $\text{Boole}$ 公式$\}$
        1. $\text{Cook}$ 定理：$\mathrm{SAT}$ 是 $\mathrm{NP}$ 完全的
        2. $\mathrm{SAT} \in \mathrm P$ 当且仅当 $\mathrm P = \mathrm{NP}$
    2. 多项式时间可归约性
        1. 多项式时间可计算函数：设 $f: \Sigma^* \to \Sigma^*$ 是一个函数，若存在多项式时间 $\text{Turing}$ 机 $M$ 使得在任何输入 $w$ 上，$M$ 停机时 $f(w)$ 恰好在纸带上，则称函数 $f$ 为多项式时间可计算函数
        2. 多项式时间映射可归约：设 $A, B$ 为两个语言，若存在多项式时间可计算函数 $f: \Sigma^* \to \Sigma^*$，对于每一个 $w$ 有 $w \in A \leftrightarrow f(w) \in B$，则称函数 $f$ 为 $A$ 到 $B$ 的多项式时间归约，$A$ 多项式时间可归约到 $B$，记作 $A \leqslant_P B$
        3. 可归约性的性质：设 $A \leqslant_P B$
            - 若 $B \in \mathrm P$，则 $A \in \mathrm P$
            - 若 $B \in \mathrm{NP}$，则 $A \in \mathrm{NP}$
            - 若 $B \leqslant_P C$，则 $A \leqslant_P C$
            - 若 $A$ 是 $\mathrm{NP}$ 完全的，$B \in \mathrm{NP}$，则 $B$ 是 $\mathrm{NP}$ 完全的
    3. $\mathrm{NP}$ 完全问题：若 $L$ 是 $\mathrm{NP}$ 完全的且 $L \in \mathrm P$，则 $\mathrm P = \mathrm{NP}$

## 2.2 空间复杂性
1. 空间复杂度
    1. 令 $M$ 是一个确定型判定机，$M$ 的空间复杂度是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是 $M$ 在任何长为 $n$ 的输入上扫描纸带方格的最大数，若 $M$ 的空间复杂度为 $f(n)$，则称 $M$ 在空间 $f(n)$ 内运行
    2. 令 $N$ 是一个非确定型判定机，$N$ 的空间复杂度是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是 $N$ 对任何长为 $n$ 的输入，再认和计算分支上所扫描的纸带方格的最大数
2. 空间复杂性类：令 $f: \mathbf N \to \mathbf R_+$ 是一个函数
    1. $\mathrm{SPACE}(f(n)) := \{L \mid L$ 是被 $O(f(n))$ 空间的确定型 $\text{Turing}$ 机判定的语言$\}$

        $\mathrm{NSPACE}(f(n)) := \{L \mid L$ 是被 $O(f(n))$ 空间的非确定型 $\text{Turing}$ 机判定的语言$\}$

    2. $\mathrm{EXPSPACE} := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{SPACE}(2^{n^k})}$
    3. $\text{Savitch}$ 定理：对于任何函数 $f: \mathbf N \to \mathbf R_+$ 都有 $\mathrm{NPSACE}(f(n)) \subseteq \mathrm{SPACE}(f^2(n))$，其中 $f(n) \geqslant n$

3. $\mathrm{PSPACE}$ 类：在确定型 $\text{Turing}$ 机上且在多项式时间内可判定的语言类，即 $\mathrm{PSPACE} = {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{SPACE}(n^k)}$
    1. 定义 $\mathrm{NPSPACE}$ 类为在非确定型 $\text{Turing}$ 机上且在多项式时间内可判定的语言类
    2. $\mathrm{PSPACE}$ 完全性：若语言 $L$ 满足
        1. $L \in \mathrm{PSPACE}$
        2. $L$ 是 $\mathrm{PSPACE}$ 难的，即任意 $K \in \mathrm{PSPACE}$ 都有 $K \leqslant_P L$

        则称 $L$ 是 $\mathrm{PSPACE}$ 完全的

4. $\mathrm{L}$ 类与 $\mathrm{NL}$ 类
    1. $\mathrm{L}$ 是确定型 $\text{Turing}$ 机在对数空间内可判定的语言类，即 $\mathrm{L} := \mathrm{SPACE}(\log_2 n)$

        $\mathrm{NL}$ 是非确定型 $\text{Turing}$ 在对数空间内可判定的语言类，即 $\mathrm{NL} := \mathrm{NSPACE}(\log_2 n)$

    2. 格局：若 $M$ 是一个有单独的只读输入纸带的 $\text{Turing}$ 机，$w$ 为输入，则 $M$ 在 $w$ 上的格局包括状态、工作带和两个读写头的位置，输入 $w$ 不作为 $M$ 在 $w$ 上格局的一部分
    3. 对数空间可归约：若语言 $A$ 通过对数空间可计算函数 $f$ 映射可归约到语言 $B$，则称 $A$ 对数空间可归约到 $B$，记为 $A \leqslant_L B$
        1. 对数空间转换器：有一条只读输入带、一条只写输出带和一条读写工作带的 $\text{Turing}$ 机．输出带的头部不能向左移动，工作带可以包含 $O(\log_2 n)$ 个符号
        2. 对数空间可计算函数：对数空间转换器 $M$ 计算一个函数 $f: \Sigma^* \to \Sigma^*$，其中 $f(w)$ 是将 $w$ 放在 $M$ 的输入带上启动 $M$ 运行到 $M$ 停机时输出带上存放的字符串，称 $f$ 为对数空间可计算函数
    4. $\mathrm{NL}$ 完全性：若语言 $L$ 满足
        1. $L \in \mathrm{NL}$
        2. 任意 $K \in \mathrm{NL}$ 都有 $K \leqslant_L L$

        则称 $L$ 是 $\mathrm{NL}$ 完全的

        1. 若 $A \leqslant_L B$ 且 $B \in \mathrm L$，则 $A \in \mathrm L$
        2. 若有一个 $\mathrm{NL}$ 完全的语言属于 $\mathrm L$，则 $\mathrm L = \mathrm{NL}$

5. 指数空间完全性：若语言 $L$ 满足
    1. $L \in \mathrm{EXPSPACE}$
    2. $L$ 是 $\mathrm{EXPSPACE}$ 难的，即任意 $K \in \mathrm{EXPSPACE}$ 都有 $K \leqslant_P L$

    则称 $L$ 是 $\mathrm{EXPSPACE}$ 完全的

## 2.3 难解性
1. 复杂性类间的关系：$\mathrm{L} \subseteq \mathrm{NL} = \mathrm{coNL} \subseteq \mathrm{P} \subseteq \mathrm{NP} \subseteq \mathrm{PSPACE} = \mathrm{NPSPACE} \subseteq \mathrm{EXPTIME}$
    1. $\mathrm{P} \subset \mathrm{EXPTIME}$
    2. $\mathrm{NL} \subset \mathrm{PSPACE}$
    3. $\mathrm{PSPACE} \subset \mathrm{EXPSPACE}$
2. 层次定理
    1. 空间层次定理：对于任何空间可构造函数 $f: \mathbf N \to \mathbf N$，存在语言 $L$ 在空间 $O(f(n))$ 内可判定，不能在空间 $\omicron(f(n))$ 内判定
        1. 空间可构造：对于函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 至少为 $O(\log_2 n)$，如果函数 $f$ 将 $1^n$ 映射为 $f(n)$ 的二进制表示，且该函数在空间 $O(f(n))$ 内是可计算的，则称该函数为空间可构造的
        2. 对于任意两个函数 $f_1, f_2: \mathbf N \to \mathbf N$ 有 $\mathrm{SPACE}(f_1(n)) \subset \mathrm{SPACE}(f_2(n))$，其中 $f_1(n) = \omicron(f_2(n))$ 且 $f_2$ 是空间可构造的
        3. 对于任意两个实数 $0 \leqslant \varepsilon_1 < \varepsilon_2$ 有 $\mathrm{SPACE}(n^{\varepsilon_1}) \subset \mathrm{SPACE}(n^{\varepsilon_2})$
    2. 时间层次定理：对于任何时间可构造函数 $t: \mathbf N \to \mathbf N$，存在语言 $L$ 在时间 $O(t(n))$ 内可判定，不能在时间 $\omicron\left(\dfrac{t(n)}{\log_2 t(n)}\right)$ 内判定
        1. 时间可构造：对于函数 $t: \mathbf N \to \mathbf N$，其中 $t(n)$ 至少为 $O(n \log_2 n)$，如果函数 $t$ 将 $1^n$ 映射为 $t(n)$ 的二进制表示，且该函数在时间 $O(t(n))$ 内是可计算的，则称该函数为空间可构造的
        2. 对于任意两个函数 $t_1, t_2: \mathbf N \to \mathbf N$ 有 $\mathrm{TIME}(t_1(n)) \subset \mathrm{TIME}(t_2(n))$，其中 $t_1(n) = \omicron\left(\dfrac{t_2(n)}{\log_2 t_2(n)}\right)$ 且 $t_2$ 是时间可构造的
        3. 对于任意两个实数 $1 \leqslant \varepsilon_1 < \varepsilon_2$ 有 $\mathrm{TIME}(n^{\varepsilon_1}) \subset \mathrm{TIME}(n^{\varepsilon_2})$
3. 相对化
    1. 谕示：针对一个语言的谕示是一个能判断任何串 $w$ 是否在该语言中的设备
        1. 谕示 $\text{Turing}$ 机 $M^A$：在通常的 $\text{Turing}$ 机上增加查询 $A$ 的谕示的能力．每当 $M^A$ 在被称为谕示带的特殊纸带上写下一个字符串时，它就能在一步内得知该字符串是否属于 $A$
        2. 令 $\mathrm{P}^A$ 是采用谕示 $A$ 的确定型多项式时间谕示 $\text{Turing}$ 机可判定的语言类；$\mathrm{NP}^A$ 是采用谕示 $A$ 的非确定型多项式时间谕示 $\text{Turing}$ 机可判定的语言类
    2. 对角化方法的局限性
        1. 存在谕示 $A$ 使得 $\mathrm{P}^A \neq \mathrm{NP}^A$
        2. 存在谕示 $B$ 使得 $\mathrm{P}^B = \mathrm{NP}^B$
