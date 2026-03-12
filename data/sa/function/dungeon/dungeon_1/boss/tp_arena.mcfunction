execute in sa:dungeon_arena_1 run tp @s 0 100 0

execute unless score server dungeon_arena_one_init matches 1 run effect give @s slow_falling 2 30
execute unless score server dungeon_arena_one_init matches 1 in sa:dungeon_arena_1 run tp @s 0 104 0
execute unless score server dungeon_arena_one_init matches 1 run schedule function sa:setup/dungeon/arena_1 10t
