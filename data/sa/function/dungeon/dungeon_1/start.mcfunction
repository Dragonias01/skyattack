# ============================================================================
# DUNGEON 1 - START
# Wird aufgerufen wenn ein Spieler den Dungeon mit Schlüssel öffnet.
# Setzt Status auf aktiv und startet den 15-Minuten-Timer.
# ============================================================================

scoreboard players set server dungeon_1_status 1
# 15 Minuten * 60 Sekunden = 900 Sekunden
scoreboard players set server dungeon_1_timer 900

# Sidebar-Zeile sofort einblenden
scoreboard players set D1_Zeit skyattack 3

function sa:dungeon/dungeon_1/update_display
