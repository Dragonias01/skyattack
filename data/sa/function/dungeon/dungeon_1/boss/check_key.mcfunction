execute store result score @s dungeon_key run clear @s trial_key[item_name=[{text:"dungeon_key",italic:0b}]] 0
execute if score @s dungeon_key matches 1.. run clear @s trial_key[item_name=[{text:"dungeon_key",italic:0b}]] 1
execute if score @s dungeon_key matches 1.. run function sa:dungeon/dungeon_1/boss/spawn_boss