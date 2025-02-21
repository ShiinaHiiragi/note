# 5 随机性理论

## 5.1 Cantor 空间
1. 设 $2^{<\omega}$ 为所有有穷 $0-1$ 序列组成的集合，这些序列在尾节扩张关系 $\prec$ 下形成一个完全二分树
    1. 定义 $P \subseteq 2^{<\omega}$ 是无穷枝当且仅当 $|P|=\omega$ 且 $P$ 在 $\prec$ 关系下是线序
        1. 弱 $\text{K}\ddot{\mathrm o}\text{nig}$ 引理：若 $T$ 为 $2^{<\omega}$ 的无限子树，则 $T$ 有一个无穷枝
        2. $\text{K}\ddot{\mathrm o}\text{nig}$ 引理：若 $T$ 为 $\omega^{<\omega}$ 的无限子树，则 $T$ 有一个无穷枝
    2. 每个有穷 $0-1$ 序列 $\sigma$ 与一个自然数 ${\displaystyle \sum_{i<|\sigma|} \sigma(i) \cdot 2^{i}}$ 一一对应
2. 设 $2^{\omega}$ 为所有无穷 $0-1$ 序列的集合，后者也称为 $\text{Cantor}$ 集
    1. 对任意 $\sigma, \tau \in 2^{\leqslant \omega}=2^{<\omega} \cup 2^{\omega}$，若存在最小的自然数 $n$ 使得 $\sigma(n) \neq \tau(n)$ 成立，则称 $\sigma$ 与 $\tau$ 不相容，记作 $\sigma \perp \tau$；此时若 $\sigma(n)=0<1=\tau(n)$ 成立，则称 $\sigma$ 在 $\tau$ 的左边，记作 $\sigma<_{L} \tau$
    2. 设 $\sigma \in 2^{<\omega}$，定义柱集 $[\sigma]= \left\{Z \in 2^{\omega} \mid \sigma \prec Z\right\}$
        1. 对任意 $\sigma, \tau$，$[\sigma] \cap[\tau]=\varnothing$ 或 $[\sigma] \cap[\tau]=[\sigma]$ 成立
        2. $\mathcal{B}=\left\{[\sigma] \mid \sigma \in 2^{<\omega}\right\}$ 构成了 $2^{\omega}$ 上的一个可数拓扑基，由此生成的拓扑空间称作 $\text{Cantor}$ 空间
        3. $\text{Cantor}$ 空间中的每个柱集既是开集（$\mathbf{\Sigma}_{1}^{0}$ 集）也是闭集（$\mathbf{\Pi}_{1}^{0}$ 集）
    3. 每个无穷 $0-1$ 序列 $Z \in 2^{\omega}$ 与一个二进制表示的小数 ${\displaystyle 0.Z=\sum_{i \in Z} 2^{-(i+1)}}$ 一一对应

## 5.2 随机性的刻画
### 5.2.1 基于不可压缩性
1. 对任意 $0-1$ 序列 $\sigma$ 和 $\tau$，如果 $M(\sigma)=\tau$，则称 $\sigma$ 是 $\tau$ 的一个 $M$ 描述，即 $M$ 将 $\sigma$ 还原为 $\tau$
    1. 给定解压缩程序 $M: 2^{<\omega} \rightarrow 2^{<\omega}$，定义序列 $\tau$ 在 $M$ 下的 $\text{Kolmogorov}$ 复杂度 $C_{M}(\tau)=\min \{|\sigma|: M(\sigma)=\tau\}$，即被解压缩后能够还原为 $\tau$ 的最短的 $0-1$ 序列 $\sigma$ 的长度
    2. 称 $U: 2^{<\omega} \rightarrow 2^{<\omega}$ 是通用程序当且仅当对任意程序 $M: 2^{<\omega} \rightarrow 2^{<\omega}$ 都存在固定的 $0-1$ 序列 $\rho_{M}$，使得对任意 $0-1$ 序列 $\sigma$，都有 $U\left(\rho_{M} \sigma\right)=M(\sigma)$，此时称 $\rho_{M}$ 是 $M$ 的编码序列，$\left|\rho_{M}\right|$ 是 $M$ 在 $U$ 中的编码常量
