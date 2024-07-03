# 3 留数理论

## 3.1 留数理论
### 3.1.1 留数定理
1. 设 $a$ 为函数 $f(z)$ 的孤立奇点，则$f(z)$ 在孤立奇点 $a$ 的留数定义为 ${\displaystyle \operatorname{Res}[f(z), a]=\dfrac{1}{2 \pi \mathrm i} \oint_{|z-a|=r} f(z) \mathrm d z}$，其中 $0<r<R$
    1. 设 $a \neq \infty$ 是 $f(z)$ 的 $m(\geqslant 1)$ 阶极点，则 ${\displaystyle \operatorname{Res}[f(z), a]=c_{-1}=\dfrac{1}{(m-1)!} \lim _{z \rightarrow a} \dfrac{\mathrm d^{m-1}}{\mathrm d z^{m-1}}\left[(z-a)^{m} f(z)\right]}$
    2. 若 $a$ 是 $f(z)$ 的一阶极点，则 ${\displaystyle \operatorname{Res}[f(z), a]=\lim _{z \rightarrow a}(z-a) f(z)}$
    3. 设 $f(z)=\dfrac{p(z)}{q(z)}$，$p(z)$ 和 $q(z)$ 都在 $a$ 点处解析且 $p(a) \neq 0, q(a)=0, q^{\prime}(a) \neq 0$，则 $\operatorname{Res}[f(z), a]=\dfrac{p(a)}{q^{\prime}(a)}$
2. 设函数 $f(z)$ 在闭路 $\gamma$ 及其内部 $D$ 中除去 $n$ 个孤立奇点 $z_{1}, z_{2}, \cdots, z_{n}$ 外解析，则 ${\displaystyle \oint_{\gamma} f(z) \mathrm d z=2 \pi \mathrm i \sum_{k=1}^{n} \operatorname{Res}\left[f(z), z_{k}\right]}$
3. 若函数 $f(z)$ 在 $C$ 上除去点 $z_{1}, z_{2}, \cdots, z_{n}$ 外解析，则 $f(z)$ 在所有孤立奇点（包括 $z=\infty$ 在内）的留数之和为零，即 ${\displaystyle \sum_{k=1}^{n} \operatorname{Res}\left[f(z), z_{k}\right]+\operatorname{Res}[f(z), \infty]=0}$

### 3.1.2 积分计算

### 3.1.3 辐角原理

## 3.2 共形映射
### 3.2.1 共形映射

### 3.2.2 分式线性变换

## 3.3 Laplace 变换
