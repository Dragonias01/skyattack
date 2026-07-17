# ============================================================================
# MOB: Soaking Drowned (Floor 2)
# Datei: sa:mobs/floor2/soaking_drowned
# Stärker als Floor 1 Mobs. Loot: sa:dungeon/mobs/floor2/soaking_drowned
# ============================================================================

give @p drowned_spawn_egg[entity_data={\
id:drowned,\
CustomName:[{text:"Soaking Drowned",color:"dark_aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"20",color:"dark_aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
CanBreakDoors:1b,\
attributes:[{id:scale,base:1.3f},{id:attack_damage,base:5f},{id:max_health,base:45f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/soaking_drowned"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:drowned,\
CustomName:[{text:"Soaking Drowned",color:"dark_aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"20",color:"dark_aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
CanBreakDoors:1b,\
attributes:[{id:scale,base:1.3f},\
{id:attack_damage,base:5f},\
{id:max_health,base:45f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/soaking_drowned"}},\
normal_config:\
{spawn_range:4,\
total_mobs:8.0f,\
simultaneous_mobs:3.0f,\
total_mobs_added_per_player:3.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:40},\
ominous_config:\
{spawn_range:4,\
total_mobs:3.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:1.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:30},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1
