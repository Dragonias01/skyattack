execute as @a store result score @s xp_cat run clear @s gray_dye[item_name=[{text:"xp_katalysator",italic:0b}]] 0
execute as @a if score @s xp_cat matches 1.. run scoreboard players set @s xp_cat 1
execute as @a if score @s xp_cat matches ..0 run scoreboard players set @s xp_cat 0