# 2 自然演绎

## 2.1 Fitch 式自然演绎
1. 一个 $\text{Fitch}$ 式自然演绎的实例如下所示

    $$
    \newcommand{\fitch}[1]{\begin{array}{rlr}#1\end{array}}
    \newcommand{\fcol}[1]{\begin{array}{r}#1\end{array}}
    \newcommand{\scol}[1]{\begin{array}{l}#1\end{array}}
    \newcommand{\tcol}[1]{\begin{array}{l}#1\end{array}}
    \newcommand{\rootcol}[1]{\, \, \begin{array}{l}#1\end{array}}
    \newcommand{\subcol}[1]{\, \, \begin{array}{|l}#1\end{array}}
    \newcommand{\startsub}{\\[-0.29em]}
    \newcommand{\endsub}{\startsub}
    \newcommand{\fendl}{\\[0.044em]}
    \newcommand{\offset}{\rule{0pt}{1em}}
    \fitch{
        \fcol{
            \startsub
            \offset 1 \\
            2 \\
            3 \\
            4 \\
            5 \\
            6 \\
            7 \\
            8 \\
            9 \\
            10 \\
        }
        \quad
        \scol{
            \rootcol{
                \startsub \subcol{
                    \alpha \to \beta
                    \startsub \hline \subcol{
                        \beta \to \gamma
                        \startsub \hline \subcol{
                            \alpha \\
                            \hline
                            \alpha \to \beta \\
                            \beta \\
                            \beta \to \gamma \\
                            \gamma
                        } \endsub
                        \alpha \to \gamma
                    } \endsub
                    (\beta \to \gamma) \to (\alpha \to \gamma)
                } \endsub
                (\alpha \to \beta) \to (\beta \to \gamma) \to (\alpha \to \gamma)
            }
        }
        \qquad
        \tcol{
            \startsub
            \text{Hyp} \\
            \text{Hyp} \\
            \text{Hyp} \\
            \text{Reit: 1} \\
            \to \text{E: 3, 4} \\
            \text{Reit: 2} \\
            \to \text{E: 5, 6} \\
            \to \text{I: 3-7} \\
            \to \text{I: 2-8} \\
            \to \text{I: 1-9} \\
        }
    }
    $$

    1. 左侧的数字是推理的步骤
    2. 中间是证明，若临时引入一个假设，则对应构造出一个子证明
    3. 右侧为推理依据的记号

    不引起混乱时，左右两侧的记号可省略

2. 直觉主义命题逻辑的 $\text{Fitch}$ 式自然演绎系统 $\mathbf{FJ}$
    1. 结构规则
        1. 重复规则（$\text{Reit}$）：同一级子证明中可重复该步骤之前的公式和上一级子证明中的公式
        2. 前件规则（$\text{Pre}$）：在任何需要的地方可引入推理前提
        3. 假设规则（$\text{Hyp}$）：在任何需要的地方可临时引入假设，从而引入新的子证明；子证明结束时，临时引入的假设被撤销
    2. 联结词规则
        1. 合取引入规则

            $$
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                    \vdots \\
                    k \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \\
                        \vdots \\
                        \beta \\
                        \vdots \\
                        \alpha \wedge \beta \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \\
                    \phantom{\vdots} \\
                    \wedge \text{I}: m, n \\
                }
            }
            $$

        2. 合取消去规则

            $$
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \wedge \beta \\
                        \vdots \\
                        \alpha \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \wedge \text{E}: m \\
                }
            }
            \qquad
            \textsf{ 与 }
            \qquad
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \wedge \beta \\
                        \vdots \\
                        \beta \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \wedge \text{E}: m \\
                }
            }
            $$

        3. 析取引入规则

            $$
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \\
                        \vdots \\
                        \alpha \vee \beta \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \vee \text{I}: m \\
                }
            }
            \qquad
            \textsf{ 与 }
            \qquad
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                }
                \quad
                \scol{
                    \rootcol{
                        \beta \\
                        \vdots \\
                        \alpha \vee \beta \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \vee \text{I}: m \\
                }
            }
            $$

        4. 析取消去规则

            $$
            \fitch{
                \fcol{
                    m \\
                    m + 1 \\
                    \vdots \\
                    n \\
                    \offset n + 1 \\
                    \vdots \\
                    k \\
                    k + 1 \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \vee \beta
                        \startsub \subcol{
                            \alpha \\
                            \hline
                            \vdots \\
                            \gamma
                        }
                        \startsub \subcol{
                            \beta \\
                            \hline
                            \vdots \\
                            \gamma
                        } \endsub
                        \gamma
                    }
                }
                \qquad
                \tcol{
                    \\
                    \\
                    \phantom{\vdots} \\
                    \\
                    \\
                    \phantom{\vdots} \\
                    \\
                    \vee \text{E}: m, (m + 1) \text{-} n, (n + 1) \text{-} k \\
                }
            }
            $$

        5. 蕴含引入规则

            $$
            \fitch{
                \fcol{
                    \offset m \\
                    \offset \vdots \\
                    n \\
                    n + 1 \\
                }
                \quad
                \scol{
                    \subcol{
                        \alpha \\
                        \hline
                        \vdots \\
                        \beta
                    } \endsub
                    \alpha \to \beta
                }
                \qquad
                \tcol{
                    \text{Hyp} \\
                    \phantom{\vdots} \\
                    \\
                    \to \text{I}: m, n \\
                }
            }
            $$

        6. 蕴含消去规则

            $$
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                    \vdots \\
                    k \\
                }
                \quad
                \scol{
                    \rootcol{
                        \alpha \to \beta \\
                        \vdots \\
                        \alpha \\
                        \vdots \\
                         \beta \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \\
                    \phantom{\vdots} \\
                    \to \text{E}: m, n \\
                }
            }
            $$

        7. 恒假消去规则

            $$
            \fitch{
                \fcol{
                    m \\
                    \vdots \\
                    n \\
                }
                \quad
                \scol{
                    \rootcol{
                        \bot \\
                        \vdots \\
                        \alpha \\
                    }
                }
                \qquad
                \tcol{
                    \\
                    \phantom{\vdots} \\
                    \bot \text{E}: m \\
                }
            }
            $$


