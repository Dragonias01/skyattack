tp @a 0 100 0
setblock 0 99 0 bedrock

scoreboard players set server slots 8
forceload add 15 -512 -16 -497
#inseln
#insel 1
#setblock 0 99 -500 minecraft:bedrock
scoreboard players set server i1 0
#insel2
#setblock 0 99 500 minecraft:bedrock
scoreboard players set server i2 0
#insel3
#setblock -500 99 0 minecraft:bedrock
scoreboard players set server i3 0
#insel4
#setblock 500 99 0 minecraft:bedrock
scoreboard players set server i4 0
#insel5
#setblock -250 99 -250 minecraft:bedrock
scoreboard players set server i5 0
#insel6
#setblock -250 99 250 minecraft:bedrock
scoreboard players set server i6 0
#insel7
#setblock 250 99 -250 minecraft:bedrock
scoreboard players set server i7 0
#insel8
#setblock 250 99 250 minecraft:bedrock
scoreboard players set server i8 0

#haupt insel
place template sa:main_island -25 67 -14
fill -13 66 7 0 66 -5 minecraft:light[level=0] replace air

#Gamerules
gamerule random_tick_speed 15
gamerule mob_griefing false
gamerule keep_inventory true
difficulty hard

scoreboard players set server setup1 1
function sa:setup/npc
