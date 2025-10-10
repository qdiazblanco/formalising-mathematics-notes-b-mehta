/-
Copyright (c) 2025 Bhavik Mehta. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Bhavik Mehta, Kevin Buzzard
-/
import Mathlib.Tactic -- imports all the Lean tactics

/-!

# Logic in Lean, example sheet 5 : "iff" (`↔`)

We learn about how to manipulate `P ↔ Q` in Lean.

## Tactics

You'll need to know about the tactics from the previous sheets,
and also the following two new tactics:

* `rfl`
* `rw`

-/


variable (P Q R S : Prop)

example : P ↔ P := by
<<<<<<< HEAD:FormalisingMathematics2026/Section01logic/Sheet5.lean
  sorry

example : (P ↔ Q) → (Q ↔ P) := by
  sorry

example : (P ↔ Q) ↔ (Q ↔ P) := by
  sorry

example : (P ↔ Q) → (Q ↔ R) → (P ↔ R) := by
  sorry
  -- The pattern `rw` then `assumption` is common enough that it can be abbreviated to `rwa`
=======
  rfl

example : (P ↔ Q) → (Q ↔ P) := by
  intro hPQ
  rw [hPQ]

example : (P ↔ Q) ↔ (Q ↔ P) := by
  constructor
  ·intro hPQ
   rw [hPQ]
  ·intro hQP
   rw [hQP]

example : (P ↔ Q) → (Q ↔ R) → (P ↔ R) := by
  intro hPQ hQR
  rw [hQR] at hPQ
  exact hPQ
>>>>>>> 3b9c308 (media hoja 5, me ha petao el Lean):FormalisingMathematics2025/Section01logic/Sheet5.lean

example : P ∧ Q ↔ Q ∧ P := by
  sorry

example : (P ∧ Q) ∧ R ↔ P ∧ Q ∧ R := by
  sorry

example : P ↔ P ∧ True := by
  sorry

example : False ↔ P ∧ False := by
  sorry

example : (P ↔ Q) → (R ↔ S) → (P ∧ R ↔ Q ∧ S) := by
  sorry

example : ¬(P ↔ ¬P) := by
  sorry
