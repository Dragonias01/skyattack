# ============================================================================
# LEADERBOARD: Spieler in nächsten freien Slot schreiben
# Datei: sa:leaderboard/logging/insert_player
# Version: 1.21.11
#
# Läuft als @s (jeweiliger Spieler), aufgerufen von sort via execute as @a.
#
# Nutzt lb_insert_idx als globalen Zähler (0..9).
# Jeder Spieler bekommt den nächsten freien Slot.
# Nach 10 Spielern werden keine weiteren eingetragen.
# Danach sortiert sort_pass die Slots absteigend.
# ============================================================================

# Nur eintragen wenn noch Slots frei (idx 0..9 = 10 Spieler)
execute if score lb_insert_idx lb_log_score matches 0 run function sa:leaderboard/logging/insert_write {slot:"1",sname:"lb_log_s1"}
execute if score lb_insert_idx lb_log_score matches 1 run function sa:leaderboard/logging/insert_write {slot:"2",sname:"lb_log_s2"}
execute if score lb_insert_idx lb_log_score matches 2 run function sa:leaderboard/logging/insert_write {slot:"3",sname:"lb_log_s3"}
execute if score lb_insert_idx lb_log_score matches 3 run function sa:leaderboard/logging/insert_write {slot:"4",sname:"lb_log_s4"}
execute if score lb_insert_idx lb_log_score matches 4 run function sa:leaderboard/logging/insert_write {slot:"5",sname:"lb_log_s5"}
execute if score lb_insert_idx lb_log_score matches 5 run function sa:leaderboard/logging/insert_write {slot:"6",sname:"lb_log_s6"}
execute if score lb_insert_idx lb_log_score matches 6 run function sa:leaderboard/logging/insert_write {slot:"7",sname:"lb_log_s7"}
execute if score lb_insert_idx lb_log_score matches 7 run function sa:leaderboard/logging/insert_write {slot:"8",sname:"lb_log_s8"}
execute if score lb_insert_idx lb_log_score matches 8 run function sa:leaderboard/logging/insert_write {slot:"9",sname:"lb_log_s9"}
execute if score lb_insert_idx lb_log_score matches 9 run function sa:leaderboard/logging/insert_write {slot:"10",sname:"lb_log_s10"}

# Index erhöhen (aber max 10 - danach keine weiteren Spieler)
execute if score lb_insert_idx lb_log_score matches 0..9 run scoreboard players add lb_insert_idx lb_log_score 1
