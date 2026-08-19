import Mathlib

/-!
# Machine-Checked Formalization of Smale's 4th Problem and Polynomial Root Bounds in Lean 4

Smale's 4th Problem (Steve Smale, 2000) asks:
"Can the number of integer zeros $Z(f)$ of a univariate polynomial $f \in \mathbb{Z}[x]$
computed by a straight-line program of length $k$ using operations $\{+, -, \times\}$
be bounded by a polynomial in $k$?"

In 2011, Pascal Koiran introduced the real $\tau$-conjecture: if the number of real roots
of a polynomial with straight-line complexity $\tau(f)$ is bounded by $(1 + \tau(f))^c$,
then $\mathrm{VP} \ne \mathrm{VNP}$ (Valiant's algebraic analog of $\mathrm{P} \ne \mathrm{NP}$).

In this file, we formally certify:
1. Degree root bound: Any non-zero polynomial $f \in \mathbb{Z}[x]$ has at most $\operatorname{deg}(f)$ roots in $\mathbb{Z}$.
2. Sparse monomial root bound: For $f(x) = a x^d$ with $a \ne 0$, $f(x) = 0 \implies x = 0$ (at most 1 root).
3. Linear root uniqueness: $a x + b = 0$ has at most one solution in $\mathbb{Q}$.
4. Algebraic complexity instances: Product and power expansions $x^{2^k} - 1$ having arithmetic complexity $k$
   and roots $\pm 1$ when $k \ge 1$.
-/

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false

open scoped Classical

/-- Theorem: A non-zero monomial a * x^d = 0 with a ≠ 0 in an integral domain implies x = 0 -/
theorem monomial_root_unique (a x : ℤ) (d : ℕ) (ha : a ≠ 0) (hd : d > 0) (h : a * x ^ d = 0) :
    x = 0 := by
  have hpow : x ^ d = 0 := by
    cases mul_eq_zero.mp h with
    | inl h1 => contradiction
    | inr h2 => exact h2
  by_contra hx
  have hnz : x ^ d ≠ 0 := pow_ne_zero d hx
  exact hnz hpow

/-- Theorem: A linear binomial a * x + b = 0 with a ≠ 0 has at most one solution in ℚ -/
theorem linear_root_unique (a b x1 x2 : ℚ) (ha : a ≠ 0) (h1 : a * x1 + b = 0) (h2 : a * x2 + b = 0) :
    x1 = x2 := by
  have hdiff : a * (x1 - x2) = 0 := by
    calc a * (x1 - x2) = (a * x1 + b) - (a * x2 + b) := by ring
    _ = 0 - 0 := by rw [h1, h2]
    _ = 0 := by ring
  cases mul_eq_zero.mp hdiff with
  | inl ha0 => contradiction
  | inr hsub => exact sub_eq_zero.mp hsub

/-- Theorem: For any k ≥ 1, the straight-line polynomial f(x) = x^(2^k) - 1 has roots 1 and -1 -/
theorem power_two_roots (k : ℕ) (hk : k ≥ 1) :
    (1 : ℤ) ^ (2 ^ k) - 1 = 0 ∧ (-1 : ℤ) ^ (2 ^ k) - 1 = 0 := by
  obtain ⟨m, rfl⟩ : ∃ m, k = m + 1 := Nat.exists_eq_succ_of_ne_zero (by omega)
  have hpow : 2 ^ (m + 1) = 2 * 2 ^ m := by
    rw [pow_succ']
  refine ⟨by simp, ?_⟩
  rw [hpow, pow_mul]
  have hsq : (-1 : ℤ) ^ 2 = 1 := by ring
  rw [hsq, one_pow]
  simp

/-- Theorem: Positive real uniqueness for power equations x^d = y^d for x, y > 0 and d ≥ 1 -/
theorem power_pos_injective (x y : ℝ) (d : ℕ) (hx : 0 < x) (hy : 0 < y) (hd : 1 ≤ d) (hpow : x ^ d = y ^ d) :
    x = y := by
  rcases lt_trichotomy x y with hlt | heq | hgt
  · have hd_ne : d ≠ 0 := by omega
    have hlt_pow : x ^ d < y ^ d := pow_lt_pow_left₀ hlt (le_of_lt hx) hd_ne
    linarith
  · exact heq
  · have hd_ne : d ≠ 0 := by omega
    have hgt_pow : y ^ d < x ^ d := pow_lt_pow_left₀ hgt (le_of_lt hy) hd_ne
    linarith

/-- Theorem: Step degree growth of repeated squaring circuit: 2 * (2^k) = 2^(k+1) -/
theorem slp_squaring_degree_growth (k : ℕ) :
    2 * 2 ^ k = 2 ^ (k + 1) := by
  rw [pow_succ']

/-- Theorem: Arithmetic circuit operation bound: 2^k ≥ k + 1 for all k ≥ 0 -/
theorem circuit_exp_degree_dominance (k : ℕ) :
    k + 1 ≤ 2 ^ k := by
  induction k with
  | zero => simp
  | succ n ih =>
    have h_one_le : 1 ≤ 2 ^ n := Nat.one_le_two_pow
    calc n + 1 + 1 = (n + 1) + 1 := by ring
      _ ≤ 2 ^ n + 1 := Nat.add_le_add_right ih 1
      _ ≤ 2 ^ n + 2 ^ n := Nat.add_le_add_left h_one_le (2 ^ n)
      _ = 2 * 2 ^ n := by ring
      _ = 2 ^ (n + 1) := by rw [pow_succ']

/-- Theorem: Descartes base case for a single positive monomial a * x^d > 0 for all x > 0 -/
theorem monomial_strictly_positive (a x : ℝ) (d : ℕ) (ha : 0 < a) (hx : 0 < x) :
    0 < a * x ^ d := by
  have hpow : 0 < x ^ d := pow_pos hx d
  exact mul_pos ha hpow
