# 3 数学基础

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
$$

- 设 $\Gamma \vdash a(\overline x) := N: *_{p}$ 与 $\Gamma \vdash b(\overline x) := M: N$ 在 $\lambda_{\mathrm D}$ 中可派生，则称 $a(\overline x)$ 为一个定理，$b(\overline x)$ 为定理 $a(\overline x)$ 的一个证明

## 3.1 逻辑学
### 3.1.1 直觉主义逻辑
1. 直觉主义命题逻辑
    1. 蕴含：将 $\to(A, B)$ 简记为 $A \to B$

        $$
        \fitch{
            \subcol{
                A, B: *_{p} \\
                \hline
                \to(A, B) := A \to B: *_{p}
                \startsub \subcol{
                    u: A \to B \\
                    \hline
                    \to_{\text{in}}(A, B, u) := u: A \to B
                }
                \startsub \subcol{
                    u: A \to B \mid v: A \\
                    \hline
                    \to_{\text{el}}(A, B, u, v) := uv: B
                }
            }
        }
        $$

        蕴含的引入策略：

        $$
        \fitch{
            \rootcol{
                \ \vdots
                \startsub \subcol{
                    x: A \\
                    \hline
                    \vdots \\
                    a(\cdots, x) := \cdots: B
                }
                \endsub
                b(\cdots) := \lambda x: A.a(\cdots, x): A \to B
            }
        }
        $$

    2. 恒假

        $$
        \fitch{
            \rootcol{
                \bot := \Pi A: *_{p}.A: *
                \startsub \subcol{
                    A: *_{p}
                    \startsub \hline \subcol{
                        u: A \mid v: A \to \bot \\
                        \hline
                        \bot_{\text{in}}(A, u, v) := vu: \bot
                    }
                    \startsub \subcol{
                        u: \bot \\
                        \hline
                        \bot_{\text{el}}(A, u) := uA: A
                    }
                }
            }
        }
        $$

    3. 否定：将 $\neg(A)$ 简记为 $\neg A$

        $$
        \fitch{
            \subcol{
                A: *_{p} \\
                \hline
                \neg (A) := A \to \bot: *_{p}
                \startsub \subcol{
                    u: A \to \bot \\
                    \hline
                    \neg_{\text{in}}(A, u) := u: \neg A
                }
                \startsub \subcol{
                    u: \neg A \mid v: A \\
                    \hline
                    \neg_{\text{el}}(A, u, v) := uv: \bot
                }
            }
        }
        $$

    4. 合取：将 $\wedge(A, B)$ 简记为 $A \wedge B$

        $$
        \fitch{
            \subcol{
                A, B: *_{p} \\
                \hline
                \wedge(A, B) := \Pi C: *_{p}.(A \to B \to C) \to C: *_{p}
                \startsub \subcol{
                    u: A \mid v: B \\
                    \hline
                    \wedge_{\text{in}}(A, B, u, v) := \lambda C: *_{p}. \lambda w: A \to B \to C. wuv: A \wedge B
                }
                \startsub \subcol{
                    u: A \wedge B \\
                    \hline
                    \wedge_{\text{el}_1}(A, B, u) := u A(\lambda v: A.\lambda w: B.v): A \\
                    \wedge_{\text{el}_2}(A, B, u) := u B(\lambda v: A.\lambda w: B.w): B
                }
            }
        }
        $$

    5. 析取：将 $\vee(A, B)$ 简记为 $A \vee B$

        $$
        \fitch{
            \subcol{
                A, B: *_{p} \\
                \hline
                \vee(A, B) := \Pi C: *.(A \to C) \to (B \to C) \to C: *_{p}
                \startsub \subcol{
                    u: A \\
                    \hline
                    \vee_{\text{in}_1}(A, B, u) := \lambda C: *_{p}. \lambda v: A \to C. \lambda w: B \to C. vu: A \vee B
                }
                \startsub \subcol{
                    u: B \\
                    \hline
                    \vee_{\text{in}_2}(A, B, u) := \lambda C: *_{p}. \lambda v: A \to C. \lambda w: B \to C. wu: A \vee B
                }
                \startsub \subcol{
                    C: *_{p}
                    \startsub \hline \subcol{
                        u: A \vee B \mid v: A \to C \mid w: B \to C \\
                        \hline
                        \vee_{\text{el}}(A, B, C, u, v, w) := uCvw: C
                    }
                }
            }
        }
        $$

    6. 等价：将 $\leftrightarrow(A, B)$ 简记为 $A \leftrightarrow B$

        $$
        \fitch{
            \subcol{
                A, B: *_{p} \\
                \hline
                \leftrightarrow(A, B) := (A \to B) \wedge (B \to A): *_{p}
                \startsub \subcol{
                    u: A \to B \mid v: B \to A \\
                    \hline
                    \leftrightarrow_{\text{in}}(A, B, u, v) := \wedge_{\text{in}}(A \to B, B \to A, u, v): A \leftrightarrow B
                }
                \startsub \subcol{
                    u: A \leftrightarrow B \\
                    \hline
                    \leftrightarrow_{\text{el}_1}(A, B, u) := \wedge_{\text{el}_1}(A \to B, B \to A, u): A \to B \\
                    \leftrightarrow_{\text{el}_2}(A, B, u) := \wedge_{\text{el}_2}(A \to B, B \to A, u): B \to A
                }
            }
        }
        $$

