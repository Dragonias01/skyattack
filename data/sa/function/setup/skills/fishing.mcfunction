# ============================================================================
# FISHING SYSTEM - KONFIGURATION
# Datei: sa:setup/fishing
# Version: 1.21.11
# ============================================================================
# 
# Diese Datei wird EINMALIG beim ersten Load ausgeführt
# um alle Fishing-Werte zu initialisieren.
#
# ============================================================================

# ============================================================================
# HAUPTKONFIGURATION
# ============================================================================

# Maximales erreichbares Level (empfohlen: 100-1000)
# Beispiel: 1000 = Spieler kann bis Level 1000 leveln
scoreboard players set server max_level 1000

# Start-XP-Goal für Level 1→2
# Bedeutung: Spieler muss 100 Fische fangen für Level 2
scoreboard players set server fishing_goal_start 5

scoreboard objectives add fishing_drop_menge dummy
scoreboard objectives add f_rod_gain dummy
scoreboard objectives add fishing_drops dummy
# ============================================================================
# DROP-MULTIPLIKATOREN (für spätere Loot-Tabellen)
# ============================================================================

# Drop-Chancen-Basis (100 = 100%)
# Bei 100: Alle Creature-Drops sind möglich
# Bei 50:  Nur 50% der erwarteten Drops
scoreboard players set server fishing_drop_base 100

# Aktueller Drop-Multiplikator (wird später angepasst basierend auf Level)
scoreboard players set server fishing_drop 100

# ============================================================================
# SPIELER-INITIALIZATION
# ============================================================================

# Initalisiere alle neu beigetretenen Spieler
execute as @a unless score @s fishing_xp = @s fishing_xp run scoreboard players set @s fishing_xp 0
execute as @a unless score @s fishing_lvl = @s fishing_lvl run scoreboard players set @s fishing_lvl 0
execute as @a unless score @s fishing_goal = @s fishing_goal run scoreboard players set @s fishing_goal 5

# Markiere dass Setup abgeschlossen ist (damit diese Funktion nur 1x läuft)
scoreboard players set server fishing_initialized 1