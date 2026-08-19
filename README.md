[🇫🇷 Version Française](README.fr.md)

# Smale Problems Research Program & Certified Lean 4 Formalizations

This repository hosts a formal, rigorous, and pedagogical research program dedicated to the **18 Mathematical Problems for the Next Century** formulated by Fields Medalist Steve Smale in 2000 in response to Vladimir Arnold's call for 21st-century challenge problems.

---

## 🏛️ Comprehensive Inventory of Steve Smale's 18 Problems

| # | Problem Formulation | Status & Historical Milestones | Preprints & Lean 4 Certificates |
| :---: | :--- | :--- | :--- |
| **01** | **Riemann Hypothesis** | *Open* (Millennium Prize Problem #1). Equivalent to $\det(A_n) = O(n^{1/2+\varepsilon})$ and Li positivity $\lambda_n > 0$. | [Preprints](preprints/) / [Lean 4](test_lean/) |
| **02** | **Poincaré Conjecture** | **Solved** by Grigori Perelman (2002–2003) via Ricci flow with surgery. | *Resolved* |
| **03** | **P versus NP Problem** | *Open* (Millennium Prize Problem #3). Cook-Levin theorem. | *In Progress* |
| **04** | **Integer Zeros of a Polynomial** | *Open*. Polynomial bound on integer roots vs arithmetic operations (Lenstra, Koiran $\tau$-conjecture). | *In Progress* |
| **05** | **Height of Diophantine Curves** | *Open*. Effective Mordell theorem and height bounds for genus $g \ge 2$. | *In Progress* |
| **06** | **Relative Equilibria in Celestial Mechanics** | **Partially Solved**. Finiteness proved for $N=5$ by A. Albouy and V. Kaloshin (2012). Open for $N \ge 6$. | *In Progress* |
| **07** | **Optimal Distribution of Points on $\mathbb{S}^2$** | *Open*. Minimal logarithmic energy $\min \sum \ln(1/\|x_i-x_j\|)$. Brauchart-Hardin-Saff (2012). | [Preprint](preprints/07-Smale-Sphere-Point-Distribution/) / [`Smale07SphereEnergy.lean`](test_lean/Smale07SphereEnergy.lean) |
| **08** | **Dynamical Systems in Economics** | *Open*. Extended competitive equilibria and price adjustment dynamics (Smale 1976). | *In Progress* |
| **09** | **Strongly Polynomial Linear Programming** | *Open*. Existence of strongly polynomial-time LP algorithms (Tardos, Megiddo). | *In Progress* |
| **10** | **Closing Lemma in Discrete Dynamics** | *Open*. $C^r$ Closing Lemma for diffeomorphisms ($r \ge 2$). Continuous case solved by Charles Pugh (1967). | *In Progress* |
| **11** | **Hyperbolicity of 1D Dynamics** | **Partially Solved**. Solved for real/complex polynomials and $C^2$ unimodal maps (Lyubich, Kozlovski-Shen-van Strien 2007). | *In Progress* |
| **12** | **Centralizers of Diffeomorphisms** | **Solved in $C^1$** by Christian Bonatti, Sylvain Crovisier, and Amie Wilkinson (2009). | *Resolved* |
| **13** | **Hilbert's 16th Problem on Limit Cycles** | *Open*. Uniform bound $H(d)$ on limit cycles of planar polynomial vector fields $\dot{x} = P, \dot{y} = Q$. | *In Progress* |
| **14** | **Lorenz Attractor** | **Solved** by Warwick Tucker (1999–2002) using validated interval arithmetic and normal form theory. | [Preprint](preprints/14-Smale-Lorenz-Attractor/) / [`Smale14LorenzAttractor.lean`](test_lean/Smale14LorenzAttractor.lean) |
| **15** | **Navier-Stokes Smoothness & Stability** | *Open* (Millennium Prize Problem #6). Global existence and regularity. | *In Progress* |
| **16** | **Jacobian Conjecture** | *Open / Active*. Invertibility of polynomial maps with $\det Jac(F) \in \mathbb{C}^*$. | *In Progress* |
| **17** | **Polynomial Solving in Average Polynomial Time** | **Solved** by C. Beltrán & L. M. Pardo (2008), P. Bürgisser & F. Cucker (2011), and P. Lairez (2016). | [Preprint](preprints/17-Smale-Polynomial-Solving/) / [`Smale17PolynomialSolving.lean`](test_lean/Smale17PolynomialSolving.lean) |
| **18** | **Limits of Intelligence & Learning Theory** | *Open*. Foundations of computational learning theory, RKHS optimization, and neural expressivity (Cucker-Smale 2002). | *In Progress* |

---

## 🛠️ Machine-Checked Formal Verification (100% Lean 4)

All Lean 4 formal certificates are located in `test_lean/` and verify under the Lean 4 kernel with **0 `sorry`**, **0 warnings**, and **0 custom unproven axioms**:

```bash
cd test_lean
lake env lean Smale07SphereEnergy.lean
lake env lean Smale14LorenzAttractor.lean
lake env lean Smale17PolynomialSolving.lean
```

---

## 📄 Preprints & Publications

Preprints are written in LaTeX, compiled with `pdflatex`, and packaged with Zenodo metadata:
* **Smale #07**: [`preprints/07-Smale-Sphere-Point-Distribution/`](preprints/07-Smale-Sphere-Point-Distribution/)
* **Smale #14**: [`preprints/14-Smale-Lorenz-Attractor/`](preprints/14-Smale-Lorenz-Attractor/)
* **Smale #17**: [`preprints/17-Smale-Polynomial-Solving/`](preprints/17-Smale-Polynomial-Solving/)
