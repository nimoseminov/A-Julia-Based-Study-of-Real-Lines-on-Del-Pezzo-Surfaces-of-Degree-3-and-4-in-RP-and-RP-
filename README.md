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
- We need to be careful with the definition of del Pezzo surface of degree 3 and degree 4, the del Pezzo surfaces of degree 3 are smooth cubic surfaces in $$\mathbb{RP}^3$$, but the del Pezzo surfaces are not quartic surfaces in $$\mathbb{RP}^4$$
- The [del Pezzo surface of degree 4](https://arxiv.org/pdf/1312.6734) is a smooth surface defined by the intersection of two quadrics over an algebraically closed field k of characteristic different from 2.
$$X$$ is a algebraic variety determined by two quadratic equations, $$X \subset \mathbb{RP}^4$$, $$X = V(f_1,f_2)$$, which $$f_1,f_2 \in H^0(\mathbb{P}^4, \mathcal{O}_{\mathbb{P}^4}(2))$$ or  $$f_1,f_2 \in \mathbb{R}[x_0,x_1,x_2,x_3,x_4]_2$$
- 
