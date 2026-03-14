scoreboard players add server tick_counter 1

execute if score server tick_counter matches 20 run function sa:system/bonus/logging/calc_bonus
execute if score server tick_counter matches 21 run scoreboard players reset server tick_counter
