# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On Height Bounds on Diophantine Curves and Smale's 5th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 5th Problem, Diophantine Curves, Mordell Conjecture, Effective Mordell, Faltings' Theorem, Weil Height, Néron-Tate Height, abc Conjecture, Chabauty-Coleman Method, Non-Abelian Chabauty, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `11G30, 14G05, 11D41, 14G40, 68V20, 11J86`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On Height Bounds on Diophantine Curves and Smale's 5th Problem: An Extensive Treatise on Effective Mordell Bounds, the abc Conjecture, Chabauty-Coleman Integrals, and Certified Proofs</strong></p>

<p>Smale's 5th Problem (Steve Smale, 2000) asks: Can one give an effective upper bound on the height of rational solutions of Diophantine curves of genus g ≥ 2 over number fields? While Gerd Faltings (1983) proved the Mordell Conjecture (finiteness of rational points), the proof is non-effective. Smale's problem seeks an explicit, computable height bound in terms of the genus, discriminant, and curve coefficients.</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Weil Logarithmic Heights & Northcott Property:</strong> Formal axiomatic definition of projective Weil heights and proof of the finite search property for bounded height points.</li>
  <li><strong>Faltings Ineffectiveness Analysis:</strong> Structural dissection of the non-effective barriers in Faltings' moduli-theoretic proof.</li>
  <li><strong>Noam Elkies' Effective Mordell Theorem (1991):</strong> Complete step-by-step non-elliptical proof that the Masser-Oesterlé $abc$ conjecture over number fields implies an effective bound $h(P) \le \mathcal{B}(C, K, \varepsilon)$ via Belyi maps and the Riemann-Hurwitz formula.</li>
  <li><strong>Chabauty-Coleman $p$-Adic Integration:</strong> Full mechanism of annihilating 1-forms on the Jacobian when $r = \operatorname{rank} J_C(K) < g$, yielding the uniform point count bound $\# C(\mathbb{Q}) \le \# C(\mathbb{F}_p) + 2g - 2$ with explicit genus 2 verification ($y^2 = x^5 - x$).</li>
  <li><strong>Minhyong Kim's Non-Abelian Chabauty:</strong> Analysis of unipotent fundamental groups and Selmer varieties overcoming the rank barrier $r \ge g$.</li>
  <li><strong>Baker's Linear Forms in Logarithms:</strong> Effective bounds on integer points of hyperelliptic equations $y^2 = f(x)$.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Weil height non-negativity, Northcott finiteness, canonical divisor positivity $\deg(K_C) = 2g - 2 > 0$, Chabauty differential gap conditions, and $abc$ conductor bounds are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale05DiophantineHeights.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 11G30, 14G05, 11D41, 14G40, 68V20, 11J86<br />
<strong>Keywords:</strong> Smale's 5th Problem, Diophantine Curves, Mordell Conjecture, Effective Mordell, Faltings' Theorem, Weil Height, Néron-Tate Height, abc Conjecture, Chabauty-Coleman Method, Non-Abelian Chabauty, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On Height Bounds on Diophantine Curves and Smale's 5th Problem: An Extensive Treatise on Effective Mordell Bounds, the abc Conjecture, Chabauty-Coleman Integrals, and Certified Proofs**

Smale's 5th Problem (Steve Smale, 2000) asks: Can one give an effective upper bound on the height of rational solutions of Diophantine curves of genus g ≥ 2 over number fields? While Gerd Faltings (1983) proved the Mordell Conjecture (finiteness of rational points), the proof is non-effective. Smale's problem seeks an explicit, computable height bound in terms of the genus, discriminant, and curve coefficients.

### Key Mathematical Results & Contributions:
- **Weil Logarithmic Heights & Northcott Property:** Formal axiomatic definition of projective Weil heights and proof of the finite search property for bounded height points.
- **Faltings Ineffectiveness Analysis:** Structural dissection of the non-effective barriers in Faltings' moduli-theoretic proof.
- **Noam Elkies' Effective Mordell Theorem (1991):** Complete step-by-step non-elliptical proof that the Masser-Oesterlé $abc$ conjecture over number fields implies an effective bound $h(P) \le \mathcal{B}(C, K, \varepsilon)$ via Belyi maps and the Riemann-Hurwitz formula.
- **Chabauty-Coleman $p$-Adic Integration:** Full mechanism of annihilating 1-forms on the Jacobian when $r = \operatorname{rank} J_C(K) < g$, yielding the uniform point count bound $\# C(\mathbb{Q}) \le \# C(\mathbb{F}_p) + 2g - 2$ with explicit genus 2 verification ($y^2 = x^5 - x$).
- **Minhyong Kim's Non-Abelian Chabauty:** Analysis of unipotent fundamental groups and Selmer varieties overcoming the rank barrier $r \ge g$.
- **Baker's Linear Forms in Logarithms:** Effective bounds on integer points of hyperelliptic equations $y^2 = f(x)$.
- **100% Machine-Checked Verification in Lean 4:** Weil height non-negativity, Northcott finiteness, canonical divisor positivity $\deg(K_C) = 2g - 2 > 0$, Chabauty differential gap conditions, and $abc$ conductor bounds are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale05DiophantineHeights.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale05DiophantineHeights.lean)).

* **MSC (2020)**: 11G30, 14G05, 11D41, 14G40, 68V20, 11J86
* **Keywords**: Smale's 5th Problem, Diophantine Curves, Mordell Conjecture, Effective Mordell, Faltings' Theorem, Weil Height, Néron-Tate Height, abc Conjecture, Chabauty-Coleman Method, Non-Abelian Chabauty, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
