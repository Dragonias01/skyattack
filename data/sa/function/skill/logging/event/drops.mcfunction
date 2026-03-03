scoreboard players set @s l_axe_gain 0

#pickaxe bonus 100% pro pickaxe stufe
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_axe_common"}}}}] run scoreboard players set @s l_axe_gain 10
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_axe_uncommon"}}}}] run scoreboard players set @s l_axe_gain 20
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_pickaxe_rare"}}}}] run scoreboard players set @s l_axe_gain 40
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_pickaxe_epic"}}}}] run scoreboard players set @s l_axe_gain 60
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_pickaxe_legendary"}}}}] run scoreboard players set @s l_axe_gain 80
execute as @a[nbt={SelectedItem:{"components":{"minecraft:item_name":{"text":"element_pickaxe_mythic"}}}}] run scoreboard players set @s l_axe_gain 100

execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"oak_drop"}}}] run function sa:skill/logging/event/wood/oak_drop