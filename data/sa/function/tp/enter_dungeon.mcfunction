# Teleportiere in die Test-Dimension
execute in sa:dungeon1 run tp @s 0 200 0

execute store result score #x temp run random value -1000..1000
execute store result score #z temp run random value -1000..1000

execute store result storage sa:temp x int 1 run scoreboard players get #x temp
execute store result storage sa:temp z int 1 run scoreboard players get #z temp

execute in sa:dungeon1 run function sa:dungeon/internal/tp_random with storage sa:temp

effect give @a blindness 5
effect give @s slow_falling 5 99

# Spawn-Befehl NACH dem Teleport, mit dem Spieler als Anker
schedule function sa:dungeon/spawn_structure 20t