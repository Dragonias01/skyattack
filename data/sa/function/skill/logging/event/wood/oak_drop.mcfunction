execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/oak_log

#Level bonus 5% pro level
scoreboard players operation @s logging_drop_menge = @s logging_lvl

scoreboard players operation @s logging_drop_menge += @s l_axe_gain

#Recipe learning
execute store result score @s logging_drops run random value 1..40
execute at @s if score @s logging_drop_menge >= @s logging_drops unless score @s EAxe_learn matches 5 as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] at @s run summon item ~ ~1 ~ {Item:{id:filled_map,count:1,components:{custom_name:[{"text":"[Bauplan - Element Pickaxe]","italic":false,"color":"yellow"}],lore:[[{"text":"Rechtsklick zum Lernen","italic":false,"color":"gray"}]],item_name:[{"text":"element_axe_blueprint","italic":false}],food:{nutrition:0,saturation:0,can_always_eat:1b},consumable:{consume_seconds:9999999,has_consume_particles:0b}}}}


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