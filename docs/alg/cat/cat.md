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

    1. 对图 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$，取 $I_{\mathcal{G}}=\left\langle I_{O}, I_{M}\right\rangle$，则 $I_{\mathcal{G}}: \mathcal{G} \rightarrow \mathcal{G}$，称 $I_{\mathcal{G}}$ 为 $\mathcal{G}$ 的恒等图同态（同构）
    2. 设 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}, \Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}^{\prime \prime}$ 且 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$，若令

        $$
        \begin{aligned}
        (\Psi \circ \Phi)(A) & =\Psi(\Phi(A)), A \in O \\
        (\Psi \circ \Phi)(f) & =\Psi(\Phi(f)), f \in M
        \end{aligned}
        $$

        则 $\Psi \circ \Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime \prime}$，并称 $\Psi \circ \Phi$ 为 $\Psi$ 与 $\Phi$ 的合成

    3. 设 $\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$，若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 使 $\Phi \circ \Psi=\Pi_{\mathcal{G}}$ 且 $\Psi \circ \Phi=\mathbf{I}_{\mathcal{G}}$，则称 $\Psi$ 为 $\Phi$ 的逆．若 $\Psi: \mathcal{G}^{\prime} \rightarrow \mathcal{G}$ 为 $\Phi$ 的逆，则称 $\Phi$ 有逆

4. 设 $\mathcal{G}=\langle O, M, \operatorname{source}, \operatorname{target}\rangle$ 和 $\mathcal{G}^{\prime}=\langle O^{\prime}, M^{\prime}, \operatorname{source}', \operatorname{target}'\rangle$ 均为图，$\Phi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$ 且 $\Psi: \mathcal{G} \rightarrow \mathcal{G}^{\prime}$
    1. 定义 $M^{\prime}$ 上的局部二元运算满足当 $f, g \in M^{\prime}$ 且 $\operatorname{target}^{\prime}(f)=\operatorname{source}^{\prime}(g)$ 时，恒有
        1. $g \circ f \downarrow$ 当且仅当 $\operatorname{source}^{\prime}(g)=\operatorname{target}^{\prime}(f)$
        2. 若 $g \circ f \downarrow$ 则 $\operatorname{source}(g \circ f)=\operatorname{source}^{\prime}(f)$ 且 $\operatorname{target}^{\prime}(g \circ f)=\operatorname{target}^{\prime}(g)$

        称具有该局部二元运算的图为演算系统

    2. 若 $\alpha: O \rightarrow M^{\prime}$ 对任意 $f \in M$ 有 $\alpha(\operatorname{target}(f)) \circ \Phi(f)=\Psi(f) \circ \alpha(\operatorname{source}(f))$，则称 $\alpha$ 为 $\Phi$ 到 $\Psi$ 的自然变换，记为 $\alpha: \Phi \rightarrow \Psi$

## 1.2 范畴
### 1.2.1 范畴及其运算

### 1.2.2 特殊对象与态射
