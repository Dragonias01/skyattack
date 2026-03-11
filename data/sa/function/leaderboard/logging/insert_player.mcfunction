# ============================================================================
# LEADERBOARD: Spieler einsortieren | FIX Bug 2
# Datei: data/sa/function/leaderboard/logging/insert_player.mcfunction
# Version: 1.21.11
# ============================================================================

scoreboard players operation lb_insert_val lb_log_score = @s logging_lvl

scoreboard players operation lb_min_val lb_log_score = lb_log_s10 lb_log_score
scoreboard players set lb_min_slot lb_log_score 10

execute if score lb_log_s9 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s9 lb_log_score
execute if score lb_log_s9 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 9

execute if score lb_log_s8 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s8 lb_log_score
execute if score lb_log_s8 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 8

execute if score lb_log_s7 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s7 lb_log_score
execute if score lb_log_s7 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 7

execute if score lb_log_s6 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s6 lb_log_score
execute if score lb_log_s6 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 6

execute if score lb_log_s5 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s5 lb_log_score
execute if score lb_log_s5 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 5

execute if score lb_log_s4 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s4 lb_log_score
execute if score lb_log_s4 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 4

execute if score lb_log_s3 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s3 lb_log_score
execute if score lb_log_s3 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 3

execute if score lb_log_s2 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s2 lb_log_score
execute if score lb_log_s2 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 2

execute if score lb_log_s1 lb_log_score < lb_min_val lb_log_score run scoreboard players operation lb_min_val lb_log_score = lb_log_s1 lb_log_score
execute if score lb_log_s1 lb_log_score < lb_min_val lb_log_score run scoreboard players set lb_min_slot lb_log_score 1

# FIX Bug 2: >= statt > (Level 0 Spieler werden jetzt eingetragen)
execute if score lb_insert_val lb_log_score >= lb_min_val lb_log_score run function sa:leaderboard/logging/insert_write
