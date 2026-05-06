advancement revoke @s only portal_interact
# Dungeon Master Interaction (Dungeon 1)


execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] run function sa:dungeon/dungeon_1/check_dungeon_status
