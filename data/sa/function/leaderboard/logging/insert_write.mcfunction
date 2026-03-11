# ============================================================================
# LEADERBOARD: Spieler in einen konkreten Slot schreiben (Macro)
# Datei: sa:leaderboard/logging/insert_write
# Version: 1.21.11
#
# Macro-Parameter:
#   $(slot)  = Slot-Nummer als String ("1".."10")
#   $(sname) = Fake-Player-Name des Score-Slots (z.B. "lb_log_s1")
#
# Läuft als @s (der Spieler).
# Schreibt Score in den Slot-Fake-Player.
# Setzt lb_log_name des Spielers auf die Slot-Nummer.
# ============================================================================

# Score des Spielers in den Slot schreiben
$scoreboard players operation $(sname) lb_log_score = @s logging_lvl

# Spieler-Name dem Slot zuordnen (Slot-Nummer als Wert)
$scoreboard players set @s lb_log_name $(slot)
