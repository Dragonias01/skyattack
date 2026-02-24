scoreboard players set @s island 0
scoreboard players set server current 0
#insel8 250 59 250
execute if score server current matches 0 unless score server i8 matches 1 run place template sa:island 248 59 248
execute if score server current matches 0 unless score server i8 matches 1 run tp @s 250 68 250
execute if score server current matches 0 unless score server i8 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set server slots 0
execute if score server current matches 0 unless score server i8 matches 1 run scoreboard players set server current 1
execute if score server i7 matches 1 unless score server i8 matches 1 run scoreboard players set server i8 1

#insel7 250 59 -250
execute if score server current matches 0 unless score server i7 matches 1 run place template sa:island 248 59 -252
execute if score server current matches 0 unless score server i7 matches 1 run tp @s 250 68 -250
execute if score server current matches 0 unless score server i7 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set server slots 1
execute if score server current matches 0 unless score server i7 matches 1 run scoreboard players set server current 1
execute if score server i6 matches 1 unless score server i7 matches 1 run scoreboard players set server i7 1

#insel6 -250 59 250
execute if score server current matches 0 unless score server i6 matches 1 run place template sa:island -252 59 248
execute if score server current matches 0 unless score server i6 matches 1 run tp @s -250 68 250
execute if score server current matches 0 unless score server i6 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set server slots 2
execute if score server current matches 0 unless score server i6 matches 1 run scoreboard players set server current 1
execute if score server i5 matches 1 unless score server i6 matches 1 run scoreboard players set server i6 1

#insel5 -250 59 -250
execute if score server current matches 0 unless score server i5 matches 1 run place template sa:island -252 59 -252
execute if score server current matches 0 unless score server i5 matches 1 run tp @s -250 68 -250
execute if score server current matches 0 unless score server i5 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set server slots 3
execute if score server current matches 0 unless score server i5 matches 1 run scoreboard players set server current 1
execute if score server i4 matches 1 unless score server i5 matches 1 run scoreboard players set server i5 1

#insel4 500 59 0
execute if score server current matches 0 unless score server i4 matches 1 run place template sa:island 498 59 -2
execute if score server current matches 0 unless score server i4 matches 1 run tp @s 500 68 0
execute if score server current matches 0 unless score server i4 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set server slots 4
execute if score server current matches 0 unless score server i4 matches 1 run scoreboard players set server current 1
execute if score server i3 matches 1 unless score server i4 matches 1 run scoreboard players set server i4 1

#insel3 -500 59 0
execute if score server current matches 0 unless score server i3 matches 1 run place template sa:island -502 59 -2
execute if score server current matches 0 unless score server i3 matches 1 run tp @s -500 68 0
execute if score server current matches 0 unless score server i3 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set server slots 5
execute if score server current matches 0 unless score server i3 matches 1 run scoreboard players set server current 1
execute if score server i2 matches 1 unless score server i3 matches 1 run scoreboard players set server i3 1

#insel2 0 59 500
execute if score server current matches 0 unless score server i2 matches 1 run place template sa:island -2 59 498
execute if score server current matches 0 unless score server i2 matches 1 run tp @s 0 68 500
execute if score server current matches 0 unless score server i2 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set server slots 6
execute if score server current matches 0 unless score server i2 matches 1 run scoreboard players set server current 1
execute if score server i1 matches 1 unless score server i2 matches 1 run scoreboard players set server i2 1

#insel1 0 59 -500
execute if score server current matches 0 unless score server i1 matches 1 run place template sa:island -2 59 -502
execute if score server current matches 0 unless score server i1 matches 1 run tp @s 0 68 -500
execute if score server current matches 0 unless score server i1 matches 1 run dialog show @s sa:island/name_island
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set server slots 7
execute if score server current matches 0 unless score server i1 matches 1 run scoreboard players set server current 1
execute unless score server i1 matches 1 run scoreboard players set server i1 1

