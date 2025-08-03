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

$$X_{\mathbb{R}}$$ ist a smooth del Pezzo surface of degree 4 in $$\mathbb{RP}^4$$ and $$X_{\mathbb{R}}$$ is isomorphic to one of the following:

| $$X_{\mathbb{R}}$$ | $$\rho(X_{\mathbb{R}})$$ | $$X(\mathbb{R})$$ | # real lines |
|-------|-------|-------|-------|
| $$\mathbb{P}^2_{\mathbb{R}(5,0)}$$ | 6 | # $$6\mathbb{RP}^2$$ |16 |
| $$\mathbb{P}^{2}_{\mathbb{R}(3,2)}$$ | 5 | # $$4\mathbb{RP}^2$$ |8 |
| $$\mathbb{P}^{2}_{\mathbb{R}(1,4)}$$ | 4 | # $$2\mathbb{RP}^2$$ |4 |
| $$\textit{Q}^{3,1}(0,4)$$ | 3 | $$S^2$$ |0 |
| $$\textit{Q}^{2,2}(0,4)$$ | 4 | $$S^2 \times S^2$$ |0 |
| $$(\textit{Q}^{3,1} \times \textit{Q}^{3,0})(0,4)$$ | 4 | $$\varnothing$$ |0 |
| $$\mathbb{D}_{4}$$ | 2 | $$S^2 \sqcup S^2$$ |0 |

## Examples from [del Pezzo surface of degree 3](https://github.com/nimoseminov/Real-Lines-on-Del-Pezzo-Surfaces-of-Degree-3-and-4-in-RP3-and-RP4/blob/main/del%20Pezzo%20surface%20of%20degree%203.jl)
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

## Example from [del Pezzo surfaces with Picard rank](https://github.com/nimoseminov/Real-Lines-on-Del-Pezzo-Surfaces-of-Degree-3-and-4-in-RP3-and-RP4/blob/main/del%20Pezzo%20surface%20of%20degree%203%20with%20Picard%20rank.jl)

