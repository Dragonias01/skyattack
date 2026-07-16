give @p slime_spawn_egg[entity_data={\
id:slime,\
CustomName:[{text:"Crypt Slime",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],Tags:[dungeon_mob],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},{id:attack_damage,base:2.5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_slime"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,spawn_data:\
{entity:\
{id:slime,\
Tags:[dungeon_mob],\
CustomName:[{text:"Crypt Slime ",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},\
{id:attack_damage,base:2.5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_slime"}},\
normal_config:\
{spawn_range:4,\
total_mobs:9.0f,\
simultaneous_mobs:3.0f,\
total_mobs_added_per_player:3.0f,\
simultaneous_mobs_added_per_player:0f,\
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


