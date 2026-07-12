# ============================================================================
# DUNGEON 1 - GENERATE
# Wrapper für altes Random Dungeon System
# ============================================================================

execute if score server dg1_generated matches 1 run return 1

# Random coords generieren
    execute store result score #x temp run random value -10000..10000
    execute store result score #z temp run random value -10000..10000

execute store result storage sa:dungeon floor1.x int 1 run scoreboard players get #x temp
execute store result storage sa:dungeon floor1.z int 1 run scoreboard players get #z temp
data modify storage sa:dungeon floor1.dungeon_nr set value 1

# Dimension vorbereiten
    execute in sa:dungeon1 run function sa:dungeon/internal/clear_dimension with storage sa:dungeon floor1

# Dungeon generation scheduled (genau wie früher)
    schedule function sa:dungeon/internal/start_generation 5t

# Flags setzen
    scoreboard players set server dg1_generated 1
    scoreboard players set server dg1_state 2
