# 1. Level auslesen und halbieren
execute store result score @s temp_half_lvl run data get entity @s XpLevel
scoreboard players operation @s temp_half_lvl /= server two

# 2. Alle Level entfernen
xp set @s 0 levels

execute if score @s temp_half_lvl matches 1..1000 run tellraw @s ["[",{"text":"Server","color":"yellow"},"] ",{"text":"Du bist gestorben und hast:","color":"red"},{"text":" ","color":"green"},{"score":{"name":"@s","objective":"temp_half_lvl"},"color":"green"},{"text":" Level verloren","color":"red"}]
execute if score @s temp_half_lvl matches 1..1000 run tellraw @a ["[",{"text":"Server","color":"yellow"},"] ",{"text":"Der Spieler","color":"red"},{"text":" ","color":"yellow"},{"selector":"@s","color":"dark_red"}," ",{"text":"ist Gestorben, Skill Issue!","color":"red"}]
execute if score @s temp_half_lvl matches 1000.. run tellraw @a ["[",{"text":"Server","color":"yellow"},"] ",{"text":"Der Spieler","color":"red"},{"text":" ","color":"yellow"},{"selector":"@s","color":"dark_red"}," ",{"text":"ist Gestorben und hatt dabei","color":"red"}," ",{"score":{"name":"@s","objective":"temp_half_lvl"},"color":"green"}," ",{"text":"Level verloren","color":"red"}]
# 3. Schleife starten
execute if score @s temp_half_lvl matches 1.. run function sa:system/death/loop

scoreboard players reset @s deathcount_system