In the code for [*del Pezzo surface of degree 3 with Picard rank.jl*](https://github.com/nimoseminov/Real-Lines-on-Del-Pezzo-Surfaces-of-Degree-3-and-4-in-RP3-and-RP4/blob/main/del%20Pezzo%20surface%20of%20degree%203%20with%20Picard%20rank.jl), I used the example polynomial:

```72*x^3+1152*x^2*y-96*x*y^2-1664*y^3+3*x^2*z-90*x*y*z-408*y^2*z+9*x*z^2+32*y*z^2+300*x^2*w-1368*x*y*w-3008*y^2*w-382*y*z*w+23*z^2*w-408*x*w^2-1480*y*w^2-67*z*w^2-220*w^3```

The Output is:
```
Total number of real lines found: 27

Real line number 1:
 Point: (0.0871271555885967, 0.0795424052342699, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.5582277994773125, -0.2441507453183222, 0.0000000000000000, 0.7929515353735216)
--------

Real line number 2:
 Point: (-0.0445257113479611, 0.0627747791284385, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.4404701065618501, -0.2700912636037322, 0.0000000000000000, 0.8561756797236953)
--------

Real line number 3:
 Point: (0.2024347343930987, 0.1268846632130095, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.7722065796095107, -0.0824191409644391, 0.0000000000000000, 0.6300032409523496)
--------

Real line number 4:
 Point: (-1.0000000000000000, -1.0000000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.4082482904638631, -0.8164965809277261, 0.0000000000000000, 0.4082482904638631)
--------

Real line number 5:
 Point: (-0.0227884178847529, 0.0063895150052607, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.8755617942615637, -0.0953224339525291, 0.0000000000000000, 0.4736086760341676)
--------

Real line number 6:
 Point: (-0.0831799979715284, 0.0197795866709995, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.1706957580573989, -0.5411082035398193, 0.0000000000000000, 0.8234469444008639)
--------

Real line number 7:
 Point: (-0.0000000000000000, -0.3076923076923077, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.6483810684699614, -0.3990037344430531, 0.0000000000000000, 0.6483810684699614)
--------

Real line number 8:
 Point: (-0.1849212095351926, 0.0263287033701515, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.0488154285421132, -0.3985552402202863, 0.0000000000000000, 0.9158442959527561)
--------

Real line number 9:
 Point: (-1.1386312017699345, 0.0704600611669758, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.0836067716814915, -0.2972013530909548, 0.0000000000000000, 0.9511473405576576)
--------

Real line number 10:
 Point: (0.3056050886483956, -0.4091872325004482, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.1807314906846159, -0.2120340470024457, 0.0000000000000000, 0.9604049620793726)
--------

Real line number 11:
 Point: (0.3818027210884354, -0.0433673469387755, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.6850152229758222, -0.3565536649558696, 0.0000000000000000, 0.6353138030122768)
--------

Real line number 12:
 Point: (-0.0000000000000000, 0.0000000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.5773502691896258, -0.5773502691896258, 0.0000000000000000, 0.5773502691896258)
--------

Real line number 13:
 Point: (-0.2969377761077110, 0.1960983320926718, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.0164395061416335, -0.3117668847409794, 0.0000000000000000, 0.9500163957620543)
--------

Real line number 14:
 Point: (2.0179072819645021, -0.1354430186111610, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.9064122193794849, -0.1877662890163801, 0.0000000000000000, 0.3783658405149356)
--------

Real line number 15:
 Point: (-0.1625403409614063, 0.1073419831525378, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.1926481411413115, -0.1990810592265576, 0.0000000000000000, 0.9608607732507500)
--------

Real line number 16:
 Point: (0.0335796276369330, -0.3048259386377093, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.1759217745244867, -0.5548063288701752, 0.0000000000000000, 0.8131675514269827)
--------

Real line number 17:
 Point: (-1.0000000000000000, 0.7500000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.6666666666666666, 0.3333333333333333, 0.0000000000000000, 0.6666666666666666)
--------

Real line number 18:
 Point: (-0.0004510223911727, 0.0624651870293594, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.1712487838718869, -0.2944067840232507, 0.0000000000000000, 0.9402119439485369)
--------

Real line number 19:
 Point: (-1.0000000000000000, 0.0625000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.6963106238227914, -0.1740776559556979, 0.0000000000000000, 0.6963106238227914)
--------

Real line number 20:
 Point: (0.2777642453833524, -0.3916072001063226, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.5728487671074258, -0.5637797257432352, 0.0000000000000000, 0.5949762271422150)
--------

Real line number 21:
 Point: (-0.3933109491126726, 0.0321415903244313, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.0166438020237406, -0.3120824324688516, 0.0000000000000000, 0.9499092268203942)
--------

Real line number 22:
 Point: (0.4883646944868643, 0.3133192127019664, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.7654738540116158, -0.0930417139448631, 0.0000000000000000, 0.6367048125236731)
--------

Real line number 23:
 Point: (-0.1041666666666678, 0.0781250000000005, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.0792895764597488, -0.2973359117240735, 0.0000000000000000, 0.9514749175170344)
--------

Real line number 24:
 Point: (-0.0416666666666667, 0.0625000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (-0.1596173768935244, -0.2394260653402867, 0.0000000000000000, 0.9577042613611466)
--------

Real line number 25:
 Point: (0.0054789023838131, -0.0015361983078762, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.1749465002673795, -0.6069378452990005, 0.0000000000000000, 0.7752549090383125)
--------

Real line number 26:
 Point: (0.1304761784690614, -0.0275924395329266, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.5761110635377363, -0.5154376324365770, 0.0000000000000000, 0.6343658956293240)
--------

Real line number 27:
 Point: (0.0000000000000000, 0.0625000000000000, 1.0000000000000000, 0.0000000000000000)
 Direction: (0.6963106238227914, -0.1740776559556979, 0.0000000000000000, 0.6963106238227914)
--------

All lines in parametric form (LaTeX):

\mathbf{X}_1 =
\begin{pmatrix}
0.0871271555885967\\
0.0795424052342699\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.5582277994773125\\
-0.2441507453183222\\
0.0000000000000000\\
0.7929515353735216\\
\end{pmatrix},

\mathbf{X}_2 =
\begin{pmatrix}
-0.0445257113479611\\
0.0627747791284385\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.4404701065618501\\
-0.2700912636037322\\
0.0000000000000000\\
0.8561756797236953\\
\end{pmatrix},

\mathbf{X}_3 =
\begin{pmatrix}
0.2024347343930987\\
0.1268846632130095\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.7722065796095107\\
-0.0824191409644391\\
0.0000000000000000\\
0.6300032409523496\\
\end{pmatrix},

\mathbf{X}_4 =
\begin{pmatrix}
-1.0000000000000000\\
-1.0000000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.4082482904638631\\
-0.8164965809277261\\
0.0000000000000000\\
0.4082482904638631\\
\end{pmatrix},

\mathbf{X}_5 =
\begin{pmatrix}
-0.0227884178847529\\
0.0063895150052607\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.8755617942615637\\
-0.0953224339525291\\
0.0000000000000000\\
0.4736086760341676\\
\end{pmatrix},

\mathbf{X}_6 =
\begin{pmatrix}
-0.0831799979715284\\
0.0197795866709995\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.1706957580573989\\
-0.5411082035398193\\
0.0000000000000000\\
0.8234469444008639\\
\end{pmatrix},

\mathbf{X}_7 =
\begin{pmatrix}
-0.0000000000000000\\
-0.3076923076923077\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.6483810684699614\\
-0.3990037344430531\\
0.0000000000000000\\
0.6483810684699614\\
\end{pmatrix},

\mathbf{X}_8 =
\begin{pmatrix}
-0.1849212095351926\\
0.0263287033701515\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.0488154285421132\\
-0.3985552402202863\\
0.0000000000000000\\
0.9158442959527561\\
\end{pmatrix},

\mathbf{X}_9 =
\begin{pmatrix}
-1.1386312017699345\\
0.0704600611669758\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.0836067716814915\\
-0.2972013530909548\\
0.0000000000000000\\
0.9511473405576576\\
\end{pmatrix},

\mathbf{X}_10 =
\begin{pmatrix}
0.3056050886483956\\
-0.4091872325004482\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.1807314906846159\\
-0.2120340470024457\\
0.0000000000000000\\
0.9604049620793726\\
\end{pmatrix},

\mathbf{X}_11 =
\begin{pmatrix}
0.3818027210884354\\
-0.0433673469387755\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.6850152229758222\\
-0.3565536649558696\\
0.0000000000000000\\
0.6353138030122768\\
\end{pmatrix},

\mathbf{X}_12 =
\begin{pmatrix}
-0.0000000000000000\\
0.0000000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.5773502691896258\\
-0.5773502691896258\\
0.0000000000000000\\
0.5773502691896258\\
\end{pmatrix},

\mathbf{X}_13 =
\begin{pmatrix}
-0.2969377761077110\\
0.1960983320926718\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.0164395061416335\\
-0.3117668847409794\\
0.0000000000000000\\
0.9500163957620543\\
\end{pmatrix},

\mathbf{X}_14 =
\begin{pmatrix}
2.0179072819645021\\
-0.1354430186111610\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.9064122193794849\\
-0.1877662890163801\\
0.0000000000000000\\
0.3783658405149356\\
\end{pmatrix},

\mathbf{X}_15 =
\begin{pmatrix}
-0.1625403409614063\\
0.1073419831525378\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.1926481411413115\\
-0.1990810592265576\\
0.0000000000000000\\
0.9608607732507500\\
\end{pmatrix},

\mathbf{X}_16 =
\begin{pmatrix}
0.0335796276369330\\
-0.3048259386377093\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.1759217745244867\\
-0.5548063288701752\\
0.0000000000000000\\
0.8131675514269827\\
\end{pmatrix},

\mathbf{X}_17 =
\begin{pmatrix}
-1.0000000000000000\\
0.7500000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.6666666666666666\\
0.3333333333333333\\
0.0000000000000000\\
0.6666666666666666\\
\end{pmatrix},

\mathbf{X}_18 =
\begin{pmatrix}
-0.0004510223911727\\
0.0624651870293594\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.1712487838718869\\
-0.2944067840232507\\
0.0000000000000000\\
0.9402119439485369\\
\end{pmatrix},

\mathbf{X}_19 =
\begin{pmatrix}
-1.0000000000000000\\
0.0625000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.6963106238227914\\
-0.1740776559556979\\
0.0000000000000000\\
0.6963106238227914\\
\end{pmatrix},

\mathbf{X}_20 =
\begin{pmatrix}
0.2777642453833524\\
-0.3916072001063226\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.5728487671074258\\
-0.5637797257432352\\
0.0000000000000000\\
0.5949762271422150\\
\end{pmatrix},

\mathbf{X}_21 =
\begin{pmatrix}
-0.3933109491126726\\
0.0321415903244313\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.0166438020237406\\
-0.3120824324688516\\
0.0000000000000000\\
0.9499092268203942\\
\end{pmatrix},

\mathbf{X}_22 =
\begin{pmatrix}
0.4883646944868643\\
0.3133192127019664\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.7654738540116158\\
-0.0930417139448631\\
0.0000000000000000\\
0.6367048125236731\\
\end{pmatrix},

\mathbf{X}_23 =
\begin{pmatrix}
-0.1041666666666678\\
0.0781250000000005\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.0792895764597488\\
-0.2973359117240735\\
0.0000000000000000\\
0.9514749175170344\\
\end{pmatrix},

\mathbf{X}_24 =
\begin{pmatrix}
-0.0416666666666667\\
0.0625000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
-0.1596173768935244\\
-0.2394260653402867\\
0.0000000000000000\\
0.9577042613611466\\
\end{pmatrix},

\mathbf{X}_25 =
\begin{pmatrix}
0.0054789023838131\\
-0.0015361983078762\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.1749465002673795\\
-0.6069378452990005\\
0.0000000000000000\\
0.7752549090383125\\
\end{pmatrix},

\mathbf{X}_26 =
\begin{pmatrix}
0.1304761784690614\\
-0.0275924395329266\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.5761110635377363\\
-0.5154376324365770\\
0.0000000000000000\\
0.6343658956293240\\
\end{pmatrix},

\mathbf{X}_27 =
\begin{pmatrix}
0.0000000000000000\\
0.0625000000000000\\
1.0000000000000000\\
0.0000000000000000\\
\end{pmatrix} + r \cdot \begin{pmatrix}
0.6963106238227914\\
-0.1740776559556979\\
0.0000000000000000\\
0.6963106238227914\\
\end{pmatrix},


Matrix A =
27×27 Matrix{Int64}:
 -1   0   0   1   0   0   0   1   1   0   0   0   0   1   1   0   0   0   0   1   0   0   1   0   1   1   1
  0  -1   1   1   0   1   0   1   1   0   0   1   0   1   0   0   0   1   0   1   0   0   0   1   0   0   0
  0   1  -1   0   0   0   1   1   0   0   0   0   0   0   1   0   0   0   1   0   1   1   1   0   1   1   0
  1   1   0  -1   0   1   1   0   0   0   1   0   1   0   0   0   1   0   1   0   1   0   0   0   1   0   0
  0   0   0   0  -1   1   0   1   1   0   1   1   0   1   0   0   0   0   1   0   1   0   0   0   1   1   0
  0   1   0   1   1  -1   0   0   0   1   0   0   0   0   1   1   0   0   0   0   0   1   1   0   0   1   1
  0   0   1   1   0   0  -1   0   1   1   1   1   0   1   0   1   0   0   0   0   0   0   0   0   0   1   1
  1   1   1   0   1   0   0  -1   0   1   1   0   1   0   0   1   1   0   0   0   0   0   0   0   0   0   1
  1   1   0   0   1   0   1   0  -1   1   0   0   1   0   0   0   0   1   1   0   0   1   1   0   0   0   0
  0   0   0   0   0   1   1   1   1  -1   0   0   0   0   1   0   1   0   0   1   1   0   0   1   1   0   0
  0   0   0   1   1   0   1   1   0   0  -1   0   0   0   1   0   0   1   0   1   0   1   1   1   0   0   0
  0   1   0   0   1   0   1   0   0   0   0  -1   1   0   1   0   1   0   0   1   0   0   1   0   1   0   1
  0   0   0   1   0   0   0   1   1   0   0   1  -1   0   1   1   0   0   0   0   1   1   0   1   0   1   0
  1   1   0   0   1   0   1   0   0   0   0   0   0  -1   1   1   1   0   0   0   1   1   0   1   0   0   0
  1   0   1   0   0   1   0   0   0   1   1   1   1   1  -1   0   0   1   1   0   0   0   0   0   0   0   0
  0   0   0   0   0   1   1   1   0   0   0   0   1   1   0  -1   0   1   1   1   0   0   1   0   1   0   0
  0   0   0   1   0   0   0   1   0   1   0   1   0   1   0   0  -1   1   1   0   0   1   1   0   0   1   0
  0   1   0   0   0   0   0   0   1   0   1   0   0   0   1   1   1  -1   0   0   1   0   0   0   1   1   1
  0   0   1   1   1   0   0   0   1   0   0   0   0   0   1   1   1   0  -1   1   0   0   0   1   0   0   1
  1   1   0   0   0   0   0   0   0   1   1   1   0   0   0   1   0   0   1  -1   1   1   0   0   0   1   0
  0   0   1   1   1   0   0   0   0   1   0   0   1   1   0   0   0   1   0   1  -1   0   1   0   0   0   1
  0   0   1   0   0   1   0   0   1   0   1   0   1   1   0   0   1   0   0   1   0  -1   0   0   1   0   1
  1   0   1   0   0   1   0   0   1   0   1   1   0   0   0   1   1   0   0   0   1   0  -1   1   0   0   0
  0   1   0   0   0   0   0   0   0   1   1   0   1   1   0   0   0   0   1   0   0   0   1  -1   1   1   1
  1   0   1   1   1   0   0   0   0   1   0   1   0   0   0   1   0   1   0   0   0   1   0   1  -1   0   0
  1   0   1   0   1   1   1   0   0   0   0   0   1   0   0   0   1   1   0   1   0   0   0   1   0  -1   0
  1   0   0   0   0   1   1   1   0   0   0   1   0   0   0   0   0   1   1   0   1   1   0   1   0   0  -1

Matrix B =
28×28 Matrix{Int64}:
 3   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1   1
 1  -1   0   0   1   0   0   0   1   1   0   0   0   0   1   1   0   0   0   0   1   0   0   1   0   1   1   1
 1   0  -1   1   1   0   1   0   1   1   0   0   1   0   1   0   0   0   1   0   1   0   0   0   1   0   0   0
 1   0   1  -1   0   0   0   1   1   0   0   0   0   0   0   1   0   0   0   1   0   1   1   1   0   1   1   0
 1   1   1   0  -1   0   1   1   0   0   0   1   0   1   0   0   0   1   0   1   0   1   0   0   0   1   0   0
 1   0   0   0   0  -1   1   0   1   1   0   1   1   0   1   0   0   0   0   1   0   1   0   0   0   1   1   0
 1   0   1   0   1   1  -1   0   0   0   1   0   0   0   0   1   1   0   0   0   0   0   1   1   0   0   1   1
 1   0   0   1   1   0   0  -1   0   1   1   1   1   0   1   0   1   0   0   0   0   0   0   0   0   0   1   1
 1   1   1   1   0   1   0   0  -1   0   1   1   0   1   0   0   1   1   0   0   0   0   0   0   0   0   0   1
 1   1   1   0   0   1   0   1   0  -1   1   0   0   1   0   0   0   0   1   1   0   0   1   1   0   0   0   0
 1   0   0   0   0   0   1   1   1   1  -1   0   0   0   0   1   0   1   0   0   1   1   0   0   1   1   0   0
 1   0   0   0   1   1   0   1   1   0   0  -1   0   0   0   1   0   0   1   0   1   0   1   1   1   0   0   0
 1   0   1   0   0   1   0   1   0   0   0   0  -1   1   0   1   0   1   0   0   1   0   0   1   0   1   0   1
 1   0   0   0   1   0   0   0   1   1   0   0   1  -1   0   1   1   0   0   0   0   1   1   0   1   0   1   0
 1   1   1   0   0   1   0   1   0   0   0   0   0   0  -1   1   1   1   0   0   0   1   1   0   1   0   0   0
 1   1   0   1   0   0   1   0   0   0   1   1   1   1   1  -1   0   0   1   1   0   0   0   0   0   0   0   0
 1   0   0   0   0   0   1   1   1   0   0   0   0   1   1   0  -1   0   1   1   1   0   0   1   0   1   0   0
 1   0   0   0   1   0   0   0   1   0   1   0   1   0   1   0   0  -1   1   1   0   0   1   1   0   0   1   0
 1   0   1   0   0   0   0   0   0   1   0   1   0   0   0   1   1   1  -1   0   0   1   0   0   0   1   1   1
 1   0   0   1   1   1   0   0   0   1   0   0   0   0   0   1   1   1   0  -1   1   0   0   0   1   0   0   1
 1   1   1   0   0   0   0   0   0   0   1   1   1   0   0   0   1   0   0   1  -1   1   1   0   0   0   1   0
 1   0   0   1   1   1   0   0   0   0   1   0   0   1   1   0   0   0   1   0   1  -1   0   1   0   0   0   1
 1   0   0   1   0   0   1   0   0   1   0   1   0   1   1   0   0   1   0   0   1   0  -1   0   0   1   0   1
 1   1   0   1   0   0   1   0   0   1   0   1   1   0   0   0   1   1   0   0   0   1   0  -1   1   0   0   0
 1   0   1   0   0   0   0   0   0   0   1   1   0   1   1   0   0   0   0   1   0   0   0   1  -1   1   1   1
 1   1   0   1   1   1   0   0   0   0   1   0   1   0   0   0   1   0   1   0   0   0   1   0   1  -1   0   0
 1   1   0   1   0   1   1   1   0   0   0   0   0   1   0   0   0   1   1   0   1   0   0   0   1   0  -1   0
 1   1   0   0   0   0   1   1   1   0   0   0   1   0   0   0   0   0   1   1   0   1   1   0   1   0   0  -1

Rank of matrix B = 7
```
There are a total of 27 non-singular solutions, of which 27 are real solutions. The equations listed below are the approximate equations of the two hyperplanes corresponding to each real line. The Picard rank is 7 so that the topological structure is # $$7\mathbb{RP}^2$$

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

- Due to limitations in floating-point precision, it is currently **not possible** to accurately determine the intersection relations between real lines on cubic del Pezzo surfaces using numerical methods. However, the corresponding **intersection-checking code is now publicly available for reference purposes only**, as its numerical accuracy cannot be fully guaranteed.

  The code currently provides:

  1. counting the number of real lines  
  2. outputting their approximate equations  
  3. checking intersections among real lines (approximate; for reference only)  
  
  *(Note: All equations and intersection data are approximate due to numerical errors.)*

  For quartic del Pezzo surfaces, the code for detecting real lines is still under active development. For the same reasons related to numerical precision, it is currently **not** feasible to reliably determine the intersection relations among these real lines. 

  At this stage, the implementation only supports:

  1. counting the number of real lines  
  2. **does not** yet support outputting their approximate equations.  

- For further details, please refer to the [project page](https://nimoseminov.github.io/publication/2025-07-05-topologische-klassifikation-kubischer-flaechen-julia) and the associated document: [Topological Classification (PDF)](https://nimoseminov.github.io/files/Praktikum_Aufgaben.pdf).


## References

- [The antibirational involutions of the plane and the classification of real
del Pezzo surfaces](https://www.degruyterbrill.com/document/doi/10.1515/9783110198072.289/html?lang=de), Francesco Russo, In Algebraic geometry, pages 289–312. de Gruyter, Berlin, 2002
- [Julia Code for sampling real cubics](https://mathrepo.mis.mpg.de/27pAdicLines/JuliaCode.html), Max Planck Institute for Mathematics in the Sciences
- [Positive ulrich sheaves](https://arxiv.org/pdf/2008.00201), Christoph Hanselka and Mario Kummer
- [Del Pezzo surfaces of degree 4 and their relation to Kummer surfaces](https://ems.press/content/serial-article-files/44198), Alexei Skorobogatov
- [Topologische Klassifikation kubischer Flächen in P^3(R) anhand von Julia-Implementierungen: 5 Fallbeispiele](https://nimoseminov.github.io/files/Praktikum_Aufgaben.pdf), Yimu Mao
- [Rational points on del Pezzo surafces of degree four](https://pure.rug.nl/ws/portalfiles/portal/159772709/2002.11539.pdf), Mitankin Vladimir, Salgado Cecilia
