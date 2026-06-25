# ============================================================================
# Datei: sa:function/system/setstats
# Version: 1.21.11
# ============================================================================

# Attack Damage (Base wert: 1.0)
    scoreboard players reset @s temp
    scoreboard players operation @s temp = server one
    #additions
    scoreboard players operation @s temp += @s crypt_skeleton_fullsetbonus
    execute as @s store result storage sa:stats ad float 1 run scoreboard players get @s temp
    #Ausführen
    function sa:system/stats/set_ad with storage sa:stats

# step height (Base wert: 0.6)
    scoreboard players reset @s temp
    scoreboard players set @s temp 6
    #additions
    scoreboard players operation @s temp += @s crypt_weaver_fullsetbonus
    execute as @s store result storage sa:stats sh float 1 run scoreboard players get @s temp
    #Ausführen
    function sa:system/stats/set_sh with storage sa:stats

# gravitation (Base wert: 1.0)
    scoreboard players reset @s temp
    scoreboard players set @s temp 8
    #additions
    scoreboard players operation @s temp += @s crypt_ooze_fullsetbonus
    execute as @s store result storage sa:stats gr float 1 run scoreboard players get @s temp
    #Ausführen
    function sa:system/stats/set_gr with storage sa:stats

# safe fall distance (Base wert: 0.3)
    scoreboard players reset @s temp
    scoreboard players set @s temp 3
    #additions
    scoreboard players operation @s temp += @s stonecarver_fullsetbonus
    execute as @s store result storage sa:stats sf float 1 run scoreboard players get @s temp
    #Ausführen
    function sa:system/stats/set_sf with storage sa:stats
