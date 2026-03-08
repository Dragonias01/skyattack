# ============================================================================
# HUB GOALS - SETUP MAIN
# Datei: sa:setup/hub/goals
# Version: 1.21.11
# ============================================================================
# Eintrag in load.mcfunction:
#   scoreboard objectives add hub_goals_initialized dummy
#   execute unless score server hub_goals_initialized = server one run function sa:setup/hub/goals
# ============================================================================

# ── Scoreboards ───────────────────────────────────────────────────────────
scoreboard objectives add hub_levelbaum dummy "Levelbaum Abgabe"
scoreboard objectives add hub_levelbaum_cost dummy "Levelbaum Ziel"
scoreboard objectives add hub_levelbaum_rem dummy
scoreboard objectives add temp_hub_levelbaum dummy
scoreboard objectives add hub_levelbaum_done dummy
scoreboard objectives add hub_dungeon dummy "Dungeon Abgabe"
scoreboard objectives add hub_dungeon_cost dummy "Dungeon Ziel"
scoreboard objectives add hub_dungeon_rem dummy
scoreboard objectives add temp_hub_dungeon dummy
scoreboard objectives add hub_dungeon_done dummy
scoreboard objectives add hub_skillrooms dummy "Skill Rooms Abgabe"
scoreboard objectives add hub_skillrooms_cost dummy "Skill Rooms Ziel"
scoreboard objectives add hub_skillrooms_rem dummy
scoreboard objectives add temp_hub_skillrooms dummy
scoreboard objectives add hub_skillrooms_done dummy
scoreboard objectives add hub_mining dummy "Mining Raum Abgabe"
scoreboard objectives add hub_mining_cost dummy "Mining Raum Ziel"
scoreboard objectives add hub_mining_rem dummy
scoreboard objectives add temp_hub_mining dummy
scoreboard objectives add hub_mining_done dummy
scoreboard objectives add hub_farming dummy "Farming Raum Abgabe"
scoreboard objectives add hub_farming_cost dummy "Farming Raum Ziel"
scoreboard objectives add hub_farming_rem dummy
scoreboard objectives add temp_hub_farming dummy
scoreboard objectives add hub_farming_done dummy
scoreboard objectives add hub_fishing dummy "Fishing Raum Abgabe"
scoreboard objectives add hub_fishing_cost dummy "Fishing Raum Ziel"
scoreboard objectives add hub_fishing_rem dummy
scoreboard objectives add temp_hub_fishing dummy
scoreboard objectives add hub_fishing_done dummy
scoreboard objectives add hub_fishpond dummy "Fishing Pond Abgabe"
scoreboard objectives add hub_fishpond_cost dummy "Fishing Pond Ziel"
scoreboard objectives add hub_fishpond_rem dummy
scoreboard objectives add temp_hub_fishpond dummy
scoreboard objectives add hub_fishpond_done dummy
scoreboard objectives add hub_combat dummy "Combat Raum Abgabe"
scoreboard objectives add hub_combat_cost dummy "Combat Raum Ziel"
scoreboard objectives add hub_combat_rem dummy
scoreboard objectives add temp_hub_combat dummy
scoreboard objectives add hub_combat_done dummy
scoreboard objectives add hub_schmied dummy "Schmied Abgabe"
scoreboard objectives add hub_schmied_cost dummy "Schmied Ziel"
scoreboard objectives add hub_schmied_rem dummy
scoreboard objectives add temp_hub_schmied dummy
scoreboard objectives add hub_schmied_done dummy
scoreboard objectives add hub_techniker dummy "Techniker Abgabe"
scoreboard objectives add hub_techniker_cost dummy "Techniker Ziel"
scoreboard objectives add hub_techniker_rem dummy
scoreboard objectives add temp_hub_techniker dummy
scoreboard objectives add hub_techniker_done dummy

# ── Startwerte ────────────────────────────────────────────────────────────
scoreboard players set server hub_levelbaum 0
scoreboard players set server hub_levelbaum_cost 0
scoreboard players set server hub_dungeon 0
scoreboard players set server hub_dungeon_cost 0
scoreboard players set server hub_skillrooms 0
scoreboard players set server hub_skillrooms_cost 0
scoreboard players set server hub_mining 0
scoreboard players set server hub_mining_cost 0
scoreboard players set server hub_farming 0
scoreboard players set server hub_farming_cost 0
scoreboard players set server hub_fishing 0
scoreboard players set server hub_fishing_cost 0
scoreboard players set server hub_fishpond 0
scoreboard players set server hub_fishpond_cost 0
scoreboard players set server hub_combat 0
scoreboard players set server hub_combat_cost 0
scoreboard players set server hub_schmied 0
scoreboard players set server hub_schmied_cost 0
scoreboard players set server hub_techniker 0
scoreboard players set server hub_techniker_cost 0

# ── Goal Entities spawnen ─────────────────────────────────────────────────
# HINWEIS: Nur die Goals die von Anfang an aktiv sind werden hier gespawnt.
# dungeon_goal     → wird in skillrooms_goal/reward gespawnt (+ DungeonMaster NPC)
# mining_goal      → wird in skillrooms_goal/reward gespawnt
# fishing_goal     → wird in mining_goal/reward gespawnt
# fishing_pond     → wird in fishing_goal/reward gespawnt
# farming_goal     → wird in fishing_goal/reward gespawnt
# combat_goal      → wird in farming_goal/reward gespawnt
execute in sa:hub run function sa:setup/hub/goal_setup/levelbaum_goal
execute in sa:hub run function sa:setup/hub/goal_setup/skillrooms_goal

scoreboard players set server hub_goals_initialized 1
