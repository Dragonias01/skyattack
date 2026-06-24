give @p silverfish_spawn_egg[entity_data={\
id:silverfish,\
CustomName:[{text:"Rock mite",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"5",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:2f},{id:attack_damage,base:3f},{id:max_health,base:15f}],\
DeathLootTable:"sa:dungeon/mobs/rock_mite"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:silverfish,\
CustomName:[{text:"Rock mite",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"5",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:2f},\
{id:attack_damage,base:3f},\
{id:max_health,base:15f}],\
DeathLootTable:"sa:dungeon/mobs/rock_mite"}},\
normal_config:\
{spawn_range:4,\
total_mobs:12.0f,\
simultaneous_mobs:4.0f,\
total_mobs_added_per_player:3.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:20},\
ominous_config:\
{spawn_range:4,\
total_mobs:12.0f,\
simultaneous_mobs:4.0f,\
total_mobs_added_per_player:3.0f,\
simultaneous_mobs_added_per_player:1.0f,\
ticks_between_spawn:10},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1

