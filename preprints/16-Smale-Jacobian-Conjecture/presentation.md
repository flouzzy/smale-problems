# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On the Jacobian Conjecture and the Nilpotent Tree Inversion of Keller Mappings`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-19` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Wright Tree Inversion, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `14R15, 14E07, 16S32, 68V20, 13B25, 05C05`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On the Jacobian Conjecture and the Nilpotent Tree Inversion of Keller Mappings: An Extensive Treatise on Polynomial Automorphisms, Cubic Reductions, Drużkowski Matrices, the Dixmier Equivalence, and Certified Proofs</strong></p>

<p>Smale's 16th Problem (Steve Smale, 2000) features the celebrated Jacobian Conjecture (Ott-Heinrich Keller, 1939): if a polynomial mapping $F = (F_1, \dots, F_n): \mathbb{C}^n \to \mathbb{C}^n$ has a non-zero constant Jacobian determinant $\det \operatorname{Jac}(F)(x) \in \mathbb{C}^*$ for all $x \in \mathbb{C}^n$, is $F$ a polynomial automorphism of $\mathbb{C}^n$ (i.e. bijective with polynomial inverse)?</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Bia\l ynicki-Birula &amp; Rosenlicht Criterion:</strong> Full axiomatic reduction proving that polynomial injectivity on $\mathbb{C}^n$ implies polynomial surjectivity and polynomial bijectivity (automorphism).</li>
  <li><strong>Dimension 1 and Real Pinchuk Analysis:</strong> Complete step-by-step proof in dimension 1 ($F(x) = ax + b$), and detailed structural analysis of Pinchuk's non-injective counterexample in $\mathbb{R}^2$ ($\deg P = 10, \deg Q = 25$).</li>
  <li><strong>Bass-Connell-Wright &amp; Yagzhev Cubic Reduction:</strong> Non-elliptical proof that the Jacobian Conjecture in all dimensions reduces to cubic homogeneous mappings $F(x) = x - H(x)$ where $\operatorname{Jac}(H)$ is nilpotent for all $x$.</li>
  <li><strong>Drużkowski Factorization &amp; Jordan Blocks:</strong> Matrix characterization $H(x) = (Ax)^{*3}$ and nilpotency of $J(x) = 3 \operatorname{diag}((Ax)^{*2}) A$.</li>
  <li><strong>Wright Tree Inversion Formula:</strong> Full combinatorial derivation of the formal inverse $F^{-1}(y) = \sum_{k=0}^\infty G_k(y)$ where $G_k(y) = \sum_{T \in \mathcal{T}_k} \frac{1}{|\operatorname{Aut}(T)|} \mathcal{D}_T(H)(y)$ with degree $1 + 2k$.</li>
  <li><strong>Nilpotent Annihilation &amp; Low-Dimension Closed Forms:</strong> Proof that nilpotency of index $r$ annihilates tree paths of length $\ge r$, providing explicit closed-form polynomial inverses for dimensions $n=2$ ($F^{-1}(y) = y + H(y)$) and $n=3$ (degree at most 7).</li>
  <li><strong>Kontsevich--Belov-Kanel Equivalence:</strong> In-depth structural review of the stable equivalence $\mathrm{JC}_{2n} \iff \mathrm{DC}_n$ with the Dixmier Conjecture on the $n$-th Weyl algebra $A_n(\mathbb{C})$.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Dimension 1 affine bilateral invertibility, truncated Neumann polynomial inversion operators for nilpotent indices 2, 3, 4, 5, matrix trace identities, and tree growth relations are machine-certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale16JacobianConjecture.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 14R15, 14E07, 16S32, 68V20, 13B25, 05C05<br />
<strong>Keywords:</strong> Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Wright Tree Inversion, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On the Jacobian Conjecture and the Nilpotent Tree Inversion of Keller Mappings: An Extensive Treatise on Polynomial Automorphisms, Cubic Reductions, Drużkowski Matrices, the Dixmier Equivalence, and Certified Proofs**

Smale's 16th Problem (Steve Smale, 2000) asks whether polynomial maps with constant non-zero Jacobian determinant are polynomial automorphisms.

### Key Mathematical Results & Contributions:
- **Bia\l ynicki-Birula & Rosenlicht (1962):** Equivalence between injectivity and polynomial bijectivity.
- **Dimension 1 & Pinchuk:** Proof for $n=1$, analysis of Pinchuk's non-injective counterexample in $\mathbb{R}^2$.
- **Bass-Connell-Wright & Yagzhev (1982):** Equivalence to cubic-homogeneous maps $F(x) = x - H(x)$ with nilpotent Jacobian.
- **Drużkowski Form (1983):** Matrix reduction $H(x) = (Ax)^{*3}$.
- **Wright Tree Inversion (1982):** Combinatorial formula $G_k(y) = \sum_{T \in \mathcal{T}_k} \frac{1}{|\operatorname{Aut}(T)|} \mathcal{D}_T(H)(y)$ of degree $1 + 2k$.
- **Nilpotent Annihilation:** Closed-form inverses in $n=2$ ($F^{-1}(y) = y + H(y)$) and $n=3$ (degree $\le 7$).
- **Kontsevich--Belov-Kanel (2005):** Stable equivalence $\mathrm{JC}_{2n} \iff \mathrm{DC}_n$ with the Dixmier Conjecture for Weyl algebras $A_n(\mathbb{C})$.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale16JacobianConjecture.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale16JacobianConjecture.lean)).

* **MSC (2020)**: 14R15, 14E07, 16S32, 68V20, 13B25, 05C05
* **Keywords**: Smale's 16th Problem, Jacobian Conjecture, Keller Mappings, Polynomial Automorphisms, Bass-Connell-Wright Reduction, Druzkowski Form, Wright Tree Inversion, Dixmier Conjecture, Weyl Algebras, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
