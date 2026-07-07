# Aufruf: function sa:goals/_lib/add_player_cost {goal:"ship_goal"}
# Addiert cost_per_player einmalig auf current_cost (entspricht altem
# "scoreboard players add server hub_x_cost 25" pro Join).

$execute store result score cpp goal_math run data get storage sa:config config.goals.$(goal).cost_per_player
$execute store result score cur goal_math run data get storage sa:config config.goals.$(goal).current_cost
scoreboard players operation cur goal_math += cpp goal_math
$execute store result storage sa:config config.goals.$(goal).current_cost int 1 run scoreboard players get cur goal_math
