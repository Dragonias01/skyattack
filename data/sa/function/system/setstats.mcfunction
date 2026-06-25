# ============================================================================
# Datei: sa:function/system/setstats
# Version: 1.21.11
# ============================================================================

#Attack Damage (Base wert: 1.0)
scoreboard players reset @s temp
scoreboard players operation @s temp = server one
#additions
scoreboard players operation @s temp += @s crypt_skeleton_fullsetbonus

execute as @s store result storage sa:stats ad float 1 run scoreboard players get @s temp
#Ausführen
function sa:system/stats/set_ad with storage sa:stats
