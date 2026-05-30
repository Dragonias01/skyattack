execute in sa:dungeon_arena_1 run place template sa:entry_arena -4 99 -4
execute in sa:dungeon_arena_1 run place template sa:boss_arena_1 -23 98 -51

execute in sa:dungeon_arena_1 run kill @e[type=interaction,tag=npc]
execute in sa:dungeon_arena_1 run kill @e[type=interaction,tag=spawn_boss1]
execute in sa:dungeon_arena_1 run kill @e[type=text_display,tag=spawn_boss1]
execute in sa:dungeon_arena_1 run kill @e[type=item_display,tag=spawn_boss1]

execute in sa:dungeon_arena_1 run function sa:setup/dungeon/setup_interactions
execute in sa:dungeon_arena_1 run function sa:setup/dungeon/bossbar

execute in sa:dungeon_arena_1 run tp @s 0 100 0
scoreboard players set server dungeon_arena_one_init 1
