# ============================================================================
# DUNGEON 2 - LOAD
# Erstellt alle benötigten Scoreboard Objectives + Init Values
# ============================================================================

# Objectives registrieren (immer, idempotent)
    scoreboard objectives add dg2_state dummy
    scoreboard objectives add dg2_timer dummy
    scoreboard objectives add dg2_players_dungeon dummy
    scoreboard objectives add dg2_players_boss dummy
    scoreboard objectives add dg2_generated dummy
    scoreboard objectives add dg2_loot_generated dummy
    scoreboard objectives add d2_tmp_minutes dummy
    scoreboard objectives add d2_tmp_seconds dummy
    scoreboard objectives add d2_const_60 dummy
    scoreboard objectives add bossbar_boss1_init dummy

# Konstanten (immer setzen – ändern sich nie)
    scoreboard players set server d2_const_60 60

# Init-Werte NUR beim ersten Mal (Guard: dg2_loaded)
    scoreboard objectives add dg2_loaded dummy
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_state 0
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_timer 0
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_players_dungeon 0
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_players_boss 0
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_generated 0
    execute unless score server dg2_loaded matches 1 run scoreboard players set server dg2_loot_generated 0
    scoreboard players set server dg2_loaded 1