3. 经典命题逻辑的 $\text{Fitch}$ 式自然演绎系统 $\mathbf{FK}$ 从 $\mathbf{FJ}$ 增加否定消去规则得来

    $$
    \fitch{
        \fcol{
            \offset m \\
            \vdots \\
            n \\
            n + 1 \\
        }
        \quad
        \scol{
            \subcol{
                \neg \alpha \\
                \vdots \\
                \bot
            } \endsub
            \alpha
        }
        \qquad
        \tcol{
            \text{Hyp} \\
            \phantom{\vdots} \\
            \\
            \neg \text{E}: m\text{-}n \\
        }
    }
    $$

## 2.2 Gentzen 式自然演绎
1. 直觉主义命题逻辑的 $\text{Gentzen}$ 式自然演绎系统 $\mathbf{NJ}$

    $$
    \displaylines{
        \begin{prooftree}
        \AxiomC{$\alpha_1$}
        \AxiomC{$\alpha_2$}
        \RightLabel{ ($\wedge$I)}
        \BinaryInfC{$\alpha_1 \wedge \alpha_2$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha_1 \wedge \alpha_2$}
        \RightLabel{ ($\wedge$E)}
        \UnaryInfC{$\alpha_1$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha_1 \wedge \alpha_2$}
        \RightLabel{ ($\wedge$E)}
        \UnaryInfC{$\alpha_2$}
        \end{prooftree} \\[0.5em]
        \begin{prooftree}
        \AxiomC{$\alpha_1$}
        \RightLabel{ ($\vee$I)}
        \UnaryInfC{$\alpha_1 \vee \alpha_2$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha_2$}
        \RightLabel{ ($\vee$I)}
        \UnaryInfC{$\alpha_1 \vee \alpha_2$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha_1 \vee \alpha_2$}
        \AxiomC{$\begin{array}{c} [\alpha_1]^{m} \\ \vdots \\ \beta \end{array}$}
        \AxiomC{$\begin{array}{c} [\alpha_2]^{n} \\ \vdots \\ \beta \end{array}$}
        \RightLabel{ ($\vee\text{E}^{mn}$)}
        \TrinaryInfC{$\beta$}
        \end{prooftree} \\[1em]
        \begin{prooftree}
        \AxiomC{$\begin{array}{c} [\alpha_1]^{n} \\ \vdots \\ \alpha_2 \end{array}$}
        \RightLabel{ ($\to\text{I}^{n}$)}
        \UnaryInfC{$\alpha_1 \to \alpha_2$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\alpha_1 \to \alpha_2$}
        \AxiomC{$\alpha_1$}
        \RightLabel{ ($\to$E)}
        \BinaryInfC{$\alpha_2$}
        \end{prooftree} \quad
        \begin{prooftree}
        \AxiomC{$\bot$}
        \RightLabel{ ($\bot$E)}
        \UnaryInfC{$\alpha$}
        \end{prooftree}
    }
    $$

    其中 $[\alpha]^{n}$ 表示最终将被撤销的临时假设

    1. 在 $\mathbf{NJ}$ 中的推导是由公式组成的有穷树结构 $\mathcal D$，记所有推导的集合为 $\mathbf{X}_{J}$
        1. 由单个公式形成的单节点数结构属于 $\mathbf{X}_{J}$
        2. 从子节点运用 $\mathbf{NJ}$ 的 $9$ 条推理规则得到的推导
    2. 用 $\mathcal D, \mathcal E$ 表示推导，记号 $\begin{array}{c} \beta \\ \mathcal D \\ \alpha \end{array}$ 表示 $\mathcal D$ 是从 $\beta$ 到 $\alpha$ 的推导，$\begin{array}{c} \mathcal D \\ \alpha \end{array}$ 表示 $\mathcal D$ 是以 $\alpha$ 为根节点的推导
        1. 一个推导 $\mathcal{D}$ 的高度是其中极大分枝的最大长度，记为 $|\mathcal{D}|$，单节点推导的高度为 $0$
        2. 对任意公式集 $\Gamma \cup \{\alpha\}$，若存在从 $\Gamma$ 中有穷多个公式到 $\alpha$ 的推导，则称在 $\mathbf{NJ}$ 中 $\alpha$ 从 $\Gamma$ 可推导，记作 $\Gamma \vdash_{\mathbf{NJ}} \alpha$
        3. 若 $\varnothing \vdash_{\mathbf{NJ}} \alpha$，则称公式 $\alpha$ 在 $\mathbf{NJ}$ 中可证，记作 $\vdash_{\mathbf{NJ}} \alpha$
    3. 对任意公式集 $\Gamma \cup\{\alpha, \beta\}$
        1. 如果 $\Gamma \vdash_{\mathbf{HJ}} \alpha$，那么 $\Gamma \vdash_{\mathbf{NJ}} \alpha$；如果 $\vdash_{\mathbf{HJ}} \alpha$，那么 $\vdash_{\mathbf{NJ}} \alpha$
        2. $\alpha, \Gamma \vdash_{\mathbf{NJ}} \beta$ 当且仅当 $\Gamma \vdash_{\mathbf{NJ}} \alpha \rightarrow \beta$

