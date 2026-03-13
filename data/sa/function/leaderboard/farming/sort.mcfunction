# LEADERBOARD SORT: Farming
# Datei: sa:leaderboard/farming/sort
# Version: 1.21.11

scoreboard players reset @a lb_far_name

execute as @a unless score @s lb_far_slot matches 1..5 run function sa:leaderboard/farming/assign_slot
execute as @a if score @s lb_far_slot matches 1 run scoreboard players operation lb_far_s1 lb_far_score = @s farming_lvl
execute as @a if score @s lb_far_slot matches 2 run scoreboard players operation lb_far_s2 lb_far_score = @s farming_lvl
execute as @a if score @s lb_far_slot matches 3 run scoreboard players operation lb_far_s3 lb_far_score = @s farming_lvl
execute as @a if score @s lb_far_slot matches 4 run scoreboard players operation lb_far_s4 lb_far_score = @s farming_lvl
execute as @a if score @s lb_far_slot matches 5 run scoreboard players operation lb_far_s5 lb_far_score = @s farming_lvl

execute as @a if score @s lb_far_slot matches 1 run scoreboard players set @s lb_far_name 1
execute as @a if score @s lb_far_slot matches 2 run scoreboard players set @s lb_far_name 2
execute as @a if score @s lb_far_slot matches 3 run scoreboard players set @s lb_far_name 3
execute as @a if score @s lb_far_slot matches 4 run scoreboard players set @s lb_far_name 4
execute as @a if score @s lb_far_slot matches 5 run scoreboard players set @s lb_far_name 5

function sa:leaderboard/farming/sort_pass
