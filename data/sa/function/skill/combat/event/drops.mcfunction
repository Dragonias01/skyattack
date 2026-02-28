#Item Check
execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"zombie_drop"}}}] at @s run function sa:skill/combat/event/mobs/zombie