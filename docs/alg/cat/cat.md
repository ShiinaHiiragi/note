# 1 图与范畴

## 1.1 范畴图
1. 若 $O, M$ 均为类且存在函数 $\Phi: M \rightarrow O^{2}$ 使得 $G = (O, \Phi[O])$ 是类上的有向图，则称 $\mathcal G = \left<O, M, \Phi\right>$ 为范畴图，简称为图
    1. 称 $O$ 为 $\mathcal{G}$ 的结点类，其元素称为 $\mathcal{G}$ 的结点；称 $M$ 为 $\mathcal{G}$ 的箭头类，其元素称为 $\mathcal{G}$ 的箭头
    2. 若 $f \in M$，定义 $\operatorname{source}: M \rightarrow O$ 与 $\operatorname{target}: M \rightarrow O$ 是使得 $\Phi(f) = (\operatorname{source}(f), \operatorname{target}(f))$ 的映射
        1. 称 $\operatorname{source}(f)$ 为 $f$ 的源，$\operatorname{target}(f)$ 为 $f$ 的靶，也可将范畴图记作 $\mathcal G = \left<O, M, \operatorname{source}, \operatorname{target}\right>$
        2. 若 $f \in M$ 使得 $A=\operatorname{source}(f)$ 且 $B=\operatorname{target}(f)$，则称 $f$ 为从 $A$ 到 $B$ 的箭头，记为 $f: A \rightarrow B$ 或 $A \xrightarrow{f} B$
        3. 若 $A, B \in O$，令 $\mathcal{G}[A, B]=\{f \in M \mid \operatorname{source}(f)=A, \operatorname{target}(f)=B\}$，通常简写为 $[A, B]$

2. 特殊的范畴图
    1. 若 $O=\varnothing$，则 $\mathcal{G}=\langle\varnothing, \varnothing, \varnothing\rangle$，则称 $\mathcal{G}$ 为空图
    2. 若 $M=\varnothing$，则 $\mathcal{G}=\langle O, \varnothing, \varnothing\rangle$，则称 $\mathcal{G}$ 为离散图
    3. 若 $O$ 和 $M$ 均为集合，则称 $\mathcal{G}$ 为小图
        1. 若 $O$ 和 $M$ 均为有穷集合，则称 $\mathcal{G}$ 为有穷图
        2. 若当 $A, B \in O$ 时，$[A, B]$ 均为集合，则称 $\mathcal{G}$ 为局部小图
    4. 若 $f \in O$，使 $\operatorname{source}(f)=\operatorname{target}(f)$，则称 $f$ 为 $\mathcal{G}$ 的自圈
    5. 若 $\mathcal{G}$ 无自圈，且当 $A, B \in O$ 时皆有 $|[A, B]| \leqslant 1$，则称 $\mathcal{G}$ 为简单图
3. 图同态：设图 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$ 且 $\mathcal{G}^{\prime}=\langle O^{\prime}, M^{\prime}, \operatorname{source}', \operatorname{target}'\rangle$，设 $\Phi_{0}: O \rightarrow O^{\prime}$ 和 $\Phi_{1}: M \rightarrow M^{\prime}$
    1. 若 $\Phi_{0} \circ \mathrm{source}=\mathrm{source}' \circ \Phi_{1}$ 且 $\Phi_{0} \circ \mathrm{target}=\mathrm{target}^{\prime} \circ \Phi_{1}$，则称 $\left\langle\Phi_{0}, \Phi_{1}\right\rangle$ 为从 $\mathcal{G}$ 到 $\mathcal{G}^{\prime}$ 的图同态，记为 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$ 或 $\mathcal{G} \simeq \mathcal{G}^{\prime}$
    2. 设 $\Phi_{1}: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$，若 $\Phi_{0}$ 和 $\Phi_{1}$ 均为双射，则称 $\Phi$ 为图同构，记为 $\mathcal{G} \cong \mathcal{G}^{\prime}$

    设 $\Phi=\left\langle\Phi_{0}, \Phi_{1}\right\rangle$，对任意 $A\in O, f \in M$，规定 $\Phi(A) =\Phi_{0}(A), \Phi(f) =\Phi_{1}(f)$

    1. 合成
    2. 逆
    3. 图自然变换

## 1.2 范畴
### 1.2.1 范畴及其运算

### 1.2.2 特殊对象与态射
