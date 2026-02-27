#island 1
execute as @a[scores={itrigger=21}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run tp @s 0 108 -500
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run spawnpoint @s 0 108 -500
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run scoreboard players set @s island 1
execute as @a[scores={itrigger=21,island=1}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 1 beigetreten!","color":"green"}]

#island 2
execute as @a[scores={itrigger=22}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run tp @s 0 108 500
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run spawnpoint @s 0 108 500
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run scoreboard players set @s island 2
execute as @a[scores={itrigger=22,island=2}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 2 beigetreten!","color":"green"}]

#island 3
execute as @a[scores={itrigger=23}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run tp @s -500 108 0
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run spawnpoint @s -500 108 0
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run scoreboard players set @s island 3
execute as @a[scores={itrigger=23,island=3}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 3 beigetreten!","color":"green"}]

#island 4
execute as @a[scores={itrigger=24}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run tp @s 500 108 0
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run spawnpoint @s 500 108 0
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run scoreboard players set @s island 4
execute as @a[scores={itrigger=24,island=4}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 4 beigetreten!","color":"green"}]

#island 5
execute as @a[scores={itrigger=25}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run tp @s -250 108 -250
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run spawnpoint @s -250 108 -250
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run scoreboard players set @s island 5
execute as @a[scores={itrigger=25,island=5}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 5 beigetreten!","color":"green"}]

#island 6
execute as @a[scores={itrigger=26}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run tp @s -250 108 250
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run spawnpoint @s -250 108 250
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run scoreboard players set @s island 6
execute as @a[scores={itrigger=26,island=6}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 6 beigetreten!","color":"green"}]

#island 7
execute as @a[scores={itrigger=27}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run tp @s 250 108 -250
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run spawnpoint @s 250 108 -250
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run scoreboard players set @s island 7
execute as @a[scores={itrigger=27,island=7}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 7 beigetreten!","color":"green"}]

#island 8
execute as @a[scores={itrigger=28}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Du hast schon eine Insel!","color":"red"}]
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel wurde noch nicht erstellt!","color":"red"}]
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run tp @s 250 108 250
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run spawnpoint @s 250 108 250
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run scoreboard players set @s island 8
execute as @a[scores={itrigger=28,island=8}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Insel 8 beigetreten!","color":"green"}]

scoreboard players reset @a[scores={itrigger=21..28}] itrigger