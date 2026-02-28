#Item Check
execute as @a at @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] run function sa:skill/combat/event/mobs/zombie