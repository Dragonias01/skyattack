# Aufruf: function sa:goals/_lib/reset_goal {goal:"ship_goal"}
$data modify storage sa:config config.goals.$(goal).goal_progress set value 0
$data modify storage sa:config config.goals.$(goal).goal_completed set value false
$execute store result storage sa:config config.goals.$(goal).current_cost int 1 run data get storage sa:config config.goals.$(goal).initial_cost
