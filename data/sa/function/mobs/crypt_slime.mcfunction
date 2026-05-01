give @p slime_spawn_egg[entity_data={\
id:slime,\
CustomName:[{text:"Crypt Slime",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},{id:attack_damage,base:5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_slime"\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,spawn_data:\
{entity:\
{id:slime,\
CustomName:[{text:"Crypt Slime",color:red},{text:"[",color:gray},{text:"LVL: ",color:gray},{text:"10",color:red},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},\
{id:attack_damage,base:5f}],\
DeathLootTable:"sa:dungeon/mobs/crypt_slime"}},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1


