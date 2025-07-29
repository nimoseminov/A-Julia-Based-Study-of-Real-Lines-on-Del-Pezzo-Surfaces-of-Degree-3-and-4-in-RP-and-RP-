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

  where

$$
  \mathbf{A} = (a_{ij})_{1 \leq i,j \leq r} \text{ and } r \text{ is the number of real lines }L_1, L_2, \ldots, L_r.
$$

  $$\quad$$ Specifically,

$$
  \begin{cases}
  a_{ii} = -1 \\
  a_{ij} = |L_i \cap L_j|, \quad i \neq j
  \end{cases}
$$

  Here, $$|L_i \cap L_j|$$ denotes the number of intersection points between the real lines $$L_i$$ and $$L_j$$ $$(i \neq j)$$.
