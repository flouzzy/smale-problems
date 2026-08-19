# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On Strongly Polynomial Bounds in Linear Programming and Smale's 9th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 9th Problem, Linear Programming, Strongly Polynomial Complexity, Weakly Polynomial, Tardos' Theorem, Interior-Point Methods, Central Path, Vavasis-Ye Algorithm, Duality Gap, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `90C05, 68Q25, 90C51, 68V20, 15A15, 52B12`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On Strongly Polynomial Bounds in Linear Programming and Smale's 9th Problem: An Extensive Treatise on Combinatorial Matrix Scaling, Tardos' Theorem, Interior-Point Trajectories, and Certified Proofs</strong></p>

<p>Smale's 9th Problem (Steve Smale, 2000) asks: Does there exist a strongly polynomial-time algorithm for linear programming? While Khachiyan (1979) and Karmarkar (1984) established that linear programming (LP) is weakly polynomial, whether LP admits a strongly polynomial algorithm is a major open problem in computer science and optimization.</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Duality Gap Identity & Complementary Slackness:</strong> Exact algebraic derivation of $\langle c, x \rangle - \langle b, y \rangle = \langle c - A^T y, x \rangle = \langle s, x \rangle \ge 0$, establishing the strict equivalence between zero duality gap and complementary slackness ($s_j x_j = 0$).</li>
  <li><strong>Éva Tardos' Theorem (1986):</strong> Complete step-by-step non-elliptical proof that linear programs with bounded constraint subdeterminants $\Delta(A) = \max_B |\det(A_B)|$ are solvable in strongly polynomial time $O(\operatorname{poly}(m, n, \log \Delta))$, completely independent of the bit-lengths of $b$ and $c$.</li>
  <li><strong>Megiddo's Fixed-Dimension Complexity:</strong> Detailed analysis of prune-and-search algorithms running in $O(2^{2^d} n)$ for fixed dimension $d$.</li>
  <li><strong>Vavasis-Ye Layered Least-Squares (LLS) Method (1996):</strong> Rigorous formulation of interior-point central path dynamics and convergence in $O(n^{3.5} \log(\bar{\chi}(A) + n))$ iterations depending solely on the matrix condition measure $\bar{\chi}(A)$.</li>
  <li><strong>Tropical Geometry Curvature Barriers:</strong> Review of Allamigeon, Benchimol, Gaubert, and Kovalenko's 2018 theorem proving exponential central path curvature $\Omega(2^r)$ for log-barrier interior-point methods.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Duality gap identity, weak duality inequality, strong duality complementary slackness, unimodular integer basis inversion, and geometric barrier contraction are formally certified in Lean 4 (via Mathlib) with 0 axioms, 0 linter warnings, and 0 sorry placeholders.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale09LinearProgramming.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 90C05, 68Q25, 90C51, 68V20, 15A15, 52B12<br />
<strong>Keywords:</strong> Smale's 9th Problem, Linear Programming, Strongly Polynomial Complexity, Weakly Polynomial, Tardos' Theorem, Interior-Point Methods, Central Path, Vavasis-Ye Algorithm, Duality Gap, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On Strongly Polynomial Bounds in Linear Programming and Smale's 9th Problem: An Extensive Treatise on Combinatorial Matrix Scaling, Tardos' Theorem, Interior-Point Trajectories, and Certified Proofs**

Smale's 9th Problem (Steve Smale, 2000) asks: Does there exist a strongly polynomial-time algorithm for linear programming? While Khachiyan (1979) and Karmarkar (1984) established that linear programming (LP) is weakly polynomial, whether LP admits a strongly polynomial algorithm is a major open problem in computer science and optimization.

### Key Mathematical Results & Contributions:
- **Duality Gap Identity & Complementary Slackness:** Exact algebraic derivation of $\langle c, x \rangle - \langle b, y \rangle = \langle c - A^T y, x \rangle = \langle s, x \rangle \ge 0$, establishing the strict equivalence between zero duality gap and complementary slackness ($s_j x_j = 0$).
- **Éva Tardos' Theorem (1986):** Complete step-by-step non-elliptical proof that linear programs with bounded constraint subdeterminants $\Delta(A) = \max_B |\det(A_B)|$ are solvable in strongly polynomial time $O(\operatorname{poly}(m, n, \log \Delta))$, completely independent of the bit-lengths of $b$ and $c$.
- **Megiddo's Fixed-Dimension Complexity:** Detailed analysis of prune-and-search algorithms running in $O(2^{2^d} n)$ for fixed dimension $d$.
- **Vavasis-Ye Layered Least-Squares (LLS) Method (1996):** Rigorous formulation of interior-point central path dynamics and convergence in $O(n^{3.5} \log(\bar{\chi}(A) + n))$ iterations depending solely on the matrix condition measure $\bar{\chi}(A)$.
- **Tropical Geometry Curvature Barriers:** Review of Allamigeon, Benchimol, Gaubert, and Kovalenko's 2018 theorem proving exponential central path curvature $\Omega(2^r)$ for log-barrier interior-point methods.
- **100% Machine-Checked Verification in Lean 4:** Duality gap identity, weak duality inequality, strong duality complementary slackness, unimodular integer basis inversion, and geometric barrier contraction are formally certified in Lean 4 (via Mathlib) with 0 axioms, 0 linter warnings, and 0 sorry placeholders.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale09LinearProgramming.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale09LinearProgramming.lean)).

* **MSC (2020)**: 90C05, 68Q25, 90C51, 68V20, 15A15, 52B12
* **Keywords**: Smale's 9th Problem, Linear Programming, Strongly Polynomial Complexity, Weakly Polynomial, Tardos' Theorem, Interior-Point Methods, Central Path, Vavasis-Ye Algorithm, Duality Gap, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