2. $\text{Kolmogorov}$ 复杂度：对任意 $0-1$ 序列 $\tau$，定义 $\tau$ 的 $\text{Kolmogorov}$ 复杂度为 $C(\tau)=C_{U}(\tau)$
    1. 存在常量 $c_{1}, c_{2}, c_{3}$，使得对任意字符序列 $\tau$，都有
        1. $C(\tau) \leqslant|\tau|+c_{1}$
        2. $C(\tau \tau) \leqslant C(\tau)+c_{2}$
        3. $C(h(\tau)) \leqslant C(\tau)+c_{3}$，其中 $h: 2^{<\omega} \rightarrow 2^{<\omega}$ 是一个部分递归函数
    2. 存在常量 $c$，对任意 $0-1$ 序列 $\tau$ 有 $C(\tau, C(\tau)) \leqslant C\left(\tau_{C}^{*}\right)+c$
    3. 令 $d \in \mathbf{N}$ 是一个常量，称 $0-1$ 序列 $\tau$ 是 $d-C-$随机的当且仅当 $C(\tau) \geqslant|\tau|-d_{0}$
        1. 对任意自然数 $n$，存在字符序列 $\tau$ 满足 $|\tau|=n$ 且 $C(\tau) \geqslant n$
        2. 给定 $d \in \mathbf{N}$，对任意 $n \in N$，存在至少 $2^{n}-2^{n-d}+1$ 个长度为 $n$ 的 $d-C-$随机字符序列
        3. 存在常量 $c_{M} \in \mathbf{N}$，对任意 $k \in \mathbf{N}$、任意足够长的字符序列 $\mu$ 都存在 $\sigma \prec \mu$ 使得 $C(\sigma)<|\sigma|-k$
    4. 对任意 $d \in \mathbf{N}$，存在足够长的字符序列 $\mu$，使得 $C(\mu) \geqslant|\mu|$，且对所有 $\mu$ 存在 $\sigma \prec \mu$ 使得 $\mu=\sigma \tau$ 且 $C(\mu)>C(\sigma)+C(\tau)+d_{\circ}$
    5. 对字符序列 $\sigma, \tau$，定义 $\sigma$ 相对于 $\tau$ 的 $\text{Kolmogorov}$ 复杂度 $C(\sigma \mid \tau)=\min \left\{|\mu|: U^{\overline{\tau}}(\mu)=\sigma\right\}$，其中 $U^{\overline{\tau}}$ 表示把有穷字符序列 $\overline{\tau}$ 作为信息源的 $\text{Turing}$ 机
        1. 存在常量 $c_{1}, c_{2}$，使得对任意字符序列 $\sigma, \tau$，有 $C(\sigma \tau) \leqslant C(\sigma, \tau)+c_{1} \leqslant C(\sigma)+C(\tau)+2 \log C(\sigma)+c_{2}$
        2. 存在常量 $c_{1}, c_{2}$，使得对任意字符序列 $\sigma$，有 $C\left(\sigma_{C}^{*} \mid \sigma\right) \leqslant C(C(\sigma) \mid \sigma)+c_{1}$，而 $C(C(\sigma) \mid \sigma) \leqslant C\left(\sigma_{C}^{*} \mid \sigma\right)+c_{2}$
3. 无前束程序：称集合 $A \subseteq 2^{<\omega}$ 是无前束的当且仅当 $A$ 中的任何字符序列都不是 $A$ 中其他字符序列的前段
    1. 称一个程序/ $\text{Turing}$ 机/部分函数 $M$ 是无前束的当且仅当其定义域 $\{\sigma: M(\sigma) \downarrow\}$ 是无前束的字符序列集合
    2. 存在对所有无前束程序/ $\text{Turing}$ 机/部分递归函数的能行枚举，因而存在通用无前束程序
    3. 无前束 $\text{Kolmogorov}$ 复杂度：对任意字符序列 $\sigma$，定义 $\sigma$ 的无前束 $\text{Kolmogorov}$ 复杂度为 $K(\sigma)=K_{U \mathrm{Pf}}(\sigma)=C_{U \mathrm{P}^{\mathrm{p}}}(\sigma)$
        1. 如果 $h: 2^{<\omega} \rightarrow 2^{<\omega}$，则存在常量 $c$ 对任意字符序列 $\sigma$ 有 $K(h(\sigma)) \leqslant K(\sigma)+c$
        2. 存在常量 $c$，对任意字符序列 $\sigma$ 有 $K(\sigma) \leqslant 2|\sigma|+c_{\circ}$
        3. 存在常量 $c_{1}, c_{2} \in \mathbf{N}$，对任意字符序列 $\sigma$ 都有 $K(\sigma) \leqslant K(|\sigma|)+|\sigma|+c_{1} \leqslant 2 \log |\sigma|+|\sigma|+c_{2}$
        4. 对任意自然数 $d$ 存在字符序列 $\sigma$，它的无前束 $\text{Kolmogorov}$ 复杂度 $K(\sigma)>|\sigma|+\log |\sigma|+d$
    4. 令 $\left\{\left\langle d_{i}, \tau_{i}\right\rangle: i \in \mathbf{N}\right\}$ 是递归的序列，其中每个 $d_{i} \in \mathbf{N}$， $\tau_{i} \in 2^{<\omega}$，若 ${\displaystyle \sum_{i \in \mathbf{N}} 2^{-d_{i}} \leqslant 1}$，则称 $\left\{\left\langle d_{i}, \tau_{i}\right\rangle: i \in \mathbf{N}\right\}$ 是一个请求序列
        1. $\text{Levin}-\text{Schnorr}-\text{Chaitin}$ 定理：任给请求序列 $\left\{\left\langle d_{i}, \tau_{i}\right\rangle: i \in \mathbf{N}\right\}$，存在满足该请求序列的无前束程序 $M$
        2. 假设存在请求序列 $\left\{\left\langle d_{i}, \tau_{i}\right\rangle: i \in \mathbf{N}\right\}$，则存在常量 $c \in \mathbf{N}$，对 $i \in \mathbf{N}$ 有 $K\left(\tau_{i}\right) \leqslant d_{i}+c_{\circ}$
