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
1. $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 随机性
2. 通用 $\text{Martin-L}\ddot{\mathrm{o}}\text{f}$ 测试

### 5.2.3 基于不可预测性
