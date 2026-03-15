# ============================================================================
# LOAD FUNCTION - Initialisierung des Datapacks
# Wird einmalig beim Laden des Servers ausgeführt
# Version: 1.21.11
# ============================================================================

# Basis-Variablen
scoreboard objectives add one dummy
scoreboard players set server one 1

scoreboard objectives add five dummy
scoreboard players set server five 5



#Event
scoreboard objectives add event_counter dummy
scoreboard objectives add event_num dummy
scoreboard objectives add scoreboard_counter dummy

scoreboard objectives add eventboost_combat dummy
scoreboard objectives add eventboost_logging dummy
scoreboard objectives add eventboost_mining dummy
scoreboard objectives add eventboost_farming dummy
scoreboard objectives add eventboost_fishing dummy
scoreboard objectives add score_timer dummy

# Setup-Tracking
scoreboard objectives add setup1 dummy
execute unless score server setup1 matches 1 run function sa:setup/overworld/main

# Timer für Actionbar (basierend auf Play-Time)
scoreboard objectives add timer minecraft.custom:minecraft.play_time

# Dungeon-Setup-Status
scoreboard objectives add setup2 dummy

# Temporäre Berechnungen
scoreboard objectives add temp dummy

scoreboard objectives add player_initialized dummy

scoreboard objectives add Mining_Dropchance_Percent dummy
scoreboard objectives add Farming_Dropchance_Percent dummy
scoreboard objectives add Logging_Dropchance_Percent dummy
scoreboard objectives add Combat_Dropchance_Percent dummy


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
scoreboard objectives add fishing_goal_start dummy
scoreboard objectives add fishing_drop_pending dummy
# Setup-Tracking für Fishing System
scoreboard objectives add fishing_initialized dummy "Fishing Setup Initialized"

# Initialisiere Config-Werte (falls noch nicht gesetzt)
execute unless score server fishing_initialized = server one run function sa:setup/skills/fishing

# ============================================================================
# MINING SYSTEM - Setup
# ============================================================================

scoreboard objectives add mining_initialized dummy "Mining Setup Initialized"
execute unless score server mining_initialized = server one run function sa:setup/skills/mining

# ============================================================================
# Farming SYSTEM - Setup
# ============================================================================
scoreboard objectives add farming_initialized dummy "Farming Setup Initialized"
execute unless score server farming_initialized = server one run function sa:setup/skills/farming

# ============================================================================
# logging SYSTEM - Setup
# ============================================================================
scoreboard objectives add logging_initialized dummy "Foraging Setup Initialized"
execute unless score server logging_initialized = server one run function sa:setup/skills/logging

# ============================================================================
# Combat SYSTEM - Setup
# ============================================================================
scoreboard objectives add Combat_initialized dummy "Combat Setup Initialized"
execute unless score server Combat_initialized = server one run function sa:setup/skills/combat



#Menue
scoreboard objectives add menue_open dummy
scoreboard objectives add menue trigger


#Math values
scoreboard objectives add scale_fast_num dummy
scoreboard objectives add scale_fast_den dummy
scoreboard objectives add scale_mid_num dummy
scoreboard objectives add scale_mid_den dummy
scoreboard objectives add scale_slow_num dummy
scoreboard objectives add scale_slow_den dummy
scoreboard objectives add two dummy
scoreboard players set server two 2
# *1.5 = 15/10
scoreboard players set server scale_fast_num 15
scoreboard players set server scale_fast_den 10

# *1.1 = 11/10
scoreboard players set server scale_mid_num 11
scoreboard players set server scale_mid_den 10

# *1.01 = 101/100
scoreboard players set server scale_slow_num 101
scoreboard players set server scale_slow_den 100

scoreboard objectives add goal1 dummy

scoreboard objectives add ERod_learn dummy
scoreboard objectives add EAxe_learn dummy
scoreboard objectives add ESword_learn dummy
scoreboard objectives add EHoe_learn dummy
scoreboard objectives add EPickaxe_learn dummy

scoreboard objectives add menue_fix dummy


scoreboard objectives add goals_initialized dummy "Foraging Setup Initialized"
execute unless score server goals_initialized = server one run function sa:setup/overworld/goals

scoreboard objectives add hub_goals_initialized dummy
execute unless score server hub_goals_initialized = server one run function sa:setup/hub/goals


scoreboard objectives add hub_initialized dummy "hub Initialized"


scoreboard objectives add dungeon_arena_one_init dummy "Combat Setup Initialized"

# ============================================================================
# LEADERBOARD - Load-Einträge
# DIESE ZEILEN in sa:load.mcfunction einfügen
# Version: 1.21.11
# ============================================================================

