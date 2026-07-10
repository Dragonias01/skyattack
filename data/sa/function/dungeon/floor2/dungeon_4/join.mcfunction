# ============================================================================
# DUNGEON 1 - JOIN
# ============================================================================


execute unless score server dg4_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
execute unless score server dg4_state matches 1..4 run return 1

# Wenn Spieler bereits im Dungeon ist -> kein erneuter Join TP
    execute if entity @s[tag=dg4_in_dungeon] run return 1
    advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt

gamemode adventure @s
tag @s add dg4_player

execute in sa:dungeon2 run tp @s 0 200 0
execute in sa:dungeon2 run function sa:dungeon/floor2/dungeon_4/on_enter_dungeon
