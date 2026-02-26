execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

#Level bonus 5% pro level
scoreboard players operation @s m_drop_menge = @s mining_lvl
scoreboard players set @s m_pickaxe_gain 0
#pickaxe bonus 100% pro pickaxe stufe
#execute as @a[nbt={SelectedItem:{id:"minecraft:stone_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_uncommon"}}}}] run scoreboard players set @s m_pickaxe_gain 20
#execute as @a[nbt={SelectedItem:{id:"minecraft:iron_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_rare"}}}}] run scoreboard players set @s m_pickaxe_gain 40
#execute as @a[nbt={SelectedItem:{id:"minecraft:golden_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_epic"}}}}] run scoreboard players set @s m_pickaxe_gain 60
#execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_legendary"}}}}] run scoreboard players set @s m_pickaxe_gain 80
#execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_pickaxe",components:{"minecraft:item_name":{"text":"element_pickaxe_mythic"}}}}] run scoreboard players set @s m_pickaxe_gain 100



scoreboard players operation @s m_drop_menge += @s m_pickaxe_gain
# Level 1-20: Anstieg um 5%
execute store result score @s m_Drops run random value 1..20
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 21-40: Anstieg um 5%
execute store result score @s m_Drops run random value 21..40
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 41-60: Anstieg um 5%
execute store result score @s m_Drops run random value 41..60
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 61-80: Anstieg um 5%
execute store result score @s m_Drops run random value 61..80
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 81-100: Anstieg um 5%
execute store result score @s m_Drops run random value 81..100
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 101-120: Anstieg um 5%
execute store result score @s m_Drops run random value 101..120
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 121-140: Anstieg um 5%
execute store result score @s m_Drops run random value 121..140
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 141-160: Anstieg um 5%
execute store result score @s m_Drops run random value 141..160
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 161-180: Anstieg um 5%
execute store result score @s m_Drops run random value 161..180
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

# Level 181-200: Anstieg um 5%
execute store result score @s m_Drops run random value 181..200
execute at @s if score @s m_drop_menge >= @s m_Drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:blocks/bonus_stone

kill @e[type=item,nbt={Item:{components:{"minecraft:item_name":"stone_with_drops"}}}]