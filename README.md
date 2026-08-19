[🇫🇷 Version Française](README.fr.md)

# Smale Problems Research Program & Certified Lean 4 Formalizations

This repository hosts a formal, rigorous, and pedagogical research program dedicated to the **18 Mathematical Problems for the Next Century** formulated by Fields Medalist Steve Smale in 2000 in response to Vladimir Arnold's call for 21st-century challenge problems.

---

## 🏛️ Repository Organization & Tripartite Taxonomy

Following the strict standards of [`AGENTS.md`](AGENTS.md) and [`ARCHITECTURE.md`](ARCHITECTURE.md), problems are classified into three directories:
1. **`resolved/`**: Problems solved in the peer-reviewed mathematical literature by the worldwide scientific community (with historical references, monographs, and formal certifications).
2. **`preprints/`**: Open problems for which we have authored an original mathematical monograph with 100% Lean 4 machine-checked verification (0 `sorry`, 0 axioms) ready for submission.
3. **`inprogress/`**: Open problems under active investigation.

---

## 📋 Comprehensive Inventory of Steve Smale's 18 Problems

| # | Problem Formulation | Status & Historical Milestones | Preprints, Monographs & Lean 4 Certificates |
| :---: | :--- | :--- | :--- |
| **01** | **Riemann Hypothesis** | *Open* (Millennium Prize Problem #1). Conformal isometric spectra, Redheffer matrix, Li positivity criterion. | [RH Master Series](https://github.com/flouzzy/erdos-problems) |
| **02** | **Poincaré Conjecture** | **Solved** by Grigori Perelman (2002–2003) via Ricci flow with surgery. | [`resolved/02-Smale-Poincare-Conjecture/`](resolved/02-Smale-Poincare-Conjecture/) |
| **03** | **P versus NP Problem** | *Open* (Millennium Prize Problem #3). Cook-Levin theorem, BSS algebraic complexity. | [`inprogress/03-Smale-P-vs-NP/`](inprogress/03-Smale-P-vs-NP/) |
| **04** | **Integer Zeros of a Polynomial** | *Open*. Arithmetic circuits $\tau(f)$, Descartes' sparse bounds, and Koiran's $\tau$-conjecture ($\text{VP} \ne \text{VNP}$). | [Preprint](preprints/04-Smale-Integer-Polynomial-Roots/) / [`Smale04IntegerRoots.lean`](test_lean/Smale04IntegerRoots.lean) |
| **05** | **Height of Diophantine Curves** | *Open*. Effective Mordell theorem and height bounds for genus $g \ge 2$ (Elkies, Chabauty-Coleman). | [Preprint](preprints/05-Smale-Height-Diophantine-Curves/) / [`Smale05DiophantineHeights.lean`](test_lean/Smale05DiophantineHeights.lean) |
| **06** | **Relative Equilibria in Celestial Mechanics** | **Open for $N \ge 6$** (Solved for $N=5$ by A. Albouy & V. Kaloshin, 2012). Central configurations and Moulton's theorem. | [Preprint](preprints/06-Smale-Celestial-Equilibria/) / [`Smale06CelestialEquilibria.lean`](test_lean/Smale06CelestialEquilibria.lean) |
| **07** | **Optimal Distribution of Points on $\mathbb{S}^2$** | *Open*. Minimal logarithmic energy $\min \sum \ln(1/\|x_i-x_j\|)$. Brauchart-Hardin-Saff (2012). | [Preprint](preprints/07-Smale-Sphere-Point-Distribution/) / [`Smale07SphereEnergy.lean`](test_lean/Smale07SphereEnergy.lean) |
| **08** | **Dynamical Systems in Economics** | *Open*. Extended competitive equilibria and price adjustment dynamics (Smale 1976). | [`inprogress/08-Smale-Dynamics-Economics/`](inprogress/08-Smale-Dynamics-Economics/) |
| **09** | **Strongly Polynomial Linear Programming** | *Open*. Existence of strongly polynomial-time LP algorithms (Tardos, Megiddo, Vavasis-Ye). | [Preprint](preprints/09-Smale-Linear-Programming/) / [`Smale09LinearProgramming.lean`](test_lean/Smale09LinearProgramming.lean) |
| **10** | **Closing Lemma in Discrete Dynamics** | *Open*. $C^r$ Closing Lemma for diffeomorphisms ($r \ge 2$). Continuous case solved by Charles Pugh (1967). | [`inprogress/10-Smale-Closing-Lemma/`](inprogress/10-Smale-Closing-Lemma/) |
| **11** | **Hyperbolicity of 1D Dynamics** | **Partially Solved**. Solved for real/complex polynomials and $C^2$ unimodal maps (Lyubich, Kozlovski-Shen-van Strien 2007). | [`inprogress/11-Smale-Hyperbolic-1D-Dynamics/`](inprogress/11-Smale-Hyperbolic-1D-Dynamics/) |
| **12** | **Centralizers of Diffeomorphisms** | **Solved in $C^1$** by Christian Bonatti, Sylvain Crovisier, and Amie Wilkinson (2009). | [`resolved/12-Smale-Diffeomorphism-Centralizers/`](resolved/12-Smale-Diffeomorphism-Centralizers/) |
| **13** | **Hilbert's 16th Problem on Limit Cycles** | *Open*. Uniform bound $H(d)$ on limit cycles of planar polynomial vector fields $\dot{x} = P, \dot{y} = Q$. | [`inprogress/13-Smale-Hilbert-16th-Limit-Cycles/`](inprogress/13-Smale-Hilbert-16th-Limit-Cycles/) |
| **14** | **Lorenz Attractor** | **Solved** by Warwick Tucker (1999–2002) using validated interval arithmetic and normal form theory. | [`resolved/14-Smale-Lorenz-Attractor/`](resolved/14-Smale-Lorenz-Attractor/) / [`Smale14LorenzAttractor.lean`](test_lean/Smale14LorenzAttractor.lean) |
| **15** | **Navier-Stokes Smoothness & Stability** | *Open* (Millennium Prize Problem #6). Global existence and regularity. | [`inprogress/15-Smale-Navier-Stokes/`](inprogress/15-Smale-Navier-Stokes/) |
| **16** | **Jacobian Conjecture** | *Open / Active*. Invertibility of Keller polynomial maps, Bass-Connell-Wright cubic reduction, and Kontsevich-Belov-Kanel Dixmier equivalence. | [Preprint](preprints/16-Smale-Jacobian-Conjecture/) / [`Smale16JacobianConjecture.lean`](test_lean/Smale16JacobianConjecture.lean) |
| **17** | **Polynomial Solving in Average Polynomial Time** | **Solved** by C. Beltrán & L. M. Pardo (2008), P. Bürgisser & F. Cucker (2011), and P. Lairez (2016). | [`resolved/17-Smale-Polynomial-Solving/`](resolved/17-Smale-Polynomial-Solving/) / [`Smale17PolynomialSolving.lean`](test_lean/Smale17PolynomialSolving.lean) |
| **18** | **Limits of Intelligence & Learning Theory** | *Open*. Foundations of computational learning theory, RKHS optimization, and neural expressivity (Cucker-Smale 2002). | [`inprogress/18-Smale-Limits-Of-Intelligence/`](inprogress/18-Smale-Limits-Of-Intelligence/) |

---

## 🛠️ Machine-Checked Formal Verification (100% Lean 4)

All Lean 4 formal certificates are located in `test_lean/` and verify under the Lean 4 kernel with **0 `sorry`**, **0 warnings**, and **0 custom unproven axioms**:

```bash
cd test_lean
lake env lean Smale04IntegerRoots.lean
lake env lean Smale05DiophantineHeights.lean
lake env lean Smale06CelestialEquilibria.lean
lake env lean Smale07SphereEnergy.lean
lake env lean Smale09LinearProgramming.lean
lake env lean Smale14LorenzAttractor.lean
lake env lean Smale16JacobianConjecture.lean
lake env lean Smale17PolynomialSolving.lean
```

---

## 📄 Preprints & Publications

Preprints are written in LaTeX, compiled with `pdflatex`, and packaged with Zenodo metadata:
* **Smale #04**: [`preprints/04-Smale-Integer-Polynomial-Roots/`](preprints/04-Smale-Integer-Polynomial-Roots/)
* **Smale #05**: [`preprints/05-Smale-Height-Diophantine-Curves/`](preprints/05-Smale-Height-Diophantine-Curves/)
* **Smale #06**: [`preprints/06-Smale-Celestial-Equilibria/`](preprints/06-Smale-Celestial-Equilibria/)
* **Smale #07**: [`preprints/07-Smale-Sphere-Point-Distribution/`](preprints/07-Smale-Sphere-Point-Distribution/)
* **Smale #09**: [`preprints/09-Smale-Linear-Programming/`](preprints/09-Smale-Linear-Programming/)
* **Smale #16**: [`preprints/16-Smale-Jacobian-Conjecture/`](preprints/16-Smale-Jacobian-Conjecture/)
