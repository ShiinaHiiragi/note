# 1 可计算理论

## 1.1 Turing 机与递归函数
### 1.1.1 Turing 机
1. $\text{Turing}$ 机计算函数：设 $f$ 为 $\mathbf N^n \to \mathbf N$ 的（部分）函数，$M$ 为 $\text{Turing}$ 机．则称 $\text{Turing}$ 机 $M$ 计算函数 $f$ 当且仅当对任意 $n$ 元组 $(x_1, x_2, \cdots, x_n)$，如果 $(x_1, x_2, \cdots, x_n) \in \mathrm{dom}(f)$（记作 $f(x_1, x_2, \cdots, x_n) \downarrow$），则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时会停机（记作 $M(x_1, x_2, \cdots, x_n)\downarrow$）且输出为 $f(x_1, x_2, \cdots, x_n)$；如果 $(x_1, x_2, \cdots, x_n) \notin \mathrm{dom}(f)$，则 $M$ 以 $(x_1, x_2, \cdots, x_n)$ 为输入时不会停机
    1. 如果一个自然数上的函数存在一个计算它的 $\text{Turing}$ 机，则称之为图灵可计算的
    2. 如果一个自然数上的关系集合特征函数是图灵可计算的，则称之为图灵可判定的

### 1.1.2 递归函数

## 1.2 递归可枚举集

## 1.3 不可判定问题
