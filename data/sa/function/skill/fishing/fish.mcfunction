# ============================================================================
# FISHING SYSTEM - Hauptdatei für Fischen
# Auslöser: minecraft:track_fishing advancement
# ============================================================================

# Advancement revoken damit es erneut triggert
advancement revoke @s only minecraft:track_fishing


# Prüfung: Ist der Spieler bereits max Level?
# Wenn ja, keine XP mehr vergeben
execute unless score @s fishing_lvl >= server max_level run function sa:skill/fishing/lvl/xp



