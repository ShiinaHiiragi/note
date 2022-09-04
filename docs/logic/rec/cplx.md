# 2 计算复杂性理论

## 2.1 时间复杂性
### 2.1.1 复杂性模型
1. 时间复杂度：令 $M$ 是一个对所有输入停机的确定性 $\text{Turing}$ 机，$M$ 的时间复杂度或运行时间是一个函数 $f: \mathbf N \to \mathbf N$，$f(n)$ 是 $M$ 在所有长度为 $n$ 的输入上运行时所经过的最大步数．此时称 $M$ 在时间 $f(n)$ 内运行，$M$ 是 $f(n)$ 时间 $\text{Turing}$ 机
2. 渐进分析：设 $g: N \to \mathbf R^+$ 是一个函数
    1. 渐进紧确界：令 $\Theta(g(n)) = \{f(n) \mid \exists c_1, c_2, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant c_1g(n) \leqslant f(n) \leqslant c_2g(n))\}$，若 $f(n) \in \Theta(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进紧确界
    2. 渐进上界与渐进下界
        1. 渐进上界：令 $O(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) \leqslant cg(n))\}$，若 $f(n) \in O(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进上界

            非渐进紧确上界：令 $\omicron(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant f(n) < cg(n))\}$，若 $f(n) \in \omicron(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确上界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{f(n)}{g(n)} = 0}$

        2. 渐进下界：令 $\Omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) \leqslant f(n))\}$，若 $f(n) \in \Omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个渐进下界

            非渐进紧确下界：令 $\omega(g(n)) = \{f(n) \mid \exists c, n_0 \in \mathbf Z_+ \ \forall n \geqslant n_0 \ (0 \leqslant cg(n) < f(n))\}$，若 $f(n) \in \omega(g(n))$，则称 $g(n)$ 是 $f(n)$ 的一个非渐进紧确下界，此时 ${\displaystyle \lim_{n \to \infty} \dfrac{g(n)}{f(n)} = 0}$

    3. 对任意两个函数 $f, g: N \to \mathbf R^+$，有 $f(n) \in \Theta(g(n))$ 当且仅当 $f(n) \in O(g(n))$ 且 $f(n) \in \Omega(g(n))$

### 2.1.2 时间复杂性类

## 2.2 空间复杂性

## 2.3 难解性
