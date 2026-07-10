advancement revoke @s only portal_interact
# Dungeon Master Interaction (Dungeon 1)

#Floor 1
execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] run function sa:dungeon/floor1/dungeon_1/check_dungeon_status
execute as @s if entity @e[type=interaction,tag=dungeon2,distance=..5,limit=1] run function sa:dungeon/floor1/dungeon_2/check_dungeon_status

#Floor 2
execute as @s if entity @e[type=interaction,tag=dungeon3,distance=..5,limit=1] run function sa:dungeon/floor2/dungeon_3/check_dungeon_status
execute as @s if entity @e[type=interaction,tag=dungeon4,distance=..5,limit=1] run function sa:dungeon/floor2/dungeon_4/check_dungeon_status

