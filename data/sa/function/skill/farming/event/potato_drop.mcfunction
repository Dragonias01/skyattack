#execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

#Level bonus 5% pro level
scoreboard players operation @s farming_drop_menge = @s farming_lvl
scoreboard players set @s f_hoe_gain 0
#pickaxe bonus 100% pro pickaxe stufe
#execute as @a[nbt={SelectedItem:{id:"minecraft:stone_hoe",components:{"minecraft:item_name":{"text":"element_pickaxe_uncommon"}}}}] run scoreboard players set @s f_hoe_gain 20
#execute as @a[nbt={SelectedItem:{id:"minecraft:iron_hoe",components:{"minecraft:item_name":{"text":"element_pickaxe_rare"}}}}] run scoreboard players set @s f_hoe_gain 40
#execute as @a[nbt={SelectedItem:{id:"minecraft:golden_hoe",components:{"minecraft:item_name":{"text":"element_pickaxe_epic"}}}}] run scoreboard players set @s f_hoe_gain 60
#execute as @a[nbt={SelectedItem:{id:"minecraft:diamond_hoe",components:{"minecraft:item_name":{"text":"element_pickaxe_legendary"}}}}] run scoreboard players set @s f_hoe_gain 80
#execute as @a[nbt={SelectedItem:{id:"minecraft:netherite_hoe",components:{"minecraft:item_name":{"text":"element_pickaxe_mythic"}}}}] run scoreboard players set @s f_hoe_gain 100



