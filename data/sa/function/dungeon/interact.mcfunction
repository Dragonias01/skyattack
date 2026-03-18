advancement revoke @s only portal_interact

#Wenn Inaktiv
execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] if score server dungeon_1_status matches 0 run function sa:dungeon/dungeon_1/interact/check
#wenn Aktiv
execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] if score server dungeon_1_status matches 1 run function sa:dungeon/dungeon_1/join_gundeon