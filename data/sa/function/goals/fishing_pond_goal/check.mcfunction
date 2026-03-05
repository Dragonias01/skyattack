# ============================================================================
# GOAL: Fishing Pond - Check
# Datei: sa:goals/fishing_pond_goal/check
# Version: 1.21.11
# ============================================================================
# TODO: SERVER PROGRESS SYSTEM
# Dieses Goal wird mit dem Server-Fortschrittssystem implementiert.
# ============================================================================

# ── Dependency: Fishing Raum ─────────────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschrittspruefung ersetzen
execute unless score server hub_fishing_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Fishing Raum)","color":"red"}]
execute unless score server hub_fishing_done matches 1 run return 0

# TODO: Implementierung ausstehend - Platzhalter
tellraw @s [{"text":"[TODO] Fishing Pond Goal wird mit dem Server Progress System implementiert.","color":"yellow"}]
return 0