# ── Scoreboard Objectives (alle die das System braucht) ───────────────────

# Tick-Counter für den Update-Rhythmus
scoreboard objectives add lb_tick dummy
scoreboard objectives add lb_log_score dummy
scoreboard objectives add lb_log_name dummy
scoreboard objectives add lb_insert_idx dummy
# Initialisierungs-Flag (verhindert doppeltes Setup)
scoreboard objectives add lb_initialized dummy
scoreboard objectives add lb_log_slot dummy
# ── Server-Startwerte setzen ──────────────────────────────────────────────
scoreboard players set server lb_tick 0

# ── Mining Leaderboard Objectives ─────────────────────────────────────────
scoreboard objectives add lb_min_score dummy
scoreboard objectives add lb_min_name dummy
scoreboard objectives add lb_min_slot dummy

# ── Fishing Leaderboard Objectives ────────────────────────────────────────
scoreboard objectives add lb_fsh_score dummy
scoreboard objectives add lb_fsh_name dummy
scoreboard objectives add lb_fsh_slot dummy

# ── Farming Leaderboard Objectives ────────────────────────────────────────
scoreboard objectives add lb_far_score dummy
scoreboard objectives add lb_far_name dummy
scoreboard objectives add lb_far_slot dummy

# ── Combat Leaderboard Objectives ─────────────────────────────────────────
scoreboard objectives add lb_com_score dummy
scoreboard objectives add lb_com_name dummy
scoreboard objectives add lb_com_slot dummy

#System counter
scoreboard objectives add tick_counter dummy

# Auffhol System
scoreboard objectives add logging_max_player_level dummy

# In setup/skills/logging.mcfunction ergänzen:
scoreboard objectives add logging_proximity dummy
scoreboard objectives add calc_temp dummy

scoreboard objectives add const_100 dummy
scoreboard objectives add const_10 dummy

# In load.mcfunction oder wo du deine Konstanten setzt:
scoreboard players set server const_100 100
scoreboard players set server const_10 10

# Aufhol System - Mining
scoreboard objectives add mining_max_player_level dummy
scoreboard objectives add mining_xp_boost_gain dummy
scoreboard objectives add mining_proximity dummy

# Aufhol System - Farming
scoreboard objectives add farming_max_player_level dummy
scoreboard objectives add farming_xp_boost_gain dummy
scoreboard objectives add farming_proximity dummy

# Aufhol System - Combat
scoreboard objectives add combat_max_player_level dummy
scoreboard objectives add combat_xp_boost_gain dummy
scoreboard objectives add combat_proximity dummy

# Aufhol System - Fishing
scoreboard objectives add fishing_max_player_level dummy
scoreboard objectives add fishing_xp_boost_gain dummy
scoreboard objectives add fishing_proximity dummy
scoreboard objectives add fishing_xp_gain dummy

#Temp
scoreboard objectives add mining_max_player_level dummy
scoreboard objectives add mining_xp_boost_gain dummy
scoreboard objectives add mining_proximity dummy

scoreboard objectives add farming_max_player_level dummy
scoreboard objectives add farming_xp_boost_gain dummy
scoreboard objectives add farming_proximity dummy

scoreboard objectives add combat_max_player_level dummy
scoreboard objectives add combat_xp_boost_gain dummy
scoreboard objectives add combat_proximity dummy

scoreboard objectives add fishing_max_player_level dummy
scoreboard objectives add fishing_xp_boost_gain dummy
scoreboard objectives add fishing_proximity dummy
scoreboard objectives add fishing_xp_gain dummy

scoreboard objectives add calc_temp dummy
scoreboard objectives add const_100 dummy
scoreboard objectives add const_10 dummy
scoreboard players set server const_100 100
scoreboard players set server const_10 10
scoreboard players add @a ERod_learn 0
scoreboard players add @a ESword_learn 0
scoreboard players add @a EAxe_learn 0
scoreboard players add @a EPickaxe_learn 0
scoreboard players add @a EHoe_learn 0

scoreboard objectives add combat_xp_boost dummy
scoreboard objectives add logging_xp_boost dummy
scoreboard objectives add farming_xp_boost dummy
scoreboard objectives add mining_xp_boost dummy
scoreboard objectives add fishing_xp_boost dummy

scoreboard objectives add fishing_Dropchance_Percent dummy

scoreboard objectives add xp_cat dummy
scoreboard objectives add deathcount_system deathCount
scoreboard objectives add temp_half_lvl dummy

gamerule show_death_messages false

# ── Einmalige Initialisierung (Entities spawnen) ──────────────────────────
execute unless score server lb_initialized matches 1 run function sa:leaderboard/setup




