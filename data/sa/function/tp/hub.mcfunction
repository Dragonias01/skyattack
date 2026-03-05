execute in sa:hub run tp @s 0 101 0
execute in sa:hub run setblock 0 99 0 minecraft:diamond_block
execute positioned -15 99 5 as @a[gamemode=survival] run gamemode adventure @s

execute unless score server hub_initialized = server one run place template sa:hub_1 -23 96 -23
