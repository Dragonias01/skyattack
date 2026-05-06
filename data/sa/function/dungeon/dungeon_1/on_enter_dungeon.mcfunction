# ============================================================================
# DUNGEON 1 - ON ENTER DUNGEON
# Wenn state=1 und generated=0 -> generate dungeon + state=2
# Setzt Tags
# ============================================================================

tag @s add dg1_in_dungeon
tag @s remove dg1_in_boss

gamemode adventure @s

# Dungeon generieren wenn erster Spieler rein geht
    execute if score server dg1_state matches 1 if score server dg1_generated matches 0 run function sa:dungeon/dungeon_1/generate
    execute if score server dg1_state matches 1 if score server dg1_generated matches 1 run scoreboard players set server dg1_state 2
