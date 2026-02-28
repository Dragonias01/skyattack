execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

#Level bonus 5% pro level
scoreboard players operation @s logging_drop_menge = @s logging_lvl
scoreboard players set @s l_axe_gain 0
#pickaxe bonus 100% pro pickaxe stufe
#execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_uncommon"}}}}] run scoreboard players set @s l_axe_gain 20
#execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_rare"}}}}] run scoreboard players set @s l_axe_gain 40
#execute as @a[nbt={SelectedItem:{id:"minecraft:golden_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_epic"}}}}] run scoreboard players set @s l_axe_gain 60
#execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_legendary"}}}}] run scoreboard players set @s l_axe_gain 80
#execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_mythic"}}}}] run scoreboard players set @s l_axe_gain 100



scoreboard players operation @s logging_drop_menge += @s l_axe_gain
# Level 1-20: Anstieg um 5%
execute store result score @s logging_drops run random value 1..20
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 21-40: Anstieg um 5%
execute store result score @s logging_drops run random value 21..40
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 41-60: Anstieg um 5%
execute store result score @s logging_drops run random value 41..60
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 61-80: Anstieg um 5%
execute store result score @s logging_drops run random value 61..80
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 81-100: Anstieg um 5%
execute store result score @s logging_drops run random value 81..100
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 101-120: Anstieg um 5%
execute store result score @s logging_drops run random value 101..120
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 121-140: Anstieg um 5%
execute store result score @s logging_drops run random value 121..140
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 141-160: Anstieg um 5%
execute store result score @s logging_drops run random value 141..160
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 161-180: Anstieg um 5%
execute store result score @s logging_drops run random value 161..180
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

# Level 181-200: Anstieg um 5%
execute store result score @s logging_drops run random value 181..200
execute at @s if score @s logging_drop_menge >= @s logging_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

kill @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}]