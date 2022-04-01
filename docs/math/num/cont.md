# 3 连分数

## 3.1 连分数
1. 有限连分数：设 $a_1, a_2, \cdots, a_n$ 是一个是数列，$a_i > 0, i \geqslant 2$．对给定的 $n \geqslant 1$，将形如

    $$
    a_1 + \cfrac{1}{
        a_2 + \cfrac{1}{
            a_3 + \genfrac{}{}{0pt}{0}{}{
                \ddots + \dfrac{1}{
                    a_{n-1} + \dfrac{1}{a_n}
                }
            }
        }
    }
    $$

    的表达式称为 $n$ 阶有限连分数，如果 $a_1, a_2, \cdots, a_n$ 都是整数，则称连分数是 $n$ 阶有限简单连分数，简记为 $\left<a_1, a_2, \cdots, a_n\right> = a_1 + \dfrac{1}{a_2+} \dfrac{1}{a_3+} \cdots \dfrac{1}{a_n}$

2. 连分数：设 $a_1, a_2, \cdots, a_n, \cdots$ 是一个无限实数列，$a_i > 0, i \geqslant 2$．记 $\dfrac{p_k}{q_k} = \left<a_1, a_2, \cdots, a_n\right>$，若 $\dfrac{p_k}{q_k}$ 有意义，且 $\lim_{n \to \infty} \dfrac{p_k}{q_k} = A \neq \infty$，则称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是无限连分数，并称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 等于 $A$．也称它是 $A$ 的连分数，或称它表示 $A$，记作 $A = \left<a_1, a_2, \cdots, a_n, \cdots\right> = a_1 + \dfrac{1}{a_2+} \dfrac{1}{a_3+} \cdots \dfrac{1}{a_n+} \cdots$
    1. 称 $\dfrac{p_k}{q_k}$ 为连分数 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 的第 $k$ 个渐近分数
    2. 下列关系成立
        1. $p_1 = a_1, p_2 = a_1a_2 + 1, p_k = a_kp_{k-1} + p_{k-2} \ (k \geqslant 3)$
        2. $q_1 = 1, q_2 = a_2, q_k = a_kq_{k-1} + q_{k-2} \ (k \geqslant 3)$
        3. $p_kq_{k-1} - p_{k-2}q_k = (-1)^k \ (k \geqslant 2)$
        4. $p_kq_{k-2} - p_{k-2}q_k = (-1)^{k-1} a_k \ (k \geqslant 3)$
    3. 当 $k \geqslant 3$ 时，$q_k \geqslant q_{k-1} + 1$，因为对任何 $k$ 都有 $q_k \geqslant k-1$
    4. 设 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 时简单连分数，$\dfrac{p_k}{q_k} \ (k \geqslant 1)$ 是它的渐近分数
        1. $\dfrac{p_{2(k-2)}}{q_{2(k-1)}} > \dfrac{p_{2k}}{q_{2k}}, \dfrac{p_{2k-1}}{q_{2k-1}} > \dfrac{p_{2k-3}}{q_{2k-3}}, \dfrac{p_{2k}}{q_{2k}} > \dfrac{p_{2k-1}}{q_{2k-1}}$
        2. $\forall k \in \mathbf Z_+ : (p_k, q_k) = 1$
3. 实数与连分数
    1. 任何简单连分数都表示一个实数
        1. 任何有限简单连分数都表示一个有理数；任何有理数都可以表示为有限简单连分数
        2. 任何无理数都可以表示为无限简单连分数，并且这种连分数表示是唯一的
        3. 设 $\beta$ 是实无理数，则对于任意的正整数 $k$，存在 $\eta_k, \delta_k$ 有 $0 < \eta_k, \delta_k < 1$ 使得 $\beta = \dfrac{p_k}{q_k} + \dfrac{(-1)^{k-1}\eta_k}{q_kq_{k+1}} = \dfrac{p_k}{q_k} + \dfrac{(-1)^{k-1} \delta_k}{q_k^2}$
    2. 设 $a, b$ 是整数，$\left<a_1, a_2, \cdots, a_n\right>$ 与 $\left<b_1, b_2, \cdots, b_m\right>$ 是 $\dfrac ab$ 的两个简单连分数表示
        1. 若 $a_n > 1, b_m > 1$，则 $n = m, a_i = b_i \ (1 \leqslant i \leqslant n)$
        2. 若 $a_n$ 是大于 $i$ 的整数，则有理数 $\dfrac ab$ 仅有两种表示成简单连分数的方法，即 $\left<a_1, a_2, \cdots, a_n\right> = \left<a_1, a_2, \cdots, a_n - 1, 1\right>$
    3. 设 $\dfrac{p_k}{q_k}$ 是实数 $\alpha$ 的第 $k$ 个渐近分数，则若 $0 < q \leqslant q_k$，则 $\left|a - \dfrac{p_k}{q_k}\right| \leqslant \left|a - \dfrac pq\right|$
    4. 若 $\dfrac{p_j}{q_j}$ 是无理数 $\alpha$ 的第 $j$ 个渐近分数，$j = 1, 2, \cdots, r$ 与 $s$ 都是整数，且 $s > 0, k \in \mathbf Z_+$ 使得 $|sa - r| < |q_k\alpha - p_k|$，则 $s \geqslant q_{k+1}$
        1. 设 $\dfrac{p_j}{q_j}$ 是无理数 $\alpha$ 的第 $j$ 个渐近分数，$j = 1, 2, \cdots$，如果 $\dfrac rs$ 为一有理数，其中 $r, s$ 都是整数，且 $s > 0, k \in \mathbf Z_+$ 使得 $\left|\alpha -\dfrac rs\right| < \left|\alpha -  \dfrac{p_k}{q_k}\right|$，那么 $s > q$
        2. 如果 $\alpha$ 是一个无理数，且 $\dfrac rs$ 是一个既约分数且 $r, s \in \mathbf Z, s > 0$ 使得 $\left|\alpha - \dfrac rs\right| < \dfrac{1}{2s^2}$，那么 $\dfrac rs$ 是 $\alpha$ 的简单连分数的一个渐近分数