2. 直觉主义一阶逻辑
    1. 全称量化：将 $\forall(S, P)$ 简记为 $\forall x: S.P x$

        $$
        \fitch{
            \subcol{
                S: *_{p} \mid P: S \to *_{p} \\
                \hline
                \forall(S, P) := \Pi x:S. P x: *_{p}
                \startsub \subcol{
                    u: \Pi x: S. P x \\
                    \hline
                    \forall_{\text{in}}(S, P, u) := u: \forall x: S. P x
                }
                \startsub \subcol{
                    u: \forall x: S. P x \mid v: S \\
                    \hline
                    \forall_{\text{el}}(S, P, u, v) := uv: Pv
                }
            }
        }
        $$

        全称量化的引入策略：

        $$
        \fitch{
            \rootcol{
                \ \vdots
                \startsub \subcol{
                    x: S \\
                    \hline
                    \vdots \\
                    a(\cdots, x) := \cdots: P x
                }
                \endsub
                b(\cdots) := \lambda x: S.a(\cdots, x): \forall x: S.P x
            }
        }
        $$

    2. 存在量化：将 $\exists(S, P)$ 简记为 $\exists x: S.P x$，记 $\iota (S, P, u)$ 为集合 $S$ 中满足命题 $P x$ 的唯一元素

        $$
        \fitch{
            \subcol{
                S: *_{s} \mid P: S \to *_{p} \\
                \hline
                \exists(S, P) := \Pi A: *_{p}.((\forall x: S. (P x \to A)) \to A): *_{p}
                \startsub \subcol{
                    u: S \mid v: P u \\
                    \hline
                    \exists_{\text{in}}(S, P, u, v) := \lambda A: *_{p}. \lambda w: (\forall x: S.(P x \to A)).wuv: \exists x: S. P x
                }
                \startsub \subcol{
                    u: \exists x: S. P x \mid A: *_{p} \mid v: \forall x: S.(P x \to A) \\
                    \hline
                    \exists_{\text{el}}(S, P, u, A, v) := uAv: A
                }
                \endsub
                \exists^{\geqslant 1}(S, P) := \exists(S, P): *_{p} \\
                \exists^{\leqslant 1}(S, P) := \forall y: S. \forall z: S.(P y \to P z \to (y =_{S} z)): *_{p} \\
                \exists^{1}(S, P) := \exists^{\geqslant 1}(S, P) \wedge \exists^{\leqslant 1}(S, P)
                \startsub \subcol{
                    u: (\exists^{1} x: S.P x) \\
                    \hline
                    \iota (S, P, u) := \bot \!\!\! \bot: S
                }
            }
        }
        $$

        存在量化的引入策略：

        $$
        \fitch{
            \rootcol{
                \ \vdots \\
                a(\cdots) := \cdots: \exists x: S.P x
                \startsub \subcol{
                    x: S
                    \startsub \hline \subcol{
                        u: Px \\
                        \hline
                        \vdots \\
                        b(\cdots, x, u) := \cdots: A
                    }
                    \endsub
                    c(\cdots, x) := \lambda u: P x.b(\cdots, x, u): Px \to A
                }
                \endsub
                d(\cdots) := \lambda x: S.c(\cdots, x): \forall x: S.(P x \to A) \\
                e(\cdots) := \exists_{\mathrm{el}}(S, P, a(\cdots), A, d(\cdots)): A
            }
        }
        $$