4. $1-$随机：称无穷 $0-1$ 序列 $Z \in 2^{\omega}$ 是 $1-$随机的，当且仅当存在 $d \in \mathbf{N}$，使得 $Z$ 的每个有穷前段都是 $d$ 随机的，即对任意 $n \in \mathbf{N}$，有 $K(Z \upharpoonright n) \geqslant n-d$
    1. 给定 $d \in \mathbf{N}$，称字符序列 $\sigma$ 是 $d-K-$随机的当且仅当 $K(\sigma) \geqslant|\sigma|-d$
    2. $L(\Omega)$ 是递归可枚举的
    3. 称序列 $Z \in 2^{\omega}$ 或实数 $r=z.Z(z \in \mathbf{Z})$ 是左递归可枚举的当且仅当 $L(Z)$ 是递归可枚举的，（当考虑实数时）即小于 $r$ 的二进有理数是递归可枚举的
        1. $Z$ 是左递归可枚举的当且仅当存在可计算的序列 $\sigma_{0}<_{L} \sigma_{1}<_{L} \cdots$ 使得 ${\displaystyle \lim _{n \to \infty} \sigma_{n}=Z}$
        2. 如果 $Z$ 作为特征函数所对应的集合是递归可枚举的，那么 $Z$ 是左递归可枚举的
        3. 如果 $A$ 是左递归可枚举的，那么 $A \leqslant_{T} \varnothing^{\prime}$
    4. $\text{Chaitin}$ 数与停机问题 $\text{Turing}$ 等价：$\Omega \equiv_{T} \varnothing^{\prime}$ 且 $\Omega$ 是 $1-$随机的

### 5.2.2 基于测试
1. $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机性：称序列 $Z \in 2^{\omega}$ 通过 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试 $\left\{U_{n}\right\}_{n<\omega}$ 当且仅当 ${\displaystyle Z \notin \bigcap_{n<\omega} U_{n}}$，定义 $Z \in 2^{\omega}$ 是 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机的当且仅当 $Z$ 通过所有的 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试
    1. 称开集序列 $\left\{U_{n}\right\}_{n \in \omega}$ 是统一递归可枚举的，当且仅当集合 $\{\langle n, \sigma\rangle: \left.[\sigma] \subseteq U_{n}\right\}$ 是递归可枚举的
        1. 称集合 $U \subseteq 2^{\omega}$ 是递归可枚举开集（或 $\Sigma_{1}^{0}$ 集）当且仅当存在（无前束的）递归可枚举集 $E \subseteq 2^{<\omega}$ 使得 $U=[E]^{2}$
        2. 称集合 $P$ 是余递归可枚举闭集（或 $\Pi_{1}^{0}$ 集）当且仅当它的补集是递归可枚举开集
    2. 令 $\left\{U_{n}\right\}_{n<\omega}$ 是统一递归可枚举的开集序列，若对任意 $n$ 有 $\lambda\left(U_{n}\right) \leqslant 2^{-n}$，则称 $\left\{U_{n}\right\}_{n<\omega}$ 是一个 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试
    3. $M$ 是无前束程序，对 $k \in \mathbf{N}$，令 $S_{k}=\left\{\sigma: K_{M}(\sigma) \leqslant\right. |\sigma|-k\}$，即 $k$-可压缩的字符序列组成的集合
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
        1. 对任意 $\sigma \in 2^{<\omega}$、任意由 $\sigma$ 的尾节扩张组成的无前束集合 $S$ 都有 ${\displaystyle \sum_{\tau \in S} 2^{-|\tau|} d(\tau) \leqslant 2^{-|\sigma|} d(\sigma)}$
        2. 令 $E_{k}=\{\sigma: d(\sigma) \geqslant k\}$，则 $\lambda\left(\left[E_{k}\right]^{\prec}\right) \leqslant d(\varnothing) / k$

2. 称一个（上）鞅是递归可枚举的当且仅当其值是统一左递归可枚举的，即存在递归函数 $p: 2^{<\omega} \rightarrow \mathbf{N}$，任给 $\sigma \in 2^{<\omega}$，递归可枚举集合 $W_{p(\sigma)}$ 枚举所有小于 $d(\sigma)$ 的二进有理数
    1. $\text{Schnorr}$ 定理：序列 $Z$ 是 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机的当且仅当不存在递归可枚举的（上）鞅在 $Z$ 上获胜
    2. 存在通用的递归可枚举鞅 $d$，即对任何递归可枚举鞅 $f$，都有 $S[f] \subseteq S[d]$
