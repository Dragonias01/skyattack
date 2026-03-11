# ============================================================================
# LEADERBOARD: Swap ausführen (Macro)
# Datei: sa:leaderboard/logging/do_swap
# Version: 1.21.11
#
# Tauscht Score UND lb_log_name zwischen Slot A und B.
# Temp-Wert -1 wird als Zwischenwert genutzt (nie ein echter Slot-Wert).
# ============================================================================

# ── Score tauschen ────────────────────────────────────────────────────────
$scoreboard players operation lb_swap_tmp lb_log_score = $(a) lb_log_score
$scoreboard players operation $(a) lb_log_score = $(b) lb_log_score
$scoreboard players operation $(b) lb_log_score = lb_swap_tmp lb_log_score

# ── lb_log_name tauschen ──────────────────────────────────────────────────
# Spieler in Slot $(na) → temp -1
# Spieler in Slot $(nb) → bekommt $(na)
# Spieler mit -1        → bekommt $(nb)
$scoreboard players set @a[scores={lb_log_name=$(na)}] lb_log_name -1
$scoreboard players set @a[scores={lb_log_name=$(nb)}] lb_log_name $(na)
$scoreboard players set @a[scores={lb_log_name=-1}]    lb_log_name $(nb)
