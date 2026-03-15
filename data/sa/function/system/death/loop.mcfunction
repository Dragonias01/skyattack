xp add @s 1 levels
scoreboard players remove @s temp_half_lvl 1
execute if score @s temp_half_lvl matches 1.. run function sa:system/death/loop