# ============================================================================
# PLAYER INIT - Wird beim ersten Join eines Spielers ausgeführt
# Datei: sa:setup/player_init
# Version: 1.21.11
# ============================================================================
# --- FISHING ---
    scoreboard players add @s fishing_xp 0
    scoreboard players add @s fishing_lvl 0
    scoreboard players set @s fishing_goal 5

# --- MINING ---
    scoreboard players add @s mining_xp 0
    scoreboard players add @s mining_lvl 0
    scoreboard players set @s mining_goal 10
    scoreboard players add @s m_Drops 0
    scoreboard players add @s m_drop_menge 0
    scoreboard players add @s m_xp_gain 0
    scoreboard players add @s m_pickaxe_gain 0

# --- ISLAND ---
    scoreboard players add @s slots 0
    scoreboard players add @s island 0

# --- FARMING ---
    scoreboard players add @s farming_xp 0
    scoreboard players add @s farming_lvl 0
    scoreboard players set @s farming_goal 10
    scoreboard players add @s m_Drops 0
    scoreboard players add @s m_drop_menge 0
    scoreboard players add @s m_xp_gain 0
    scoreboard players add @s m_pickaxe_gain 0

# --- LOGGING ---
    scoreboard players add @s logging_xp 0
    scoreboard players add @s logging_lvl 0
    scoreboard players set @s logging_goal 10
    scoreboard players add @s logging_drops 0
    scoreboard players add @s logging_drop_menge 0
    scoreboard players add @s logging_xp_gain 0
    scoreboard players add @s l_axe_gain 0

# --- combat ---
    scoreboard players add @s combat_xp 0
    scoreboard players add @s combat_lvl 0
    scoreboard players set @s combat_goal 10
    scoreboard players add @s combat_drops 0
    scoreboard players add @s combat_drop_menge 0
    scoreboard players add @s combat_xp_gain 0
    scoreboard players add @s c_sword_gain 0

# --- MENU ---
    scoreboard players add @s menue_open 0

# --- INIT-FLAG setzen (damit diese Funktion nicht nochmal läuft) ---
    scoreboard players set @s player_initialized 1

# ============================================================================
# HUB-GOALS: der komplette alte Block
#   execute as @s run scoreboard players add server goal1_cost 25
#   scoreboard players add server hub_dungeon_cost 50
#   ... (11 Zeilen) ...
#   data modify storage sa:goal_ship_text text set value [...]
# wird komplett durch DIESEN EINEN Aufruf ersetzt:
# ============================================================================
    function sa:goals/_lib/on_join

    #Recepie
recipe give @s dirt
