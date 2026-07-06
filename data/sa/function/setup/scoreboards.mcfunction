# ============================================================================
# SCOREBOARD REGISTRIERUNG
# Datei: sa:setup/scoreboards
# Version: 1.21.11
# Wird von load.mcfunction als zweite Funktion aufgerufen (immer, kein Guard).
# Enthält NUR scoreboard objectives add - kein set, kein if, kein execute.
# Idempotent: bestehende Objectives und Scores bleiben erhalten.
# ============================================================================

# ── Core ──────────────────────────────────────────────────────────────────
    scoreboard objectives add temp dummy
    scoreboard objectives add calc_temp dummy
    scoreboard objectives add tick_counter dummy
    scoreboard objectives add player_initialized dummy
    scoreboard objectives add score_timer dummy
    scoreboard objectives add timer minecraft.custom:minecraft.play_time
    scoreboard objectives add deathcount_system deathCount
    scoreboard objectives add ten dummy
    scoreboard players set server ten 10

# ── Setup Tracking ────────────────────────────────────────────────────────
    scoreboard objectives add setup1 dummy
    scoreboard objectives add setup2 dummy
    scoreboard objectives add hub_initialized dummy
    scoreboard objectives add dungeon_arena_one_init dummy
    scoreboard objectives add scoreboard_teams_init dummy

# ── Event System ──────────────────────────────────────────────────────────
    scoreboard objectives add event_counter dummy
    scoreboard objectives add event_num dummy
    scoreboard objectives add scoreboard_counter dummy

# ── Island System ─────────────────────────────────────────────────────────
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

# ── Menu System ───────────────────────────────────────────────────────────
    scoreboard objectives add menue trigger
    scoreboard objectives add menue_open dummy
    scoreboard objectives add menue_fix dummy

# ── Skill System - Allgemein ──────────────────────────────────────────────
    scoreboard objectives add xp_cat dummy
    scoreboard objectives add goal1 dummy
    scoreboard objectives add temp_half_lvl dummy
    scoreboard objectives add dungeon_key dummy

# ── Skill Dropchance ──────────────────────────────────────────────────────
    scoreboard objectives add Mining_Dropchance_Percent dummy
    scoreboard objectives add Farming_Dropchance_Percent dummy
    scoreboard objectives add Logging_Dropchance_Percent dummy
    scoreboard objectives add Combat_Dropchance_Percent dummy
    scoreboard objectives add fishing_Dropchance_Percent dummy

# ── XP Boost Anzeige (Menü) ───────────────────────────────────────────────
    scoreboard objectives add combat_xp_boost dummy
    scoreboard objectives add logging_xp_boost dummy
    scoreboard objectives add farming_xp_boost dummy
    scoreboard objectives add mining_xp_boost dummy
    scoreboard objectives add fishing_xp_boost dummy

# ── Fishing ───────────────────────────────────────────────────────────────
    scoreboard objectives add fishing_xp dummy "Fishing XP"
    scoreboard objectives add fishing_lvl dummy "Fishing Level"
    scoreboard objectives add fishing_goal dummy "Fishing Goal"
    scoreboard objectives add fishing_drop dummy
    scoreboard objectives add fishing_drop_base dummy
    scoreboard objectives add fishing_drop_pending dummy
    scoreboard objectives add fishing_goal_start dummy
    scoreboard objectives add fishing_initialized dummy
    scoreboard objectives add fishing_xp_gain dummy
    scoreboard objectives add fishing_drop_menge dummy
    scoreboard objectives add f_rod_gain dummy
    scoreboard objectives add fishing_drops dummy
    scoreboard objectives add fishing_max_player_level dummy
    scoreboard objectives add fishing_xp_boost_gain dummy
    scoreboard objectives add fishing_proximity dummy

# ── Mining ────────────────────────────────────────────────────────────────
    scoreboard objectives add stone_mined minecraft.mined:minecraft.stone
    scoreboard objectives add cstone_mined minecraft.mined:minecraft.cobblestone
    scoreboard objectives add mining_xp dummy "Mining XP"
    scoreboard objectives add mining_lvl dummy "Mining Level"
    scoreboard objectives add mining_goal dummy "Mining Goal"
    scoreboard objectives add mining_drop dummy
    scoreboard objectives add m_xp_gain dummy
    scoreboard objectives add m_Drops dummy
    scoreboard objectives add m_drop_menge dummy
    scoreboard objectives add m_pickaxe_gain dummy
    scoreboard objectives add mining_goal_start dummy
    scoreboard objectives add mining_initialized dummy
    scoreboard objectives add mining_max_player_level dummy
    scoreboard objectives add mining_xp_boost_gain dummy
    scoreboard objectives add mining_proximity dummy

