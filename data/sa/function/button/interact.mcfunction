advancement revoke @s only button_interact

# Button Interaction Router
    execute as @s if entity @e[type=interaction,tag=enter_dungeon_1,distance=..5] run function sa:dungeon/dungeon_1/join
    execute as @s if entity @e[type=interaction,tag=enter_boss_room,distance=..5] run function sa:dungeon/dungeon_1/arena/tp_arena
    execute as @s if entity @e[type=interaction,tag=spawn_boss1,distance=..5] if score server dg1_boss_state matches 0 run function sa:dungeon/dungeon_1/boss/spawn
