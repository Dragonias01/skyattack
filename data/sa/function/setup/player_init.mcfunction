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

execute as @s run scoreboard players add server goal1_cost 25
# ── Hub Goals - Gemeinschaftliche Kosten skalieren (pro Spieler) ─────────
scoreboard players add server hub_dungeon_cost 50
scoreboard players add server hub_skillrooms_cost 25
scoreboard players add server hub_mining_cost 50
scoreboard players add server hub_farming_cost 50
scoreboard players add server hub_fishing_cost 50
scoreboard players add server hub_fishpond_cost 100
scoreboard players add server hub_combat_cost 50
# TODO: Kosten fuer Schmied und Techniker noch festlegen
scoreboard players add server hub_schmied_cost 50
scoreboard players add server hub_techniker_cost 50
# TODO: SERVER PROGRESS SYSTEM - Levelbaum + Fishing Pond
scoreboard players add server hub_levelbaum_cost 50





data modify storage sa:goal_ship_text text set value [{"score":{"objective":"goal_ship","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"goal1_cost","name":"server"},"color":"white"}]
#Recepie
recipe give @s dirt