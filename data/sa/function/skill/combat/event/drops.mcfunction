scoreboard players set @s c_sword_gain 0
#pickaxe bonus 100% pro pickaxe stufe
#holz
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_common"}}}}] run scoreboard players set @s c_sword_gain 10
#stone
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_uncommon"}}}}] run scoreboard players set @s c_sword_gain 20
#iron
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_rare"}}}}] run scoreboard players set @s c_sword_gain 40
#gold
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_epic"}}}}] run scoreboard players set @s c_sword_gain 60
#diamond
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_legendary"}}}}] run scoreboard players set @s c_sword_gain 80
#Netherite
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_sword_mythic"}}}}] run scoreboard players set @s c_sword_gain 100

#Item Check
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] run function sa:skill/combat/event/mobs/zombie
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"spider_drop"}}}] run function sa:skill/combat/event/mobs/spider
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"enderman_drop"}}}] run function sa:skill/combat/event/mobs/enderman
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"skeleton_drop"}}}] run function sa:skill/combat/event/mobs/skeleton
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"creeper_drop"}}}] run function sa:skill/combat/event/mobs/creeper
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"witch_drop"}}}] run function sa:skill/combat/event/mobs/witch