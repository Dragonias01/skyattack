# LEADERBOARD SORT: Logging
# Datei: sa:leaderboard/logging/sort
# Version: 1.21.11

scoreboard players reset @a lb_log_name

execute as @a unless score @s lb_log_slot matches 1..5 run function sa:leaderboard/logging/assign_slot
execute as @a if score @s lb_log_slot matches 1 run scoreboard players operation lb_log_s1 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 2 run scoreboard players operation lb_log_s2 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 3 run scoreboard players operation lb_log_s3 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 4 run scoreboard players operation lb_log_s4 lb_log_score = @s logging_lvl
execute as @a if score @s lb_log_slot matches 5 run scoreboard players operation lb_log_s5 lb_log_score = @s logging_lvl

execute as @a if score @s lb_log_slot matches 1 run scoreboard players set @s lb_log_name 1
execute as @a if score @s lb_log_slot matches 2 run scoreboard players set @s lb_log_name 2
execute as @a if score @s lb_log_slot matches 3 run scoreboard players set @s lb_log_name 3
execute as @a if score @s lb_log_slot matches 4 run scoreboard players set @s lb_log_name 4
execute as @a if score @s lb_log_slot matches 5 run scoreboard players set @s lb_log_name 5

function sa:leaderboard/logging/sort_pass
