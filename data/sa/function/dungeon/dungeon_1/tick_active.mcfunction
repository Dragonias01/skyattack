# ============================================================================
# DUNGEON 1 - TICK ACTIVE
# Läuft jede Sekunde solange der Dungeon aktiv ist.
# ============================================================================

# Timer dekrementieren
scoreboard players remove server dungeon_1_timer 1

# Spieleranzahl im Dungeon zählen und speichern
scoreboard players set server dungeon_1_players 0
execute in sa:dungeon1 as @a run scoreboard players add server dungeon_1_players 1

# Display aktualisieren
function sa:dungeon/dungeon_1/update_display

# Timer abgelaufen → Dungeon beenden
execute if score server dungeon_1_timer matches ..0 run function sa:dungeon/dungeon_1/end
