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

**On the Finiteness of Relative Equilibria in Celestial Mechanics and Smale's 6th Problem: A Detailed Treatise on Central Configurations, Moulton's Collinear Solutions, the Albouy-Kaloshin 5-Body Theorem, and Certified Proofs**

Smale's 6th Problem (Steve Smale, 2000) asks whether the number of relative equilibria (planar central configurations up to rotation and scaling) in the Newtonian N-body problem is finite for any choice of positive point masses. Central configurations govern periodic rigid-body motions and collision singularities. Proved for N=4 by Hampton-Moeckel (2006) and for N=5 by Albouy-Kaloshin (2012), the problem remains fundamentally open for N ≥ 6.

### Key Mathematical Results & Contributions:
- **Central Configuration Geometry:** Foundational equations of planar relative equilibria and mutual distance coordinate reduction.
- **Classical Classifications:** Exact derivations of Euler's 3 collinear configurations, Lagrange's equilateral triangle ($L_4, L_5$), and Moulton's $N!/2$ collinear central configurations.
- **Albouy-Kaloshin Theorem (2012):** Deep pedagogical exposition of the algebraic geometry architecture proving finiteness for $N=5$ with generic masses.
- **100% Machine-Checked Verification in Lean 4:** Moulton's permutation counts $N!/2$ for $N=3, 4, 5$, Lagrange frequency-distance balance $\omega^2 d^3 = M$, and barycenter identities are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale06CelestialEquilibria.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale06CelestialEquilibria.lean)).

* **MSC (2020)**: 70F10, 70F15, 37N05, 68V20, 14Q15
* **Keywords**: Smale's 6th Problem, Celestial Mechanics, N-Body Problem, Central Configurations, Relative Equilibria, Moulton's Theorem, Albouy-Kaloshin Theorem, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
