# ============================================================================
# DUNGEON 1 - JOIN
# Spieler darf nur rein wenn dg1_state >= 1
# ============================================================================

execute unless score server dg1_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
execute unless score server dg1_state matches 1..4 run return 1

gamemode adventure @s

tag @s add dg1_player

# teleport in dungeon dimension
    execute in sa:dungeon1 run tp @s 0 100 0

function sa:dungeon/dungeon_1/on_enter_dungeon
