# ============================================================================
# MINING SYSTEM - VOLLSTÄNDIGE SETUP-DATEI
# Datei: sa:setup/mining
# Version: 1.21.11
# ============================================================================
# BESCHREIBUNG:
# Diese Datei wird EINMALIG beim ersten Load des Datapacks ausgeführt.
# Sie initialisiert alle notwendigen Scoreboards und Konfigurationswerte
# für das Mining-System.
# ============================================================================

# ============================================================================
# PHASE 1: BLOCKBREAK TRACKING
# ============================================================================
# Diese Scoreboards tracken, wie viele Blöcke der Spieler abgebaut hat
# Sie basieren auf minecraft.mined:* Statistiken

scoreboard objectives add stone_mined minecraft.mined:minecraft.stone
scoreboard objectives add cstone_mined minecraft.mined:minecraft.cobblestone

# Optional: Weitere Blöcke hinzufügen für zukünftige Implementierungen
# scoreboard objectives add deepslate_mined minecraft.mined:minecraft.deepslate
# scoreboard objectives add iron_ore_mined minecraft.mined:minecraft.iron_ore
# scoreboard objectives add gold_ore_mined minecraft.mined:minecraft.gold_ore

# ============================================================================
# PHASE 2: MINING HAUPTSCOREBOARDS
# ============================================================================
# Diese Scoreboards verwalten Spielerprogression und Statistiken

scoreboard objectives add mining_xp dummy "Mining XP"
scoreboard objectives add mining_lvl dummy "Mining Level"
scoreboard objectives add mining_goal dummy "Mining Goal"

# ============================================================================
# PHASE 3: DROP & MULTIPLIKATOR SCOREBOARDS
# ============================================================================

scoreboard objectives add mining_drop dummy "Stein Ertrag"
scoreboard objectives add m_xp_gain dummy "XP Gain"
scoreboard objectives add m_Drops dummy "Dropchance"
scoreboard objectives add m_drop_menge dummy "Drop Menge"
scoreboard objectives add m_pickaxe_gain dummy "Pickaxe Bonus"

# ============================================================================
# PHASE 4: HAUPTKONFIGURATION
# ============================================================================
# Diese Werte steuern die grundlegende Progression des Mining-Systems

# Maximales Level (Standard: 1000)
# Kann angepasst werden für schwierere/einfachere Progression
scoreboard players set server max_level 1000

# Start-XP-Goal für Level 1→2
# Bedeutung: Spieler muss 100 Blöcke abbauen für nächstes Level
scoreboard objectives add mining_goal_start dummy "Pickaxe Bonus"
scoreboard players set server mining_goal_start 100

# ============================================================================
# PHASE 5: SPIELER-INITIALISIERUNG
# ============================================================================
# Diese Befehle werden für alle Spieler ausgeführt

# Initialisiere alle neuen Spieler mit Standardwerten
execute as @a unless score @s mining_xp = @s mining_xp run scoreboard players set @s mining_xp 0
execute as @a unless score @s mining_lvl = @s mining_lvl run scoreboard players set @s mining_lvl 0
execute as @a unless score @s mining_goal = @s mining_goal run scoreboard players set @s mining_goal 10
execute as @a unless score @s m_drop_menge = @s m_drop_menge run scoreboard players set @s m_drop_menge 0
execute as @a unless score @s m_Drops = @s m_Drops run scoreboard players set @s m_Drops 0
execute as @a unless score @s m_pickaxe_gain = @s m_pickaxe_gain run scoreboard players set @s m_pickaxe_gain 0


# ============================================================================
# PHASE 6: SETUP-TRACKING
# ============================================================================
# Markiere dass Mining-Setup abgeschlossen ist

scoreboard objectives add mining_initialized dummy "Mining Setup Initialized"
scoreboard players set server mining_initialized 1

