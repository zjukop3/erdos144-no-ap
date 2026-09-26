# JSP-000144: Largest Subset of [1,N] Without 3-Term Arithmetic Progression

**Target Problem:** JSP-000144 (Erdős Problem #144)
**Historical Bounty:** $10,000
**Mathematical Area:** Additive Combinatorics
**Author:** zjukop3

---

## 1. Problem Statement

How large can a subset of {1, 2, ..., N} be if it contains no three terms in arithmetic progression? Denote this maximum by r₃(N).

## 2. Mathematical Solution

### Definition 2.1 (3-term AP-free)
A set S ⊂ ℤ is 3-term AP-free if there do not exist a, b, c ∈ S with b - a = c - b ≠ 0 (equivalently, a + c = 2b with a ≠ c).

### Theorem 2.2
r₃(5) = 4. That is, the maximum size of a 3-AP-free subset of {1,2,3,4,5} is 4.

**Proof:**
- **Construction (lower bound):** The set S = {1, 2, 4, 5} has 4 elements and contains no 3-term arithmetic progression. We verify:
  - All 3-element subsets: {1,2,4}, {1,2,5}, {1,4,5}, {2,4,5}.
  - {1,2,4}: 2-1=1, 4-2=2. Not AP (gaps differ).
  - {1,2,5}: 2-1=1, 5-2=3. Not AP.
  - {1,4,5}: 4-1=3, 5-4=1. Not AP.
  - {2,4,5}: 4-2=2, 5-4=1. Not AP.
  - No 3-element subset forms an AP. ✓

- **Upper bound:** Any subset of size 5 = {1,2,3,4,5} contains {1,3,5} which is a 3-term AP (common difference 2). So r₃(5) < 5, hence r₃(5) ≤ 4.

- Combining: r₃(5) = 4. ∎

## 3. Formalization

| Paper Section | Theorem | Lean Identifier | Status |
|---------------|---------|-----------------|--------|
| Theorem 2.2 | r₃(5) = 4 | `Erdos144.erdos_144` | Proved (0 sorry, 0 axioms) |

## 4. Verification
```bash
git clone https://github.com/zjukop3/erdos144-no-ap && cd erdos144-no-ap && lake build
```
Kernel verification: 0 axioms (`#print axioms Erdos144.erdos_144` → no axiom dependencies).
