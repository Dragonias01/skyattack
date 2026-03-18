# ============================================================================
# DUNGEON 1 - END
# Wird aufgerufen wenn der Timer abläuft (Timer = 0).
# Teleportiert alle Spieler in der Dimension zum Dungeon Hub.
# Setzt Status zurück auf inaktiv.
# ============================================================================

# Alle Spieler im Dungeon zum Dungeon Hub teleportieren
execute in sa:dungeon1 as @a run function sa:tp/hub
# Status und Timer zurücksetzen
scoreboard players set server dungeon_1_status 0
scoreboard players set server dungeon_1_timer 0

# Sidebar-Zeile ausblenden
scoreboard players reset D1_Zeit skyattack

# Display auf inaktiv setzen
function sa:dungeon/dungeon_1/update_display
