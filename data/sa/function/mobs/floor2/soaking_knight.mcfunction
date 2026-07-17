# ============================================================================
# MOB: Soaking Knight - Floor 2 Mini-Boss
# Datei: sa:mobs/floor2/soaking_knight
# Ein "Nautilus" (umbenannter Dolphin) als Reittier mit einem Drowned-Reiter.
# Der Drowned-Reiter ("Soaking Knight") trägt das Death-Loot-Table.
# Loot: sa:dungeon/mobs/floor2/soaking_knight
# ============================================================================

give @p zombie_nautilus_spawn_egg[entity_data={\
id:zombie_nautilus,\
CustomName:[{text:"Nautilus",color:"dark_aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"28",color:"dark_aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},{id:max_health,base:40f}],\
Passengers:[{\
id:drowned,\
CustomName:[{text:"Soaking Knight",color:"gold",bold:1b},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"28",color:"gold"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
CanBreakDoors:1b,\
attributes:[{id:scale,base:1.2f},{id:attack_damage,base:8f},{id:max_health,base:60f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/soaking_knight"\
}]\
}] 1

give @p trial_spawner[minecraft:block_entity_data=\
{id:trial_spawner,\
spawn_data:\
{entity:\
{id:zombie_nautilus,\
CustomName:[{text:"Nautilus",color:"dark_aqua"},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"28",color:"dark_aqua"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
attributes:[{id:scale,base:1.5f},\
{id:max_health,base:40f}],\
Passengers:[{\
id:drowned,\
CustomName:[{text:"Soaking Knight",color:"gold",bold:1b},{text:" [",color:gray},{text:"LVL: ",color:gray},{text:"28",color:"gold"},{text:"]",color:gray}],\
CustomNameVisible:1b,\
CanBreakDoors:1b,\
attributes:[{id:scale,base:1.2f},{id:attack_damage,base:8f},{id:max_health,base:60f}],\
DeathLootTable:"sa:dungeon/floor2/mobs/soaking_knight"\
}]}},\
normal_config:\
{spawn_range:5,\
total_mobs:2.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:1.0f,\
simultaneous_mobs_added_per_player:0.0f,\
ticks_between_spawn:80},\
ominous_config:\
{spawn_range:5,\
total_mobs:1.0f,\
simultaneous_mobs:1.0f,\
total_mobs_added_per_player:0.0f,\
simultaneous_mobs_added_per_player:0.0f,\
ticks_between_spawn:60},\
ejecting_loot_table:"sa:dungeon/floor1/spawner_drop"\
}\
] 1
