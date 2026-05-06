# ============================================================================
# DUNGEON 1 - GENERATE
# Dungeon wird einmal pro Run generiert
# ============================================================================

execute if score server dg1_generated matches 1 run return 1

tellraw @a {"text":"Generating Dungeon 1...","color":"yellow"}

# Beispiel: Structure placement
# Passe structure name und coords an dein Projekt an!
    execute in sa:dungeon1 run place jigsaw sa:start start 20 0 110 0

scoreboard players set server dg1_generated 1
