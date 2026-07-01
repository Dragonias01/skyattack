advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/all_or_nothing/all_or_nothing
experience add @s -100 levels
particle sonic_boom 10 99 -3
particle sonic_boom 10 99 -3
execute in sa:hub run particle minecraft:end_rod 10 99 -3
execute in sa:hub run playsound block.beacon.activate player @s

execute in sa:hub run loot insert 10 99 -3 loot sa:gambling
