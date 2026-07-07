# Beispiel Config-Werte fuer Fishing Pond:
#   dependency_objective: "hub_fishing_done"
#   dependency_value: 1
#   dependency_name: "Fishing Room"
# Entspricht 1:1 deinem alten:
#   execute unless score server hub_fishing_done matches 1 run tellraw ...

$execute unless score server $(dependency_objective) matches $(dependency_value).. run tellraw @s [{"text":"✗ Dependency nicht erfüllt: ","color":"red"},{"text":"$(dependency_name)","color":"red"}]
$execute unless score server $(dependency_objective) matches $(dependency_value).. run return 0

function sa:goals/_lib/give_2 with storage sa:goals_ctx ctx
