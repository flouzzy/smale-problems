[🇫🇷 Version Française](ARCHITECTURE.fr.md)

# Repository Architecture & Organization Standards (smale-problems)

This document establishes the strict architectural guidelines, folder taxonomy, and code organization invariants for the `smale-problems` repository, dedicated to the **18 Mathematical Problems for the Next Century** proposed by Steve Smale in 2000.

---

## 🏛️ Directory Taxonomy

```
smale-problems/
├── README.md & README.fr.md          # Global project introduction and status
├── CONTRIBUTING.md & .fr.md          # Contribution rules & formal standards
├── ARCHITECTURE.md & .fr.md          # This architectural specification
├── LICENSE & .gitignore              # Project metadata & ignored artifacts
│
├── preprints/                        # Original research monographs & proof certificates ready for submission
│   ├── 07-Smale-Sphere-Point-Distribution/
│   ├── 14-Smale-Lorenz-Attractor/
│   └── 17-Smale-Polynomial-Solving/
│
├── resolved/                         # Peer-reviewed & community-verified historic solutions (Tucker, Lairez, Perelman, etc.)
│
├── inprogress/                       # Open problems under active investigation
│
├── test_lean/                        # Lean 4 (Mathlib) formal verification environment (lake build, 0 sorry)
│
├── scripts/                          # Automated Python & Bash utility tools (generators, scrapers, benchmarks)
│
├── tests/                            # Automated test suite (Python unittest / pytest)
│
└── templates/                        # Reusable LaTeX and Markdown templates
```

---

## 🔒 Organizational Invariants

1. **Root Cleanliness Invariant:**
   * No scripts (`.py`, `.sh`), loose test files (`test_*.py`), or individual `.lean` files are permitted at the root.
   * All scripts must reside in `scripts/`.
   * All tests must reside in `tests/`.
   * All Lean 4 proof files must reside in `test_lean/`.
2. **Three-Tier Problem Classification:**
   * **`resolved/`**: Strictly reserved for problems with solutions established in the peer-reviewed mathematical literature or verified by independent mathematical committees.
   * **`preprints/`**: Reserved for new, original mathematical formulations, reductions, and Lean 4 formal certificates created in this project and prepared for journal / arXiv submission.
   * **`inprogress/`**: Reserved for open leads and ongoing investigations.
3. **Machine-Checked Standard:**
   * Any proof claiming $100\%$ reliability must be accompanied by a machine-checked Lean 4 file verifying with $0$ `sorry` and $0$ custom unproven axioms under `lake env lean <file>.lean`.
