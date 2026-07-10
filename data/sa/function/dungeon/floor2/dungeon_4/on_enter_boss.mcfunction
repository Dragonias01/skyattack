# ============================================================================
# DUNGEON 2 - ON ENTER BOSS
# Wird im Tick aufgerufen, darf aber nur beim Eintritt triggern
# ============================================================================

execute if entity @s[tag=dg4_in_boss] run return 1
tag @s remove transfer_to_dungeon4_arena 

gamemode adventure @s

execute if score server f1_boss_state matches 1 run scoreboard players set server dg4_state 3
execute if score server f1_boss_state matches 2 run scoreboard players set server dg4_state 4
