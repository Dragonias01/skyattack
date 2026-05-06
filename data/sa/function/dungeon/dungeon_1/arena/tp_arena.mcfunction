# ============================================================================
# DUNGEON 1 - TP ARENA (Bossraum Teleport)
# Spieler darf nur rein wenn Dungeon aktiv ist
# ============================================================================

execute unless score server dg1_state matches 2..4 run tellraw @s {"text":"Boss arena is not available right now.","color":"red"}
execute unless score server dg1_state matches 2..4 run return 1

# Teleport in Bossdimension
    execute in sa:dungeon_arena_1 run tp @s 0 100 0
    execute if score server dungeon_arena_one_init matches ..1 run execute in sa:dungeon_arena_1 run function sa:setup/dungeon/arena_1

# Eintritt Bosslogik (spawn wenn nötig)
    function sa:dungeon/dungeon_1/on_enter_boss
