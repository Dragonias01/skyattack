# ============================================================================
# MOB: Watcher (Guardian) - Floor 2
# Datei: sa:mobs/floor2/watcher
# Loot: sa:dungeon/mobs/floor2/watcher
# ============================================================================

give @p guardian_spawn_egg[entity_data={\
id:guardian,\
CustomName:[{text:"Watcher",color:"aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"22",color:"aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.3f},{id:attack_damage,base:6f},{id:max_health,base:55f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/watcher"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:guardian,\
CustomName:[{text:"Watcher",color:"aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"22",color:"aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.3f},\
{id:attack_damage,base:6f},\
{id:max_health,base:55f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/watcher"}},\
normal_config:\
{spawn_range:4,\
total_mobs:6.0f,\
simultaneous_mobs:2.0f,\
total_mobs_added_per_player:2.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:50},\
ominous_config:\
{spawn_range:4,\
total_mobs:2.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:1.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:40},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1
