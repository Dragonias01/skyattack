# LEADERBOARD SORT: Combat
# Datei: sa:leaderboard/combat/sort
# Version: 1.21.11

scoreboard players reset @a lb_com_name

execute as @a unless score @s lb_com_slot matches 1..5 run function sa:leaderboard/combat/assign_slot
execute as @a if score @s lb_com_slot matches 1 run scoreboard players operation lb_com_s1 lb_com_score = @s combat_lvl
execute as @a if score @s lb_com_slot matches 2 run scoreboard players operation lb_com_s2 lb_com_score = @s combat_lvl
execute as @a if score @s lb_com_slot matches 3 run scoreboard players operation lb_com_s3 lb_com_score = @s combat_lvl
execute as @a if score @s lb_com_slot matches 4 run scoreboard players operation lb_com_s4 lb_com_score = @s combat_lvl
execute as @a if score @s lb_com_slot matches 5 run scoreboard players operation lb_com_s5 lb_com_score = @s combat_lvl

execute as @a if score @s lb_com_slot matches 1 run scoreboard players set @s lb_com_name 1
execute as @a if score @s lb_com_slot matches 2 run scoreboard players set @s lb_com_name 2
execute as @a if score @s lb_com_slot matches 3 run scoreboard players set @s lb_com_name 3
execute as @a if score @s lb_com_slot matches 4 run scoreboard players set @s lb_com_name 4
execute as @a if score @s lb_com_slot matches 5 run scoreboard players set @s lb_com_name 5

function sa:leaderboard/combat/sort_pass
