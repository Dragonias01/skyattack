# ============================================================================
# EVENT TIMER - Zeit berechnen (event_counter → MM:SS)
# event_counter zählt HOCH: 0..72000 (20 ticks/s × 3600s = 60 min)
# Verbleibende Sekunden = (72000 - event_counter) / 20
# ============================================================================

# Verbleibende Ticks: 72000 - event_counter
scoreboard players set #ev_max temp 72000
scoreboard players operation #ev_remaining temp = #ev_max temp
scoreboard players operation #ev_remaining temp -= server event_counter

# Verbleibende Sekunden: remaining / 20
scoreboard players set #ev_div temp 20
scoreboard players operation #ev_sek temp = #ev_remaining temp
scoreboard players operation #ev_sek temp /= #ev_div temp

# Minuten: sek / 60
scoreboard players set #ev_div temp 60
scoreboard players operation #ev_min temp = #ev_sek temp
scoreboard players operation #ev_min temp /= #ev_div temp

# Sekunden-Rest: sek % 60
scoreboard players operation #ev_sec temp = #ev_sek temp
scoreboard players operation #ev_sec temp %= #ev_div temp

# Werte in Storage schreiben
execute store result storage sa:event_display min int 1 run scoreboard players get #ev_min temp
execute store result storage sa:event_display sec int 1 run scoreboard players get #ev_sec temp

# Team-Suffix aktualisieren (mit oder ohne Null-Padding)
execute if score #ev_sec temp matches 0..9 run function sa:setup/scoreboard/calculate/set_ev_suffix_pad with storage sa:event_display
execute if score #ev_sec temp matches 10..59 run function sa:setup/scoreboard/calculate/set_ev_suffix with storage sa:event_display