2. 经典命题逻辑的 $\text{Gentzen}$ 式自然演绎系统 $\mathbf{NK}$ 从 $\mathbf{NJ}$ 增加反证规则得来

    $$
    \begin{prooftree}
    \AxiomC{$\begin{array}{c} [\neg \alpha_1]^{n} \\ \vdots \\ \bot \end{array}$}
    \RightLabel{ ($\text{RAA}^{n}$)}
    \UnaryInfC{$\alpha$}
    \end{prooftree}
    $$

    1. 在 $\mathbf{NJ}$ 中所有推导的集合 $\mathbf{X}_{K}$ 是在 $\mathbf{X}_{J}$ 基础上对反证规则封闭的集合
        1. 对任意公式集 $\Gamma \cup \{\alpha\}$，若存在从 $\Gamma$ 中有穷多个公式到 $\alpha$ 的推导，则称在 $\mathbf{NK}$ 中 $\alpha$ 从 $\Gamma$ 可推导，记作 $\Gamma \vdash_{\mathbf{NK}} \alpha$
        2. 若 $\varnothing \vdash_{\mathbf{NK}} \alpha$，则称公式 $\alpha$ 在 $\mathbf{NK}$ 中可证，记作 $\vdash_{\mathbf{NK}} \alpha$
    2. 对任意公式集 $\Gamma \cup\{\alpha, \beta\}$
        1. 如果 $\Gamma \vdash_{\mathbf{NJ}} \alpha$，那么 $\Gamma \vdash_{\mathbf{NK}} \alpha$；如果 $\vdash_{\mathbf{NJ}} \alpha$，那么 $\vdash_{\mathbf{NK}} \alpha$
        2. 如果 $\Gamma \vdash_{\mathbf{HK}} \alpha$，那么 $\Gamma \vdash_{\mathbf{NK}} \alpha$；如果 $\vdash_{\mathbf{HK}} \alpha$，那么 $\vdash_{\mathbf{NK}} \alpha$
        3. $\alpha, \Gamma \vdash_{\mathbf{NK}} \beta$ 当且仅当 $\Gamma \vdash_{\mathbf{NK}} \alpha \rightarrow \beta$

3. 正规化

<script>
(function align() {
  let display = [...document.querySelectorAll("h2[id='21-fitch']+ol mjx-container[display='true']")].slice(1);
  if (display.length === 0) {
    setTimeout(align, 100);
  } else {
    display.forEach((item) => {
        item.style.setProperty("margin-left", "0", "important");
        item.style.setProperty("text-align", "left", "important");
    })
  }
})()
</script>
