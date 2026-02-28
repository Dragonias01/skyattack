execute as @e[type=item,nbt={Item:{components:{"minecraft:item_name":"potato_drop"}}}] at @s run execute as @a[distance=..5,limit=1,sort=nearest,scores={potato_mined=1..}] run function sa:skill/farming/lvl/xp


scoreboard players remove @s potato_mined 1