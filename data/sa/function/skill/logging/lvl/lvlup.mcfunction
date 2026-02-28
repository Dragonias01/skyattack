#Erhöhen des LVL
scoreboard players add @s logging_lvl 1 
scoreboard players set @s logging_xp 0

# 3. Goal für nächstes Level berechnen
# Formel: fishing_goal * 1.1 (Multiplikator aus Config)
# Wir nutzen Score-Arithmetik für Festkomma-Berechnung
#
# Berechnung: goal = goal * 11 / 10 (entspricht *1.1)
scoreboard players operation @s logging_goal *= server logging_multiplier_num
scoreboard players operation @s logging_goal /= server logging_multiplier_den

# 4. Custom Level-Up Nachricht mit Komponenten
# Zeigt Level und neues Goal an
title @s title [{"text":"LEVEL UP! ","color":"green"},{"score":{"name":"@s","objective":"logging_lvl"},"color":"gold"}]
title @s subtitle [{"text":"Neues Goal: ","color":"gray"},{"score":{"name":"@s","objective":"logging_goal"},"color":"green"}]

# 5. Sound-Effekt für visuelles Feedback (optional aber empfohlen)
execute at @s run playsound entity.player.levelup master @s ~ ~ ~ 1 1.2