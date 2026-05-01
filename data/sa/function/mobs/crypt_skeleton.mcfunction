give @p skeleton_spawn_egg[entity_data={\
id:skeleton,\
CustomName:[{text:"Crypt skeleton",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:0.8f},{id:attack_damage,base:5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_skeleton"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,spawn_data:\
{entity:\
{id:skeleton,\
CustomName:[{text:"Crypt skeleton",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:0.8f},\
{id:attack_damage,base:5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_skeleton"}},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1


