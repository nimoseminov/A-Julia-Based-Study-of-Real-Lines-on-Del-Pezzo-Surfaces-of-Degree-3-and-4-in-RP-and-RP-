# Topological Classification of Real del Pezzo surfaces of degree 3 and 4 in $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$ via Counting Real Lines Using Julia

## Introduction

This project aims to study the number of real lines on real cubic and quartic Del Pezzo surfaces embedded in the real projective spaces $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$. Building upon the results from Francesco Russo’s paper “The antibirational involutions of the plane and the classification of real del Pezzo surfaces” (in $$\textit{Algebraic Geometry}$$, de Gruyter, 2002, pp. 289–312), we utilize the count of real lines to classify the corresponding topological types of Del Pezzo surfaces in $$\mathbb{RP}^3$$ and $$\mathbb{RP}^4$$.

Implemented in the Julia programming language, this project employs the defining polynomial equations of the surfaces to automatically identify and count all real lines contained therein, providing an effective computational tool for investigating the real structures of Del Pezzo surfaces in real algebraic geometry.

This project is developed during my internship in TU Dresden \sqr{https://tu-dresden.de/}

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
