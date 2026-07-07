# Aufruf aus check.mcfunction:
#   data modify storage sa:goals_ctx call set value {"goal":"ship_goal"}
#   function sa:goals/_lib/give with storage sa:goals_ctx call
#
# Laedt alle Config-Werte des Goals in einen Kontext und prueft, ob das Goal
# schon abgeschlossen ist.

$data modify storage sa:goals_ctx ctx set value {"goal":"$(goal)"}
$data modify storage sa:goals_ctx ctx.item set from storage sa:config config.goals.$(goal).item
$data modify storage sa:goals_ctx ctx.item_name set from storage sa:config config.goals.$(goal).item_name
$data modify storage sa:goals_ctx ctx.max set from storage sa:config config.goals.$(goal).max_per_use
$data modify storage sa:goals_ctx ctx.display_tag set from storage sa:config config.goals.$(goal).display_tag
$data modify storage sa:goals_ctx ctx.reward_function set from storage sa:config config.goals.$(goal).reward_function
$data modify storage sa:goals_ctx ctx.success_text set from storage sa:config config.goals.$(goal).success_text
# NEU: Waehrungstyp (item/xp) + optionaler Dependency-Check - siehe README-Abschnitt "Waehrung & Dependency"
$data modify storage sa:goals_ctx ctx.uses_xp set from storage sa:config config.goals.$(goal).uses_xp
$data modify storage sa:goals_ctx ctx.has_dependency set from storage sa:config config.goals.$(goal).has_dependency
$data modify storage sa:goals_ctx ctx.dependency_objective set from storage sa:config config.goals.$(goal).dependency_objective
$data modify storage sa:goals_ctx ctx.dependency_value set from storage sa:config config.goals.$(goal).dependency_value
$data modify storage sa:goals_ctx ctx.dependency_name set from storage sa:config config.goals.$(goal).dependency_name

$execute store result score completed goal_math run data get storage sa:config config.goals.$(goal).goal_completed
execute if score completed goal_math matches 1 run tellraw @s [{"text":"✗ Dieses Ziel ist bereits abgeschlossen!","color":"red"}]
execute if score completed goal_math matches 1 run return 0

function sa:goals/_lib/give_dependency_gate with storage sa:goals_ctx ctx
