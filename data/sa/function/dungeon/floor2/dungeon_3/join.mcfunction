# ============================================================================
# DUNGEON 1 - JOIN
# ============================================================================


execute unless score server dg3_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
execute unless score server dg3_state matches 1..4 run return 1

# Wenn Spieler bereits im Dungeon ist -> kein erneuter Join TP
    execute if entity @s[tag=dg3_in_dungeon] run return 1

gamemode adventure @s
tag @s add dg3_player
advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt

execute in sa:dungeon3 run tp @s 0 200 0
execute in sa:dungeon3 run function sa:dungeon/floor2/dungeon_3/on_enter_dungeon