### 3.1.2 经典逻辑
1. 经典命题逻辑
    1. 排中律

        $$
        \fitch{
            \subcol{
                A: *_{p} \\
                \hline
                \operatorname{ET}(A) := \bot \!\!\! \bot: A \vee \neg A
            }
        }
        $$

    2. 双重否定律：可从排中律推出

        $$
        \fitch{
            \subcol{
                A: *_{p}
                \startsub \hline \subcol{
                    u: A \\
                    \hline
                    \neg \neg_{\text{in}}(A, u) := \lambda v: \neg A.vu : \neg \neg A
                }
                \endsub
                a_1(A) := \lambda v: A. v: A \to A
                \startsub \subcol{
                    u: \neg \neg A
                    \startsub \hline \subcol{
                        v: \neg A \\
                        \hline
                        a_2(A, u, v) := uv: \bot \\
                        a_3(A, u, v) := a_2(A, u, v) A: A
                    }
                    \endsub
                    a_4(A, u) := \lambda v: \neg A. a_3(A, u, v): \neg A \to A \\
                    a_5(A, u) := \operatorname{ET}(A) \  A \ a_1(A) \ a_4(A, u): A
                }
                \endsub
                \operatorname{DN}(A) := \lambda u: \neg \neg A. a_5(A, u): \neg \neg A \to A
                \startsub \subcol{
                    u: \neg \neg A \\
                    \hline
                    \neg \neg_{\text{el}}(A, u) := \operatorname{DN}(A) u: A
                }
            }
        }
        $$

2. 经典一阶逻辑：存在量化可用全称量化定义

    $$
    \fitch{
        \subcol{
            S: *_{s} \mid P: S \to *_{p}
            \startsub \hline \subcol{
                u: \neg \forall x: S. \neg(P x)
                \startsub \hline \subcol{
                    v: \neg \exists y: S. P y
                    \startsub \hline \subcol{
                        u': \neg \exists x: S. P x
                        \startsub \hline \subcol{
                            y: S
                            \startsub \hline \subcol{
                                v': Py \\
                                \hline
                                a_1(S, P, y, v') := \exists_{\text{in}}(S, P, y, v'): \exists x: S.P x \\
                                a_2(S, P, u', y, v') := u' a_1(S, P, y, v'): \bot
                            }
                            \endsub
                            a_3(S, P, u', y) := \lambda v': P y.a_2(S, P, u', y, v'): \neg(P y)
                        }
                        \endsub
                        a_4(S, P, u') := \lambda y: S.a_3(S, P, u', y): \forall y: S. \neg(P y)
                    }
                    \endsub
                    a_5(S, P) := \lambda u': (\neg \exists x: S. P x). a_4(S, P, u'): (\neg \exists x: S. P x) \to \forall y: S. \neg (P y) \\
                    a_6(S, P, u, v) := u a_4(S, P, v): \bot
                }
                \endsub
                a_7(S, P, u) := \lambda v: (\neg \exists y: S. P y). a_6(S, P, u, v): \neg \neg \exists y: S. P y \\
                a_8(S, P, u) := \neg \neg_{\text{el}}(\exists y: S. P y, a_7(S, P, u)): \exists y: S. P y \\
                \exists_{\text{alt-in}}(S, P, u) := a_8(S, P, u): \exists x: S. P x \\
            }
            \endsub
            a_9(S, P) := \lambda u: (\neg \forall x: S. \neg(P x)).a_8(S, P, u): \neg \forall x: S. \neg(P x) \to \exists y: S. P y
            \startsub \subcol{
                u: \exists x: S. P x
                \startsub \hline \subcol{
                    v: \forall y: S. \neg (P y) \\
                    \hline
                    a_{10}(S, P, u, v) := \exists_{el}(S, P, u, \bot, v): \bot
                }
                \endsub
                a_{11}(S, P, u) := \lambda v: (\forall y: S. \neg(P y)).a_{10}(S, P, u, v): \neg \forall y: S. \neg(P y) \\
                \exists_{\text{alt-el}}(S, P, u) := a_{11}(S, P, u): \neg \forall x: S. \neg(P x)
            }
            \endsub
            a_{12}(S, P) := \lambda u: (\exists x: S. P x).a_{11}(S, P, u): (\exists x: S. P x) \to \neg (\forall y: S.\neg (P y))
        }
    }
    $$

