# 1. Level auslesen und halbieren
execute store result score @s temp_half_lvl run data get entity @s XpLevel
scoreboard players operation @s temp_half_lvl /= server two

# 2. Alle Level entfernen
xp set @s 0 levels

# 3. Schleife starten
execute if score @s temp_half_lvl matches 1.. run function sa:system/death/loop

scoreboard players reset @s deathcount_system