# ============================================================================
# DUNGEON 2 - LOAD
# Erstellt alle benötigten Scoreboard Objectives + Init Values
# ============================================================================

# Objectives registrieren (immer, idempotent)
    scoreboard objectives add dg4_state dummy
    scoreboard objectives add dg4_timer dummy
    scoreboard objectives add dg4_players_dungeon dummy
    scoreboard objectives add dg4_players_boss dummy
    scoreboard objectives add dg4_generated dummy
    scoreboard objectives add dg4_loot_generated dummy
    scoreboard objectives add d4_tmp_minutes dummy
    scoreboard objectives add d4_tmp_seconds dummy
    scoreboard objectives add d4_const_60 dummy
    scoreboard objectives add bossbar_boss1_init dummy

# Konstanten (immer setzen – ändern sich nie)
    scoreboard players set server d4_const_60 60

# Init-Werte NUR beim ersten Mal (Guard: dg4_loaded)
    scoreboard objectives add dg4_loaded dummy
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_state 0
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_timer 0
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_players_dungeon 0
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_players_boss 0
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_generated 0
    execute unless score server dg4_loaded matches 1 run scoreboard players set server dg4_loot_generated 0
    scoreboard players set server dg4_loaded 1
