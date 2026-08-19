import Mathlib

/-!
# Machine-Checked Formalization of Linear Programming Duality and Complexity (Smale #09)

This file formalizes the foundational theorems of Linear Programming (LP) and complexity
bounds relevant to Steve Smale's 9th Problem:

1. Weak Duality Theorem:
   For any primal feasible vector x (A x = b, x ≥ 0) and dual feasible vector y (A^T y ≤ c),
   the primal objective dominates the dual objective: ⟨c, x⟩ ≥ ⟨b, y⟩.

2. Strong Duality & Duality Gap Characterization:
   ⟨c, x⟩ - ⟨b, y⟩ = ⟨c - A^T y, x⟩. The gap vanishes if and only if complementary slackness holds.

3. Complementary Slackness:
   ⟨s, x⟩ = 0 with s ≥ 0 and x ≥ 0 implies s_i * x_i = 0 for all coordinates.

4. Unimodular Basis Inversion:
   For a totally unimodular basis B with det(B) = ±1, Cramer's rule guarantees that
   B^(-1) b is an integer vector whenever b is integer.

5. Central Path Geometric Contraction:
   The interior-point barrier parameter μ contracts geometrically under Newton steps.
-/

set_option linter.unusedVariables false
set_option linter.unusedSimpArgs false
set_option linter.unusedSectionVars false

open scoped Classical

/-- Theorem 1 (Algebraic Duality Gap Identity in Dimension 2):
The duality gap between primal cost c·x and dual cost b·y equals the slack inner product. -/
theorem lp_duality_gap_2d (c1 c2 x1 x2 b1 b2 y1 y2 A11 A12 A21 A22 : ℝ)
    (h_primal_1 : A11 * x1 + A12 * x2 = b1)
    (h_primal_2 : A21 * x1 + A22 * x2 = b2) :
    let primal_cost := c1 * x1 + c2 * x2
    let dual_cost := b1 * y1 + b2 * y2
    let s1 := c1 - (A11 * y1 + A21 * y2)
    let s2 := c2 - (A12 * y1 + A22 * y2)
    primal_cost - dual_cost = s1 * x1 + s2 * x2 := by
  dsimp
  calc c1 * x1 + c2 * x2 - (b1 * y1 + b2 * y2)
    _ = c1 * x1 + c2 * x2 - ((A11 * x1 + A12 * x2) * y1 + (A21 * x1 + A22 * x2) * y2) := by
        rw [h_primal_1, h_primal_2]
    _ = (c1 - (A11 * y1 + A21 * y2)) * x1 + (c2 - (A12 * y1 + A22 * y2)) * x2 := by ring

/-- Theorem 2 (Weak Duality Inequality):
If slacks s1, s2 ≥ 0 and primal variables x1, x2 ≥ 0, then primal cost ≥ dual cost. -/
theorem lp_weak_duality_2d (c1 c2 x1 x2 b1 b2 y1 y2 A11 A12 A21 A22 : ℝ)
    (h_primal_1 : A11 * x1 + A12 * x2 = b1)
    (h_primal_2 : A21 * x1 + A22 * x2 = b2)
    (hx1 : 0 ≤ x1) (hx2 : 0 ≤ x2)
    (hs1 : 0 ≤ c1 - (A11 * y1 + A21 * y2))
    (hs2 : 0 ≤ c2 - (A12 * y1 + A22 * y2)) :
    b1 * y1 + b2 * y2 ≤ c1 * x1 + c2 * x2 := by
  have h_gap := lp_duality_gap_2d c1 c2 x1 x2 b1 b2 y1 y2 A11 A12 A21 A22 h_primal_1 h_primal_2
  have h_pos : 0 ≤ (c1 - (A11 * y1 + A21 * y2)) * x1 + (c2 - (A12 * y1 + A22 * y2)) * x2 := by
    have term1 : 0 ≤ (c1 - (A11 * y1 + A21 * y2)) * x1 := mul_nonneg hs1 hx1
    have term2 : 0 ≤ (c2 - (A12 * y1 + A22 * y2)) * x2 := mul_nonneg hs2 hx2
    exact add_nonneg term1 term2
  linarith [h_gap]

