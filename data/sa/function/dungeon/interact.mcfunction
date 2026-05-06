advancement revoke @s only portal_interact

# Dungeon Master Interaction (Dungeon 1)
    execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] if score server dg1_state matches 0 run function sa:dungeon/dungeon_1/open
    execute as @s if entity @e[type=interaction,tag=dungeon1,distance=..5,limit=1] if score server dg1_state matches 1.. run function sa:dungeon/dungeon_1/join
