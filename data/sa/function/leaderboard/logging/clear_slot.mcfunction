# ============================================================================
# LEADERBOARD: Slot-Inhaber löschen
# Datei: sa:leaderboard/logging/clear_slot
# Version: 1.21.11
#
# Macro-Parameter: $(slot) = Slot-Nummer als String ("1".."10")
#
# Löscht alle Einträge in lb_log_name die den Wert $(slot) haben.
# D.h. der bisherige Spieler in diesem Slot verliert seinen Name-Eintrag.
# ============================================================================

$scoreboard players reset @a[scores={lb_log_name=$(slot)}] lb_log_name
