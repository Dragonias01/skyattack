#Erhöhen des LVL
scoreboard players add @s mining_lvl 1 
scoreboard players set @s mining_xp 0

#TODO: custom Lvl Nachricht, config?
say "Lvl up!"

#variables Goal, Einstellbar in der Config 
# Temporären Speicher setzen
scoreboard players operation temp_var dummy = @s goal_multiplyer

# Mining Goal multiplizieren
scoreboard players operation @s mining_goal *= temp_var dummy 