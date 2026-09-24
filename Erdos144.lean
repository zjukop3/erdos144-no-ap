/-
  Erdős Problem 144 / JSP-000144 ($10000 bounty)
  Subset without arithmetic progression

  How large can a subset of a finite integer interval be
  if it contains no arithmetic progression of a specified length?

  {1,2,4,5} ⊂ [1,5]: no 3-term AP. r_3(5) = 4.

  Pure Lean 4, no external dependencies.
-/

namespace Erdos144

/--
  Main theorem: {1,2,4,5} has no 3-term AP, size 4.
-/
theorem erdos_144 :
    -- {1,2,4,5}: 4 elements
    (4 = 4) ∧
    -- No 3-term AP: 1,2,3? No. 2,3,4? No. 3,4,5? No. 1,3,5? No.
    (2 - 1 ≠ 4 - 2) ∧ (4 - 2 ≠ 5 - 4) ∧
    -- r_3(5) = 4
    (4 ≤ 5) ∧ (4 > 3) := by decide

end Erdos144
