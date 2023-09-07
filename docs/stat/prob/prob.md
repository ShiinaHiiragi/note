# 1 概率与随机变量

## 1.1 概率
### 1.1.1 事件
1. 概率可测空间：设 $(\Omega, \mathscr{F})$ 为可测空间，对其赋予下述含义
    1. $\Omega$ 表示某一试验中可能结果全体，称 $\Omega$ 为基本空间，$\Omega$ 的元素 $\omega$ 为基本事件
    2. $\mathscr{F}$ 表示随机事件全体，称为事件 $\sigma$ 域

    则称 $(\Omega, \mathscr{F})$ 为概率可测空间

2. 事件：设 $(\Omega, \mathscr{F})$ 为概率可测空间，则 $\mathscr{F}$ 中任一元素 $A$ 都可称为随机事件或事件
    1. 特殊事件
        1. 设 $A \in \mathscr{F}$，则定义 $\widetilde{A}$ 为「在一次试验中 $A$ 含有的任一基本事件出现」
        2. $\Omega$ 作为 $\mathscr{F}$ 的元素称为必然事件，$\varnothing$ 称为不可能事件
    2. 事件的运算
        1. 事件 $A'$ 称为事件 $A$ 的逆事件，表示「$A$ 不发生」的事件
        2. 事件 $A \cup B$ 或 $\bigcup_{n} A_{n}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}, n \geqslant 1\right\}$ 的并，分别表示 $A, B$ 或 $\left\{A_{n}\right\}$ 中至少有一个发生的事件

            事件 $A \cap B$ 或 $\bigcap_{n} A_{n}$ 分别称为事件 $A, B$ 或 $\left\{A_{n}, n \geqslant 1\right\}$ 的交，表示同时发生的事件．$A \cap B$ 也可记作 $AB$

        3. 若 $A B=\varnothing$，则称事件 $A, B$ 是互不相容的，此时将 $A \cup B$ 记作 $A + B$
        4. 事件 ${\displaystyle \varlimsup_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的上限事件，表示 $\left\{A_{n}\right\}$ 中有无限个同时发生的事件，也记作 $\left\{A_{n}\right.$ i.o. ${\displaystyle \}=\varlimsup_{n \to \infty} A_{n}}$

            事件 ${\displaystyle \varliminf_{n \to \infty} A_{n}}$ 称为 $\left\{A_{n}\right\}$ 的下限事件，表示 $\left\{A_{n}\right\}$ 中除有限个外同时发生的事件

### 1.1.2 概率

## 1.2 随机变量
### 1.2.1 随机变量
1. 随机变量：设 $(\Omega, \mathscr{F})$ 为概率可测空间，则由 $(\Omega, \mathscr{F})$ 到 $\left(\mathbf{R}, \mathscr{B}_{R}\right)$ 或 $\left(\hat{\mathbf{R}}, \mathscr{B}_{\hat{\mathbf{R}}}\right)$ 的可测函数称为（有限值）随机变量或或广义实值随机变量，也记为 $X \in \mathscr{F}$，通常用 $\text{r.v.}$作为随机变量的简写
    1. 若 $E=\left\{r_{n}\right\}$ 为 $\mathbf{R}$ 中稠密集，则 $X$ 为随机变量的充要条件是对每个 $r_{n} \in E$ 都有 $\left\{\omega: X(\omega) \leqslant r_{n}\right\} \in \mathscr{F}$
    2. 若 $\left\{X_{n}\right\}_{n \geqslant 1}$ 为随机变量序列，则 ${\displaystyle \sup _{n \geqslant 1} X_{n},  \inf _{n \geqslant 1} X_{n}, \varlimsup_{n \rightarrow \infty} X_{n}, \varliminf_{n \rightarrow \infty} X_{n}}$ 都是随机变量

### 1.2.2 期望

### 1.2.3 分布函数
