# ============================================================================
# LOAD FUNCTION - Datapack Initialisierung
# Version: 1.21.11
# ============================================================================


# ============================================================================
# SERVER KONSTANTEN
# ============================================================================

scoreboard objectives add one dummy
scoreboard objectives add two dummy
scoreboard objectives add five dummy

scoreboard players set server one 1
scoreboard players set server two 2
scoreboard players set server five 5


# Skalierungswerte
scoreboard objectives add scale_fast_num dummy
scoreboard objectives add scale_fast_den dummy
scoreboard objectives add scale_mid_num dummy
scoreboard objectives add scale_mid_den dummy
scoreboard objectives add scale_slow_num dummy
scoreboard objectives add scale_slow_den dummy

scoreboard players set server scale_fast_num 15
scoreboard players set server scale_fast_den 10

scoreboard players set server scale_mid_num 11
scoreboard players set server scale_mid_den 10

scoreboard players set server scale_slow_num 101
scoreboard players set server scale_slow_den 100


# Mathe Konstanten
scoreboard objectives add const_100 dummy
scoreboard objectives add const_10 dummy

scoreboard players set server const_100 100
scoreboard players set server const_10 10


# ============================================================================
# CORE SYSTEM
# ============================================================================

scoreboard objectives add temp dummy
scoreboard objectives add calc_temp dummy
scoreboard objectives add tick_counter dummy

scoreboard objectives add player_initialized dummy

scoreboard objectives add score_timer dummy
scoreboard objectives add timer minecraft.custom:minecraft.play_time

scoreboard objectives add deathcount_system deathCount

gamerule show_death_messages false


# ============================================================================
# SETUP TRACKING
# ============================================================================

scoreboard objectives add setup1 dummy
scoreboard objectives add setup2 dummy

execute unless score server setup1 matches 1 run function sa:setup/overworld/main


# ============================================================================
# EVENT SYSTEM
# ============================================================================

scoreboard objectives add event_counter dummy
scoreboard objectives add event_num dummy
scoreboard objectives add scoreboard_counter dummy

scoreboard objectives add eventboost_combat dummy
scoreboard objectives add eventboost_logging dummy
scoreboard objectives add eventboost_mining dummy
scoreboard objectives add eventboost_farming dummy
scoreboard objectives add eventboost_fishing dummy


# ============================================================================
# NPC SYSTEM
# ============================================================================

function sa:setup/npc


# ============================================================================
# ISLAND SYSTEM
# ============================================================================

scoreboard objectives add slots dummy
scoreboard objectives add island dummy
scoreboard objectives add current dummy

scoreboard objectives add i1 dummy
scoreboard objectives add i2 dummy
scoreboard objectives add i3 dummy
scoreboard objectives add i4 dummy
scoreboard objectives add i5 dummy
scoreboard objectives add i6 dummy
scoreboard objectives add i7 dummy
scoreboard objectives add i8 dummy

scoreboard objectives add itrigger trigger


# ============================================================================
# MENU SYSTEM
# ============================================================================

scoreboard objectives add menue trigger
scoreboard objectives add menue_open dummy
scoreboard objectives add menue_fix dummy


# ============================================================================
# SKILL SYSTEM - GLOBAL
# ============================================================================

scoreboard objectives add xp_cat dummy
scoreboard objectives add goal1 dummy
scoreboard objectives add temp_half_lvl dummy

scoreboard objectives add dungeon_key dummy


# ============================================================================
# SKILL DROPCHANCE
# ============================================================================

scoreboard objectives add Mining_Dropchance_Percent dummy
scoreboard objectives add Farming_Dropchance_Percent dummy
scoreboard objectives add Logging_Dropchance_Percent dummy
scoreboard objectives add Combat_Dropchance_Percent dummy
scoreboard objectives add fishing_Dropchance_Percent dummy


# ============================================================================
# XP BOOST SYSTEM
# ============================================================================

scoreboard objectives add combat_xp_boost dummy
scoreboard objectives add logging_xp_boost dummy
scoreboard objectives add farming_xp_boost dummy
scoreboard objectives add mining_xp_boost dummy
scoreboard objectives add fishing_xp_boost dummy


