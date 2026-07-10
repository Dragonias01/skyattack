# ============================================================================
# DUNGEON 2 - CLOSE
# Hardcut: teleport alle Spieler raus und cleanup
# ============================================================================

tellraw @a {"text":"Dungeon 4 has closed!","color":"red"}

# teleport players out of dungeon dimension
    execute in sa:dungeon4 as @a[tag=dg4_in_dungeon] run tp @s 0 100 0
    execute in sa:dungeon4 as @a[tag=dg4_in_dungeon] run execute in sa:hub run tp @s 0 100 0

# teleport players out of boss dimension
    execute in sa:dungeon_arena_2 as @a[tag=dg4_in_dungeon] run tp @s[tag=dg4_in_dungeon] 0 100 0
    execute in sa:dungeon_arena_2 as @a[tag=dg4_in_dungeon] run execute in sa:hub run tp @s[tag=dg4_in_dungeon] 0 100 0

function sa:dungeon/floor2/dungeon_4/cleanup

# reset values
    scoreboard players set server dg4_state 0
    scoreboard players set server dg4_timer 0
    scoreboard players set server dg4_players_dungeon 0
    scoreboard players set server dg4_players_boss 0
    scoreboard players set server dg4_generated 0
    scoreboard players set server dg4_loot_generated 0
