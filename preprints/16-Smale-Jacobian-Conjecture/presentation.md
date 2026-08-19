# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On the Jacobian Conjecture and Smale's 16th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `14R15, 14E07, 16S32, 68V20, 13B25`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On the Jacobian Conjecture and Smale's 16th Problem: A Detailed Treatise on Polynomial Automorphisms, Nilpotent Reductions, the Dixmier Equivalence, and Certified Proofs</strong></p>

<p>Smale's 16th Problem (Steve Smale, 2000) features the celebrated Jacobian Conjecture (Ott-Heinrich Keller, 1939): if a polynomial mapping F = (F_1, ..., F_n): ℂ^n → ℂ^n has a non-zero constant Jacobian determinant det Jac(F)(x) ∈ ℂ^* for all x ∈ ℂ^n, is F a polynomial automorphism of ℂ^n (i.e. bijective with polynomial inverse)?</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Keller Maps and Low-Dimension Classification:</strong> Full non-elliptical proof that all dimension 1 Keller maps are affine linear automorphisms $F(x) = ax + b$ with exact polynomial inverse $G(y) = a^{-1}y - a^{-1}b$. Analysis of Pinchuk's counterexample to the Real Jacobian Conjecture.</li>
  <li><strong>Bass-Connell-Wright & Yagzhev Cubic Reduction:</strong> Non-elliptical reduction theorem showing that the Jacobian Conjecture in all dimensions is equivalent to cubic homogeneous maps $F(x) = x - H(x)$ with nilpotent Jacobian matrix.</li>
  <li><strong>Operator Inversion & Drużkowski Form:</strong> Explicit Neumann series inverses for nilpotent indices 2 and 3, and factorization into cubic-linear maps $(Ax)^{*3}$.</li>
  <li><strong>Kontsevich--Belov-Kanel Equivalence:</strong> Detailed pedagogical review of the stable equivalence between the Jacobian Conjecture in dimension $2n$ and the Dixmier Conjecture on the $n$-th Weyl algebra $A_n(\mathbb{C})$.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Dimension 1 affine bilateral invertibility, ring-theoretic nilpotent operator inversion identities for indices 2 and 3, and matrix trace identities are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale16JacobianConjecture.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 14R15, 14E07, 16S32, 68V20, 13B25<br />
<strong>Keywords:</strong> Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On the Jacobian Conjecture and Smale's 16th Problem: A Detailed Treatise on Polynomial Automorphisms, Nilpotent Reductions, the Dixmier Equivalence, and Certified Proofs**

Smale's 16th Problem (Steve Smale, 2000) features the celebrated Jacobian Conjecture (Ott-Heinrich Keller, 1939): if a polynomial mapping F = (F_1, ..., F_n): ℂ^n → ℂ^n has a non-zero constant Jacobian determinant det Jac(F)(x) ∈ ℂ^* for all x ∈ ℂ^n, is F a polynomial automorphism of ℂ^n (i.e. bijective with polynomial inverse)?

### Key Mathematical Results & Contributions:
- **Keller Maps and Low-Dimension Classification:** Full non-elliptical proof that all dimension 1 Keller maps are affine linear automorphisms $F(x) = ax + b$ with exact polynomial inverse $G(y) = a^{-1}y - a^{-1}b$. Analysis of Pinchuk's counterexample to the Real Jacobian Conjecture.
- **Bass-Connell-Wright & Yagzhev Cubic Reduction:** Non-elliptical reduction theorem showing that the Jacobian Conjecture in all dimensions is equivalent to cubic homogeneous maps $F(x) = x - H(x)$ with nilpotent Jacobian matrix.
- **Operator Inversion & Drużkowski Form:** Explicit Neumann series inverses for nilpotent indices 2 and 3, and factorization into cubic-linear maps $(Ax)^{*3}$.
- **Kontsevich--Belov-Kanel Equivalence:** Detailed pedagogical review of the stable equivalence between the Jacobian Conjecture in dimension $2n$ and the Dixmier Conjecture on the $n$-th Weyl algebra $A_n(\mathbb{C})$.
- **100% Machine-Checked Verification in Lean 4:** Dimension 1 affine bilateral invertibility, ring-theoretic nilpotent operator inversion identities for indices 2 and 3, and matrix trace identities are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale16JacobianConjecture.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale16JacobianConjecture.lean)).

* **MSC (2020)**: 14R15, 14E07, 16S32, 68V20, 13B25
* **Keywords**: Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
