$execute unless score server $(dependency_objective) matches $(dependency_value).. run tellraw @s [{"text":"✗ Dependency not met: ","color":"red"},{"text":"$(dependency_name)","color":"red"}]
$execute unless score server $(dependency_objective) matches $(dependency_value).. run return 0

function sa:goals/_lib/give_2 with storage sa:goals_ctx ctx
