place template sa:entry_arena -4 99 -4
place template sa:boss_arena_1 -23 98 -51

kill @e[type=interaction,tag=npc]
kill @e[type=interaction,tag=spawn_boss1]
kill @e[type=text_display,tag=spawn_boss1]
kill @e[type=item_display,tag=spawn_boss1]




execute in sa:dungeon_arena_1 run function sa:setup/dungeon/setup_interactions
function sa:setup/dungeon/bossbar

tp @s 0 100 0
scoreboard players set server dungeon_arena_one_init 1
