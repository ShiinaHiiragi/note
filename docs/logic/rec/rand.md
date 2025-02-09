# 5 随机性理论

## 5.1 Cantor 空间
1. 设 $2^{<\omega}$ 为所有有穷 $0-1$ 序列组成的集合
    1. $0-1$ 序列在尾节延伸关系 $\prec$ 下形成一个完全二分树
    2. 定义 $P \subseteq 2^{<\omega}$ 是无穷枝当且仅当 $|P|=\omega$ 且 $P$ 在 $\prec$ 关系下是线序
    3. 每个有穷 $0-1$ 序列 $\sigma$ 与一个自然数 ${\displaystyle \sum_{i<|\sigma|} \sigma(i) \cdot 2^{i}}$ 一一对应
2. 设 $2^{\omega}$ 为所有无穷 $0-1$ 序列的集合，后者也称为 $\text{Cantor}$ 集
    1. 对任意 $\sigma, \tau \in 2^{\leqslant \omega}=2^{<\omega} \cup 2^{\omega}$，若存在最小的 $n$ 使得 $\sigma(n) \neq \tau(n)$，则称 $\sigma$ 与 $\tau$ 不相容，记作 $\sigma \perp \tau$；此时若 $\sigma(n)=0<1=\tau(n)$，则称 $\sigma$ 在 $\tau$ 的左边，记作 $\sigma<_{L} \tau$
    2. 定义柱集 $[\sigma]= \left\{Z \in 2^{\omega}: Z \succ \sigma\right\}$
        1. 对任意 $\sigma, \tau$，$[\sigma] \cap[\tau]=\varnothing$ 或 $[\sigma] \cap[\tau]=[\sigma]$ 成立
        2. $\mathcal{B}=\left\{[\sigma]: \sigma \in 2^{<\omega}\right\}$ 构成了 $2^{\omega}$ 上的一个可数拓扑基，由此生成的拓扑空间称作 $\text{Cantor}$ 空间．易知 $\text{Cantor}$ 空间中的每个柱集既是开集（$\Sigma_{1}^{0}$ 集）也是闭集（$\Pi_{1}^{0}$ 集）
    3. 每个无穷 $0-1$ 序列 $Z \in 2^{\omega}$ 与一个二进制表示的小数 ${\displaystyle 0.Z=\sum_{i \in Z} 2^{-(i+1)}}$ 一一对应

## 5.2 随机性的刻画
### 5.2.1 基于不可压缩性
1. $\text{Kolmogorov}$ 复杂度
2. 无前束程序
3. $1-$随机
4. $\text{Chaitin}$ 数

### 5.2.2 基于测试
1. $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机性：称序列 $Z \in 2^{\omega}$ 通过 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试 $\left\{U_{n}\right\}_{n<\omega}$ 当且仅当 ${\displaystyle Z \notin \bigcap_{n<\omega} U_{n}}$，定义 $Z \in 2^{\omega}$ 是 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机的当且仅当 $Z$ 通过所有的 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试
    1. 称开集序列 $\left\{U_{n}\right\}_{n \in \omega}$ 是统一递归可枚举的，当且仅当集合 $\{\langle n, \sigma\rangle: \left.[\sigma] \subseteq U_{n}\right\}$ 是递归可枚举的
        1. 称集合 $U \subseteq 2^{\omega}$ 是递归可枚举开集（或 $\Sigma_{1}^{0}$ 集）当且仅当存在（无前束的）递归可枚举集 $E \subseteq 2^{<\omega}$ 使得 $U=[E]^{2}$
        2. 称集合 $P$ 是余递归可枚举闭集（或 $\Pi_{1}^{0}$ 集）当且仅当它的补集是递归可枚举开集
    2. 令 $\left\{U_{n}\right\}_{n<\omega}$ 是统一递归可枚举的开集序列，若对任意 $n$ 有 $\lambda\left(U_{n}\right) \leqslant 2^{-n}$，则称 $\left\{U_{n}\right\}_{n<\omega}$ 是一个 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试
    3. $M$ 是无前束程序，对 $k \in \mathbf{N}$，令 $S_{k}=\left\{\sigma: K_{M}(\sigma) \leqslant\right. |\sigma|-k\}$，即 $k$-可压缩的字符串组成的集合
        1. $\lambda\left(\left[S_{k}\right]^{\prec}\right) \leqslant 2^{-k} \lambda\left([\operatorname{dom} M]^{\prec}\right)$
        2. 对 $k \in \mathbf{N}$，$\lambda\left(\left[S_{k}\right]^{\prec}\right)$ 可以统一 $\text{Turing}$ 归约于 $\lambda\left([\operatorname{dom} M]^{\prec}\right)$
    4. 序列 $Z$ 是 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机的，当且仅当 $Z$ 是 $1-$随机的
