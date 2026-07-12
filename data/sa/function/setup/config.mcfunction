# ============================================================================
# CONFIG INIT - einmalig bei Datapack-(Neu)Start / Reload
# ============================================================================
# WICHTIG: "current_cost" ist NEU gegenüber deiner alten 
# initial_cost      = Kosten bei 0 Spielern
# cost_per_player    = wird bei JEDEM Player-Join einmalig draufaddiert
# current_cost       = die tatsächlich aktive Zielsumme (initial_cost + n * cost_per_player)
#                       -> wird von on_join.mcfunction hochgezählt, NICHT live berechnet
#                       -> entspricht 1:1 deinem alten "goal1_cost += 25 pro Join"-Prinzip
#
# WICHTIG: NICHT automatisch bei jedem /reload ausfuehren - siehe README.
# Erstes Setup / neue Season: einmal manuell mit /function sa:load/init_config
# ============================================================================

#Goals
data modify storage sa:config goals.ship_goal set value {initial_cost:25,cost_per_player:25,current_cost:25,goal_completed:0b,goal_progress:0,item:"minecraft:basalt",item_name:"compressed_log",success_text:"Compressed Logs",max_per_use:10,display_tag:"display_goal_ship",reward_function:"sa:goals/goal_ship/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.skillroom_goal set value {initial_cost:25,cost_per_player:25,current_cost:25,goal_completed:0b,goal_progress:0,item:"minecraft:basalt",item_name:"compressed_log",success_text:"Compressed Logs",max_per_use:10,display_tag:"display_goal_skillroom",reward_function:"sa:goals/goal_skillroom/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.dungeon_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:zombie_head",item_name:"compressed_mob_mesh",success_text:"Compressed Mob Mesh",max_per_use:10,display_tag:"display_dungeon",reward_function:"sa:goals/dungeon_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.mining_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:oak_wood",item_name:"double_compressed_log",success_text:"Double Compressed Logs",max_per_use:10,display_tag:"display_mining",reward_function:"sa:goals/mining_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.farming_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"double_compressed_fish",success_text:"Double Compressed Fish",max_per_use:10,display_tag:"display_farming",reward_function:"sa:goals/farming_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.fishing_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:deepslate",item_name:"double_compressed_stone",success_text:"Double Compressed Stone",max_per_use:10,display_tag:"display_fishing",reward_function:"sa:goals/fishing_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.combat_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"double_compressed_crop",success_text:"Double Compressed Crop",max_per_use:10,display_tag:"display_combat",reward_function:"sa:goals/combat_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.fishing_pond_goal set value {initial_cost:100,cost_per_player:100,current_cost:100,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"placeholder_item",success_text:"Placeholder Items",max_per_use:10,display_tag:"display_fishing_pond",reward_function:"sa:goals/fishing_pond_goal/reward",uses_xp:1b,has_dependency:1b,dependency_objective:"hub_fishing_done",dependency_value:1,dependency_name:"Fishing Room"}

data modify storage sa:config goals.level_baum_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"placeholder_item",success_text:"Placeholder Items",max_per_use:10,display_tag:"display_level_baum",reward_function:"sa:goals/level_baum_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.schmied_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"placeholder_item",success_text:"Placeholder Items",max_per_use:10,display_tag:"display_schmied",reward_function:"sa:goals/schmied_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}

data modify storage sa:config goals.techniker_goal set value {initial_cost:50,cost_per_player:50,current_cost:50,goal_completed:0b,goal_progress:0,item:"minecraft:paper",item_name:"placeholder_item",success_text:"Placeholder Items",max_per_use:10,display_tag:"display_techniker",reward_function:"sa:goals/techniker_goal/reward",uses_xp:0b,has_dependency:0b,dependency_objective:"",dependency_value:0,dependency_name:""}


#Dungeons

data modify storage sa:config dungeon.floor1.dungeon1 set value {nr:"1",floor:"1",dimension:"sa:dungeon1",arena_dimension:"sa:dungeon_arena_1",structure_pool:"sa:start_1",boss_tag:"boss1",display_players_tag:"d1_display_players",display_timer_tag:"d1_display_timer",sidebar_team:"dg_d1_timer",advancement:"sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt"}
data modify storage sa:config dungeon.floor1.dungeon2 set value {nr:"2",floor:"1",dimension:"sa:dungeon2",arena_dimension:"sa:dungeon_arena_1",structure_pool:"sa:start_1",boss_tag:"boss1",display_players_tag:"d2_display_players",display_timer_tag:"d2_display_timer",sidebar_team:"dg_d2_timer",advancement:"sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt"}

data modify storage sa:config dungeon.floor2.dungeon3 set value {nr:"3",floor:"2",dimension:"sa:dungeon3",arena_dimension:"sa:dungeon_arena_2",structure_pool:"sa:start_f2",boss_tag:"boss1",display_players_tag:"d3_display_players",display_timer_tag:"d3_display_timer",sidebar_team:"dg_d3_timer",advancement:"sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt"}
data modify storage sa:config dungeon.floor2.dungeon4 set value {nr:"4",floor:"2",dimension:"sa:dungeon4",arena_dimension:"sa:dungeon_arena_2",structure_pool:"sa:start_f2",boss_tag:"boss1",display_players_tag:"d4_display_players",display_timer_tag:"d4_display_timer",sidebar_team:"dg_d4_timer",advancement:"sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt"}

scoreboard players set server config_initialized 1
