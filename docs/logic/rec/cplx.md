# 2 计算复杂性理论

## 2.1 时间复杂性
### 2.1.1 复杂性模型
1. 时间复杂度
    1. 令 $M$ 是一个确定型判定机，$M$ 的时间复杂度或运行时间是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是 $M$ 在所有长度为 $n$ 的输入上运行时所经过的最大步数．此时称 $M$ 在时间 $f(n)$ 内运行，$M$ 是 $f(n)$ 时间 $\text{Turing}$ 机
    2. 令 $N$ 是一个非确定型判定及，$N$ 的时间复杂度或运行时间是一个函数 $f: \mathbf N \to \mathbf N$，其中 $f(n)$ 是在任何长度为 $n$ 的输入上所有计算分支中的最大步数
2. 渐进分析：设 $g: N \to \mathbf R^+$ 是一个函数
    1. 渐进上界与渐进下界
        1. 渐进紧确界：令 $\Theta(g(n)) = \{f(n) \mid \exists c_1, c_2, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant c_1g(n) \leqslant f(n) \leqslant c_2g(n))\}$，若 $f(n) \in \Theta(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进紧确界
        2. 渐进上界：令 $O(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) \leqslant cg(n))\}$，若 $f(n) \in O(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进上界

            非渐进紧确上界：令 $\omicron(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) < cg(n))\}$，若 $f(n) \in \omicron(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确上界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{f(n)}{g(n)} = 0}$

        3. 渐进下界：令 $\Omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) \leqslant f(n))\}$，若 $f(n) \in \Omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进下界

            非渐进紧确下界：令 $\omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) < f(n))\}$，若 $f(n) \in \omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确下界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{f(n)}{g(n)} = +\infty}$

    2. 渐进比较的性质
        1. 对任意两个函数 $f, g: N \to \mathbf R^+$，有 $f(n) \in \Theta(g(n))$ 当且仅当 $f(n) \in O(g(n))$ 且 $f(n) \in \Omega(g(n))$
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
1. 时间复杂性类：令 $t: \mathbf N \to R^+$ 是一个函数，定义 $\mathrm{TIME}(t(n))$ 为由 $O(t(n))$ 时间的 $\text{Turing}$ 机判定的所有语言集合
    1. 设 $t(n) \geqslant n$ 是一个函数，则每一个 $t(n)$ 时间的多带 $\text{Turing}$ 机都和某一个 $O(t^2(n))$ 时间的单带 $\text{Turing}$ 机等价
    2. 设 $t(n) \geqslant n$ 是一个函数，则每一个 $t(n)$ 时间的非确定型单带 $\text{Turing}$ 机都与某个 $2^{O(t(n))}$ 时间的确定型单带 $\text{Turing}$ 机等价
2. $\mathrm P$ 类：确定型单带 $\text{Turing}$ 机在多项式时间内可判定的语言类，即 $\mathrm P := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{TIME}(n^k)}$
    1. 对于所有与确定型单带 $\text{Turing}$ 机多项式等价的计算模型而言，$\mathrm P$ 是不变的
    2. $\mathrm{CFL} \subset \mathrm P$
3. $\mathrm{NP}$ 类：具有多项式时间验证机的语言类
    1. 验证机：语言 $L$ 的验证机是一个算法 $V$，这里 $L = \{w \mid$ 对某个字符串 $c,V$ 接受 $\left<w, c\right>\}$，其中 $c$ 称为 $A$ 的成员资格证书或证明
        1. 多项式时间验证机：算法 $V$ 在 $w$ 的长度的多项式时间内运行
        2. 若语言 $L$ 有一个多项式时间验证机，则称语言 $L$ 为多项式可验证的
    2. 语言 $L \in \mathrm{NP}$ 当且仅当 $L$ 能被某个非确定型多项式时间 $\text{Turing}$ 机判定
        1. $\mathrm{NTIME} := \{L \mid L$ 是一个被 $O(t(n))$ 时间的非确定型 $\text{Turing}$ 机判定的语言$\}$
        2. $\mathrm{NP} := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{NTIME}(n^k)}, \mathrm{coNP} := \overline{\mathrm{NP}}$
    3. 已知最好的判定语言是 $\mathrm{NP}$ 的确定型方法使用指数时间，即 $\mathrm{NP} \subseteq \mathrm{EXPTIME} := {\displaystyle \bigcup_{k \in \mathbf N} \mathrm{TIME}(2^{n^k})}$
4. $\mathrm{NP}$ 完全性：如果语言 $L \in \mathrm{NP}$ 且任意 $K \in \mathrm{NP}$ 都有 $K \leqslant_P L$，则称 $L$ 为 $\mathrm{NP}$ 完全的
    1. 可满足性问题：判定一个 $\text{Boole}$ 公式是否可满足，即定义 $\mathrm{SAT} := \{\left<\varphi\right> \mid \varphi$ 是可满足的 $\text{Boole}$ 公式$\}$
        1. $\mathrm{SAT}$ 是 $\mathrm{NP}$ 完全的
        2. $\mathrm{SAT} \in \mathrm P$ 当且仅当 $\mathrm P = \mathrm{NP}$
    2. 多项式时间可归约性
        1. 多项式时间可计算函数：设 $f: \Sigma^* \to \Sigma^*$ 是一个函数，若存在多项式时间 $\text{Turing}$ 机 $M$ 使得在任何输入 $w$ 上，$M$ 停机时 $f(w)$ 恰好在纸带上，则称函数 $f$ 为多项式时间可计算函数
        2. 多项式时间映射可归约：设 $A, B$ 为两个语言，若存在多项式时间可计算函数 $f: \Sigma^* \to \Sigma^*$，对于每一个 $w$ 有 $w \in A \leftrightarrow f(w) \in B$，则称函数 $f$ 为 $A$ 到 $B$ 的多项式时间规约，$A$ 多项式时间可归约到 $B$，记作 $A \leqslant_P B$
        3. 可归约性的性质：设 $A \leqslant_P B$
            - 若 $B \in \mathrm P$，则 $A \in \mathrm P$
            - 若 $B \in \mathrm{NP}$，则 $A \in \mathrm{NP}$
            - 若 $B \leqslant_P C$，则 $A \leqslant_P C$
            - 若 $A$ 是 $\mathrm{NP}$ 完全的，$B \in \mathrm{NP}$，则 $B$ 是 $\mathrm{NP}$ 完全的
    3. $\mathrm{NP}$ 完全问题：若 $L$ 是 $\mathrm{NP}$ 完全的且 $L \in \mathrm P$，则 $\mathrm P = \mathrm{NP}$

## 2.2 空间复杂性

## 2.3 难解性
