#Erhöhen des LVL
scoreboard players add @s fishing_lvl 1 
scoreboard players set @s fishing_xp 0

#TODO: custom Lvl Nachricht
say "Lvl up!"

#variables Goal, Einstellbar in der Config 
# Temporären Speicher setzen
scoreboard players operation temp_var dummy = @s goal_multiplyer

# Mining Goal multiplizieren
scoreboard players operation @s fishing_goal *= temp_var dummy