# ============================================================================
# PLAYER INIT - Wird beim ersten Join eines Spielers ausgeführt
# Setzt alle Skill-Werte auf Startwerte (0 oder Standardwert)
# ============================================================================

# --- FISHING ---
scoreboard players set @s fishing_xp 0
scoreboard players set @s fishing_lvl 0
scoreboard players set @s fishing_goal 100

# --- MINING ---
scoreboard players set @s mining_xp 0
scoreboard players set @s mining_lvl 0
scoreboard players set @s mining_goal 100
scoreboard players set @s m_Drops 0
scoreboard players set @s m_drop_menge 0
scoreboard players set @s m_xp_gain 0
scoreboard players set @s m_pickaxe_gain 0

# --- ISLAND ---
scoreboard players set @s slots 0
scoreboard players set @s island 0

# --- farming ---
scoreboard players set @a farming_xp 0
scoreboard players set @a farming_lvl 0
scoreboard players set @a farming_goal 100
scoreboard players set @a m_Drops 0
scoreboard players set @a m_drop_menge 0
scoreboard players set @a m_xp_gain 0
scoreboard players set @a m_pickaxe_gain 0

# --- logging ---
scoreboard players set @a logging_xp 0
scoreboard players set @a logging_lvl 0
scoreboard players set @a logging_goal 100
scoreboard players set @a logging_drops 0
scoreboard players set @a logging_drop_menge 0
scoreboard players set @a logging_xp_gain 0
scoreboard players set @a l_axe_gain 0

# --- MENU ---
scoreboard players set @s menue_open 0

# --- INIT-FLAG setzen (damit diese Funktion nicht nochmal läuft) ---
scoreboard players set @s player_initialized 1