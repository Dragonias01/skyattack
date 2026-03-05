execute in sa:hub run tp @s 0 101 0
execute in sa:hub run setblock 0 99 0 minecraft:diamond_block
execute positioned -15 99 5 as @a[gamemode=survival] run gamemode adventure @s

execute unless score server hub_initialized = server one run effect give @s slow_falling 2 30
execute unless score server hub_initialized = server one in sa:hub run tp @s 0 111 0
execute unless score server hub_initialized = server one run schedule function sa:setup/hub/main_hub 20t