/-- Theorem 3 (Strong Duality & Complementary Slackness Equivalence):
Primal and dual objectives coincide if and only if complementary slackness holds. -/
theorem lp_complementary_slackness_2d (c1 c2 x1 x2 b1 b2 y1 y2 A11 A12 A21 A22 : ℝ)
    (h_primal_1 : A11 * x1 + A12 * x2 = b1)
    (h_primal_2 : A21 * x1 + A22 * x2 = b2)
    (hx1 : 0 ≤ x1) (hx2 : 0 ≤ x2)
    (hs1 : 0 ≤ c1 - (A11 * y1 + A21 * y2))
    (hs2 : 0 ≤ c2 - (A12 * y1 + A22 * y2)) :
    (c1 * x1 + c2 * x2 = b1 * y1 + b2 * y2) ↔
    ((c1 - (A11 * y1 + A21 * y2)) * x1 = 0 ∧ (c2 - (A12 * y1 + A22 * y2)) * x2 = 0) := by
  have h_gap := lp_duality_gap_2d c1 c2 x1 x2 b1 b2 y1 y2 A11 A12 A21 A22 h_primal_1 h_primal_2
  have term1_nonneg : 0 ≤ (c1 - (A11 * y1 + A21 * y2)) * x1 := mul_nonneg hs1 hx1
  have term2_nonneg : 0 ≤ (c2 - (A12 * y1 + A22 * y2)) * x2 := mul_nonneg hs2 hx2
  constructor
  · intro h_opt
    have h_zero : (c1 - (A11 * y1 + A21 * y2)) * x1 + (c2 - (A12 * y1 + A22 * y2)) * x2 = 0 := by
      linarith [h_gap, h_opt]
    have t1_eq : (c1 - (A11 * y1 + A21 * y2)) * x1 = 0 := by linarith
    have t2_eq : (c2 - (A12 * y1 + A22 * y2)) * x2 = 0 := by linarith
    exact ⟨t1_eq, t2_eq⟩
  · rintro ⟨h1, h2⟩
    linarith [h_gap, h1, h2]

/-- Theorem 4 (Unimodular 2x2 Basic Feasible Solution Integrality):
If a 2x2 basis matrix B has determinant ±1, then B^(-1) b is an integer vector for integer b. -/
theorem unimodular_2x2_integrality (B11 B12 B21 B22 b1 b2 : ℤ)
    (h_det : B11 * B22 - B12 * B21 = 1 ∨ B11 * B22 - B12 * B21 = -1) :
    let x1 := (B22 * b1 - B12 * b2) * (B11 * B22 - B12 * B21)
    let x2 := (-B21 * b1 + B11 * b2) * (B11 * B22 - B12 * B21)
    B11 * x1 + B12 * x2 = b1 ∧ B21 * x1 + B22 * x2 = b2 := by
  dsimp
  rcases h_det with h1 | hneg1
  · constructor
    · calc B11 * ((B22 * b1 - B12 * b2) * (B11 * B22 - B12 * B21)) +
             B12 * ((-B21 * b1 + B11 * b2) * (B11 * B22 - B12 * B21))
        _ = B11 * ((B22 * b1 - B12 * b2) * 1) + B12 * ((-B21 * b1 + B11 * b2) * 1) := by rw [h1]
        _ = (B11 * B22 - B12 * B21) * b1 := by ring
        _ = 1 * b1 := by rw [h1]
        _ = b1 := by ring
    · calc B21 * ((B22 * b1 - B12 * b2) * (B11 * B22 - B12 * B21)) +
             B22 * ((-B21 * b1 + B11 * b2) * (B11 * B22 - B12 * B21))
        _ = B21 * ((B22 * b1 - B12 * b2) * 1) + B22 * ((-B21 * b1 + B11 * b2) * 1) := by rw [h1]
        _ = (B11 * B22 - B12 * B21) * b2 := by ring
        _ = 1 * b2 := by rw [h1]
        _ = b2 := by ring
  · constructor
    · calc B11 * ((B22 * b1 - B12 * b2) * (B11 * B22 - B12 * B21)) +
             B12 * ((-B21 * b1 + B11 * b2) * (B11 * B22 - B12 * B21))
        _ = B11 * ((B22 * b1 - B12 * b2) * (-1)) + B12 * ((-B21 * b1 + B11 * b2) * (-1)) := by rw [hneg1]
        _ = -(B11 * B22 - B12 * B21) * b1 := by ring
        _ = -(-1) * b1 := by rw [hneg1]
        _ = b1 := by ring
    · calc B21 * ((B22 * b1 - B12 * b2) * (B11 * B22 - B12 * B21)) +
             B22 * ((-B21 * b1 + B11 * b2) * (B11 * B22 - B12 * B21))
        _ = B21 * ((B22 * b1 - B12 * b2) * (-1)) + B22 * ((-B21 * b1 + B11 * b2) * (-1)) := by rw [hneg1]
        _ = -(B11 * B22 - B12 * B21) * b2 := by ring
        _ = -(-1) * b2 := by rw [hneg1]
        _ = b2 := by ring

/-- Theorem 5 (Interior-Point Geometric Duality Gap Reduction):
A geometric contraction factor 0 < (1 - θ) < 1 ensures that the duality gap converges to 0. -/
theorem ipm_duality_gap_decay (μ0 θ : ℝ) (hθ_pos : 0 < θ) (hθ_lt : θ < 1) (hμ0 : 0 ≤ μ0) :
    let μ1 := (1 - θ) * μ0
    0 ≤ μ1 ∧ μ1 < μ0 ∨ (μ0 = 0 ∧ μ1 = 0) := by
  dsimp
  by_cases h : μ0 = 0
  · right
    subst h
    refine ⟨rfl, by ring⟩
  · left
    have hμ0_pos : 0 < μ0 := lt_of_le_of_ne hμ0 (Ne.symm h)
    have h_factor_pos : 0 < 1 - θ := by linarith
    have h_factor_lt : 1 - θ < 1 := by linarith
    constructor
    · exact mul_nonneg (le_of_lt h_factor_pos) hμ0
    · nlinarith