## 3.2 集合论
1. 关系：将二元关系 $R \subseteq M \times N$ 解释为函数 $M \to N \to *_{p}$
    1. 等词：将 $\operatorname{eq} (S, x, y)$ 简记为 $x =_{S} y$

        $$
        \fitch{
            \subcol{
                S: *_{s}
                \startsub \hline \subcol{
                    x: S
                    \startsub \hline \subcol{
                        y: S \\
                        \hline
                        \operatorname{eq} (S, x, y) := \Pi P: S \to *_{p}.(P x \leftrightarrow P y): *_{p}
                    }
                }
            }
        }
        $$

        依照 $\text{Leibniz}$ 对等价性的定义，「相等」即在所有可想象的情况下都无法区分

    2. 集合 $S: *_{s}$ 上的关系 $R$ 可能具有自反性（$\operatorname{refl}$）、对称性（$\operatorname{symm}$）、传递性（$\operatorname{trans}$）、反自反性（$\operatorname{anti-refl}$）或反对称性（$\operatorname{anti-symm}$）

        $$
        \fitch{
            \subcol{
                S: *_{s}
                \startsub \hline \subcol{
                    R: S \to S \to *_{p} \\
                    \hline
                    \operatorname{refl}(S, R) := \forall x: S.(R \ x \ x): *_{p} \\
                    \operatorname{symm}(S, R) := \forall x: S.\forall y: S.(R \ x \ y \to R \ y \ x): *_{p} \\
                    \operatorname{trans}(S, R) := \forall x: S.\forall y: S.\forall z: S.(R \ x \ y \to R \ y \ z \to R \ x \ z): *_{p} \\
                    \operatorname{anti-refl}(S, R) := \forall x: S. \neg (R \ x \ x): *_{p} \\
                    \operatorname{anti-symm}(S, R) := \forall x: S.\forall y: S.(R \ x \ y \to R \ y \ x \to x = y): *_{p} \\
                    \operatorname{equiv}(S, R) := \operatorname{refl} (S, R) \wedge \operatorname{symm} (S, R) \wedge \operatorname{trans} (S, R): *_{p}
                }
            }
        }
        $$

        子集上的性质同理可得

        1. 集合 $S: *_{s}$ 上的等词是一个等价关系，且具有替换性（$\operatorname{eq-subs}$）与一致性（$\operatorname{eq-cong}$）

            $$
            \fitch{
                \subcol{
                    S: *_{s} \mid T: *_{s}
                    \startsub \hline \subcol{
                        x: S \\
                        \hline
                        \operatorname{eq-refl} (S, x) := \cdots: \operatorname{refl} (S, =_{S})
                        \startsub \subcol{
                            y: S \\
                            \hline
                            \operatorname{eq-symm} (S, x, y) := \cdots: \operatorname{symm} (S, =_{S})
                            \startsub \subcol{
                                z: S \\
                                \hline
                                \operatorname{eq-trans} (S, x, y, z) := \cdots: \operatorname{trans} (S, =_{S})
                            }
                            \startsub \subcol{
                                u: x =_{S} y
                                \startsub \hline \subcol{
                                    P: S \to *_{p} \mid v: P x \\
                                    \hline
                                    \operatorname{eq-subs}(S, P, x, y, u, v) := \cdots: P y
                                }
                                \startsub \subcol{
                                    f: S \to T \\
                                    \hline
                                    \operatorname{eq-cong}(S, T, f, x, y, u) := \cdots: f x =_{T} f y``
                                }
                            }
                        }
                    }
                }
            }
            $$

        2. 映射：映射 $R: S \to T \to *_{p}$ 与类型论函数 $F: S \to T$ 数可以建立一一对应

            $$
            \fitch{
                \subcol{
                    S, T: *_{s}
                    \startsub \hline \subcol{
                        F: S \to T \\
                        \hline
                        R(S, T, F) := \lambda x: S.\lambda y: T.(y =_{T} F x): S \to T \to *_{p}
                    }
                    \startsub \subcol{
                        R: S \to T \to *_{p}
                        \startsub \hline \subcol{
                            u: \forall x: S.\exists^{1} y: T.R \ x \ y \\
                            \hline
                            F(S, T, R, u) := \lambda x: S.\iota(T, R x, ux)
                        }
                    }
                }
            }
            $$

