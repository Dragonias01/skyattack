# ============================================================================
# DUNGEON 1 - TICK (läuft jede Sekunde via updates.mcfunction)
# State Machine basiert auf dg1_state
# ============================================================================

# Timer runterzählen wenn Dungeon offen oder aktiv
    execute if score server dg1_state matches 1..4 run scoreboard players remove server dg1_timer 1

# Wenn Timer abgelaufen -> Close + Cleanup
    execute if score server dg1_state matches 1..4 if score server dg1_timer matches ..0 run function sa:dungeon/dungeon_1/close

# Player counts updaten (Dungeon + Boss)
    execute if score server dg1_state matches 1..4 run function sa:dungeon/dungeon_1/update_counts

# Display vorne am Portal updaten
    execute if score server dg1_state matches 0..4 run function sa:dungeon/dungeon_1/update_display

# Wenn Spieler in Dungeon-Dimension -> on_enter_dungeon ausführen
    execute if score server dg1_state matches 1..4 as @a in sa:dungeon1 run function sa:dungeon/dungeon_1/on_enter_dungeon

# Wenn Spieler in Boss-Dimension -> on_enter_boss ausführen
    execute if score server dg1_state matches 2..4 as @a in sa:dungeon_arena_1 run function sa:dungeon/dungeon_1/on_enter_boss

# Boss tick nur wenn Boss alive
    execute if score server dg1_boss_state matches 1 run function sa:dungeon/dungeon_1/boss/tick
