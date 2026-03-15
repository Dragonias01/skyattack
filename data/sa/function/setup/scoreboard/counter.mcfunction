scoreboard players add server scoreboard_counter 1
execute if score server scoreboard_counter matches 20 run function sa:setup/scoreboard/update_scoreboard
execute if score server scoreboard_counter matches 20 run scoreboard players set server scoreboard_counter 0