2. 作为谓词的子集：设集合 $V \subseteq S$，将 $\operatorname{element} (S, x, V)$ 简记为 $x \ \varepsilon_{S} \ V$ 或 $x \ \varepsilon \ V$，并将 $\lambda x: S.V x$ 记作 $\{x: S \mid x \ \varepsilon \ V\}$

    $$
    \fitch{
        \subcol{
            S: *_{s} \\
            \hline
            \mathcal P(S) := S \to *_{p}: \square
            \startsub \subcol{
                V, W: \mathcal P(S)
                \startsub \hline \subcol{
                    x: S \\
                    \hline
                    \operatorname{element} (S, x, V) := V x: *_{p}
                    \startsub \subcol{
                        u: V x \\
                        \hline
                        \varepsilon_{\mathrm{in}}(S, V, x, u) := u: x \ \varepsilon \ \{x: S \mid V x\}
                    }
                    \startsub \subcol{
                        v: (x \ \varepsilon \ \{x: S \mid V x\}) \\
                        \hline
                        \varepsilon_{\mathrm{el}} := v: V x
                    }
                }
                \endsub
                \subseteq(S, V, W) := \forall x: S.(x \ \varepsilon \ V \to x \ \varepsilon \ W): *_{p} \\
                =(S, V, W) := (V \subseteq W \wedge W \subseteq V): *_{p} \\
                \cup(S, V, W) := \{x: S \mid x \ \varepsilon \ V \vee x \ \varepsilon \ W\}: \mathcal P(S) \\
                \cap(S, V, W) := \{x: S \mid x \ \varepsilon \ V \wedge x \ \varepsilon \ W\}: \mathcal P(S) \\
                -(S, V, W) := \{x: S \mid x \ \varepsilon \ V \wedge \neg(x \ \varepsilon \ W)\}: \mathcal P(S) \\
                '(S, V) := \{x: S \mid \neg(x \ \varepsilon \ V)\}: \mathcal P(S) \\
                \textsf{以上分别简记为 } V \subseteq W, V = W, V \cup W, V \cap W, V - W \textsf{ 以及 } V'
            }
        }
    }
    $$

    1. 子集的 $\text{Leibniz}$ 等词：将 $\operatorname{eq-subset}(S, V, W)$ 简记为 $V \widehat{=}_{\mathcal P(S)} W$

        $$
        \fitch{
            \subcol{
                S: *_{s}
                \startsub \hline \subcol{
                    V, W: \mathcal P(S) \\
                    \hline
                    \operatorname{eq-subset} (S, V, W) := \Pi K: \mathcal P(S) \to *_{p}.(KV \leftrightarrow KW): *_{p}
                    \startsub \subcol{
                        u: V = W \\
                        \hline
                        \operatorname{eq-prop} (S, V, W, u) := \bot \!\!\! \bot: V \widehat{=}_{\mathcal P(S)} W
                    }
                    \startsub \subcol{
                        u: V \widehat{=}_{\mathcal P(S)} W \\
                        \hline
                        =_{\mathrm{prop}}(S, V, W, u) := \cdots: (V \subseteq W \wedge W \subseteq V)
                    }
                }
            }
        }
        $$

        易证 $\text{Leibniz}$ 等词蕴含子集等词 $=$，但反之无法证明，因此需要单独设置公理

    2. 空集与全集：对于集合 $S: *_{s}$，全集 $\operatorname{full-set} (S)$ 为包含 $S$ 中所有元素的集合，将 $\varnothing(S)$ 简记为 $\varnothing_{S}$

        $$
        \fitch{
            \subcol{
                S: *_{s} \\
                \hline
                \varnothing(S) := \{x: S \mid \bot\}: \mathcal P(S) \\
                \operatorname{full-set} (S) := \{x: S \mid \neg \bot\}: \mathcal P(S)
            }
        }
        $$

<script>
(function align() {
  let display = document.querySelectorAll("mjx-container[display='true']");
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
