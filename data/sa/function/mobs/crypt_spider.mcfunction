give @p spider_spawn_egg[entity_data={\
id:spider,\
CustomName:[{text:"Crypt spider",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},{id:attack_damage,base:3f},{id:"max_health",base:40.0f}], equipment:{mainhand:{id:bow}},\
DeathLootTable:"sa:dungeon/mobs/crypt_spider"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,spawn_data:\
{entity:\
{id:spider,\
CustomName:[{text:"Crypt spider ",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},\
{id:attack_damage,base:3f},{id:"max_health",base:40.0f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_spider"}},\
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
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1


