# ============================================================================
# LEADERBOARD SORT: Logging
# Datei: sa:leaderboard/logging/sort
# Version: 1.21.11
# ============================================================================

# ── Schritt 1: Slots UND Namen komplett zurücksetzen ──────────────────────
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

# Alle lb_log_name Zuordnungen zurücksetzen (alle Spieler raus aus allen Slots)
scoreboard players reset @a lb_log_name

scoreboard players set lb_insert_idx lb_log_score 0

# ── Schritt 2: Alle Online-Spieler einsortieren ───────────────────────────
# Läuft als jeder Spieler einzeln - prüft ob er in Top 10 gehört
execute as @a run function sa:leaderboard/logging/insert_player

# ── Schritt 3: Slots absteigend sortieren (Bubble Sort) ───────────────────
function sa:leaderboard/logging/sort_pass
