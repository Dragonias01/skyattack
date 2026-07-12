# ============================================================================
# DUNGEON 1 - GENERATE
# Wrapper für altes Random Dungeon System
# ============================================================================

execute if score server dg1_generated matches 1 run return 1

# Random coords generieren
    execute store result score #x temp run random value -10000..10000
    execute store result score #z temp run random value -10000..10000

execute store result storage sa:config dungeon.floor1.dungeon1.x int 1 run scoreboard players get #x temp
execute store result storage sa:config dungeon.floor1.dungeon1.z int 1 run scoreboard players get #z temp
execute in sa:dungeon1 run function sa:dungeon/internal/tp_random with storage sa:config dungeon.floor1.dungeon1

# Dimension vorbereiten
    execute in sa:dungeon1 run function sa:dungeon/internal/clear_dimension with storage sa:config dungeon.floor1.dungeon1

# Dungeon generation scheduled (genau wie früher)
    schedule function sa:dungeon/floor1/dungeon_1/start_generation 10t

# Flags setzen
    scoreboard players set server dg1_generated 1
    scoreboard players set server dg1_state 2