# ============================================================================
# FISHING SYSTEM
# ============================================================================

scoreboard objectives add fishing_xp dummy "Fishing XP"
scoreboard objectives add fishing_lvl dummy "Fishing Level"
scoreboard objectives add fishing_goal dummy "Fishing Goal"

scoreboard objectives add fishing_drop dummy
scoreboard objectives add fishing_drop_base dummy
scoreboard objectives add fishing_drop_pending dummy
scoreboard objectives add fishing_goal_start dummy

scoreboard objectives add max_level dummy
scoreboard objectives add fishing_initialized dummy

scoreboard objectives add fishing_xp_gain dummy

execute unless score server fishing_initialized = server one run function sa:setup/skills/fishing


# ============================================================================
# MINING SYSTEM
# ============================================================================

scoreboard objectives add mining_initialized dummy

execute unless score server mining_initialized = server one run function sa:setup/skills/mining


# ============================================================================
# FARMING SYSTEM
# ============================================================================

scoreboard objectives add farming_initialized dummy

execute unless score server farming_initialized = server one run function sa:setup/skills/farming


# ============================================================================
# LOGGING SYSTEM
# ============================================================================

scoreboard objectives add logging_initialized dummy

execute unless score server logging_initialized = server one run function sa:setup/skills/logging


# ============================================================================
# COMBAT SYSTEM
# ============================================================================

scoreboard objectives add Combat_initialized dummy

execute unless score server Combat_initialized = server one run function sa:setup/skills/combat


# ============================================================================
# SKILL CATCH-UP SYSTEM
# ============================================================================

scoreboard objectives add logging_max_player_level dummy
scoreboard objectives add logging_proximity dummy

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


# ============================================================================
# TOOL LEARNING SYSTEM
# ============================================================================

scoreboard objectives add ERod_learn dummy
scoreboard objectives add EAxe_learn dummy
scoreboard objectives add ESword_learn dummy
scoreboard objectives add EHoe_learn dummy
scoreboard objectives add EPickaxe_learn dummy

scoreboard players add @a ERod_learn 0
scoreboard players add @a ESword_learn 0
scoreboard players add @a EAxe_learn 0
scoreboard players add @a EPickaxe_learn 0
scoreboard players add @a EHoe_learn 0


# ============================================================================
# GOAL SYSTEM
# ============================================================================

scoreboard objectives add goals_initialized dummy
execute unless score server goals_initialized = server one run function sa:setup/overworld/goals

scoreboard objectives add hub_goals_initialized dummy
execute unless score server hub_goals_initialized = server one run function sa:setup/hub/goals


# ============================================================================
# HUB SYSTEM
# ============================================================================

scoreboard objectives add hub_initialized dummy


# ============================================================================
# DUNGEON SYSTEM
# ============================================================================

scoreboard objectives add dungeon_arena_one_init dummy


# ============================================================================
# LEADERBOARD SYSTEM
# ============================================================================

scoreboard objectives add lb_tick dummy
scoreboard objectives add lb_initialized dummy

scoreboard objectives add lb_log_score dummy
scoreboard objectives add lb_log_name dummy
scoreboard objectives add lb_log_slot dummy
scoreboard objectives add lb_insert_idx dummy

scoreboard players set server lb_tick 0

# Mining
scoreboard objectives add lb_min_score dummy
scoreboard objectives add lb_min_name dummy
scoreboard objectives add lb_min_slot dummy

# Fishing
scoreboard objectives add lb_fsh_score dummy
scoreboard objectives add lb_fsh_name dummy
scoreboard objectives add lb_fsh_slot dummy

# Farming
scoreboard objectives add lb_far_score dummy
scoreboard objectives add lb_far_name dummy
scoreboard objectives add lb_far_slot dummy

# Combat
scoreboard objectives add lb_com_score dummy
scoreboard objectives add lb_com_name dummy
scoreboard objectives add lb_com_slot dummy


# ============================================================================
# LEADERBOARD SETUP
# ============================================================================

execute unless score server lb_initialized matches 1 run function sa:leaderboard/setup


#Unsorted Scoreboards

scoreboard objectives add gambling_trigger trigger
scoreboard objectives add temp_gambling dummy