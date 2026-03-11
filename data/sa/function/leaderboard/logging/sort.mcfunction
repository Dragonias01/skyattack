# ============================================================================
# LEADERBOARD SORT: Logging
# Datei: sa:leaderboard/logging/sort
# Version: 1.21.11
#
# Offline-Persistenz durch KEIN Reset der Slots am Anfang.
# Slots behalten ihren letzten Wert → Offline-Spieler bleiben erhalten.
# Online-Spieler aktualisieren ihren eigenen Slot direkt.
# Danach wird neu sortiert.
# ============================================================================

# ── lb_log_name für Online-Spieler zurücksetzen ───────────────────────────
# Offline-Spieler: lb_log_name bleibt wie es war (ihr Slot bleibt reserviert)
scoreboard players reset @a lb_log_name

# ── Online-Spieler: Score in ihren gespeicherten Slot schreiben ────────────
# Jeder Spieler hat lb_log_slot (persistent) = sein fester Slot 1..10
# Beim ersten Mal: lb_log_slot noch nicht gesetzt → insert_new_player
execute as @a unless score @s lb_log_slot matches 1..10 run function sa:leaderboard/logging/assign_slot
execute as @a if score @s lb_log_slot matches 1 run scoreboard players operation lb_log_s1 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 2 run scoreboard players operation lb_log_s2 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 3 run scoreboard players operation lb_log_s3 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 4 run scoreboard players operation lb_log_s4 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 5 run scoreboard players operation lb_log_s5 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 6 run scoreboard players operation lb_log_s6 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 7 run scoreboard players operation lb_log_s7 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 8 run scoreboard players operation lb_log_s8 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 9 run scoreboard players operation lb_log_s9 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 10 run scoreboard players operation lb_log_s10 lb_log_score = @s logging_lvl

# ── lb_log_name für Online-Spieler setzen (aus lb_log_slot) ───────────────
execute as @a if score @s lb_log_slot matches 1 run scoreboard players set @s lb_log_name 1
execute as @a if score @s lb_log_slot matches 2 run scoreboard players set @s lb_log_name 2
execute as @a if score @s lb_log_slot matches 3 run scoreboard players set @s lb_log_name 3
execute as @a if score @s lb_log_slot matches 4 run scoreboard players set @s lb_log_name 4
execute as @a if score @s lb_log_slot matches 5 run scoreboard players set @s lb_log_name 5
execute as @a if score @s lb_log_slot matches 6 run scoreboard players set @s lb_log_name 6
execute as @a if score @s lb_log_slot matches 7 run scoreboard players set @s lb_log_name 7
execute as @a if score @s lb_log_slot matches 8 run scoreboard players set @s lb_log_name 8
execute as @a if score @s lb_log_slot matches 9 run scoreboard players set @s lb_log_name 9
execute as @a if score @s lb_log_slot matches 10 run scoreboard players set @s lb_log_name 10

# ── Slots absteigend sortieren ─────────────────────────────────────────────
function sa:leaderboard/logging/sort_pass
