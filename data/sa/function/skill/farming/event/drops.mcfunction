scoreboard players set @s f_hoe_gain 0
#Hoe bonus 100% pro pickaxe stufe
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_common"}}}}] run scoreboard players set @s f_hoe_gain 10
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_uncommon"}}}}] run scoreboard players set @s f_hoe_gain 20
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_rare"}}}}] run scoreboard players set @s f_hoe_gain 40
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_epic"}}}}] run scoreboard players set @s f_hoe_gain 60
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_legendary"}}}}] run scoreboard players set @s f_hoe_gain 80
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_hoe_mythic"}}}}] run scoreboard players set @s f_hoe_gain 100




execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run function sa:skill/farming/event/crops/potato_drop