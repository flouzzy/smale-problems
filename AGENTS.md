# Directives Permanentes d'Organisation & Rigueur Mathématique (smale-problems)

Ce document régit les règles d'architecture, de rangement et de rigueur scientifique pour tout agent ou collaborateur intervenant sur ce dépôt dédié aux **18 Problèmes de Smale pour le XXIe Siècle** (Steve Smale, 2000).

---

## 1. Invariant de Propreté de la Racine
- **INTERDICTION** de créer ou laisser des scripts (`.py`, `.sh`), des tests (`test_*.py`) ou des fichiers `.lean` à la racine du dépôt.
- Tous les scripts utilitaires (générateurs, extracteurs, benchmarks) doivent être placés dans `scripts/`.
- Tous les tests automatisés doivent être placés dans `tests/`.
- Tous les fichiers sources formels Lean 4 doivent être placés dans `test_lean/`.

---

## 2. Taxonomie Tripartite des Problèmes de Smale
- **`resolved/`** : Réservé EXCLUSIVEMENT aux problèmes de Smale résolus dans la littérature scientifique par la communauté mathématique mondiale (ex. Perelman pour Poincaré #2, Tucker pour l'attracteur de Lorenz #14, Beltrán-Pardo / Lairez pour la résolution polynomiale #17) ou officiellement validés par les pairs.
- **`preprints/`** : Contient nos travaux, monographies et résolutions originales prêts pour soumission (avec article LaTeX au format arXiv, PDF compilé, code Lean 4 et README/presentation.md pour Zenodo).
- **`inprogress/`** : Conjectures et problèmes en cours d'exploration, de calculs ou d'ébauche.

---

## 3. Standard de Preuve Formelle 100% Lean 4 & Règles Mathlib
- Toute preuve affirmant une fiabilité de 100% doit être vérifiée sans exception par le compilateur Lean 4 (`lake env lean <fichier>.lean`) avec **0 `sorry`**, **0 erreur**, **0 avertissement** et **0 axiome ad hoc**.
- **Arithmétique rationnelle (`ℚ` / `Rat`)** : Utiliser impérativement `norm_num` (ou `ring`) pour toute vérification d'égalité ou d'inégalité sur `ℚ`, car `decide` échoue à réduire le type `Decidable` des rationnels dans le noyau Lean 4.
- **Structures d'opérateurs polynomiaux** : Utiliser `[CommRing R]` avec la tactique `ring` pour les sous-anneaux commutatifs $\mathbb{C}[H]$ générés par un opérateur polynomial (ou `noncomm_ring` dans le cas non-commutatif général).
- **Racines de monômes & puissances** : Utiliser `by_contra` couplé à `pow_ne_zero d hx` pour certifier l'unicité des racines non nulles dans un anneau intègre.

---

## 4. Standards de Rédaction Académique & Soumission aux Comités de Lecture (Peer-Review)
- **Format Monographique Approfondi (5 à 10+ pages)** : Tout article destiné à `preprints/` ou `resolved/` doit être rédigé sous la forme d'un traité scientifique complet et autonome (*self-contained*), avec table des matières, contexte historique, lemmes intermédiaires, théorèmes principaux et perspectives.
- **Démonstrations Intégrales sans Ellipse** : Chaque lemme, corollaire et théorème doit être démontré étape par étape, sans raccourci ni omission calculatoire.
- **Certification Formelle Lean 4 à l'Appui (0 `sorry`, 0 axiome)** : Toute soumission doit être accompagnée de son fichier `.lean` compilant avec succès via le noyau Lean 4 et Mathlib, fournissant au comité d'évaluation une preuve informatique infaillible et reproductible.
- **Titres Mathématiques Directs et Épurés** : Le titre principal d'un article doit être rigoureusement centré sur le problème ou la conjecture (ex. *"On the Jacobian Conjecture and the Nilpotent Tree Inversion of Keller Mappings"*).
- **Interdiction de l'étiquetage méta de style** : Ne JAMAIS mentionner "style Terence Tao" ou "(style Terence Tao)" dans les titres, textes, READMEs ou communications. Le style rigoureux, didactique et non-elliptique doit être appliqué naturellement sans étiquetage superflu.
- **Préparation Complète pour l'Évaluation par les Pairs** : Fournir systématiquement le PDF compilé via `pdflatex`, le code source `.tex`, le fichier de test `.lean`, ainsi que les métadonnées de dépôt (`presentation.md` avec classification MSC 2020 et abstract bilingue/anglais standard).

---

## 5. Gestion Disque & Cache `.lake` Partagé
- **Liaison symbolique multi-dépôt** : Partager le cache `.lake` (~8 Go) entre dépôts via lien symbolique (`ln -s ...`) pour préserver l'espace disque du serveur.
- **`.gitignore`** : Toujours ignorer `.lake` et `test_lean/.lake` sans slash final pour éviter que Git ne suive les liens symboliques.
