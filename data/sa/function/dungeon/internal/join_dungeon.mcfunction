# ============================================================================
# DUNGEON 1 - JOIN
# ============================================================================


$execute unless score server dg$(nr)_state matches 1..4 run tellraw @s {"text":"Dungeon is closed.","color":"red"}
$execute unless score server dg$(nr)_state matches 1..4 run return 1

# Wenn Spieler bereits im Dungeon ist -> kein erneuter Join TP
    $execute if entity @s[tag=dg$(nr)_in_dungeon] run return 1

gamemode adventure @s

$advancement grant @s only $(advancement)

$execute in $(dimension) run tp @s 0 200 0
$execute if score server dg$(nr)_state matches 1 if score server dg$(nr)_generated matches 0 run function sa:dungeon/floor$(floor)/dungeon_$(nr)/generate
