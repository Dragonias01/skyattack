#Check
execute as @a[scores={oak_mined=1..,logging_lvl=0..999}] at @s if predicate sa:check_leaves run function sa:skill/logging/lvl/xp
execute as @a[scores={oak_mined=1..,logging_lvl=0..999}] at @s if predicate sa:check_leaves run scoreboard players add @s oak_collected 1
execute as @a[scores={oak_mined=1..,logging_lvl=0..999}] at @s unless predicate sa:check_leaves run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log
execute as @a[scores={oak_mined=1..,logging_lvl=0..999}] at @s unless predicate sa:check_leaves run kill @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}]

execute as @a[scores={oak_mined=1..}] run scoreboard players set @s oak_mined 0
