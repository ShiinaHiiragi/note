# 2 解析函数

## 2.1 Cauchy-Riemann 方程
1. 若复函数 $f(z)$ 在区域 $D$ 内可导，则称 $f(z)$ 为区域 $D$ 内的解析函数，或称 $f(z)$ 在区域 $D$ 内解析
    1. 函数在某点解析指函数在该点的某一邻域内处处可导
    2. 函数在闭区域上解析指函数在包含该区域的某个更大区域内解析
    3. 若解析函数在区域 $D$ 内是单射，则称函数为 $D$ 内的单叶函数，区域 $D$ 为该函数的单叶性区域
2. $f(z)=u(x, y)+\mathrm i v(x, y)$ 在点 $z=x+\mathrm i y$ 可导当且仅当 $u(x, y), v(x, y)$ 在点 $(x, y)$ 可微并在该点满足 $\text{Cauchy}-\text{Riemann}$ 方程

    $$
    \dfrac{\partial u}{\partial x}=\dfrac{\partial v}{\partial y}, \dfrac{\partial u}{\partial y}=-\dfrac{\partial v}{\partial x}
    $$

    简称为 $\text{C}-\text{R}$ 方程

    1. $f(z)=u(x, y)+\mathrm i v(x, y)$ 在区域 $D$ 内解析的充要条件是 $u(x, y)$ 与 $v(x, y)$ 在区域 $D$ 内可微且满足 $\text{C}-\text{R}$ 方程
    2. 设 $f(z)$ 在区域 $D$ 解析且在 $D$ 内 $f^{\prime}(z) \equiv 0$，则 $f(z)$ 在 $D$ 内恒为常数
    3. 设 $f(z)=u+\mathrm i v$ 在区域 $D$ 内解析，且 $f^{\prime}(z) \neq 0, z \in D$，则对于任意实常数 $c_1, c_2$，曲线族 $u(x, y)=c_{1}$ 与 $v(x, y)=c_{2}$ 在 $D$ 内必相互正交

## 2.2 解析函数的级数展开
