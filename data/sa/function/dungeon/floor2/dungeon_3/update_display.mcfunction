# ============================================================================
# DUNGEON 1 - UPDATE DISPLAY
# Aktualisiert die 3 Text-Displays vor dem Portal.
# CLOSED: feste Texte
# OPEN/RUNNING: Spieleranzahl + MM:SS Countdown
# ============================================================================

# --- INAKTIV ---
    execute if score server dg3_state matches 0 run data modify entity @e[type=text_display,tag=d3_display_players,limit=1] text set value {"text":"Player: ---","color":"gray","italic":false}
    execute if score server dg3_state matches 0 run data modify entity @e[type=text_display,tag=d3_display_timer,limit=1] text set value {"text":"Inactive","color":"red","italic":false}

# --- AKTIV ---
    execute if score server dg3_state matches 1..4 run function sa:dungeon/floor2/dungeon_3/display/update_players
    execute if score server dg3_state matches 1..4 run function sa:dungeon/floor2/dungeon_3/display/calc_time
