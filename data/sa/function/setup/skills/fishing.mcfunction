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

# XP-Multiplikator für Level-Steigerung
# Formel: neues_goal = altes_goal * (num/den)
# 11/10 = 1.1x (10% Anstieg pro Level)
# 12/10 = 1.2x (20% Anstieg pro Level)
# 15/10 = 1.5x (50% Anstieg pro Level)
scoreboard players set server fishing_multiplier_num 11
scoreboard players set server fishing_multiplier_den 10

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
# LEVELING-PROGRESSION
# ============================================================================
# 
# Mit den obigen Einstellungen sieht die Progression so aus:
#
# Level 1→2:  100 XP
# Level 2→3:  110 XP
# Level 3→4:  121 XP
# Level 4→5:  133 XP
# ...
# Level 99→100: ~13,786 XP
#
# Gesamt-XP bis Level 100: ~17,512 XP
# (Bei durchschnittlich 1 XP pro Fisch = ~17.5k Fische für Level 100)
#
# Wenn das zu schnell/langsam ist, anpassen:
# - fishing_goal_start erhöhen → Längere Progression
# - fishing_multiplier erhöhen → Schneller wachsende Anforderungen
#
# ============================================================================

# ============================================================================
# SPIELER-INITIALIZATION
# ============================================================================

# Initalisiere alle neu beigetretenen Spieler
execute as @a unless score @s fishing_xp = @s fishing_xp run scoreboard players set @s fishing_xp 0
execute as @a unless score @s fishing_lvl = @s fishing_lvl run scoreboard players set @s fishing_lvl 0
execute as @a unless score @s fishing_goal = @s fishing_goal run scoreboard players set @s fishing_goal 5

# Markiere dass Setup abgeschlossen ist (damit diese Funktion nur 1x läuft)
scoreboard players set server fishing_initialized 1