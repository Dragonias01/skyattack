# LEADERBOARD SORT: Fishing
# Datei: sa:leaderboard/fishing/sort
# Version: 1.21.11

scoreboard players reset @a lb_fsh_name

execute as @a unless score @s lb_fsh_slot matches 1..5 run function sa:leaderboard/fishing/assign_slot
execute as @a if score @s lb_fsh_slot matches 1 run scoreboard players operation lb_fsh_s1 lb_fsh_score = @s fishing_lvl
execute as @a if score @s lb_fsh_slot matches 2 run scoreboard players operation lb_fsh_s2 lb_fsh_score = @s fishing_lvl
execute as @a if score @s lb_fsh_slot matches 3 run scoreboard players operation lb_fsh_s3 lb_fsh_score = @s fishing_lvl
execute as @a if score @s lb_fsh_slot matches 4 run scoreboard players operation lb_fsh_s4 lb_fsh_score = @s fishing_lvl
execute as @a if score @s lb_fsh_slot matches 5 run scoreboard players operation lb_fsh_s5 lb_fsh_score = @s fishing_lvl

execute as @a if score @s lb_fsh_slot matches 1 run scoreboard players set @s lb_fsh_name 1
execute as @a if score @s lb_fsh_slot matches 2 run scoreboard players set @s lb_fsh_name 2
execute as @a if score @s lb_fsh_slot matches 3 run scoreboard players set @s lb_fsh_name 3
execute as @a if score @s lb_fsh_slot matches 4 run scoreboard players set @s lb_fsh_name 4
execute as @a if score @s lb_fsh_slot matches 5 run scoreboard players set @s lb_fsh_name 5

function sa:leaderboard/fishing/sort_pass
