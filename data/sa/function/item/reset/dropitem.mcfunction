# Item aus Slot speichern
data modify storage sa:temp_item item set from entity @s Inventory[{Slot:8b}]

# Slot leeren
item replace entity @s hotbar.8 with air

# temporäres Item spawnen
summon item ~ ~0.5 ~ {Item:{id:"minecraft:stone",count:1b},PickupDelay:0,Tags:["temp_item_drop"]}

# echtes Item übertragen
execute as @e[type=item,tag=temp_item_drop,limit=1,sort=nearest] run data modify entity @s Item set from storage sa:temp_item item
# cleanup
tag @e[type=item,tag=temp_item_drop] remove temp_item_drop
data remove storage sa:temp_item item

function sa:item/reset/menue