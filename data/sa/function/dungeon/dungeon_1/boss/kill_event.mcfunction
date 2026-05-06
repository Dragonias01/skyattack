# ============================================================================
# DUNGEON 1 - BOSS KILL EVENT
# Loot wird nur einmal generiert
# ============================================================================

execute if score server dg1_loot_generated matches 1 run return 1

tellraw @a {"text":"Boss defeated!","color":"gold"}

# Loot chest erzeugen
    execute in sa:dungeon_arena_1 run setblock 0 100 5 chest replace

# Loot generieren
    execute in sa:dungeon_arena_1 run loot insert 0 100 5 loot sa:boss_1

scoreboard players set server dg1_loot_generated 1
scoreboard players set server dg1_boss_state 2
scoreboard players set server dg1_state 4

function sa:dungeon/dungeon_1/boss/clear_bossbar
