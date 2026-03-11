# ============================================================================
# LEADERBOARD INTERN: Sort-Schritt (Selection Sort - ein Vergleich)
# Datei: sa:leaderboard/internal/sort_step
# Version: 1.21.11
#
# VERWENDUNG: Wird von leaderboard/XXX/sort aufgerufen.
# Vergleicht lb_cmp_a und lb_cmp_b (Score-Objective: lb_sort_score).
# Ist lb_cmp_b > lb_cmp_a → merke lb_cmp_b als neues Maximum (lb_cmp_best)
#
# HINWEIS: Dieses File ist GENERISCH. Nicht anfassen wenn du neue
#          Leaderboards hinzufügst – nur sort.mcfunction anpassen.
# ============================================================================

# Wenn Slot B größer als aktuelles Best → B wird neues Best
execute if score lb_cmp_b lb_sort_score > lb_cmp_best lb_sort_score run scoreboard players operation lb_cmp_best lb_sort_score = lb_cmp_b lb_sort_score
execute if score lb_cmp_b lb_sort_score > lb_cmp_best lb_sort_score run data modify storage sa:lb_temp best set from storage sa:lb_temp b