4. 循环连分数：设 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是无限简单连分数，如果存在两个整数 $s \geqslant 0, t > 0$ 使得 $a_{s+i} = a_{s + kt + i}, i = 1, 2, \cdots, t, k \in \mathbf N$，则称 $\left<a_1, a_2, \cdots, a_n, \cdots\right>$ 是循环连分数，并记作 $\left<a_1, a_2, \cdots, a_s, \dot a_{s+1}, \dot a_{s+2}, \cdots, \dot a_{s+t}\right>$；如果 $s = 0$，则称它是纯循环连分数
    1. 任何循环连分数表示一个不可约整系数二次方程的实根
    2. 设 $\beta$ 是二次不可约整系数方程 $Ax^2 + Bx + C = 0$ 的实根，则 $\beta$ 的简单连分数是循环连分数

## 3.2 Pell 方程
1. $\text{Pell}$ 方程：形如 $x^2 - dy^2 = 1$ 的方程，其中 $d$ 是一个固定的正整数且不失完全平方数
    1. 有两个整数 $P_n, Q_n$ 存在使得 $\beta_n = \dfrac{\sqrt d + P_n}{Q_n} \ (P_n^2 \equiv d (\bmod Q_n))$；若 $d$ 是一个非平方的正整数，则二次方程 $x^2 - dy^2 = (-1)^n Q_n$ 有正整数解 $x, y$ 且 $(x, y) = 1$
        1. 令 $r + s\sqrt n = t + u\sqrt n$，其中 $r, s, t, u \in \mathbf Q, n \in \mathbf Z_+$ 且 $n$ 不为完全平方数，那么 $r = t$ 且 $s = u$
        2. 若 $\alpha_1 = \dfrac{a_1 + b_1\sqrt d}{c_1}, \alpha_2 = \dfrac{a_2 + b_2\sqrt d}{c_2}$ 是有理数或二次无理数，则 $(\alpha_1\alpha_2)' = \alpha_1'\alpha_2'$
    2. 设 $d$ 为正整数且非完全平方数，则方程 $x^2 - dy^2 = 1$ 总有正整数解，如果 $(x_1, y_1)$ 是使 $x_1$ 最小的解，则每个解 $(x_k, y_k)$ 可以通过取幂得到 $x_k + y_k\sqrt d = (x_1 + y_1 \sqrt d)^k \ (k = 1, 2, 3, \cdots)$
2. 若 $d$ 是一个非平方的正整数，令 $\dfrac{p_k}{q_k}$ 表示 $\sqrt d$ 的简单连分数的第 $k$ 个渐近分数，$k = 1, 2, \cdots, t$ 表示连分数的循环节长度
    1. 当 $t$ 是偶数时，方程 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{jt-1}, y = q_{jt-1} \ (j = 1, 2, 3, \cdots)$ 且方程 $x^2 - dy^2 = -1$ 无解
    2. 当 $t$ 是奇数时，当成 $x^2 - dy^2 = 1$ 的全体正整数解为 $x = p_{2jt-1}, y = q_{2jt-1} \ (j = 1, 2, 3, \cdots)$，方程 $x^2 - dy^2 = -1$ 的全体正整数解为 $x = p_{(2j-1)t-1}, y = q_{(2j-1)t-1} \ (j = 1, 2, 3, \cdots)$
