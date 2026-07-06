# 21 - 30 Logging
#21 = OakCollection
    execute as @s[scores={menue=21}] store result storage sa:collection c.oak_collected int 1 run scoreboard players get @s oak_collected
    execute as @s[scores={menue=21}] run function sa:menue/collections/logging/show_oak_dialog with storage sa:collection c
    execute as @s[scores={menue=22..30}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 31 - 40 Mining
    execute as @s[scores={menue=31}] run scoreboard players set @s overall_stone_collected 0
    execute as @s[scores={menue=31}] run scoreboard players operation @s overall_stone_collected += @s stone_collected
    execute as @s[scores={menue=31}] run scoreboard players operation @s overall_stone_collected += @s cstone_collected
    execute as @s[scores={menue=31}] store result storage sa:collection c.stone_collected int 1 run scoreboard players get @s overall_stone_collected
    execute as @s[scores={menue=31}] run function sa:menue/collections/mining/show_stone_dialog with storage sa:collection c
    execute as @s[scores={menue=32..40}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 41 - 50 Farming
    execute as @s[scores={menue=41..50}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 51 - 60 Fishing
    execute as @s[scores={menue=51..60}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 61- 70 Combat
    execute as @s[scores={menue=61..70}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}



scoreboard players reset @s menue
