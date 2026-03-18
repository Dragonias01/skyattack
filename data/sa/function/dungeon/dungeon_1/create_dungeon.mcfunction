# Teleportiere in die Test-Dimension
execute in sa:dungeon1 run tp @s 0 200 0

execute store result score #x temp run random value -10000..10000
execute store result score #z temp run random value -10000..10000

execute store result storage sa:dungeon_1_coords x int 1 run scoreboard players get #x temp
execute store result storage sa:dungeon_1_coords z int 1 run scoreboard players get #z temp

execute in sa:dungeon1 run function sa:dungeon/internal/tp_random with storage sa:dungeon_1_coords
execute in sa:dungeon1 run setblock ~ ~ ~ bedrock

effect give @s blindness 1
effect give @s slow_falling 1 99

# Spawn-Befehl NACH dem Teleport, mit dem Spieler als Anker
schedule function sa:dungeon/dungeon_1/generate_dungeon 2t
