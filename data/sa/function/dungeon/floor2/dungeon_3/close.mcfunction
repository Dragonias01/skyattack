# ============================================================================
# DUNGEON 1 - CLOSE
# Hardcut: teleport alle Spieler raus und cleanup
# ============================================================================

tellraw @a {"text":"Dungeon 3 has closed!","color":"red"}

# teleport players out of dungeon dimension
    execute in sa:dungeon3 as @a[tag=dg3_in_dungeon] run tp @s 0 100 0
    execute in sa:dungeon3 as @a[tag=dg3_in_dungeon] run execute in sa:hub run tp @s 0 100 0

# teleport players out of boss dimension
    execute in sa:dungeon_arena_2 as @a[tag=dg3_in_dungeon] run tp @s[tag=dg3_in_dungeon] 0 100 0
    execute in sa:dungeon_arena_2 as @a[tag=dg3_in_dungeon] run execute in sa:hub run tp @s[tag=dg3_in_dungeon] 0 100 0

function sa:dungeon/floor2/dungeon_3/cleanup

# reset values
    scoreboard players set server dg3_state 0
    scoreboard players set server dg3_timer 0
    scoreboard players set server dg3_players_dungeon 0
    scoreboard players set server dg3_players_boss 0
    #scoreboard players set server f2_boss_state 0
    scoreboard players set server dg3_generated 0
    scoreboard players set server dg3_loot_generated 0
