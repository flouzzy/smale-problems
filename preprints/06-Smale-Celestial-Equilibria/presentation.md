# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On the Finiteness of Relative Equilibria in Celestial Mechanics and Smale's 6th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 6th Problem, Celestial Mechanics, N-Body Problem, Central Configurations, Relative Equilibria, Moulton's Theorem, Albouy-Kaloshin Theorem, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `70F10, 70F15, 37N05, 68V20, 14Q15`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On the Finiteness of Relative Equilibria in Celestial Mechanics and Smale's 6th Problem: A Detailed Treatise on Central Configurations, Moulton's Collinear Solutions, the Albouy-Kaloshin 5-Body Theorem, and Certified Proofs</strong></p>

<p>Smale's 6th Problem (Steve Smale, 2000) asks whether the number of relative equilibria (planar central configurations up to rotation and scaling) in the Newtonian N-body problem is finite for any choice of positive point masses. Central configurations govern periodic rigid-body motions and collision singularities. Proved for N=4 by Hampton-Moeckel (2006) and for N=5 by Albouy-Kaloshin (2012), the problem remains fundamentally open for N ≥ 6.</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Central Configuration Geometry:</strong> Foundational equations of planar relative equilibria and mutual distance coordinate reduction.</li>
  <li><strong>Classical Classifications:</strong> Exact derivations of Euler's 3 collinear configurations, Lagrange's equilateral triangle ($L_4, L_5$), and Moulton's $N!/2$ collinear central configurations.</li>
  <li><strong>Albouy-Kaloshin Theorem (2012):</strong> Deep pedagogical exposition of the algebraic geometry architecture proving finiteness for $N=5$ with generic masses.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Moulton's permutation counts $N!/2$ for $N=3, 4, 5$, Lagrange frequency-distance balance $\omega^2 d^3 = M$, and barycenter identities are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale06CelestialEquilibria.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 70F10, 70F15, 37N05, 68V20, 14Q15<br />
<strong>Keywords:</strong> Smale's 6th Problem, Celestial Mechanics, N-Body Problem, Central Configurations, Relative Equilibria, Moulton's Theorem, Albouy-Kaloshin Theorem, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On the Finiteness of Relative Equilibria in Celestial Mechanics and Smale's 6th Problem: An Extensive Treatise on Central Configurations, Moulton's Collinear Solutions, Dziobek--Albouy Distance Relations, the Albouy--Kaloshin 5-Body Theorem, and Certified Proofs**

Smale's 6th Problem (Steve Smale, 2000) asks whether the number of relative equilibria (planar central configurations up to Euclidean motions, rotations, and scalings) in the Newtonian $N$-body problem is finite for any given set of positive point masses $(m_1, \dots, m_N) \in (\mathbb{R}_+^*)^N$. Central configurations form the geometric backbone of celestial mechanics, generating all homographic and rigidly rotating periodic solutions, and characterizing the asymptotic shape of total collision and parabolic escape singularities.

While the collinear problem was completely classified by F. R. Moulton in 1910 ($N! / 2$ solutions) and the 4-body case proved finite by M. Hampton and R. Moeckel in 2006, the general planar problem remained open until A. Albouy and V. Kaloshin proved finiteness for $N=5$ (for generic masses) in their landmark 2012 *Annals of Mathematics* paper. The problem remains fundamentally open for $N \ge 6$.

In this monograph, we present an exhaustive, non-elliptical mathematical treatise on Smale's 6th problem, exploring variational characterizations, Moulton's theorem, Dziobek--Albouy mutual distance equations, BKK polyhedral bounds, and Saari's constant moment of inertia conjecture. All structural theorems are machine-checked in Lean 4 with 0 axioms and 0 `sorry` placeholders.

### Key Mathematical Results / Résultats Majeurs
* **Variational Formulation & Virial Balance:** Rigorous derivation of central configurations as critical points of potential energy $U(q)$ on the moment of inertia ellipsoid $I(q) = 1$, establishing $\lambda = U(q) / (2 I(q)) > 0$.
* **Moulton's Collinear Theorem:** Complete classification proving strictly $N! / 2$ distinct collinear central configurations for any $N$ masses via strict monotonicity and diagonal dominance of the Dziobek Jacobian.
* **Dziobek--Albouy Mutual Distance Relations:** Explicit formulation on the Cayley--Menger determinant variety and 4-body convex/concave topology classifications.
* **Albouy--Kaloshin 5-Body Theorem:** Structural analysis of Bernstein-Khovanskii-Kushnirenko (BKK) toric bounds and the elimination of 1-dimensional continuum branches for generic masses.
* **Saari's Constant Inertia Conjecture:** Exact differential derivation $\ddot{I}(q) = 2T - U = 0$ establishing rigid homographic rotation for collision-free constant-inertia motions.
* **100% Machine-Checked Verification in Lean 4:** Certified proofs for Moulton's factorial counts ($3!/2 = 3, 4!/2 = 12, 5!/2 = 60$), Lagrange frequency-distance balance ($\omega^2 d^3 = M$), total mass positivity, virial multiplier positivity ($\lambda > 0$), and Saari's inertia derivative balance in Lean 4 via Mathlib.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale06CelestialEquilibria.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale06CelestialEquilibria.lean)).

* **MSC (2020)**: 70F10, 70F15, 37N05, 68V20, 14Q15
* **Keywords**: Smale's 6th Problem, Celestial Mechanics, N-Body Problem, Central Configurations, Relative Equilibria, Moulton's Theorem, Albouy-Kaloshin Theorem, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
