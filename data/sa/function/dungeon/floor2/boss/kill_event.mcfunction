# ============================================================================
# DUNGEON 1 - BOSS KILL EVENT
# Loot wird nur einmal generiert
# ============================================================================
    execute in sa:dungeon_arena_1 run function sa:setup/dungeon/setup_interactions
    advancement revoke @s only boss_check/kill_boss1

execute in sa:dungeon_arena_1 run loot insert 1 101 -28 loot sa:boss_1
advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/the_catacombs/crypt_master/crypt_master

scoreboard players set server f1_boss_state 0
#TODO:
