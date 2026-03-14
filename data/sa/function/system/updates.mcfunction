scoreboard players add server tick_counter 1

execute if score server tick_counter matches 20 run function sa:system/bonus/logging/calc_bonus
execute if score server tick_counter matches 21 run function sa:system/bonus/mining/calc_bonus
execute if score server tick_counter matches 22 run function sa:system/bonus/farming/calc_bonus
execute if score server tick_counter matches 23 run function sa:system/bonus/combat/calc_bonus
execute if score server tick_counter matches 24 run function sa:system/bonus/fishing/calc_bonus
execute if score server tick_counter matches 25 run scoreboard players reset server tick_counter
