# ============================================================================
# PLAYER INIT - Wird beim ersten Join eines Spielers ausgeführt
# Datei: sa:setup/player_init
# Version: 1.21.11
# ============================================================================
# Start-Goals entsprechen dem "Level 1" Wert aus der Scaling-Tabelle:
#   Mining/Logging/Farming/Combat: 10
#   Fishing: 5
# ============================================================================

# --- FISHING ---
scoreboard players set @s fishing_xp 0
scoreboard players set @s fishing_lvl 0
scoreboard players set @s fishing_goal 5

# --- MINING ---
scoreboard players set @s mining_xp 0
scoreboard players set @s mining_lvl 0
scoreboard players set @s mining_goal 10
scoreboard players set @s m_Drops 0
scoreboard players set @s m_drop_menge 0
scoreboard players set @s m_xp_gain 0
scoreboard players set @s m_pickaxe_gain 0

# --- ISLAND ---
scoreboard players set @s slots 0
scoreboard players set @s island 0

# --- FARMING ---
scoreboard players set @s farming_xp 0
scoreboard players set @s farming_lvl 0
scoreboard players set @s farming_goal 10
scoreboard players set @s m_Drops 0
scoreboard players set @s m_drop_menge 0
scoreboard players set @s m_xp_gain 0
scoreboard players set @s m_pickaxe_gain 0

# --- LOGGING ---
scoreboard players set @s logging_xp 0
scoreboard players set @s logging_lvl 0
scoreboard players set @s logging_goal 10
scoreboard players set @s logging_drops 0
scoreboard players set @s logging_drop_menge 0
scoreboard players set @s logging_xp_gain 0
scoreboard players set @s l_axe_gain 0

# --- combat ---
scoreboard players set @s combat_xp 0
scoreboard players set @s combat_lvl 0
scoreboard players set @s combat_goal 10
scoreboard players set @s combat_drops 0
scoreboard players set @s combat_drop_menge 0
scoreboard players set @s combat_xp_gain 0
scoreboard players set @s c_sword_gain 0

# --- MENU ---
scoreboard players set @s menue_open 0

# --- INIT-FLAG setzen (damit diese Funktion nicht nochmal läuft) ---
scoreboard players set @s player_initialized 1
