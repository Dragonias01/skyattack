# ============================================================================
# LEADERBOARD: Neuen Spieler einem freien Slot zuweisen
# Datei: sa:leaderboard/logging/assign_slot
# Version: 1.21.11
#
# Läuft als @s (Spieler ohne lb_log_slot).
# lb_slotX_taken = 0 bedeutet Slot frei, 1 bedeutet belegt.
# Diese Fake-Player sind persistent → funktioniert für Offline-Spieler.
# ============================================================================

# Slot 1: falls frei und @s noch keinen Slot hat → zuweisen und als belegt markieren
execute if score lb_slot1_taken lb_log_score matches 0 run scoreboard players set @s lb_log_slot 1
execute if score lb_slot1_taken lb_log_score matches 0 run scoreboard players set lb_slot1_taken lb_log_score 1
execute if score lb_slot2_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 2
execute if score lb_slot2_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot2_taken lb_log_score 1
execute if score lb_slot3_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 3
execute if score lb_slot3_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot3_taken lb_log_score 1
execute if score lb_slot4_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 4
execute if score lb_slot4_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot4_taken lb_log_score 1
execute if score lb_slot5_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 5
execute if score lb_slot5_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot5_taken lb_log_score 1
execute if score lb_slot6_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 6
execute if score lb_slot6_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot6_taken lb_log_score 1
execute if score lb_slot7_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 7
execute if score lb_slot7_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot7_taken lb_log_score 1
execute if score lb_slot8_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 8
execute if score lb_slot8_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot8_taken lb_log_score 1
execute if score lb_slot9_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 9
execute if score lb_slot9_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot9_taken lb_log_score 1
execute if score lb_slot10_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set @s lb_log_slot 10
execute if score lb_slot10_taken lb_log_score matches 0 unless score @s lb_log_slot matches 1..10 run scoreboard players set lb_slot10_taken lb_log_score 1
 