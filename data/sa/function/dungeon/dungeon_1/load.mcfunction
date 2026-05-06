# ============================================================================
# DUNGEON 1 - LOAD
# Erstellt alle benötigten Scoreboard Objectives + Init Values
# ============================================================================

scoreboard objectives add dg1_state dummy
scoreboard objectives add dg1_timer dummy
scoreboard objectives add dg1_players_dungeon dummy
scoreboard objectives add dg1_players_boss dummy
scoreboard objectives add dg1_boss_state dummy
scoreboard objectives add dg1_generated dummy
scoreboard objectives add dg1_loot_generated dummy
#scoreboard objectives add dg1_click_cd dummy

# Temp / constants für display calc
    scoreboard objectives add d1_tmp_minutes dummy
    scoreboard objectives add d1_tmp_seconds dummy
    scoreboard objectives add d1_const_60 dummy

# Init constants
    scoreboard players set server d1_const_60 60

# Init dungeon values
    scoreboard players set server dg1_state 0
    scoreboard players set server dg1_timer 0
    scoreboard players set server dg1_players_dungeon 0
    scoreboard players set server dg1_players_boss 0
    scoreboard players set server dg1_boss_state 0
    scoreboard players set server dg1_generated 0
    scoreboard players set server dg1_loot_generated 0
    # scoreboard players set server dg1_click_cd 0
