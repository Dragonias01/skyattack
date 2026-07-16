give @p zombie_spawn_egg[entity_data={\
id:zombie,\
CustomName:[{text:"Crypt Zombie",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],Tags:[dungeon_mob],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.1f},{id:attack_damage,base:3f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_zombie"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:zombie,\
Tags:[dungeon_mob],\
CustomName:[{text:"Crypt Zombie ",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.1f},\
{id:attack_damage,base:3f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_zombie"}},\
normal_config:\
{spawn_range:4,\
total_mobs:6.0f,\
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

