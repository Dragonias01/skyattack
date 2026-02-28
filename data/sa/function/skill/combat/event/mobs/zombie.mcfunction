scoreboard players operation @s combat_drop_menge = @s combat_lvl
scoreboard players set @s c_sword_gain 0
#pickaxe bonus 100% pro pickaxe stufe
#execute as @a[nbt={SelectedItem:{id:"minecraft:stone_sword",components:{"minecraft:item_name":{"text":"element_pickaxe_uncommon"}}}}] run scoreboard players set @s c_sword_gain 20
#execute as @a[nbt={SelectedItem:{id:"minecraft:iron_sword",components:{"minecraft:item_name":{"text":"element_pickaxe_rare"}}}}] run scoreboard players set @s c_sword_gain 40
#execute as @a[nbt={SelectedItem:{id:"minecraft:golden_sword",components:{"minecraft:item_name":{"text":"element_pickaxe_epic"}}}}] run scoreboard players set @s c_sword_gain 60
#execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_sword",components:{"minecraft:item_name":{"text":"element_pickaxe_legendary"}}}}] run scoreboard players set @s c_sword_gain 80
#execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_sword",components:{"minecraft:item_name":{"text":"element_pickaxe_mythic"}}}}] run scoreboard players set @s c_sword_gain 100



scoreboard players operation @s combat_drop_menge += @s c_sword_gain
# Level 1-20: Anstieg um 5%
execute store result score @s combat_drops run random value 1..20
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 21-40: Anstieg um 5%
execute store result score @s combat_drops run random value 21..40
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 41-60: Anstieg um 5%
execute store result score @s combat_drops run random value 41..60
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 61-80: Anstieg um 5%
execute store result score @s combat_drops run random value 61..80
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 81-100: Anstieg um 5%
execute store result score @s combat_drops run random value 81..100
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 101-120: Anstieg um 5%
execute store result score @s combat_drops run random value 101..120
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 121-140: Anstieg um 5%
execute store result score @s combat_drops run random value 121..140
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 141-160: Anstieg um 5%
execute store result score @s combat_drops run random value 141..160
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 161-180: Anstieg um 5%
execute store result score @s combat_drops run random value 161..180
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

# Level 181-200: Anstieg um 5%
execute store result score @s combat_drops run random value 181..200
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/mobs/zombie

kill @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}]