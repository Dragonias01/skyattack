#Check up ob Start Variable da ist
scoreboard objectives add one dummy
scoreboard players set server one 1

scoreboard objectives add setup1 dummy
execute unless score server setup1 = server one run function sa:setup/setup

#Dungeon Setup
scoreboard objectives add setup2 dummy

scoreboard objectives add temp dummy
