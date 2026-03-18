# ============================================================================
# DUNGEON 1 - TICK (läuft jede Sekunde via updates.mcfunction)
# Nur aktiv wenn dungeon_1_status = 1
# ============================================================================

execute if score server dungeon_1_status matches 1 run function sa:dungeon/dungeon_1/tick_active
