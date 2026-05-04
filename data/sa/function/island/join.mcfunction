# ============================================================================
# ISLAND JOIN - Teleportiert Spieler zu ihrer Insel
# Datei: sa:island/join
# Version: 1.21.11
# ============================================================================
# Insel-Positionen: Kreisförmig, Radius 250, gleichmäßig 45° versetzt
#
#  Insel 1:  X=   0  Z=-250  (Nord)
#  Insel 2:  X= 177  Z=-177  (Nord-Ost)
#  Insel 3:  X= 250  Z=   0  (Ost)
#  Insel 4:  X= 177  Z= 177  (Süd-Ost)
#  Insel 5:  X=   0  Z= 250  (Süd)
#  Insel 6:  X=-177  Z= 177  (Süd-West)
#  Insel 7:  X=-250  Z=   0  (West)
#  Insel 8:  X=-177  Z=-177  (Nord-West)
# ============================================================================

#island 1 │ Nord  (0 / -250)
execute as @a[scores={itrigger=21}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run tp @s 0 108 -250
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run spawnpoint @s 0 108 -250
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=21}] if score @s island matches 0 if score server i1 matches 1 run scoreboard players set @s island 1
execute as @a[scores={itrigger=21,island=1}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 1 joined!","color":"green"}]

#island 2 │ Nord-Ost  (177 / -177)
execute as @a[scores={itrigger=22}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run tp @s 177 108 -177
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run spawnpoint @s 177 108 -177
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=22}] if score @s island matches 0 if score server i2 matches 1 run scoreboard players set @s island 2
execute as @a[scores={itrigger=22,island=2}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 2 joined!","color":"green"}]

#island 3 │ Ost  (250 / 0)
execute as @a[scores={itrigger=23}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run tp @s 250 108 0
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run spawnpoint @s 250 108 0
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=23}] if score @s island matches 0 if score server i3 matches 1 run scoreboard players set @s island 3
execute as @a[scores={itrigger=23,island=3}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 3 joined!","color":"green"}]

#island 4 │ Süd-Ost  (177 / 177)
execute as @a[scores={itrigger=24}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run tp @s 177 108 177
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run spawnpoint @s 177 108 177
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=24}] if score @s island matches 0 if score server i4 matches 1 run scoreboard players set @s island 4
execute as @a[scores={itrigger=24,island=4}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 4 joined!","color":"green"}]

#island 5 │ Süd  (0 / 250)
execute as @a[scores={itrigger=25}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run tp @s 0 108 250
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run spawnpoint @s 0 108 250
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=25}] if score @s island matches 0 if score server i5 matches 1 run scoreboard players set @s island 5
execute as @a[scores={itrigger=25,island=5}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 5 joined!","color":"green"}]

#island 6 │ Süd-West  (-177 / 177)
execute as @a[scores={itrigger=26}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run tp @s -177 108 177
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run spawnpoint @s -177 108 177
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=26}] if score @s island matches 0 if score server i6 matches 1 run scoreboard players set @s island 6
execute as @a[scores={itrigger=26,island=6}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 6 joined!","color":"green"}]

#island 7 │ West  (-250 / 0)
execute as @a[scores={itrigger=27}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run tp @s -250 108 0
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run spawnpoint @s -250 108 0
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=27}] if score @s island matches 0 if score server i7 matches 1 run scoreboard players set @s island 7
execute as @a[scores={itrigger=27,island=7}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 7 joined!","color":"green"}]

#island 8 │ Nord-West  (-177 / -177)
execute as @a[scores={itrigger=28}] unless score @s island matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"You are already on an island!","color":"red"}]
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 0 run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"The island has not been created yet!","color":"red"}]
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run tp @s -177 108 -177
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run spawnpoint @s -177 108 -177
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run function sa:island/starting_kit
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run effect give @s slow_falling 2 1
execute as @a[scores={itrigger=28}] if score @s island matches 0 if score server i8 matches 1 run scoreboard players set @s island 8
execute as @a[scores={itrigger=28,island=8}] run tellraw @s [{"text":"[Server] ","color":"yellow"},{"text":"Island 8 joined!","color":"green"}]

scoreboard players reset @a[scores={itrigger=21..28}] itrigger
