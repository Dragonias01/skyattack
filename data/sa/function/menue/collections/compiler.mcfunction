# 21 - 30 Logging
#21 = OakCollection
    scoreboard players add @s oak_collection_progress 0
    execute as @s[scores={menue=21}] store result storage sa:collection c.oak_collected int 1 run scoreboard players get @s oak_collected
    execute as @s[scores={menue=21}] run function sa:menue/collections/macro/state {objective:"oak_collection_progress",collected:"oak_collected",t1:50,t2:100,t3:200,t4:500,t5:1000,t6:2000,t7:5000,t8:10000,t9:15000,t10:20000}
    execute as @s[scores={menue=21}] run function sa:menue/collections/logging/show_oak_dialog with storage sa:collection c
    execute as @s[scores={menue=22..30}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 31 - 40 Mining
    scoreboard players add @s stone_collection_progress 0
    execute as @s[scores={menue=31}] run scoreboard players set @s overall_stone_collected 0
    execute as @s[scores={menue=31}] run scoreboard players operation @s overall_stone_collected += @s stone_collected
    execute as @s[scores={menue=31}] run scoreboard players operation @s overall_stone_collected += @s cstone_collected
    execute as @s[scores={menue=31}] store result storage sa:collection c.stone_collected int 1 run scoreboard players get @s overall_stone_collected
    execute as @s[scores={menue=31}] run function sa:menue/collections/macro/state {objective:"stone_collection_progress",collected:"overall_stone_collected",t1:50,t2:100,t3:200,t4:500,t5:1000,t6:2000,t7:5000,t8:10000,t9:15000,t10:20000}
    execute as @s[scores={menue=31}] run function sa:menue/collections/mining/show_stone_dialog with storage sa:collection c
    execute as @s[scores={menue=32..40}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

# 41 - 50 Farming
    scoreboard players add @s potato_collection_progress 0
    execute as @s[scores={menue=41}] store result storage sa:collection c.potato_collected int 1 run scoreboard players get @s potato_collected
    execute as @s[scores={menue=41}] run function sa:menue/collections/macro/state {objective:"potato_collection_progress",collected:"potato_collected",t1:50,t2:100,t3:200,t4:500,t5:1000,t6:2000,t7:5000,t8:10000,t9:15000,t10:20000}
    execute as @s[scores={menue=41}] run function sa:menue/collections/farming/show_potato_dialog with storage sa:collection c
    execute as @s[scores={menue=42..50}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}
    # 51 - 60 Fishing
        scoreboard players add @s fishes_collection_progress 0
        execute as @s[scores={menue=51}] store result storage sa:collection c.fishes_collected int 1 run scoreboard players get @s fishes_collected
        execute as @s[scores={menue=51}] run function sa:menue/collections/macro/state {objective:"fishes_collection_progress",collected:"fishes_collected",t1:50,t2:100,t3:200,t4:500,t5:1000,t6:2000,t7:5000,t8:10000,t9:15000,t10:20000}
        execute as @s[scores={menue=51}] run function sa:menue/collections/fishing/show_fishes_dialog with storage sa:collection c
        execute as @s[scores={menue=52..60}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}

    # 61- 70 Combat
        scoreboard players add @s zombie_collected 0
        execute as @s[scores={menue=61}] store result storage sa:collection c.zombie_collected int 1 run scoreboard players get @s zombie_collected
        execute as @s[scores={menue=61}] run function sa:menue/collections/macro/state {objective:"zombie_collection_progress",collected:"zombie_collected",t1:50,t2:100,t3:200,t4:500,t5:1000,t6:2000,t7:5000,t8:10000,t9:15000,t10:20000}
        execute as @s[scores={menue=61}] run function sa:menue/collections/combat/zombie/show_zombie with storage sa:collection c
        execute as @s[scores={menue=62..70}] run tellraw @s {text:"This Collection is currently not Implemented",color:"red"}


scoreboard players reset @s menue
