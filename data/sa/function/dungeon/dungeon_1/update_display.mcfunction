# ============================================================================
# DUNGEON 1 - UPDATE DISPLAY
# Aktualisiert die 3 Text-Displays vor dem Portal.
# Inaktiv: feste Texte
# Aktiv: Spieleranzahl + MM:SS Countdown
# ============================================================================

# --- INAKTIV ---
execute if score server dungeon_1_status matches 0 run data modify entity @e[type=text_display,tag=d1_display_players,limit=1] text set value {"text":"Spieler: ---","color":"gray","italic":false}
execute if score server dungeon_1_status matches 0 run data modify entity @e[type=text_display,tag=d1_display_timer,limit=1] text set value {"text":"Inaktiv","color":"red","italic":false}

# --- AKTIV ---
execute if score server dungeon_1_status matches 1 run function sa:dungeon/dungeon_1/display/update_players
execute if score server dungeon_1_status matches 1 run function sa:dungeon/dungeon_1/display/calc_time
