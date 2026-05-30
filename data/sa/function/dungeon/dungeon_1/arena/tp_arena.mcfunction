# ============================================================================
# DUNGEON 1 - TP ARENA (Bossraum Teleport)
# Spieler darf nur rein wenn Dungeon aktiv ist
# ============================================================================

execute unless score server dg1_state matches 2..4 run tellraw @s {"text":"Boss arena is not available right now.","color":"red"}
execute unless score server dg1_state matches 2..4 run return 1

# Setup zuerst (noch im Hub-Kontext), dann teleportieren
    execute unless score server dungeon_arena_one_init matches 1 run schedule function sa:setup/dungeon/arena_1 10t

execute in sa:dungeon_arena_1 run tp @s 0 100 0

function sa:dungeon/dungeon_1/on_enter_boss
