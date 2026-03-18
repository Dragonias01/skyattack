execute store result score @s dungeon_1_key run clear @s trial_key[item_name=[{text:"dungeon_key",italic:0b}]] 0
execute if score @s dungeon_1_key matches 1.. run clear @s trial_key[item_name=[{text:"dungeon_key",italic:0b}]] 1
execute if score @s dungeon_1_key matches 1.. run function sa:dungeon/dungeon_1/create_dungeon
execute if score @s dungeon_1_key matches ..0 run say keinen Schlüssel