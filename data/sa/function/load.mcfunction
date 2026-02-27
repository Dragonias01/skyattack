# ============================================================================
# LOAD FUNCTION - Initialisierung des Datapacks
# Wird einmalig beim Laden des Servers ausgeführt
# Version: 1.21.11
# ============================================================================

# Basis-Variablen
scoreboard objectives add one dummy
scoreboard players set server one 1

# Setup-Tracking
scoreboard objectives add setup1 dummy
execute unless score server setup1 matches 1 run function sa:setup/main

# Timer für Actionbar (basierend auf Play-Time)
scoreboard objectives add timer minecraft.custom:minecraft.play_time

# Dungeon-Setup-Status
scoreboard objectives add setup2 dummy

# Temporäre Berechnungen
scoreboard objectives add temp dummy

scoreboard objectives add player_initialized dummy
# ============================================================================
# ISLAND SYSTEM SCOREBOARDS
# ============================================================================
scoreboard objectives add slots dummy
scoreboard objectives add i1 dummy
scoreboard objectives add i2 dummy
scoreboard objectives add i3 dummy
scoreboard objectives add i4 dummy
scoreboard objectives add i5 dummy
scoreboard objectives add i6 dummy
scoreboard objectives add i7 dummy
scoreboard objectives add i8 dummy

# Trigger für Island-Erstellung
scoreboard objectives add itrigger trigger
scoreboard objectives add island dummy
scoreboard objectives add current dummy


# ============================================================================
# NPC SYSTEM
# ============================================================================
function sa:setup/npc

# ============================================================================
# FISHING SYSTEM - Scoreboards
# ============================================================================

# Fishing XP und Level Tracking (Pro Spieler)
scoreboard objectives add fishing_xp dummy "Fishing XP"
scoreboard objectives add fishing_lvl dummy "Fishing Level"
scoreboard objectives add fishing_goal dummy "Fishing Goal"

# Server-Config-Werte (Global, einmalig gesetzt)
scoreboard objectives add max_level dummy "Max Fishing Level"
scoreboard objectives add fishing_drop dummy "Fishing Drop Multiplier"
scoreboard objectives add fishing_drop_base dummy "Fishing Drop Base"
scoreboard objectives add fishing_multiplier_num dummy "Fishing Goal Multiplier (Numerator)"
scoreboard objectives add fishing_multiplier_den dummy "Fishing Goal Multiplier (Denominator)"
scoreboard objectives add fishing_goal_start dummy
# Setup-Tracking für Fishing System
scoreboard objectives add fishing_initialized dummy "Fishing Setup Initialized"

# Initialisiere Config-Werte (falls noch nicht gesetzt)
execute unless score server fishing_initialized = server one run function sa:setup/skills/fishing

# ============================================================================
# MINING SYSTEM - Setup
# ============================================================================

scoreboard objectives add mining_initialized dummy "Mining Setup Initialized"
execute unless score server mining_initialized = server one run function sa:setup/skills/mining



#Menue
scoreboard objectives add menue_open dummy
scoreboard objectives add menue trigger
