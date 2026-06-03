# Synthèse des corrections SQL — Exercices 8, 9, 10

## Problèmes identifiés et corrections appliquées

---

### Exercice 8 — Fonctions d'agrégation

| Fichier | Problème | Correction |
|---|---|---|
| `8-total_stock.sql` | `TOTAL(stock)` est une fonction SQLite-only non standard | Remplacé par `SUM(stock)` (SQL standard) |
| `8-count_books.sql` | OK | — |
| `8-average_price.sql` | OK | — |
| `8-max_stock.sql` | OK | — |
| `8-min_price.sql` | OK | — |

**Règle** : toujours utiliser `SUM()` pour additionner des valeurs numériques.
`TOTAL()` est spécifique à SQLite et retourne 0.0 si aucune ligne ne correspond (au lieu de NULL), ce qui peut masquer des erreurs.

---

### Exercice 9 — GROUP BY

| Fichier | Problème | Correction |
|---|---|---|
| `9-total_stock_by_genre.sql` | `COUNT(stock)` compte le nombre de lignes, pas la somme des unités | Remplacé par `SUM(stock)` |
| `9-count_by_genre.sql` | OK | — |
| `9-average_price_by_genre.sql` | OK | — |
| `9-count_by_author.sql` | OK | — |

**Règle** : `COUNT()` compte des lignes, `SUM()` additionne des valeurs.
Pour un stock total, il faut impérativement `SUM(stock)`.

---

### Exercice 10 — Requêtes composites

| Fichier | Problème | Correction |
|---|---|---|
| `10-cheapest_available.sql` | Pas de filtre `WHERE stock > 0` → retournait aussi les livres épuisés | Ajouté `WHERE stock > 0` avant `ORDER BY` |
| `10-stock_by_genre.sql` | `COUNT(stock)` au lieu de `SUM(stock)` | Remplacé par `SUM(stock)` |
| `10-delete_zero_stock.sql` | `stock <= 0` — condition trop large (stock négatif impossible en pratique, mais sémantiquement incorrect) | Remplacé par `stock = 0` pour cibler exactement les livres sans stock |
| `10-select_tech_books.sql` | OK | — |
| `10-increase_stock.sql` | OK | — |
| `10-average_price_by_genre.sql` | OK | — |

---

## Récapitulatif des règles clés

1. **`SUM()` vs `COUNT()`** : `COUNT(col)` compte le nombre de valeurs non-nulles, `SUM(col)` additionne les valeurs. Pour un stock total, utiliser `SUM`.

2. **`SUM()` vs `TOTAL()`** : `TOTAL()` est spécifique à SQLite. Toujours préférer `SUM()` pour la portabilité.

3. **Filtre sur disponibilité** : pour les livres "disponibles", toujours ajouter `WHERE stock > 0`.

4. **Précision des conditions** : `stock = 0` est plus précis que `stock <= 0` quand on cible spécifiquement les valeurs nulles.
