# ============================================================================
# LEADERBOARD SORT: Logging  |  FIX Bug 1
# Datei: data/sa/function/leaderboard/logging/sort.mcfunction
# Version: 1.21.11
# ============================================================================

# ── Slots zurücksetzen ────────────────────────────────────────────────────
scoreboard players set lb_log_s1 lb_log_score 0
scoreboard players set lb_log_s2 lb_log_score 0
scoreboard players set lb_log_s3 lb_log_score 0
scoreboard players set lb_log_s4 lb_log_score 0
scoreboard players set lb_log_s5 lb_log_score 0
scoreboard players set lb_log_s6 lb_log_score 0
scoreboard players set lb_log_s7 lb_log_score 0
scoreboard players set lb_log_s8 lb_log_score 0
scoreboard players set lb_log_s9 lb_log_score 0
scoreboard players set lb_log_s10 lb_log_score 0

# FIX Bug 1: lb_log_name vor jedem Update resetten
scoreboard players reset * lb_log_name

# ── Spieler einsortieren ──────────────────────────────────────────────────
execute as @a run function sa:leaderboard/logging/insert_player

# ── Absteigend sortieren ──────────────────────────────────────────────────
function sa:leaderboard/logging/sort_pass
