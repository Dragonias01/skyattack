# ============================================================================
# LEADERBOARD SORT: Logging
# Datei: sa:leaderboard/logging/sort
# Version: 1.21.11
#
# Ablauf:
#  1. Alle Spieler-Scores (logging_lvl) in Slot-Fake-Player kopieren
#  2. Selection Sort: Größten Score nach Slot 1, zweitgrößten nach 2 usw.
#  3. Spielernamen parallel in Storage sa:leaderboard {log:{s1,s2,...s10}} speichern
#
# ERWEITERUNG: Für ein neues Leaderboard diese Datei kopieren und
#  - "logging_lvl" → dein Objective
#  - "lb_log_s"   → dein Slot-Prefix
#  - "sa:leaderboard log" → dein Storage-Pfad
# ============================================================================

# ── Schritt 1: Slots zurücksetzen ─────────────────────────────────────────
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

data modify storage sa:leaderboard log.s1 set value "---"
data modify storage sa:leaderboard log.s2 set value "---"
data modify storage sa:leaderboard log.s3 set value "---"
data modify storage sa:leaderboard log.s4 set value "---"
data modify storage sa:leaderboard log.s5 set value "---"
data modify storage sa:leaderboard log.s6 set value "---"
data modify storage sa:leaderboard log.s7 set value "---"
data modify storage sa:leaderboard log.s8 set value "---"
data modify storage sa:leaderboard log.s9 set value "---"
data modify storage sa:leaderboard log.s10 set value "---"

# ── Schritt 2: Alle Online-Spieler in einen temporären Hilfs-Storage laden ─
# Wir iterieren über alle Spieler und fügen sie in die Slots ein,
# wenn ihr Score höher ist als der kleinste bisher gespeicherte Slot.
execute as @a run function sa:leaderboard/logging/insert_player

# ── Schritt 3: Slots absteigend sortieren (Selection Sort, 10 Runden) ─────
function sa:leaderboard/logging/sort_pass
