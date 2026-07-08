#Home Teleport
execute as @s[scores={menue=11}] if score @s island matches ..0 run tellraw @s {"text":"You need to choose an Island to teleport to!","color":"red"}
execute as @s[scores={menue=11}] if score @s island matches 1 run execute in minecraft:overworld run tp @s 0 100 -250
execute as @s[scores={menue=11}] if score @s island matches 2 run execute in minecraft:overworld run tp @s 0 100 -250
execute as @s[scores={menue=11}] if score @s island matches 3 run execute in minecraft:overworld run tp @s 250 100 0
execute as @s[scores={menue=11}] if score @s island matches 4 run execute in minecraft:overworld run tp @s 177 100 177
execute as @s[scores={menue=11}] if score @s island matches 5 run execute in minecraft:overworld run tp @s 0 100 250
execute as @s[scores={menue=11}] if score @s island matches 6 run execute in minecraft:overworld run tp @s -177 100 177
execute as @s[scores={menue=11}] if score @s island matches 7 run execute in minecraft:overworld run tp @s -250 100 0
execute as @s[scores={menue=11}] if score @s island matches 8 run execute in minecraft:overworld run tp @s -177 100 -177

execute as @s[scores={menue=12}] run execute in minecraft:overworld run tp @s 0 100 0

execute as @s[scores={menue=13},gamemode=!creative] if data storage sa:goal {goal_ship:{completed:true}} run function sa:tp/hub
execute as @s[scores={menue=13},gamemode=!creative] unless data storage sa:goal {goal_ship:{completed:true}} run tellraw @s {"text":"You need to complete the goal on the main island to unlock this Teleport!","color":"red"}
execute as @s[scores={menue=13},gamemode=creative] run function sa:tp/hub

execute as @s[scores={menue=14},gamemode=!creative] if data storage sa:goal {goal_dungeon:{completed:true}} run function sa:tp/dungeonhub
execute as @s[scores={menue=14},gamemode=!creative] unless data storage sa:goal {goal_dungeon:{completed:true}} run tellraw @s {"text":"You need to complete the Dungeon Goal to unlock this Teleporter!","color":"red"}
execute as @s[scores={menue=14},gamemode=creative] run function sa:tp/dungeonhub

scoreboard players reset @s menue
