give @p drowned_spawn_egg[entity_data={\
id:drowned,\
CustomName:[{text:"Soaking Drowned",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"15",color:red},{text:"]",color:gray}],Tags:[dungeon_mob],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.2f},{id:attack_damage,base:5f}],\
DeathLootTable:"sa:temp"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,spawn_data:\
{entity:\
{id:skeleton,Tags:[dungeon_mob],\
CustomName:[{text:"Soaking Drowned ",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"15",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.2f},\
{id:attack_damage,base:5f}],\
DeathLootTable:"sa:temp"}},\
normal_config:\
{spawn_range:4,\
total_mobs:4.0f,\
simultaneous_mobs:2.0f,\
total_mobs_added_per_player:2.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:40},\
ominous_config:\
{spawn_range:4,\
total_mobs:2.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:1.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:40},\
ejecting_loot_table:"sa:temp"\
}\
] 1


