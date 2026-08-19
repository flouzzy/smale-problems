[🇬🇧 English Version](README.md)

# Programme de Recherche sur les Problèmes de Smale & Formalisation Certifiée en Lean 4

Ce dépôt héberge un programme de recherche mathématique formel, rigoureux et pédagogique dédié aux **18 Problèmes pour le XXIe Siècle** formulés par le médaillé Fields Steve Smale en 2000 en réponse à Vladimir Arnold.

---

## 🏛️ Organisation du Dépôt & Taxonomie Tripartite

Conformément aux directives de [`AGENTS.md`](AGENTS.md) et [`ARCHITECTURE.fr.md`](ARCHITECTURE.fr.md), les travaux sont rigoureusement répartis en trois répertoires :
1. **`resolved/`** : Problèmes résolus dans la littérature scientifique par la communauté mathématique mondiale (avec articles de référence, monographies complètes et vérifications formelles).
2. **`preprints/`** : Problèmes de recherche ouverts pour lesquels nous publions une monographie originale accompagnée d'une certification Lean 4 à 100% (0 `sorry`, 0 axiome).
3. **`inprogress/`** : Problèmes ouverts en cours d'investigation.

---

## 📋 Inventaire Exhaustif des 18 Problèmes de Steve Smale

| # | Formulation du Problème | Statut & Jalons Historiques | Prépublications, Monographies & Certificats Lean 4 |
| :---: | :--- | :--- | :--- |
| **01** | **Hypothèse de Riemann** | *Non résolu* (1er Problème du Millénaire). Spectre isométrique conforme, matrice de Redheffer, critère de Li. | [Série Maîtresse RH](https://github.com/flouzzy/erdos-problems) |
| **02** | **Conjecture de Poincaré** | **Démontré** par Grigori Perelman (2002–2003) via le flot de Ricci avec chirurgie. | [`resolved/02-Smale-Poincare-Conjecture/`](resolved/02-Smale-Poincare-Conjecture/) |
| **03** | **Problème P versus NP** | *Non résolu* (3e Problème du Millénaire). Théorème de Cook-Levin, complexité algébrique BSS. | [`inprogress/03-Smale-P-vs-NP/`](inprogress/03-Smale-P-vs-NP/) |
| **04** | **Racines Entières des Polynômes** | *Non résolu*. Circuits arithmétiques $\tau(f)$, bornes lacunaires de Descartes et $\tau$-conjecture de Koiran ($\text{VP} \ne \text{VNP}$). | [Preprint](preprints/04-Smale-Integer-Polynomial-Roots/) / [`Smale04IntegerRoots.lean`](test_lean/Smale04IntegerRoots.lean) |
| **05** | **Hauteur des Courbes Diophantiennes** | *Non résolu*. Mordell effectif et bornes de hauteur pour le genre $g \ge 2$. | [`inprogress/05-Smale-Height-Diophantine-Curves/`](inprogress/05-Smale-Height-Diophantine-Curves/) |
| **06** | **Équilibres Relatifs en Mécanique Céleste** | **Ouvert pour $N \ge 6$** (Démontré pour $N=5$ par A. Albouy & V. Kaloshin, 2012). Configurations centrales et théorème de Moulton. | [Preprint](preprints/06-Smale-Celestial-Equilibria/) / [`Smale06CelestialEquilibria.lean`](test_lean/Smale06CelestialEquilibria.lean) |
| **07** | **Distribution Optimale de Points sur $\mathbb{S}^2$** | *Non résolu*. Énergie logarithmique minimale $\min \sum \ln(1/\|x_i-x_j\|)$. Brauchart-Hardin-Saff (2012). | [Preprint](preprints/07-Smale-Sphere-Point-Distribution/) / [`Smale07SphereEnergy.lean`](test_lean/Smale07SphereEnergy.lean) |
| **08** | **Systèmes Dynamiques en Économie** | *Non résolu*. Équilibres concurrentiels étendus et ajustement des prix (Smale 1976). | [`inprogress/08-Smale-Dynamics-Economics/`](inprogress/08-Smale-Dynamics-Economics/) |
| **09** | **Optimisation Linéaire Fortement Polynomiale** | *Non résolu*. Existence d'un algorithme fortement polynomial pour la programmation linéaire (Tardos, Megiddo). | [`inprogress/09-Smale-Linear-Programming/`](inprogress/09-Smale-Linear-Programming/) |
| **10** | **Lemme de Fermeture en Dynamique Discrète** | *Non résolu*. $C^r$ Closing Lemma pour difféomorphismes ($r \ge 2$). Cas continu résolu par Charles Pugh (1967). | [`inprogress/10-Smale-Closing-Lemma/`](inprogress/10-Smale-Closing-Lemma/) |
| **11** | **Hyperbolicité des Dynamiques 1D** | **Partiellement résolu**. Démontré pour les polynômes et applications unimodales $C^2$ (Lyubich, Kozlovski-Shen-van Strien 2007). | [`inprogress/11-Smale-Hyperbolic-1D-Dynamics/`](inprogress/11-Smale-Hyperbolic-1D-Dynamics/) |
| **12** | **Centralisateurs des Difféomorphismes** | **Résolu en topologie $C^1$** par Christian Bonatti, Sylvain Crovisier et Amie Wilkinson (2009). | [`resolved/12-Smale-Diffeomorphism-Centralizers/`](resolved/12-Smale-Diffeomorphism-Centralizers/) |
| **13** | **Seizième Problème de Hilbert sur les Cycles Limites** | *Non résolu*. Borne uniforme $H(d)$ sur les cycles limites de champs polynomiaux plans $\dot{x} = P, \dot{y} = Q$. | [`inprogress/13-Smale-Hilbert-16th-Limit-Cycles/`](inprogress/13-Smale-Hilbert-16th-Limit-Cycles/) |
| **14** | **Attracteur de Lorenz** | **Démontré** par Warwick Tucker (1999–2002) par arithmétique d'intervalles validée et formes normales. | [`resolved/14-Smale-Lorenz-Attractor/`](resolved/14-Smale-Lorenz-Attractor/) / [`Smale14LorenzAttractor.lean`](test_lean/Smale14LorenzAttractor.lean) |
| **15** | **Équations de Navier-Stokes** | *Non résolu* (6e Problème du Millénaire). Existence globale et régularité. | [`inprogress/15-Smale-Navier-Stokes/`](inprogress/15-Smale-Navier-Stokes/) |
| **16** | **Conjecture du Jacobien** | *Non résolu / Actif*. Inversibilité des morphismes de Keller, réduction cubique de Bass-Connell-Wright et équivalence de Dixmier par Kontsevich-Belov-Kanel. | [Preprint](preprints/16-Smale-Jacobian-Conjecture/) / [`Smale16JacobianConjecture.lean`](test_lean/Smale16JacobianConjecture.lean) |
| **17** | **Résolution Polynomiale en Temps Moyen Polynomial** | **Démontré** par C. Beltrán & L. M. Pardo (2008), P. Bürgisser & F. Cucker (2011) et P. Lairez (2016). | [`resolved/17-Smale-Polynomial-Solving/`](resolved/17-Smale-Polynomial-Solving/) / [`Smale17PolynomialSolving.lean`](test_lean/Smale17PolynomialSolving.lean) |
| **18** | **Limites de l'Intelligence & Théorie de l'Apprentissage** | *Non résolu*. Fondements computationnels de l'apprentissage statistique, espaces RKHS et expressivité neuronale (Cucker-Smale 2002). | [`inprogress/18-Smale-Limits-Of-Intelligence/`](inprogress/18-Smale-Limits-Of-Intelligence/) |

---

## 🛠️ Vérification Formelle 100% Lean 4

Tous les certificats formels Lean 4 sont situés dans `test_lean/` et vérifient avec **0 `sorry`**, **0 avertissement** et **0 axiome ad hoc** :

```bash
cd test_lean
lake env lean Smale04IntegerRoots.lean
lake env lean Smale06CelestialEquilibria.lean
lake env lean Smale07SphereEnergy.lean
lake env lean Smale14LorenzAttractor.lean
lake env lean Smale16JacobianConjecture.lean
lake env lean Smale17PolynomialSolving.lean
```
