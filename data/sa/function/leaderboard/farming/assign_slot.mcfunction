# LEADERBOARD: Slot-Zuweisung für Farming
# Datei: sa:leaderboard/farming/assign_slot
# Version: 1.21.11

execute if score lb_slot1_taken lb_far_score matches 0 run scoreboard players set @s lb_far_slot 1
execute if score lb_slot1_taken lb_far_score matches 0 run scoreboard players set lb_slot1_taken lb_far_score 1
execute if score lb_slot2_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set @s lb_far_slot 2
execute if score lb_slot2_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set lb_slot2_taken lb_far_score 1
execute if score lb_slot3_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set @s lb_far_slot 3
execute if score lb_slot3_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set lb_slot3_taken lb_far_score 1
execute if score lb_slot4_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set @s lb_far_slot 4
execute if score lb_slot4_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set lb_slot4_taken lb_far_score 1
execute if score lb_slot5_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set @s lb_far_slot 5
execute if score lb_slot5_taken lb_far_score matches 0 unless score @s lb_far_slot matches 1..5 run scoreboard players set lb_slot5_taken lb_far_score 1
