# ============================================================================
# DUNGEON 1 - JOIN
# ============================================================================


execute unless score server dg1_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
execute unless score server dg1_state matches 1..4 run return 1

# Wenn Spieler bereits im Dungeon ist -> kein erneuter Join TP
    execute if entity @s[tag=dg1_in_dungeon] run return 1

gamemode adventure @s
tag @s add dg1_player

execute in sa:dungeon1 run tp @s 0 200 0
execute in sa:dungeon1 run function sa:dungeon/dungeon_1/on_enter_dungeon
