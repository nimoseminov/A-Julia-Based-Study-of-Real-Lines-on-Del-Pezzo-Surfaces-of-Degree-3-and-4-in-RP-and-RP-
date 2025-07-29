# Topological Classification of Real del Pezzo surfaces of degree 3 and 4 in $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$ via Counting Real Lines Using Julia

## Introduction

This project aims to study the number of real lines on real cubic and quartic Del Pezzo surfaces embedded in the real projective spaces $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$. Building upon the results from Francesco Russo’s paper “The antibirational involutions of the plane and the classification of real del Pezzo surfaces” (in $$\textit{Algebraic Geometry}$$, de Gruyter, 2002, pp. 289–312), we utilize the count of real lines to classify the corresponding topological types of Del Pezzo surfaces in $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$.

Implemented in the Julia programming language, this project employs the defining polynomial equations of the surfaces to automatically identify and count all real lines contained therein, providing an effective computational tool for investigating the real structures of Del Pezzo surfaces in real algebraic geometry.

This project was initially developed during my internship at [TU Dresden](https://tu-dresden.de/) and continued to be developed afterward. You can find my related works at [this link](https://nimoseminov.github.io/publication/2025-07-05-topologische-klassifikation-kubischer-flaechen-julia) 

The following formula is from Francesco Russo’s paper ``The antibirational involutions of the plane and the classification of real del Pezzo surfaces'' (in $$\textit{Algebraic Geometry}$$, de Gruyter, 2002, pp. 289--312), and can be used to classify the topological structure.

## Smooth del Pezzo surfaces of degree 3

$$X_{\mathbb{R}}$$ ist a smooth del Pezzo surface of degree 3 in $$\mathbb{RP}^3$$ and $$X_{\mathbb{R}}$$ is isomorphic to one of the following:

| $$X_{\mathbb{R}}$$ | $$\rho(X_{\mathbb{R}})$$ | $$X(\mathbb{R})$$ | # real lines |
|-------|-------|-------|-------|
| $$\mathbb{P}^2_{\mathbb{R}(6,0)}$$ | 7 | # $$7\mathbb{RP}^2$$ |27 |
| $$\mathbb{P}^{2}_{\mathbb{R}(4,2)}$$ | 6 | # $$5\mathbb{RP}^2$$ |15 |
| $$\mathbb{P}^{2}_{\mathbb{R}(2,4)}$$ | 5 | # $$3\mathbb{RP}^2$$ |7 |
| $$\mathbb{P}^{2}_{\mathbb{R}(0,6)}$$ | 4 | # $$\mathbb{RP}^2$$ |3 |
| $$\mathbb{D}_{4}(1,0)$$ | 3 | $$\mathbb{RP}^2 \sqcup S^2$$ |3 |

## Smooth del Pezzo surfaces of degree 4

$$X_{\mathbb{R}}$$ ist a smooth del Pezzo surface of degree 3 in $$\mathbb{RP}^3$$ and $$X_{\mathbb{R}}$$ is isomorphic to one of the following:

| $$X_{\mathbb{R}}$$ | $$\rho(X_{\mathbb{R}})$$ | $$X(\mathbb{R})$$ | # real lines |
|-------|-------|-------|-------|
| $$\mathbb{P}^2_{\mathbb{R}(5,0)}$$ | 6 | # $$6\mathbb{RP}^2$$ |16 |
| $$\mathbb{P}^{2}_{\mathbb{R}(3,2)}$$ | 5 | # $$4\mathbb{RP}^2$$ |8 |
| $$\mathbb{P}^{2}_{\mathbb{R}(1,4)}$$ | 4 | # $$2\mathbb{RP}^2$$ |4 |
| $$\textit{Q}^{3,1}(0,4)$$ | 3 | $$S^2$$ |0 |
| $$\textit{Q}^{2,2}(0,4)$$ | 4 | $$S^2 \times S^2$$ |0 |
| $$(\textit{Q}^{3,1} \times \textit{Q}^{3,0})(0,4)$$ | 4 | $$\varnothing$$ |0 |
| $$\mathbb{D}_{4}$$ | 2 | $$S^2 \sqcup S^2$$ |0 |

## Examples
In the code for [*del Pezzo surface of degree 3.jl*](https://github.com/nimoseminov/Real-Lines-on-Del-Pezzo-Surfaces-of-Degree-3-and-4-in-RP3-and-RP4/blob/main/del%20Pezzo%20surface%20of%20degree%203.jl), I used the example polynomial:

```621*x^3+2619*x^2*y-1800*x*y^2-3040*y^3+315*x^2*z+618*x*y*z-1212*y^2*z+174*x*z^2+172*y*z^2+1152*x^2*w-24*x*y*w-4328*y^2*w+306*x*z*w-650*y*z*w+38*z^2*w+51*x*w^2-1907*y*w^2-97*z*w^2```

The output is:

```
Tracking 81 paths... 100%|████████████████████████████████████████| Time: 0:00:05
                   # paths tracked: 81
   # non-singular solutions (real): 27 (3)
       # singular endpoints (real): 0 (0)
          # total solutions (real): 27 (3)

 Insgesamt 3 reelle Geraden gefunden.

Reelle Gerade Nr. 1:
  Gleichung 1: -0.350317042954575*w + 0.0483254543498994*x + 0.86478485586579*y + 0.356496525849304*z = 0
  Gleichung 2: 0.812261897004688*w + 0.239542513259883*x + 0.439258341318511*y - 0.299836796603745*z = 0
--------

Reelle Gerade Nr. 2:
  Gleichung 1: -0.317313737336273*w - 0.764975611629068*x + 0.5481044807965*y + 0.117071703845205*z = 0
  Gleichung 2: 0.763278109248239*w + 0.0532094551211621*x + 0.577125063336332*y - 0.285485451638394*z = 0
--------

Reelle Gerade Nr. 3:
  Gleichung 1: -0.213808519127661*w + 0.684791593501686*x + 0.345995122285053*y + 0.604676579646351*z = 0
  Gleichung 2: 0.808239218733016*w + 0.272505815030036*x + 0.442912421042277*y - 0.276258091941447*z = 0
--------
```
There are a total of 27 non-singular solutions, of which 3 are real solutions. The equations listed below are the approximate equations of the two hyperplanes corresponding to each real line.


## Remark
- It is important to be precise about the definitions of del Pezzo surfaces of degrees 3 and 4. Del Pezzo surfaces of degree 3 are smooth cubic surfaces in $\mathbb{RP}^3$. In contrast, smooth quartic surfaces in $\mathbb{RP}^4$ are **not** del Pezzo surfaces, but rather **K3 surfaces**, which in algebraic geometry are smooth projective surfaces with a trivial canonical bundle.
- The [del Pezzo surface of degree 4](https://arxiv.org/pdf/1312.6734) is a smooth surface defined by the intersection of two quadrics over an algebraically closed field $$k$$ of characteristic different from 2.

$$
X \text{ is an algebraic variety determined by two quadratic equations, }  X \subset \mathbb{RP}^4, X = V(f_1, f_2), 
$$
$$
\text{where } f_1 , f_2 \in H^0(\mathbb{P}^4, \mathcal{O}_{\mathbb{P}^4}(2)) \quad \text{or} \quad f_1 , f_2 \in \mathbb{R}[x_0, x_1, x_2, x_3, x_4]_2.
$$

- We observe that although the number of real lines listed in the table can partially distinguish the topological types of del Pezzo surfaces, it does not provide a sufficient criterion for determining their complete topological structure. To more accurately identify the specific algebraic structure, we can enumerate the hyperplane equations corresponding to all real lines and further analyze their intersection relations. Specifically, each real line is determined by the intersection of two hyperplanes. By solving the system defined by these two hyperplanes, we obtain the real line, and then by examining the intersection relations among all such real lines, we can determine their mutual intersections.

  We construct a matrix $$\mathbf{A}$$ that encodes the intersection information between the real lines.

  Further, we compute the rank of an extended matrix $$\mathbf{B}$$ derived from $$\mathbf{A}$$. According to Francesco Russo's work *The antibirational involutions of the plane and the classification of real del Pezzo surfaces* (see Corollary 3.3), this rank corresponds exactly to the rank of the real Néron-Severi group, i.e., the Picard number $$\rho(X_{\mathbb{R}})$$. Through this computation, we can more precisely determine the corresponding algebraic structure.

  The structure of the matrix $$\mathbf{B}$$ is as follows:

$$
  \mathbf{B} = \begin{bmatrix}
  3 & 1 & 1 & 1 \\
  1 &   &   &   \\
  1 &   & \mathbf{A} & \\
  1 &   &   &  
  \end{bmatrix}
$$

  $$\quad\quad$$ where

$$
  \mathbf{A} = (a_{ij})_{1 \leq i,j \leq r} \text{ and } r \text{ is the number of real lines }L_1, L_2, \ldots, L_r.
$$

  $$\quad\quad$$ Specifically,

$$
  \begin{cases}
  a_{ii} = -1 \\
  a_{ij} = |L_i \cap L_j|, \quad i \neq j
  \end{cases}
$$

  $$\quad\quad$$ Here, $$|L_i \cap L_j|$$ denotes the number of intersection points between the real lines $$L_i$$ and $$L_j$$ $$(i \neq j)$$.

- Due to limitations in floating-point precision, it is currently not possible to accurately determine the intersection relations between real lines on cubic del Pezzo surfaces using numerical methods. Therefore, the corresponding intersection-checking code is **not** publicly available. I only provide code for:

  1. counting the number of real lines
  2. outputting their approximate equations  
  (note: these equations are always approximations due to numerical errors).

  For quartic del Pezzo surfaces, the code for detecting real lines is still under active development. For the same reasons related to numerical precision, it is currently **not** feasible to reliably determine the intersection relations among these real lines. 

  At this stage, the implementation only supports:

  1. counting the number of real lines
  2. **does not** yet support outputting their approximate equations. 

- For further details, please refer to the [project page](https://nimoseminov.github.io/publication/2025-07-05-topologische-klassifikation-kubischer-flaechen-julia) and the associated document: [Topological Classification (PDF)](https://nimoseminov.github.io/files/Praktikum_Aufgaben.pdf).

## Reference

\bibitem[Rus02]{Rus02}
Francesco Russo, The antibirational involutions of the plane and the classification of real
del Pezzo surfaces. In Algebraic geometry, pages 289–312. de Gruyter, Berlin, 2002

[Max Planck Institute for Mathematics in the Sciences] [Julia Code for sampling real cubics](https://mathrepo.mis.mpg.de/27pAdicLines/JuliaCode.html), Max Planck Institute for Mathematics in the Sciences.

\bibitem[Haku]{Haku}
Christoph Hanselka and Mario Kummer,
\href{https://arxiv.org/pdf/2008.00201}{Positive ulrich sheaves}.

\bibitem[Sk]{Sk}
Alexei Skorobogatov,
\href{https://ems.press/content/serial-article-files/44198}{Del Pezzo surfaces of degree 4
and their relation to Kummer surfaces}.

\bibitem[Ma]{Ma}
Yimu Mao,
\href{https://nimoseminov.github.io/files/Praktikum_Aufgaben.pdf}{Topologische Klassifikation kubischer Flächen
in $\mathbb{P}^3(\mathbb{R})$ anhand von
Julia-Implementierungen: 5 Fallbeispiele}.

\bibitem[VlCe]{Vlce}
Mitankin Vladimir, Salgado Cecilia
\href{https://pure.rug.nl/ws/portalfiles/portal/159772709/2002.11539.pdf}{Rational points on del Pezzo surafces of degree four}.
