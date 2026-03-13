# LEADERBOARD SORT: Mining
# Datei: sa:leaderboard/mining/sort
# Version: 1.21.11

scoreboard players reset @a lb_min_name

execute as @a unless score @s lb_min_slot matches 1..5 run function sa:leaderboard/mining/assign_slot
execute as @a if score @s lb_min_slot matches 1 run scoreboard players operation lb_min_s1 lb_min_score = @s mining_lvl
execute as @a if score @s lb_min_slot matches 2 run scoreboard players operation lb_min_s2 lb_min_score = @s mining_lvl
execute as @a if score @s lb_min_slot matches 3 run scoreboard players operation lb_min_s3 lb_min_score = @s mining_lvl
execute as @a if score @s lb_min_slot matches 4 run scoreboard players operation lb_min_s4 lb_min_score = @s mining_lvl
execute as @a if score @s lb_min_slot matches 5 run scoreboard players operation lb_min_s5 lb_min_score = @s mining_lvl

execute as @a if score @s lb_min_slot matches 1 run scoreboard players set @s lb_min_name 1
execute as @a if score @s lb_min_slot matches 2 run scoreboard players set @s lb_min_name 2
execute as @a if score @s lb_min_slot matches 3 run scoreboard players set @s lb_min_name 3
execute as @a if score @s lb_min_slot matches 4 run scoreboard players set @s lb_min_name 4
execute as @a if score @s lb_min_slot matches 5 run scoreboard players set @s lb_min_name 5

function sa:leaderboard/mining/sort_pass
