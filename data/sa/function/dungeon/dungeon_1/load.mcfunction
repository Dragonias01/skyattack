# ============================================================================
# DUNGEON 1 - LOAD
# Erstellt alle benötigten Scoreboard Objectives + Init Values
# ============================================================================

# Objectives registrieren (immer, idempotent)
    scoreboard objectives add dg1_state dummy
    scoreboard objectives add dg1_timer dummy
    scoreboard objectives add dg1_players_dungeon dummy
    scoreboard objectives add dg1_players_boss dummy
    scoreboard objectives add dg1_boss_state dummy
    scoreboard objectives add dg1_generated dummy
    scoreboard objectives add dg1_loot_generated dummy
    scoreboard objectives add d1_tmp_minutes dummy
    scoreboard objectives add d1_tmp_seconds dummy
    scoreboard objectives add d1_const_60 dummy
    scoreboard objectives add bossbar_boss1_init dummy

# Konstanten (immer setzen – ändern sich nie)
    scoreboard players set server d1_const_60 60

# Init-Werte NUR beim ersten Mal (Guard: dg1_loaded)
    scoreboard objectives add dg1_loaded dummy
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_state 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_timer 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_players_dungeon 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_players_boss 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_boss_state 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_generated 0
    execute unless score server dg1_loaded matches 1 run scoreboard players set server dg1_loot_generated 0
    scoreboard players set server dg1_loaded 1
