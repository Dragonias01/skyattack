execute as @a if score @s fishing_drop_pending matches 1 run function sa:skill/fishing/events/drops

scoreboard players set @s fishing_drop_pending 0
