advancement revoke @s only button_interact

execute as @s if entity @e[type=interaction,tag=enter_dungeon_1,distance=..5] run function sa:dungeon/dungeon_1/arena/tp_arena
execute as @s if entity @e[type=interaction,tag=spawn_boss1,distance=..5] run function sa:dungeon/dungeon_1/boss/spawn_boss