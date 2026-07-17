# ============================================================================
# MOB: Spiky Watcher (Elder Guardian) - Floor 2 Mini-Boss
# Datei: sa:mobs/floor2/spiky_watcher
# Loot: sa:dungeon/mobs/floor2/spiky_watcher
# Deutlich stärker als normale Floor 2 Mobs (Mini-Boss).
# ============================================================================

give @p elder_guardian_spawn_egg[entity_data={\
id:elder_guardian,\
CustomName:[{text:"Spiky Watcher",color:"dark_purple",bold:1b},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"30",color:"dark_purple"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.6f},{id:attack_damage,base:9f},{id:max_health,base:180f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/spiky_watcher"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:elder_guardian,\
CustomName:[{text:"Spiky Watcher",color:"dark_purple",bold:1b},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"30",color:"dark_purple"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.6f},\
{id:attack_damage,base:9f},\
{id:max_health,base:180f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/spiky_watcher"}},\
normal_config:\
{spawn_range:5,\
total_mobs:1.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:0.0f,\
simultaneous_mobs_added_per_player:0.0f,\
ticks_between_spawn:100},\
ominous_config:\
{spawn_range:5,\
total_mobs:1.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:0.0f,\
simultaneous_mobs_added_per_player:0.0f,\
ticks_between_spawn:80},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1
