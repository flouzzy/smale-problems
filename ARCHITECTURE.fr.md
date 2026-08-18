[🇬🇧 English Version](ARCHITECTURE.md)

# Architecture & Standards d'Organisation du Dépôt (smale-problems)

Ce document établit les règles strictes d'architecture, la taxonomie des dossiers et les invariants d'organisation pour le dépôt `smale-problems`, dédié aux **18 Problèmes Mathématiques pour le XXIe Siècle** proposés par Steve Smale en 2000.

---

## 🏛️ Taxonomie des Dossiers

```
smale-problems/
├── README.md & README.fr.md          # Présentation globale du projet et statut
├── CONTRIBUTING.md & .fr.md          # Règles de contribution & standards formels
├── ARCHITECTURE.md & .fr.md          # Spécification architecturale (ce fichier)
├── LICENSE & .gitignore              # Métadonnées du projet
│
├── preprints/                        # Monographies de recherche originales et certificats de preuve
│   ├── 07-Smale-Sphere-Point-Distribution/
│   ├── 14-Smale-Lorenz-Attractor/
│   └── 17-Smale-Polynomial-Solving/
│
├── resolved/                         # Solutions historiques validées par les pairs (Tucker, Lairez, Perelman...)
│
├── inprogress/                       # Problèmes ouverts en cours d'investigation
│
├── test_lean/                        # Environnement de vérification formelle Lean 4 (0 sorry, 0 axiome)
│
├── scripts/                          # Outils automatisés Python et Bash
│
├── tests/                            # Suite de tests automatisés
│
└── templates/                        # Gabarits réutilisables LaTeX et Markdown
```

---

## 🔒 Invariants d'Organisation

1. **Propreté de la Racine :**
   * Aucun script, test ou fichier `.lean` ne doit être laissé à la racine.
2. **Standard de Preuve Formelle 100% :**
   * Toute preuve affirmant une fiabilité totale doit être certifiée en Lean 4 sous `lake env lean <fichier>.lean` avec 0 `sorry` et 0 axiome ad hoc.
