# ============================================================================
# DUNGEON 1 - GENERATE
# Wrapper für altes Random Dungeon System
# ============================================================================

execute if score server dg4_generated matches 1 run return 1

# Random coords generieren
    execute store result score #x temp run random value -10000..10000
    execute store result score #z temp run random value -10000..10000

execute store result storage sa:config dungeon.floor2.dungeon4.x int 1 run scoreboard players get #x temp
execute store result storage sa:config dungeon.floor2.dungeon4.z int 1 run scoreboard players get #z temp
#TP
function sa:dungeon/internal/tp_random with storage sa:config dungeon.floor2.dungeon4

# Dimension vorbereiten
    execute in sa:dungeon4 run function sa:dungeon/internal/clear_dimension with storage sa:config dungeon.floor2.dungeon4

# Dungeon generation scheduled (genau wie früher)
    schedule function sa:dungeon/floor2/dungeon_4/start_generation 5t

# Flags setzen
    scoreboard players set server dg4_generated 1
    scoreboard players set server dg4_state 2
