# ============================================================================
# DUNGEON 1 - JOIN
# ============================================================================


execute unless score server dg2_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
execute unless score server dg2_state matches 1..4 run return 1

# Wenn Spieler bereits im Dungeon ist -> kein erneuter Join TP
    execute if entity @s[tag=dg2_in_dungeon] run return 1

gamemode adventure @s
tag @s add dg2_player

execute in sa:dungeon2 run tp @s 0 200 0
execute in sa:dungeon2 run function sa:dungeon/floor1/dungeon_2/on_enter_dungeon
