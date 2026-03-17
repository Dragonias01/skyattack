scoreboard players reset @s temp_gambling
scoreboard players reset @s gambling_trigger

execute store result score @s temp_gambling run experience query @s levels

execute if score @s temp_gambling matches 100.. run function sa:system/lotterie/spawn_loot
execute if score @s temp_gambling matches ..99 run tellraw @a ["[",{"text":"Loot Master","color":"yellow"},"] ",{"text":"Du hast Leider zu Wenige Level!","color":"red"}]