2. 通用 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试：称 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试 $\left\{U_{n}\right\}_{n \in \omega}$ 是通用的当且仅当对任意 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试 $\left\{V_{n}\right\}_{n \in \omega}$，都有 ${\displaystyle \bigcap_{n \in \omega} V_{n} \subseteq \bigcap_{n \in \omega} U_{n}}$
    1. 通用 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试存在
    2. 令 $\mathrm{MLR}$ 是所有 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机序列组成的集合，则 $\mathrm{MLR}$ 是一个 $\Sigma_{2}^{0}$ 集合且 $\lambda(\mathrm{MLR})=1$

### 5.2.3 基于不可预测性
1. 鞅：令 $d: 2^{<\omega} \rightarrow \mathbf{R}^{\geqslant 0}$ 是以大于等于 $0$ 的实数为值域的函数
    1. 称 $d$ 是一个鞅当且仅当对任意 $\sigma$ 都有 $d(\sigma)=\dfrac{d(\sigma 0)+d(\sigma 1)}{2}$
    2. 称 $d$ 是一个上鞅当且仅当 $d(\sigma) \geqslant \dfrac{d(\sigma 0)+d(\sigma 1)}{2}$
    3. 称（上）鞅在序列 $Z \in 2^{\omega}$ 上获胜当且仅当 ${\displaystyle \sup _{n \in \mathbf{N}} d(Z \upharpoonright n)=\infty}$，定义（上）鞅 $d$ 的获胜集 $S[d]=\left\{A \in 2^{\omega}: d \textsf{ 在 } A \textsf{ 上获胜}\right\}$

    一般要求 $d(\varnothing)>0$

    1. 假设 $d$ 是一个（上）鞅，$r \in \mathbf{R}^{+}$ 是正实数且函数 $f: 2^{<\omega} \rightarrow \mathbf{R}^{\geqslant 0}$ 满足 $f=r \cdot d$，则 $f$ 是一个（上）鞅且 $S[d]=S[f]$
    2. 若 $d_{0}, d_{1}, \cdots$ 是（上）鞅且 ${\displaystyle \sum_{n \in \omega} d_{n}(\varnothing)<\infty}$，则 ${\displaystyle \sum_{n \in \omega} d_{n}}$ 也是（上）鞅
    3. 假设 $d$ 是一个（上）鞅
        1. 对任意 $\sigma \in 2^{<\omega}$、任意由 $\sigma$ 的尾节延伸组成的无前束集合 $S$ 都有 ${\displaystyle \sum_{\tau \in S} 2^{-|\tau|} d(\tau) \leqslant 2^{-|\sigma|} d(\sigma)}$
        2. 令 $E_{k}=\{\sigma: d(\sigma) \geqslant k\}$，则 $\lambda\left(\left[E_{k}\right]^{\prec}\right) \leqslant d(\varnothing) / k$

2. 称一个（上）鞅是递归可枚举的当且仅当其值是统一左递归可枚举的，即存在递归函数 $p: 2^{<\omega} \rightarrow \mathbf{N}$，任给 $\sigma \in 2^{<\omega}$，递归可枚举集合 $W_{p(\sigma)}$ 枚举所有小于 $d(\sigma)$ 的二进有理数
    1. $\text{Schnorr}$ 定理：序列 $Z$ 是 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机的当且仅当不存在递归可枚举的（上）鞅在 $Z$ 上获胜
    2. 存在通用的递归可枚举鞅 $d$，即对任何递归可枚举鞅 $f$，都有 $S[f] \subseteq S[d]$
