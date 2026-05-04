execute as @s if score @s ERod_learn matches 4 run scoreboard players set @s ERod_learn 5
execute as @s if score @s ERod_learn matches 3 run scoreboard players set @s ERod_learn 4
execute as @s if score @s ERod_learn matches 2 run scoreboard players set @s ERod_learn 3
execute as @s if score @s ERod_learn matches 1 run scoreboard players set @s ERod_learn 2
execute as @s if score @s ERod_learn matches 0 run scoreboard players set @s ERod_learn 1

execute as @s if score @s ERod_learn matches 1 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," you have learned ",{"text":"1","color":"green"},"/",{"text":"5","color":"green"}," of the Element Rod"]
execute as @s if score @s ERod_learn matches 2 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," you have learned ",{"text":"2","color":"green"},"/",{"text":"5","color":"green"}," of the Element Rod"]
execute as @s if score @s ERod_learn matches 3 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," you have learned ",{"text":"3","color":"green"},"/",{"text":"5","color":"green"}," of the Element Rod"]
execute as @s if score @s ERod_learn matches 4 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," you have learned ",{"text":"4","color":"green"},"/",{"text":"5","color":"green"}," of the Element Rod"]
execute as @s if score @s ERod_learn matches 5 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," you have learned ",{"text":"the ","color":"white"},{"text":"Element Rod","color":"green"},". You can now craft it!"]
execute as @s if score @s ERod_learn matches 5 run recipe give @s element_tools/common/element_rod_common
