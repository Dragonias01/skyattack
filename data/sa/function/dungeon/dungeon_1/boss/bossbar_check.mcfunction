execute store result bossbar minecraft:boss_1 value run data get entity @e[tag=boss1,limit=1] Health
execute in sa:dungeon_arena_1 as @e[tag=boss1] run bossbar set minecraft:boss_1 players @a[distance=..100]
execute in sa:dungeon_arena_1 as @a unless entity @e[tag=boss1,distance=..100] run bossbar set minecraft:boss_1 players true
execute in sa:dungeon_arena_1 as @a if entity @e[tag=boss1,distance=..100] run bossbar set minecraft:boss_1 players @s
