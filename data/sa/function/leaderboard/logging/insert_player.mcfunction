# sa:leaderboard/logging/insert_player
# Läuft als @s
execute if score lb_insert_idx lb_log_score matches 0 run scoreboard players operation lb_log_s1 lb_log_score = @s logging_lvl
execute if score lb_insert_idx lb_log_score matches 0 run scoreboard players set @s lb_log_name 1
execute if score lb_insert_idx lb_log_score matches 1 run scoreboard players operation lb_log_s2 lb_log_score = @s logging_lvl
execute if score lb_insert_idx lb_log_score matches 1 run scoreboard players set @s lb_log_name 2
execute if score lb_insert_idx lb_log_score matches 2 run scoreboard players operation lb_log_s3 lb_log_score = @s logging_lvl
execute if score lb_insert_idx lb_log_score matches 2 run scoreboard players set @s lb_log_name 3
execute if score lb_insert_idx lb_log_score matches 3 run scoreboard players operation lb_log_s4 lb_log_score = @s logging_lvl
execute if score lb_insert_idx lb_log_score matches 3 run scoreboard players set @s lb_log_name 4
execute if score lb_insert_idx lb_log_score matches 4 run scoreboard players operation lb_log_s5 lb_log_score = @s logging_lvl
execute if score lb_insert_idx lb_log_score matches 4 run scoreboard players set @s lb_log_name 5
execute if score lb_insert_idx lb_log_score matches 0..4 run scoreboard players add lb_insert_idx lb_log_score 1
