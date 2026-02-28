#Item Check
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] run function sa:skill/combat/event/mobs/zombie
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"spider_drop"}}}] run function sa:skill/combat/event/mobs/spider
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"enderman_drop"}}}] run function sa:skill/combat/event/mobs/enderman
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"skeleton_drop"}}}] run function sa:skill/combat/event/mobs/skeleton

execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"creeper_drop"}}}] run function sa:skill/combat/event/mobs/creeper
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"witch_drop"}}}] run function sa:skill/combat/event/mobs/witch