scoreboard players set server setup1 1
tp @a 0 100 0
setblock 0 99 0 bedrock
function sa:setup/npc


scoreboard players set server slots 8

#inseln
#insel 1
setblock 0 99 -500 minecraft:bedrock
scoreboard players set server i1 0
#insel2
setblock 0 99 500 minecraft:bedrock
scoreboard players set server i2 0
#insel3
setblock -500 99 0 minecraft:bedrock
scoreboard players set server i3 0
#insel4
setblock 500 99 0 minecraft:bedrock
scoreboard players set server i4 0
#insel5
setblock -250 99 -250 minecraft:bedrock
scoreboard players set server i5 0
#insel6
setblock -250 99 250 minecraft:bedrock
scoreboard players set server i6 0
#insel7
setblock 250 99 -250 minecraft:bedrock
scoreboard players set server i7 0
#insel8
setblock 250 99 250 minecraft:bedrock
scoreboard players set server i8 0

#haupt insel
place template sa:main_island -25 67 -14