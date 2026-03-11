# ============================================================================
# LEADERBOARD: Spieler in den richtigen Slot schreiben
# Datei: sa:leaderboard/logging/insert_write
# Version: 1.21.11
#
# Läuft als @s (der Spieler der eingetragen werden soll).
# lb_min_slot enthält welcher Slot überschrieben wird (1–10).
# ============================================================================

# ============================================================================
# LEADERBOARD: Spieler in den richtigen Slot schreiben
# Datei: sa:leaderboard/logging/insert_write
# Version: 1.21.11
#
# Läuft als @s (der Spieler der eingetragen werden soll).
# lb_min_slot enthält welcher Slot überschrieben wird (1–10).
#
# Konzept: Es gibt zwei Objectives:
#  lb_log_score → enthält den Score-Wert je Slot (lb_log_s1..s10)
#  lb_log_name  → der Fake-Player-Name IST der Spielername.
#          Jeder Slot-Fake-Player in lb_log_name heißt wie der Spieler.
#          Score 1 = "dieser Slot hat diesen Spieler".
#
# Im text_display JSON: {"score":{"name":"lb_log_n1","objective":"lb_log_name"}}
# zeigt den Namen des Fake-Players an → also den Spielernamen.
#
# ACHTUNG: lb_log_n1..n10 sind Fake-Player in lb_log_name.
#     Deren Name = Spielername des Platzierten Spielers.
#     Das Setzen geschieht über: scoreboard players set <SpielerName> lb_log_n1 1
#     → dafür muss der alte Name aus Slot gelöscht und neu gesetzt werden.
# ============================================================================

# Schritt 1: Alten Slot-Inhaber aus lb_log_name löschen (Score auf 0)
execute if score lb_min_slot lb_log_score matches 1 run function sa:leaderboard/logging/clear_slot {slot:"1"}
execute if score lb_min_slot lb_log_score matches 2 run function sa:leaderboard/logging/clear_slot {slot:"2"}
execute if score lb_min_slot lb_log_score matches 3 run function sa:leaderboard/logging/clear_slot {slot:"3"}
execute if score lb_min_slot lb_log_score matches 4 run function sa:leaderboard/logging/clear_slot {slot:"4"}
execute if score lb_min_slot lb_log_score matches 5 run function sa:leaderboard/logging/clear_slot {slot:"5"}
execute if score lb_min_slot lb_log_score matches 6 run function sa:leaderboard/logging/clear_slot {slot:"6"}
execute if score lb_min_slot lb_log_score matches 7 run function sa:leaderboard/logging/clear_slot {slot:"7"}
execute if score lb_min_slot lb_log_score matches 8 run function sa:leaderboard/logging/clear_slot {slot:"8"}
execute if score lb_min_slot lb_log_score matches 9 run function sa:leaderboard/logging/clear_slot {slot:"9"}
execute if score lb_min_slot lb_log_score matches 10 run function sa:leaderboard/logging/clear_slot {slot:"10"}

# Schritt 2: Neuen Score in den Slot schreiben
execute if score lb_min_slot lb_log_score matches 1 run scoreboard players operation lb_log_s1 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 2 run scoreboard players operation lb_log_s2 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 3 run scoreboard players operation lb_log_s3 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 4 run scoreboard players operation lb_log_s4 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 5 run scoreboard players operation lb_log_s5 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 6 run scoreboard players operation lb_log_s6 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 7 run scoreboard players operation lb_log_s7 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 8 run scoreboard players operation lb_log_s8 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 9 run scoreboard players operation lb_log_s9 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 10 run scoreboard players operation lb_log_s10 lb_log_score = @s logging_lvl

# Schritt 3: Spielernamen als Fake-Player in lb_log_name für den Slot setzen
# Der Spieler setzt seinen eigenen Score auf die Slot-Nummer
# → Fake-Player Name = Spielername, Value = Slot-Nummer
execute if score lb_min_slot lb_log_score matches 1 run scoreboard players set @s lb_log_name 1
execute if score lb_min_slot lb_log_score matches 2 run scoreboard players set @s lb_log_name 2
execute if score lb_min_slot lb_log_score matches 3 run scoreboard players set @s lb_log_name 3
execute if score lb_min_slot lb_log_score matches 4 run scoreboard players set @s lb_log_name 4
execute if score lb_min_slot lb_log_score matches 5 run scoreboard players set @s lb_log_name 5
execute if score lb_min_slot lb_log_score matches 6 run scoreboard players set @s lb_log_name 6
execute if score lb_min_slot lb_log_score matches 7 run scoreboard players set @s lb_log_name 7
execute if score lb_min_slot lb_log_score matches 8 run scoreboard players set @s lb_log_name 8
execute if score lb_min_slot lb_log_score matches 9 run scoreboard players set @s lb_log_name 9
execute if score lb_min_slot lb_log_score matches 10 run scoreboard players set @s lb_log_name 10

execute if score lb_min_slot lb_log_score matches 1 run scoreboard players operation lb_log_s1 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 1 run function sa:leaderboard/logging/insert_write {slot:"s1"}

execute if score lb_min_slot lb_log_score matches 2 run scoreboard players operation lb_log_s2 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 2 run function sa:leaderboard/logging/insert_write {slot:"s2"}

execute if score lb_min_slot lb_log_score matches 3 run scoreboard players operation lb_log_s3 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 3 run function sa:leaderboard/logging/insert_write {slot:"s3"}

execute if score lb_min_slot lb_log_score matches 4 run scoreboard players operation lb_log_s4 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 4 run function sa:leaderboard/logging/insert_write {slot:"s4"}

execute if score lb_min_slot lb_log_score matches 5 run scoreboard players operation lb_log_s5 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 5 run function sa:leaderboard/logging/insert_write {slot:"s5"}

execute if score lb_min_slot lb_log_score matches 6 run scoreboard players operation lb_log_s6 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 6 run function sa:leaderboard/logging/insert_write {slot:"s6"}

execute if score lb_min_slot lb_log_score matches 7 run scoreboard players operation lb_log_s7 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 7 run function sa:leaderboard/logging/insert_write {slot:"s7"}

execute if score lb_min_slot lb_log_score matches 8 run scoreboard players operation lb_log_s8 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 8 run function sa:leaderboard/logging/insert_write {slot:"s8"}

execute if score lb_min_slot lb_log_score matches 9 run scoreboard players operation lb_log_s9 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 9 run function sa:leaderboard/logging/insert_write {slot:"s9"}

execute if score lb_min_slot lb_log_score matches 10 run scoreboard players operation lb_log_s10 lb_log_score = @s logging_lvl
execute if score lb_min_slot lb_log_score matches 10 run function sa:leaderboard/logging/insert_write {slot:"s10"}