# ── Farming ───────────────────────────────────────────────────────────────
    scoreboard objectives add potato_mined minecraft.mined:potatoes
    scoreboard objectives add farming_goal dummy
    scoreboard objectives add farming_lvl dummy
    scoreboard objectives add farming_xp_gain dummy
    scoreboard objectives add farming_xp dummy
    scoreboard objectives add farming_drop_menge dummy
    scoreboard objectives add f_hoe_gain dummy
    scoreboard objectives add farming_drops dummy
    scoreboard objectives add farming_multiplier_num dummy
    scoreboard objectives add farming_multiplier_den dummy
    scoreboard objectives add farming_initialized dummy
    scoreboard objectives add farming_max_player_level dummy
    scoreboard objectives add farming_xp_boost_gain dummy
    scoreboard objectives add farming_proximity dummy

# ── Logging ───────────────────────────────────────────────────────────────
    scoreboard objectives add oak_mined minecraft.mined:oak_log
    scoreboard objectives add logging_goal dummy
    scoreboard objectives add logging_lvl dummy
    scoreboard objectives add logging_xp_gain dummy
    scoreboard objectives add logging_xp dummy
    scoreboard objectives add logging_drop_menge dummy
    scoreboard objectives add l_axe_gain dummy
    scoreboard objectives add logging_drops dummy
    scoreboard objectives add logging_initialized dummy
    scoreboard objectives add logging_max_player_level dummy
    scoreboard objectives add logging_xp_boost_gain dummy
    scoreboard objectives add logging_proximity dummy

# ── Combat ────────────────────────────────────────────────────────────────
    scoreboard objectives add zombie_killed minecraft.killed:minecraft.zombie
    scoreboard objectives add spider_killed minecraft.killed:minecraft.spider
    scoreboard objectives add witch_killed minecraft.killed:minecraft.witch
    scoreboard objectives add skeleton_killed minecraft.killed:minecraft.skeleton
    scoreboard objectives add creeper_killed minecraft.killed:minecraft.creeper
    scoreboard objectives add enderman_killed minecraft.killed:minecraft.enderman
    scoreboard objectives add combat_goal dummy
    scoreboard objectives add combat_lvl dummy
    scoreboard objectives add combat_xp_gain dummy
    scoreboard objectives add combat_xp dummy
    scoreboard objectives add combat_drop_menge dummy
    scoreboard objectives add c_sword_gain dummy
    scoreboard objectives add combat_drops dummy
    scoreboard objectives add combat_multiplier_num dummy
    scoreboard objectives add combat_multiplier_den dummy
    scoreboard objectives add Combat_initialized dummy
    scoreboard objectives add combat_max_player_level dummy
    scoreboard objectives add combat_xp_boost_gain dummy
    scoreboard objectives add combat_proximity dummy

# ── Tool Learning ─────────────────────────────────────────────────────────
    scoreboard objectives add ERod_learn dummy
    scoreboard objectives add EAxe_learn dummy
    scoreboard objectives add ESword_learn dummy
    scoreboard objectives add EHoe_learn dummy
    scoreboard objectives add EPickaxe_learn dummy

# ── Goal System ───────────────────────────────────────────────────────────
    scoreboard objectives add goals_initialized dummy
    scoreboard objectives add hub_goals_initialized dummy
    scoreboard objectives add goal_ship_remaining dummy
    scoreboard objectives add temp_goal_ship_check dummy

# ── Hub Goals ─────────────────────────────────────────────────────────────
    scoreboard objectives add hub_levelbaum dummy "Levelbaum Abgabe"
    scoreboard objectives add hub_levelbaum_cost dummy
    scoreboard objectives add hub_levelbaum_rem dummy
    scoreboard objectives add temp_hub_levelbaum dummy
    scoreboard objectives add hub_levelbaum_done dummy
    scoreboard objectives add hub_dungeon dummy "Dungeon Abgabe"
    scoreboard objectives add hub_dungeon_cost dummy
    scoreboard objectives add hub_dungeon_rem dummy
    scoreboard objectives add temp_hub_dungeon dummy
    scoreboard objectives add hub_dungeon_done dummy
    scoreboard objectives add hub_skillrooms dummy "Skill Rooms Abgabe"
    scoreboard objectives add hub_skillrooms_cost dummy
    scoreboard objectives add hub_skillrooms_rem dummy
    scoreboard objectives add temp_hub_skillrooms dummy
    scoreboard objectives add hub_skillrooms_done dummy
    scoreboard objectives add hub_mining dummy "Mining Raum Abgabe"
    scoreboard objectives add hub_mining_cost dummy
    scoreboard objectives add hub_mining_rem dummy
    scoreboard objectives add temp_hub_mining dummy
    scoreboard objectives add hub_mining_done dummy
    scoreboard objectives add hub_farming dummy "Farming Raum Abgabe"
    scoreboard objectives add hub_farming_cost dummy
    scoreboard objectives add hub_farming_rem dummy
    scoreboard objectives add temp_hub_farming dummy
    scoreboard objectives add hub_farming_done dummy
    scoreboard objectives add hub_fishing dummy "Fishing Raum Abgabe"
    scoreboard objectives add hub_fishing_cost dummy
    scoreboard objectives add hub_fishing_rem dummy
    scoreboard objectives add temp_hub_fishing dummy
    scoreboard objectives add hub_fishing_done dummy
    scoreboard objectives add hub_fishpond dummy "Fishing Pond Abgabe"
    scoreboard objectives add hub_fishpond_cost dummy
    scoreboard objectives add hub_fishpond_rem dummy
    scoreboard objectives add temp_hub_fishpond dummy
    scoreboard objectives add hub_fishpond_done dummy
    scoreboard objectives add hub_combat dummy "Combat Raum Abgabe"
    scoreboard objectives add hub_combat_cost dummy
    scoreboard objectives add hub_combat_rem dummy
    scoreboard objectives add temp_hub_combat dummy
    scoreboard objectives add hub_combat_done dummy
    scoreboard objectives add hub_schmied dummy "Schmied Abgabe"
    scoreboard objectives add hub_schmied_cost dummy
    scoreboard objectives add hub_schmied_rem dummy
    scoreboard objectives add temp_hub_schmied dummy
    scoreboard objectives add hub_schmied_done dummy
    scoreboard objectives add hub_techniker dummy "Techniker Abgabe"
    scoreboard objectives add hub_techniker_cost dummy
    scoreboard objectives add hub_techniker_rem dummy
    scoreboard objectives add temp_hub_techniker dummy
    scoreboard objectives add hub_techniker_done dummy

