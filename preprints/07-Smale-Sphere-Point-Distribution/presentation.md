# Metadata & Contenu de Présentation pour Zenodo

> **Instructions de Dépôt Zenodo** :
> Copiez-collez les champs ci-dessous directement dans le formulaire de soumission sur [Zenodo.org](https://zenodo.org/deposit/new).

---

## 1. Titre & Auteur
* **Title** : `On the Minimal Logarithmic Energy on the 2-Sphere and Smale's 7th Problem`
* **Authors / Creators** : `EDOU NZE, Charles`
  * *Affiliation* : Independent Researcher
  * *Email* : `charles@edounze.com`
* **Publication Date** : `2026-08-18` (ou date du jour)
* **Resource Type** : `Publication` -> `Preprint`
* **License** : `Creative Commons Attribution 4.0 International (CC-BY-4.0)`

---

## 2. Métadonnées Thématiques
* **Keywords** : `Smale's 7th Problem, Thomson Problem, Logarithmic Energy, Spherical Potential Theory, Platonic Solids, Asymptotics, Formal Verification, Lean 4, Mathlib`
* **Subjects / MSC Classification (2020)** : `31C12, 52A40, 68W25, 68V20, 41A60`
* **Related Identifiers (GitHub)** :
  * *Identifier* : `https://github.com/flouzzy/smale-problems`
  * *Relation* : `isSupplementTo` / `isSupplementedBy`

---

## 3. Description HTML Brute (à coller dans l'éditeur HTML de Zenodo)

```html
<p><strong>On the Minimal Logarithmic Energy on the 2-Sphere and Smale's 7th Problem: A Detailed Treatise on the Thomson Problem, Platonic Polyhedral Configurations, Asymptotic Expansions, and Certified Proofs</strong></p>

<p>Smale's 7th Problem (Steve Smale, 2000) asks for a polynomial-time algorithm to produce configurations of N points x_1, ..., x_N on the unit 2-sphere S^2 = {x ∈ ℝ^3 | ||x|| = 1} whose logarithmic interaction energy: E(x_1, ..., x_N) := ∑_{1 ≤ i < j ≤ N} ln(1 / ||x_i - x_j||) satisfies E(x_1, ..., x_N) - min E_N ≤ c ln N for a universal constant c > 0. This problem is intimately connected to the classical Thomson problem in mathematical physics, polynomial conditioning, and spherical designs.</p>

<hr />

<h3>Key Mathematical Results &amp; Contributions</h3>

<ul>
  <li><strong>Continuous & Discrete Potential Theory on $\mathbb{S}^2$:</strong> Rigorous definition of the logarithmic energy functional and its equilibrium measure.</li>
  <li><strong>Exact Energies of Platonic Configurations:</strong> Explicit calculations of pairwise distances and logarithmic energies for $N=2$ (antipodal), $N=3$ (equilateral), $N=4$ (regular tetrahedron), and $N=6$ (regular octahedron).</li>
  <li><strong>Asymptotic Expansion of Minimal Energy:</strong> Deep pedagogical review of the Brauchart-Hardin-Saff (2012) asymptotic formula $\min E_N = \frac{1}{2} N^2 (1 - \ln 2) - \frac{1}{2} N \ln N + C_{\mathbb{S}^2} N + o(N)$.</li>
  <li><strong>100% Machine-Checked Verification in Lean 4:</strong> Distance metric identities on $\mathbb{S}^2$, Platonic squared distances, and combinatorial pair counts $\binom{N}{2}$ are machine-certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.</li>
</ul>

<hr />

<h3>Repository and Verification Artifacts</h3>
<p>The companion machine-checked code and formal verification artifacts are publicly hosted on GitHub: <a href="https://github.com/flouzzy/smale-problems" target="_blank" rel="noopener noreferrer">https://github.com/flouzzy/smale-problems</a> (see <code>test_lean/Smale07SphereEnergy.lean</code>).</p>

<p><strong>Primary MSC (2020):</strong> 31C12, 52A40, 68W25, 68V20, 41A60<br />
<strong>Keywords:</strong> Smale's 7th Problem, Thomson Problem, Logarithmic Energy, Spherical Potential Theory, Platonic Solids, Asymptotics, Formal Verification, Lean 4, Mathlib</p>
```

---

## 4. Description au Format Markdown Brut

**On the Minimal Logarithmic Energy on the 2-Sphere and Smale's 7th Problem: A Detailed Treatise on the Thomson Problem, Platonic Polyhedral Configurations, Asymptotic Expansions, and Certified Proofs**

Smale's 7th Problem (Steve Smale, 2000) asks for a polynomial-time algorithm to produce configurations of N points x_1, ..., x_N on the unit 2-sphere S^2 = {x ∈ ℝ^3 | ||x|| = 1} whose logarithmic interaction energy: E(x_1, ..., x_N) := ∑_{1 ≤ i < j ≤ N} ln(1 / ||x_i - x_j||) satisfies E(x_1, ..., x_N) - min E_N ≤ c ln N for a universal constant c > 0. This problem is intimately connected to the classical Thomson problem in mathematical physics, polynomial conditioning, and spherical designs.

### Key Mathematical Results & Contributions:
- **Continuous & Discrete Potential Theory on $\mathbb{S}^2$:** Rigorous definition of the logarithmic energy functional and its equilibrium measure.
- **Exact Energies of Platonic Configurations:** Explicit calculations of pairwise distances and logarithmic energies for $N=2$ (antipodal), $N=3$ (equilateral), $N=4$ (regular tetrahedron), and $N=6$ (regular octahedron).
- **Asymptotic Expansion of Minimal Energy:** Deep pedagogical review of the Brauchart-Hardin-Saff (2012) asymptotic formula $\min E_N = \frac{1}{2} N^2 (1 - \ln 2) - \frac{1}{2} N \ln N + C_{\mathbb{S}^2} N + o(N)$.
- **100% Machine-Checked Verification in Lean 4:** Distance metric identities on $\mathbb{S}^2$, Platonic squared distances, and combinatorial pair counts $\binom{N}{2}$ are machine-certified with 0 axioms, 0 linter warnings, and 0 sorry placeholders via Lean 4 and Mathlib.

### Formal Verification:
Machine-checked with **0 axioms**, **0 linter warnings**, and **0 `sorry` placeholders** in Lean 4 via `Mathlib` (see [`test_lean/Smale07SphereEnergy.lean`](https://github.com/flouzzy/smale-problems/blob/main/test_lean/Smale07SphereEnergy.lean)).

* **MSC (2020)**: 31C12, 52A40, 68W25, 68V20, 41A60
* **Keywords**: Smale's 7th Problem, Thomson Problem, Logarithmic Energy, Spherical Potential Theory, Platonic Solids, Asymptotics, Formal Verification, Lean 4, Mathlib
* **Repository**: https://github.com/flouzzy/smale-problems
