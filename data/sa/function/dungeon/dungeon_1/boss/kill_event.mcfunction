# ============================================================================
# DUNGEON 1 - BOSS KILL EVENT
# Loot wird nur einmal generiert
# ============================================================================

advancement revoke @s only boss_check/kill_boss1
scoreboard players set server dg1_boss_state 0

loot insert 1 101 -28 loot sa:boss_1
function sa:setup/dungeon/setup_interactions