scoreboard players operation @s farming_drop_menge += @s f_hoe_gain
# Level 1-20: Anstieg um 5%
execute store result score @s farming_drops run random value 1..20
execute at @s if score @s farming_drop_menge >= @s farming_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 21-40
execute store result score @s combat_drops run random value 21..40
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 41-60
execute store result score @s combat_drops run random value 41..60
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 61-80
execute store result score @s combat_drops run random value 61..80
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 81-100
execute store result score @s combat_drops run random value 81..100
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 101-120
execute store result score @s combat_drops run random value 101..120
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 121-140
execute store result score @s combat_drops run random value 121..140
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 141-160
execute store result score @s combat_drops run random value 141..160
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 161-180
execute store result score @s combat_drops run random value 161..180
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 181-200
execute store result score @s combat_drops run random value 181..200
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 201-220
execute store result score @s combat_drops run random value 201..220
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 221-240
execute store result score @s combat_drops run random value 221..240
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 241-260
execute store result score @s combat_drops run random value 241..260
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 261-280
execute store result score @s combat_drops run random value 261..280
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 281-300
execute store result score @s combat_drops run random value 281..300
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 301-320
execute store result score @s combat_drops run random value 301..320
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 321-340
execute store result score @s combat_drops run random value 321..340
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 341-360
execute store result score @s combat_drops run random value 341..360
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 361-380
execute store result score @s combat_drops run random value 361..380
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 381-400
execute store result score @s combat_drops run random value 381..400
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 401-420
execute store result score @s combat_drops run random value 401..420
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 421-440
execute store result score @s combat_drops run random value 421..440
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 441-460
execute store result score @s combat_drops run random value 441..460
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 461-480
execute store result score @s combat_drops run random value 461..480
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 481-500
execute store result score @s combat_drops run random value 481..500
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 501-520
execute store result score @s combat_drops run random value 501..520
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 521-540
execute store result score @s combat_drops run random value 521..540
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 541-560
execute store result score @s combat_drops run random value 541..560
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 561-580
execute store result score @s combat_drops run random value 561..580
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 581-600
execute store result score @s combat_drops run random value 581..600
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 601-620
execute store result score @s combat_drops run random value 601..620
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 621-640
execute store result score @s combat_drops run random value 621..640
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 641-660
execute store result score @s combat_drops run random value 641..660
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 661-680
execute store result score @s combat_drops run random value 661..680
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 681-700
execute store result score @s combat_drops run random value 681..700
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 701-720
execute store result score @s combat_drops run random value 701..720
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 721-740
execute store result score @s combat_drops run random value 721..740
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 741-760
execute store result score @s combat_drops run random value 741..760
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 761-780
execute store result score @s combat_drops run random value 761..780
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 781-800
execute store result score @s combat_drops run random value 781..800
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 801-820
execute store result score @s combat_drops run random value 801..820
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 821-840
execute store result score @s combat_drops run random value 821..840
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 841-860
execute store result score @s combat_drops run random value 841..860
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 861-880
execute store result score @s combat_drops run random value 861..880
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 881-900
execute store result score @s combat_drops run random value 881..900
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 901-920
execute store result score @s combat_drops run random value 901..920
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 921-940
execute store result score @s combat_drops run random value 921..940
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 941-960
execute store result score @s combat_drops run random value 941..960
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 961-980
execute store result score @s combat_drops run random value 961..980
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 981-1000
execute store result score @s combat_drops run random value 981..1000
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1001-1020
execute store result score @s combat_drops run random value 1001..1020
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1021-1040
execute store result score @s combat_drops run random value 1021..1040
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1041-1060
execute store result score @s combat_drops run random value 1041..1060
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1061-1080
execute store result score @s combat_drops run random value 1061..1080
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1081-1100
execute store result score @s combat_drops run random value 1081..1100
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1101-1120
execute store result score @s combat_drops run random value 1101..1120
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1121-1140
execute store result score @s combat_drops run random value 1121..1140
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1141-1160
execute store result score @s combat_drops run random value 1141..1160
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1161-1180
execute store result score @s combat_drops run random value 1161..1180
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1181-1200
execute store result score @s combat_drops run random value 1181..1200
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1201-1220
execute store result score @s combat_drops run random value 1201..1220
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1221-1240
execute store result score @s combat_drops run random value 1221..1240
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1241-1260
execute store result score @s combat_drops run random value 1241..1260
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1261-1280
execute store result score @s combat_drops run random value 1261..1280
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1281-1300
execute store result score @s combat_drops run random value 1281..1300
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1301-1320
execute store result score @s combat_drops run random value 1301..1320
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1321-1340
execute store result score @s combat_drops run random value 1321..1340
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1341-1360
execute store result score @s combat_drops run random value 1341..1360
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1361-1380
execute store result score @s combat_drops run random value 1361..1380
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1381-1400
execute store result score @s combat_drops run random value 1381..1400
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1401-1420
execute store result score @s combat_drops run random value 1401..1420
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1421-1440
execute store result score @s combat_drops run random value 1421..1440
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1441-1460
execute store result score @s combat_drops run random value 1441..1460
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1461-1480
execute store result score @s combat_drops run random value 1461..1480
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1481-1500
execute store result score @s combat_drops run random value 1481..1500
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1501-1520
execute store result score @s combat_drops run random value 1501..1520
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1521-1540
execute store result score @s combat_drops run random value 1521..1540
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1541-1560
execute store result score @s combat_drops run random value 1541..1560
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1561-1580
execute store result score @s combat_drops run random value 1561..1580
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1581-1600
execute store result score @s combat_drops run random value 1581..1600
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1601-1620
execute store result score @s combat_drops run random value 1601..1620
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1621-1640
execute store result score @s combat_drops run random value 1621..1640
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1641-1660
execute store result score @s combat_drops run random value 1641..1660
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1661-1680
execute store result score @s combat_drops run random value 1661..1680
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1681-1700
execute store result score @s combat_drops run random value 1681..1700
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1701-1720
execute store result score @s combat_drops run random value 1701..1720
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1721-1740
execute store result score @s combat_drops run random value 1721..1740
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1741-1760
execute store result score @s combat_drops run random value 1741..1760
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1761-1780
execute store result score @s combat_drops run random value 1761..1780
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1781-1800
execute store result score @s combat_drops run random value 1781..1800
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1801-1820
execute store result score @s combat_drops run random value 1801..1820
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1821-1840
execute store result score @s combat_drops run random value 1821..1840
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1841-1860
execute store result score @s combat_drops run random value 1841..1860
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1861-1880
execute store result score @s combat_drops run random value 1861..1880
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1881-1900
execute store result score @s combat_drops run random value 1881..1900
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1901-1920
execute store result score @s combat_drops run random value 1901..1920
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1921-1940
execute store result score @s combat_drops run random value 1921..1940
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1941-1960
execute store result score @s combat_drops run random value 1941..1960
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1961-1980
execute store result score @s combat_drops run random value 1961..1980
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

# Level 1981-2000
execute store result score @s combat_drops run random value 1981..2000
execute at @s if score @s combat_drop_menge >= @s combat_drops run execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run loot spawn ~ ~ ~ loot minecraft:bonus/potato

kill @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}]