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

execute as @s[scores={menue=13}] if score server goal1 matches 1 run function sa:tp/hub
execute as @s[scores={menue=13}] unless score server goal1 matches 1 run tellraw @s {"text":"You need to complete Goal 1 to unlock this Teleporter!","color":"red"}

execute as @s[scores={menue=14}] if score server hub_dungeon_done matches 1 run function sa:tp/dungeonhub
execute as @s[scores={menue=14}] unless score server hub_dungeon_done matches 1 run tellraw @s {"text":"You need to complete the Dungeon Goal to unlock this Teleporter!","color":"red"}


scoreboard players reset @s menue
