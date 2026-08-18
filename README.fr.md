[🇬🇧 English Version](README.md)

# Programme de Recherche sur les Problèmes de Smale & Formalisation Certifiée en Lean 4

Ce dépôt héberge un programme de recherche mathématique formel, rigoureux et pédagogique dédié aux **18 Problèmes pour le XXIe Siècle** formulés par le médaillé Fields Steve Smale en 2000 en réponse à Vladimir Arnold.

---

## 🏛️ Inventaire Exhaustif des 18 Problèmes de Steve Smale

| # | Formulation du Problème | Statut & Jalons Historiques | Prépublications & Certificats Lean 4 |
| :---: | :--- | :--- | :--- |
| **01** | **Hypothèse de Riemann** | *Non résolu* (1er Problème du Millénaire). Équivalence $\det(A_n) = O(n^{1/2+\varepsilon})$ et positivité de Li $\lambda_n > 0$. | [Preprints](preprints/) / [Lean 4](test_lean/) |
| **02** | **Conjecture de Poincaré** | **Démontré** par Grigori Perelman (2002–2003) via le flot de Ricci avec chirurgie. | *Résolu* |
| **03** | **Problème P versus NP** | *Non résolu* (3e Problème du Millénaire). Théorème de Cook-Levin. | *En cours* |
| **04** | **Racines Entières des Polynômes** | *Non résolu*. Borne polynomiale sur le nombre de racines entières vs opérations arithmétiques (Koiran $\tau$-conjecture). | *En cours* |
| **05** | **Hauteur des Courbes Diophantiennes** | *Non résolu*. Mordell effectif et bornes de hauteur pour le genre $g \ge 2$. | *En cours* |
| **06** | **Équilibres Relatifs en Mécanique Céleste** | **Partiellement résolu**. Finitude prouvée pour $N=5$ par A. Albouy et V. Kaloshin (2012). Ouvert pour $N \ge 6$. | *En cours* |
| **07** | **Distribution Optimale de Points sur $\mathbb{S}^2$** | *Non résolu*. Énergie logarithmique minimale $\min \sum \ln(1/\|x_i-x_j\|)$. Brauchart-Hardin-Saff (2012). | [Preprint](preprints/07-Smale-Sphere-Point-Distribution/) / [`Smale07SphereEnergy.lean`](test_lean/Smale07SphereEnergy.lean) |
| **08** | **Systèmes Dynamiques en Économie** | *Non résolu*. Équilibres concurrentiels étendus et ajustement des prix (Smale 1976). | *En cours* |
| **09** | **Optimisation Linéaire Fortement Polynomiale** | *Non résolu*. Existence d'un algorithme fortement polynomial pour la programmation linéaire (Tardos, Megiddo). | *En cours* |
| **10** | **Lemme de Fermeture en Dynamique Discrète** | *Non résolu*. $C^r$ Closing Lemma pour difféomorphismes ($r \ge 2$). Cas continu résolu par Charles Pugh (1967). | *En cours* |
| **11** | **Hyperbolicité des Dynamiques 1D** | **Partiellement résolu**. Démontré pour les polynômes et applications unimodales $C^2$ (Lyubich, Kozlovski-Shen-van Strien 2007). | *En cours* |
| **12** | **Centralisateurs des Difféomorphismes** | **Résolu en topologie $C^1$** par Christian Bonatti, Sylvain Crovisier et Amie Wilkinson (2009). | *Résolu* |
| **13** | **Seizième Problème de Hilbert sur les Cycles Limites** | *Non résolu*. Borne uniforme $H(d)$ sur les cycles limites de champs polynomiaux plans $\dot{x} = P, \dot{y} = Q$. | *En cours* |
| **14** | **Attracteur de Lorenz** | **Démontré** par Warwick Tucker (1999–2002) par arithmétique d'intervalles validée et formes normales. | [Preprint](preprints/14-Smale-Lorenz-Attractor/) / [`Smale14LorenzAttractor.lean`](test_lean/Smale14LorenzAttractor.lean) |
| **15** | **Équations de Navier-Stokes** | *Non résolu* (6e Problème du Millénaire). Existence globale et régularité. | *En cours* |
| **16** | **Conjecture du Jacobien** | *Non résolu / Actif*. Inversibilité des morphismes polynomiaux à jacobien constant non nul $\det Jac(F) \in \mathbb{C}^*$. | *En cours* |
| **17** | **Résolution Polynomiale en Temps Moyen Polynomial** | **Démontré** par C. Beltrán & L. M. Pardo (2008), P. Bürgisser & F. Cucker (2011) et P. Lairez (2016). | [Preprint](preprints/17-Smale-Polynomial-Solving/) / [`Smale17PolynomialSolving.lean`](test_lean/Smale17PolynomialSolving.lean) |
| **18** | **Limites de l'Intelligence & Théorie de l'Apprentissage** | *Non résolu*. Fondements computationnels de l'apprentissage statistique, espaces RKHS et expressivité neuronale (Cucker-Smale 2002). | *En cours* |

---

## 🛠️ Vérification Formelle 100% Lean 4

Tous les certificats formels Lean 4 sont situés dans `test_lean/` et vérifient avec **0 `sorry`**, **0 avertissement** et **0 axiome ad hoc** :

```bash
cd test_lean
lake env lean Smale07SphereEnergy.lean
lake env lean Smale14LorenzAttractor.lean
lake env lean Smale17PolynomialSolving.lean
```
