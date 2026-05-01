function sa:dungeon/internal/structure_spawn with storage sa:dungeon_1_coords
execute as @e[type=marker,nbt={}] if entity @s[distance=..10] run function sa:marker/spawn_dungeon_exit
execute in sa:dungeon1 run kill @e[x=0,y=0,z=0,distance=..10000,type=item]
