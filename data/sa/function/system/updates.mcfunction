scoreboard players add server tick_counter 1

execute if score server tick_counter matches 20 run function sa:system/bonus/logging/calc_bonus
execute if score server tick_counter matches 10 run function sa:item/passive_check
execute if score server tick_counter matches 20 run function sa:item/passive_check
execute if score server tick_counter matches 20 run function sa:dungeon/floor1/tick
execute if score server tick_counter matches 20 run function sa:system/bonus/mining/calc_bonus
execute if score server tick_counter matches 20 run function sa:system/bonus/farming/calc_bonus
execute if score server tick_counter matches 20 run function sa:system/bonus/combat/calc_bonus
execute if score server tick_counter matches 20 run function sa:system/bonus/fishing/calc_bonus
execute if score server tick_counter matches 20 run execute as @a run function sa:system/setstats

execute if score server tick_counter matches 20 run scoreboard players reset server tick_counter


