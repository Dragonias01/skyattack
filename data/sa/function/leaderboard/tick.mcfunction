# LEADERBOARD TICK
# Datei: sa:leaderboard/tick
# Version: 1.21.11

scoreboard players add server lb_tick 1

execute if score server lb_tick matches 20.. run function sa:leaderboard/logging/update
execute if score server lb_tick matches 40 run function sa:leaderboard/mining/update
execute if score server lb_tick matches 60 run function sa:leaderboard/fishing/update
execute if score server lb_tick matches 80 run function sa:leaderboard/farming/update
execute if score server lb_tick matches 100 run function sa:leaderboard/combat/update
execute if score server lb_tick matches 100.. run scoreboard players set server lb_tick 0
