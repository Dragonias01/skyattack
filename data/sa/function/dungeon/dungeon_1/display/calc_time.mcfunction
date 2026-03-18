# ============================================================================
# DUNGEON 1 - DISPLAY: Zeit berechnen (Sekunden → MM:SS)
# Verwendet temp-Scoreboards für die Berechnung.
# ============================================================================

# Minuten berechnen: timer / 60
scoreboard players operation #d1_min temp = server dungeon_1_timer
scoreboard players set #d1_div temp 60
scoreboard players operation #d1_min temp /= #d1_div temp

# Sekunden berechnen: timer % 60
scoreboard players operation #d1_sec temp = server dungeon_1_timer
scoreboard players operation #d1_sec temp %= #d1_div temp

# Werte in Storage schreiben
execute store result storage sa:dungeon_1_display min int 1 run scoreboard players get #d1_min temp
execute store result storage sa:dungeon_1_display sec int 1 run scoreboard players get #d1_sec temp

# Text-Display aktualisieren
execute if score #d1_sec temp matches 0..9 run function sa:dungeon/dungeon_1/display/set_time_pad with storage sa:dungeon_1_display
execute if score #d1_sec temp matches 10..59 run function sa:dungeon/dungeon_1/display/set_time with storage sa:dungeon_1_display

# Sidebar-Suffix aktualisieren
execute if score #d1_sec temp matches 0..9 run function sa:dungeon/dungeon_1/sidebar/set_suffix_pad with storage sa:dungeon_1_display
execute if score #d1_sec temp matches 10..59 run function sa:dungeon/dungeon_1/sidebar/set_suffix with storage sa:dungeon_1_display
