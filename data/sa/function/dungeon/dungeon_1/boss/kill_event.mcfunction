# ============================================================================
# DUNGEON 1 - BOSS KILL EVENT
# Loot wird nur einmal generiert
# ============================================================================
    execute in sa:dungeon_arena_1 run function sa:setup/dungeon/setup_interactions
    advancement revoke @s only boss_check/kill_boss1

execute in sa:dungeon_arena_1 run loot insert 1 101 -28 loot sa:boss_1

scoreboard players set server dg1_boss_state 0
