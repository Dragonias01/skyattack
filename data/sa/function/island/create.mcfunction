scoreboard players set @s itrigger 0
scoreboard players set server current 1

#insel8 250 99 250
execute if score server i7 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i8 matches 1 run place template sa:island 248 99 248
execute if score server current matches 0 unless score server i8 matches 1 run tp @s 250 108 250
execute if score server current matches 0 unless score server i8 matches 1 run spawnpoint @s 250 108 250
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set @s island 8
execute if score server current matches 0 unless score server i8 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 8 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i8 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set server slots 0
execute if score server current matches 0 run scoreboard players set server i8 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel7 250 99 -250
execute if score server i6 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i7 matches 1 run place template sa:island 248 99 -252
execute if score server current matches 0 unless score server i7 matches 1 run tp @s 250 108 -250
execute if score server current matches 0 unless score server i7 matches 1 run spawnpoint @s 250 108 -250
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set @s island 7
execute if score server current matches 0 unless score server i7 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 7 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i7 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set server slots 1
execute if score server current matches 0 run scoreboard players set server i7 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel6 -250 99 250
execute if score server i5 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i6 matches 1 run place template sa:island -252 99 248
execute if score server current matches 0 unless score server i6 matches 1 run tp @s -250 108 250
execute if score server current matches 0 unless score server i6 matches 1 run spawnpoint @s -250 108 250
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set @s island 6
execute if score server current matches 0 unless score server i6 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 6 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i6 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set server slots 2
execute if score server current matches 0 run scoreboard players set server i6 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel5 -250 99 -250
execute if score server i4 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i5 matches 1 run place template sa:island -252 99 -252
execute if score server current matches 0 unless score server i5 matches 1 run tp @s -250 108 -250
execute if score server current matches 0 unless score server i5 matches 1 run spawnpoint @s -250 108 -250
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set @s island 5
execute if score server current matches 0 unless score server i5 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 5 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i5 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set server slots 3
execute if score server current matches 0 run scoreboard players set server i5 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel4 500 99 0
execute if score server i3 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i4 matches 1 run place template sa:island 498 99 -2
execute if score server current matches 0 unless score server i4 matches 1 run tp @s 500 108 0
execute if score server current matches 0 unless score server i4 matches 1 run spawnpoint @s 500 108 0
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set @s island 4
execute if score server current matches 0 unless score server i4 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 4 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i4 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set server slots 4
execute if score server current matches 0 run scoreboard players set server i4 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel3 -500 99 0
execute if score server i2 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i3 matches 1 run place template sa:island -502 99 -2
execute if score server current matches 0 unless score server i3 matches 1 run tp @s -500 108 0
execute if score server current matches 0 unless score server i3 matches 1 run spawnpoint @s -500 108 0
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set @s island 3
execute if score server current matches 0 unless score server i3 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 3 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i3 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set server slots 5
execute if score server current matches 0 run scoreboard players set server i3 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel2 0 99 500
execute if score server i1 matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i2 matches 1 run place template sa:island -2 99 498
execute if score server current matches 0 unless score server i2 matches 1 run tp @s 0 108 500
execute if score server current matches 0 unless score server i2 matches 1 run spawnpoint @s 0 108 500
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set @s island 2
execute if score server current matches 0 unless score server i2 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 2 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i2 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set server slots 6
execute if score server current matches 0 run scoreboard players set server i2 1
execute if score server current matches 0 run scoreboard players set server current 1

#insel1 0 99 -500
execute if score server current matches 1 run scoreboard players set server current 0
execute if score server current matches 0 unless score server i1 matches 1 run tp @s 0 108 -500
execute if score server current matches 0 unless score server i1 matches 1 run place template sa:island -2 99 -502
execute if score server current matches 0 unless score server i1 matches 1 run spawnpoint @s 0 108 -500
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set @s island 1
execute if score server current matches 0 unless score server i1 matches 1 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 1 beigetreten!","color":"green"}]
execute if score server current matches 0 unless score server i1 matches 1 run function sa:island/starting_kit
execute if score server current matches 0 unless score server i1 matches 1 run clear @s
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set server slots 7
execute if score server current matches 0 run scoreboard players set server i1 1
execute if score server current matches 0 run scoreboard players set server current 1