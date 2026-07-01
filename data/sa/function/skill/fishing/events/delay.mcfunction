advancement revoke @s only minecraft:parity_fishing
scoreboard players set @s fishing_drop_pending 1

execute as @s run function sa:skill/fishing/events/drops
execute as @s run schedule function sa:skill/fishing/events/t1 1t
