#Erhöhen des LVL
scoreboard players add @s logging_lvl 1 
scoreboard players set @s logging_xp 0

#    (nach dem Increment = neues Level → Goal für nächsten Schritt)
execute if score @s logging_lvl matches 1 run scoreboard players set @s logging_goal 20
execute if score @s logging_lvl matches 2 run scoreboard players set @s logging_goal 45
execute if score @s logging_lvl matches 3 run scoreboard players set @s logging_goal 60
execute if score @s logging_lvl matches 4 run scoreboard players set @s logging_goal 75
execute if score @s logging_lvl matches 5 run scoreboard players set @s logging_goal 100
execute if score @s logging_lvl matches 6 run scoreboard players set @s logging_goal 115
execute if score @s logging_lvl matches 7 run scoreboard players set @s logging_goal 150
execute if score @s logging_lvl matches 8 run scoreboard players set @s logging_goal 175
execute if score @s logging_lvl matches 9 run scoreboard players set @s logging_goal 200

# 3. Multiplikator-Phasen für Level 10+
#    Phase 1 (Lvl 10–19): *1.5
execute if score @s logging_lvl matches 10..19 run scoreboard players operation @s logging_goal *= server scale_fast_num
execute if score @s logging_lvl matches 10..19 run scoreboard players operation @s logging_goal /= server scale_fast_den

#    Phase 2 (Lvl 20–49): *1.1
execute if score @s logging_lvl matches 20..49 run scoreboard players operation @s logging_goal *= server scale_mid_num
execute if score @s logging_lvl matches 20..49 run scoreboard players operation @s logging_goal /= server scale_mid_den

#    Phase 3 (Lvl 50+): *1.01
execute if score @s logging_lvl matches 50.. run scoreboard players operation @s logging_goal *= server scale_slow_num
execute if score @s logging_lvl matches 50.. run scoreboard players operation @s logging_goal /= server scale_slow_den
# 4. Custom Level-Up Nachricht mit Komponenten
# Zeigt Level und neues Goal an
title @s title [{"text":"LEVEL UP! ","color":"green"},{"score":{"name":"@s","objective":"logging_lvl"},"color":"gold"}]
title @s subtitle [{"text":"Neues Goal: ","color":"gray"},{"score":{"name":"@s","objective":"logging_goal"},"color":"green"}]

# 5. Sound-Effekt für visuelles Feedback (optional aber empfohlen)
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.2