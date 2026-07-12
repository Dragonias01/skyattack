$execute in sa:dungeon$(dungeon_nr) run kill @e[x=0,y=0,z=0,distance=..10000,type=!player]
$execute in sa:dungeon$(dungeon_nr) run place jigsaw sa:start_$(dungeon_nr) start 20 $(x) 110 $(z)
$tp @s $(x) 102 $(z)
