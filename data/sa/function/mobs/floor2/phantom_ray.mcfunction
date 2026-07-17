# ============================================================================
# MOB: Phantom Ray (Phantom) - Floor 2
# Datei: sa:mobs/floor2/phantom_ray
# Loot: sa:dungeon/mobs/floor2/phantom_ray
# Size:2b lässt ihn größer/bedrohlicher wirken als ein normaler Phantom.
# ============================================================================

give @p phantom_spawn_egg[entity_data={\
id:phantom,\
CustomName:[{text:"Phantom Ray",color:"dark_gray"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"22",color:"dark_gray"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.4f},{id:attack_damage,base:6f},{id:max_health,base:50f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/phantom_ray"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:phantom,\
CustomName:[{text:"Phantom Ray",color:"dark_gray"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"22",color:"dark_gray"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.4f},\
{id:attack_damage,base:6f},\
{id:max_health,base:50f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/phantom_ray"}},\
normal_config:\
{spawn_range:6,\
total_mobs:6.0f,\
simultaneous_mobs:2.0f,\
total_mobs_added_per_player:2.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:50},\
ominous_config:\
{spawn_range:6,\
total_mobs:2.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:1.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:40},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1
