#Check up ob Start Variable da ist
scoreboard objectives add one dummy
scoreboard players set server one 1

scoreboard objectives add setup1 dummy
execute unless score server setup1 = server one run function sa:setup/main

#timer
scoreboard objectives add timer minecraft.custom:minecraft.play_time


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

# ==========================================
#              FISHING SYSTEM
# ==========================================

scoreboard objectives add fishing_xp dummy "Mining XP"
scoreboard objectives add fishing_lvl dummy "Mining Level"
scoreboard objectives add fishing_goal dummy "Mining Goal"
scoreboard objectives add fishing_drop dummy "Stein Ertrag"
scoreboard objectives add fishing_rng_numm dummy "Random number"
scoreboard objectives add f_Drops dummy "Dropchance"
scoreboard objectives add f_drop_menge dummy "drop menge"
scoreboard objectives add monster_chance dummy "drop menge"
scoreboard objectives add fished_total dummy "gesammt gefischt"
