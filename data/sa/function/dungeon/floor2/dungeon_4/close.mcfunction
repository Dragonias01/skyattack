# ============================================================================
# DUNGEON 2 - CLOSE
# Hardcut: teleport alle Spieler raus und cleanup
# ============================================================================

tellraw @a {"text":"Dungeon 2 has closed!","color":"red"}

# teleport players out of dungeon dimension
    execute in sa:dungeon2 as @a[tag=dg2_in_dungeon] run tp @s 0 100 0
    execute in sa:dungeon2 as @a[tag=dg2_in_dungeon] run execute in sa:hub run tp @s 0 100 0

# teleport players out of boss dimension
    execute in sa:dungeon_arena_1 as @a[tag=dg2_in_dungeon] run tp @s[tag=dg2_in_dungeon] 0 100 0
    execute in sa:dungeon_arena_1 as @a[tag=dg2_in_dungeon] run execute in sa:hub run tp @s[tag=dg2_in_dungeon] 0 100 0

function sa:dungeon/floor1/dungeon_2/cleanup

# reset values
    scoreboard players set server dg2_state 0
    scoreboard players set server dg2_timer 0
    scoreboard players set server dg2_players_dungeon 0
    scoreboard players set server dg2_players_boss 0
    scoreboard players set server dg2_generated 0
    scoreboard players set server dg2_loot_generated 0
