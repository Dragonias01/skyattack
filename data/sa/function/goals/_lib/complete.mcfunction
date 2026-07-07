# Setzt goal_completed=true in der Config und ruft die individuelle Reward-Funktion
# des Goals auf (aus config.goals.<goal>.reward_function).

$data modify storage sa:config config.goals.$(goal).goal_completed set value true
$function $(reward_function)
