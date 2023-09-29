# 1 赋范线性空间

## 1.1 赋范线性空间
1. 赋范线性空间：设 $X$ 是实（或复）线性空间，如果对每个向量 $x \in X$ 都有一个确定的实数，记为 $\|x\|$ 与之对应，并且满足
    1. $\|x\| \geqslant 0$，且 $\|x\|=0$ 等价于 $x=0$
    2. $\|\alpha x\|=|\alpha|\|x\|$，其中 $\alpha$ 为任意实（复）数
    3. $\|x+y\| \leqslant\|x\|+\|y\|,\ x, y \in X$

    则称 $\|x\|$ 为向量 $x$ 的范数，称 $X$ 按范数 $\|\cdot\|$ 为赋范线性空间

    1. 无限维线性空间：若线性空间 $X$ 的线性无关子集 $M$ 的基数不为有限数，且 $\operatorname{span}(M) = X$，则称 $X$ 为无限维线性空间，称 $n$ 维线性空间为有限维线性空间
    2. 依范数收敛：设 $\left\{x_{n}\right\}$ 是 $X$ 中点列，如果存在 $x \in X$ 使 ${\displaystyle \lim _{n \rightarrow \infty} \left\|x_{n}-x\right\| \rightarrow 0}$，则称 $\left\{x_{n}\right\}$ 依范数收敛于 $x$，记为 ${\displaystyle \lim _{n \rightarrow \infty} x_{n}=x}$ 或 $x_{n} \rightarrow x(n \rightarrow \infty)$

## 1.2 Banach 空间
