# Logging
    execute as @s[scores={logging_collection_collect=0..100}] run function sa:menue/collections/logging/claim_oak
    execute as @s[scores={logging_collection_collect=101..}] run tellraw @s {text:"Cannot claim an not implemented Collection",color:"red"}

# Mining
    execute as @s[scores={mining_collection_collect=0..100}] run function sa:menue/collections/mining/claim_stone
    execute as @s[scores={mining_collection_collect=101..}] run tellraw @s {text:"Cannot claim an not implemented Collection",color:"red"}

scoreboard players reset @s logging_collection_collect
scoreboard players reset @s mining_collection_collect
scoreboard players reset @s farming_collection_collect
scoreboard players reset @s combat_collection_collect
scoreboard players reset @s fishing_collection_collect
