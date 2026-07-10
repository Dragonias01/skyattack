# ============================================================================
# DUNGEON 1 - LOAD
# Erstellt alle benötigten Scoreboard Objectives + Init Values
# ============================================================================

# Objectives registrieren (immer, idempotent)
    scoreboard objectives add dg3_state dummy
    scoreboard objectives add dg3_timer dummy
    scoreboard objectives add dg3_players_dungeon dummy
    scoreboard objectives add dg3_players_boss dummy
    scoreboard objectives add dg3_generated dummy
    scoreboard objectives add dg3_loot_generated dummy
    scoreboard objectives add d3_tmp_minutes dummy
    scoreboard objectives add d3_tmp_seconds dummy
    scoreboard objectives add d3_const_60 dummy
    scoreboard objectives add bossbar_boss2_init dummy

# Konstanten (immer setzen – ändern sich nie)
    scoreboard players set server d3_const_60 60

# Init-Werte NUR beim ersten Mal (Guard: dg3_loaded)
    scoreboard objectives add dg3_loaded dummy
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_state 0
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_timer 0
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_players_dungeon 0
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_players_boss 0
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_generated 0
    execute unless score server dg3_loaded matches 1 run scoreboard players set server dg3_loot_generated 0
    scoreboard players set server dg3_loaded 1