# ── Leaderboard ───────────────────────────────────────────────────────────
    scoreboard objectives add lb_tick dummy
    scoreboard objectives add lb_initialized dummy
    scoreboard objectives add lb_log_score dummy
    scoreboard objectives add lb_log_name dummy
    scoreboard objectives add lb_log_slot dummy
    scoreboard objectives add lb_insert_idx dummy
    scoreboard objectives add lb_min_score dummy
    scoreboard objectives add lb_min_name dummy
    scoreboard objectives add lb_min_slot dummy
    scoreboard objectives add lb_fsh_score dummy
    scoreboard objectives add lb_fsh_name dummy
    scoreboard objectives add lb_fsh_slot dummy
    scoreboard objectives add lb_far_score dummy
    scoreboard objectives add lb_far_name dummy
    scoreboard objectives add lb_far_slot dummy
    scoreboard objectives add lb_com_score dummy
    scoreboard objectives add lb_com_name dummy
    scoreboard objectives add lb_com_slot dummy

# ── Dungeon System ────────────────────────────────────────────────────────

# general
    scoreboard objectives add f1_boss_state dummy
    #Floor 1
    scoreboard objectives add dungeon_hud dummy "- §4Dungeon -"
    scoreboard objectives add dungeon_1_timer dummy
    scoreboard objectives add dungeon_1_players dummy
    scoreboard objectives add dungeon_1_status dummy
    scoreboard objectives add dungeon_1_key dummy
    scoreboard objectives add dg1_state dummy
    scoreboard objectives add dg1_timer dummy
    scoreboard objectives add dg1_players_dungeon dummy
    scoreboard objectives add dg1_players_boss dummy
    scoreboard objectives add dg1_generated dummy
    scoreboard objectives add dg1_loot_generated dummy
    scoreboard objectives add d1_tmp_minutes dummy
    scoreboard objectives add d1_tmp_seconds dummy

    #Floor 2
scoreboard objectives add dungeon_2_timer dummy
scoreboard objectives add dungeon_2_players dummy
scoreboard objectives add dungeon_2_status dummy
scoreboard objectives add dungeon_2_key dummy
scoreboard objectives add dg2_state dummy
scoreboard objectives add dg2_timer dummy
scoreboard objectives add dg2_players_dungeon dummy
scoreboard objectives add dg2_players_boss dummy
scoreboard objectives add dg2_generated dummy
scoreboard objectives add dg2_loot_generated dummy
scoreboard objectives add d2_tmp_minutes dummy
scoreboard objectives add d2_tmp_seconds dummy

# ── Gambling ──────────────────────────────────────────────────────────────
    scoreboard objectives add gambling_trigger trigger
    scoreboard objectives add temp_gambling dummy

# ── XP Fruits ─────────────────────────────────────────────────────────────
    scoreboard objectives add Logging_fruit_timer minecraft.custom:minecraft.play_time
    scoreboard objectives add Logging_fruit_gain dummy
    scoreboard objectives add Mining_fruit_timer minecraft.custom:minecraft.play_time
    scoreboard objectives add m_xp_fruit_gain dummy
    scoreboard objectives add Farming_fruit_timer minecraft.custom:minecraft.play_time
    scoreboard objectives add farming_xp_fruit_gain dummy
    scoreboard objectives add Combat_fruit_timer minecraft.custom:minecraft.play_time
    scoreboard objectives add combat_xp_fruit_gain dummy

# ──────────────────────────────────────────────────────────────────────────────
    scoreboard objectives add bossbar_boss1_init dummy

# ── Collections ─────────────────────────────────────────────────────────────
    scoreboard objectives add oak_collected minecraft.mined:minecraft.oak_log
    scoreboard objectives add stone_collected minecraft.mined:minecraft.stone
    scoreboard objectives add cstone_collected minecraft.mined:minecraft.cobblestone
    scoreboard objectives add overall_stone_collected minecraft.mined:minecraft.stone

scoreboard objectives add potato_collected minecraft.mined:potatoes



function sa:setup/stats
