execute as @s if score @s EAxe_learn matches 4 run scoreboard players set @s EAxe_learn 5
execute as @s if score @s EAxe_learn matches 3 run scoreboard players set @s EAxe_learn 4
execute as @s if score @s EAxe_learn matches 2 run scoreboard players set @s EAxe_learn 3
execute as @s if score @s EAxe_learn matches 1 run scoreboard players set @s EAxe_learn 2
execute as @s if score @s EAxe_learn matches 0 run scoreboard players set @s EAxe_learn 1

execute as @s if score @s EAxe_learn matches 1 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," Du hast nun ",{"text":"1","color":"green"},"/",{"text":"5","color":"green"}," der Element Axe Gelernt"]
execute as @s if score @s EAxe_learn matches 2 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," Du hast nun ",{"text":"2","color":"green"},"/",{"text":"5","color":"green"}," der Element Axe Gelernt"]
execute as @s if score @s EAxe_learn matches 3 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," Du hast nun ",{"text":"3","color":"green"},"/",{"text":"5","color":"green"}," der Element Axe Gelernt"]
execute as @s if score @s EAxe_learn matches 4 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," Du hast nun ",{"text":"4","color":"green"},"/",{"text":"5","color":"green"}," der Element Axe Gelernt"]
execute as @s if score @s EAxe_learn matches 5 run tellraw @s ["",{"text":"[Server]","color":"yellow"}," Du hast nun ",{"text":"die ","color":"white"},{"text":"Element Axe Gelernt","color":"green"}," Erlernt"]
execute as @s if score @s EAxe_learn matches 5 run recipe give @s element_tools/common/element_axe_common