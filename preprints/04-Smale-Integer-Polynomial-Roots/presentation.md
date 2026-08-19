# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On the Number of Integer Zeros of a Polynomial and Smale's 4th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 4th Problem, Integer Zeros, Straight-Line Program, Arithmetic Complexity, Koiran's tau-Conjecture, VP vs VNP, Descartes' Rule of Signs, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `68Q17, 12D10, 11C08, 68V20, 14Q05`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On the Number of Integer Zeros of a Polynomial and Smale's 4th Problem: A Detailed Treatise on Straight-Line Arithmetic Complexity, Descartes' Sparse Bounds, Koiran's tau-Conjecture, and Certified Proofs</strong></p>

<p>Smale's 4th Problem (Steve Smale, 2000) asks whether the number of integer zeros Z(f) of a univariate polynomial f ∈ ℤ[x] computed by a straight-line program with k operations in {+, -, ×} can be bounded by a polynomial in k. In 2011, Pascal Koiran connected this problem to the core of algebraic complexity theory by showing that the real tau-conjecture implies VP ≠ VNP.</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Arithmetic Complexity Framework:</strong> Formal definition of straight-line programs (SLP) $\tau(f)$ and contrast between exponential degree growth $2^k$ and sparse root counts.</li>
  <li><strong>Descartes and Lenstra Sparse Bounds:</strong> Rigorous review of Descartes' rule of signs ($2t-1$) and Lenstra's theorem on rational roots of $t$-sparse polynomials ($O(t^2 \log t)$).</li>
  <li><strong>Koiran's $\tau$-Conjecture and Separation:</strong> Complete pedagogical proof structure connecting real root bounds to Valiant's $\text{VP} \ne \text{VNP}$ barrier.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Monomial and linear root uniqueness, and straight-line power root identities ($x^{2^k}-1$) are certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale04IntegerRoots.lean</code>).</p>

<p><strong>Repository:</strong> <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a></p>
```

---

## 4. Description au Format Markdown Brut

## On the Number of Integer Zeros of Straight-Line Polynomials and Smale's 4th Problem

## Title / Titre
**On the Number of Integer Zeros of Straight-Line Polynomials and Smale's 4th Problem: An Extensive Treatise on Straight-Line Arithmetic Complexity, Descartes' Sparse Bounds, the Shub--Smale $\tau$-Conjecture, Koiran's $\mathrm{VP} \ne \mathrm{VNP}$ Bridge, and Certified Proofs**

## Abstract
Smale's 4th Problem (Steve Smale, 2000) asks whether the number of integer zeros $Z(f)$ of a univariate polynomial $f \in \mathbb{Z}[x]$ computed by a straight-line program of length $k$ using operations in $\{+, -, \times\}$ can be bounded by a polynomial in $k$. While the algebraic degree of $f$ can grow double-exponentially to $2^k$, its real and integer root sets often remain remarkably small.

In this monograph, we establish an exhaustive, pedagogical, and non-elliptical exposition of the algebraic, combinatorial, and complexity-theoretic foundations of Smale's 4th problem. We prove Descartes' Rule of Signs via Rolle's theorem induction, analyze Khovanskii's fewnomials and Lenstra's $O(t^2 \log t)$ rational root bound, connect integer root bounds to the Shub-Smale $\tau$-conjecture ($\text{P}_{\mathbb{C}} \ne \text{NP}_{\mathbb{C}}$), and present Koiran's reduction to Valiant's landmark algebraic separation $\mathrm{VP} \ne \mathrm{VNP}$. All fundamental algebraic invariants are certified in Lean 4 with 0 axioms and 0 `sorry` placeholders.

## Key Mathematical Results / Résultats Majeurs
* **Arithmetic Circuit Geometry & Degree Bounds:** Formal derivation of DAG representations and double-exponential degree growth $\deg(g_k) \le 2^{k-2}$.
* **Descartes' Rule of Signs & Inductive Rolle Proof:** Non-elliptical inductive proof that $Z_+(f) \le v(c)$ with parity $v(c) - Z_+(f) \equiv 0 \pmod 2$.
* **Fewnomial Theory & Lenstra's Rational Root Theorem:** Presentation of Khovanskii's bound $2^{\binom{k}{2}}(n+1)^k$ and Lenstra's $O(t^2 \log t)$ bound for $t$-sparse polynomials.
* **Shub-Smale $\tau$-Conjecture & BSS Complexity:** Exact structural derivation of the bridge $\tau(f) \ge (\log m)^c \implies \text{P}_{\mathbb{C}} \ne \text{NP}_{\mathbb{C}}$.
* **Koiran's Real $\tau$-Conjecture & Valiant's $\mathrm{VP} \ne \mathrm{VNP}$:** Detailed reduction via depth-4 arithmetic circuits $\Sigma \Pi \Sigma \Pi$ establishing that real root bounds on sums of products of sparse polynomials imply the hardness of the Permanent.
* **100% Machine-Checked Verification in Lean 4:** Certified proofs for monomial zero uniqueness, linear root uniqueness, power-of-two degree root parity, real power injectivity, repeated squaring degree growth, and circuit degree dominance via Lean 4 and Mathlib.
* **Repository**: https://github.com/flouzzy/smale-problems
