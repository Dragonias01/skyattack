#Check up ob Start Variable da ist
scoreboard objectives add one dummy
scoreboard players set server one 1

scoreboard objectives add setup1 dummy
execute unless score server setup1 = server one run function sa:setup/main

#Dungeon Setup
scoreboard objectives add setup2 dummy

scoreboard objectives add temp dummy

#Island Slots
scoreboard objectives add slots dummy
scoreboard objectives add i1 dummy
scoreboard objectives add i2 dummy
scoreboard objectives add i3 dummy
scoreboard objectives add i4 dummy
scoreboard objectives add i5 dummy
scoreboard objectives add i6 dummy
scoreboard objectives add i7 dummy
scoreboard objectives add i8 dummy

#trigger
scoreboard objectives add island trigger
scoreboard objectives add current dummy

#NPC
function sa:setup/npc

