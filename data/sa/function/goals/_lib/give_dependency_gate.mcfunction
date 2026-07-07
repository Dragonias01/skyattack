# Prueft, ob dieses Goal einen Dependency-Check braucht (z.B. Fishing Pond -> Fishing Room
# muss vorher fertig sein). has_dependency=false -> direkt weiter zu give_2.

$execute store result score has_dep goal_math run data get storage sa:config config.goals.$(goal).has_dependency
execute unless score has_dep goal_math matches 1 run function sa:goals/_lib/give_2 with storage sa:goals_ctx ctx
execute if score has_dep goal_math matches 1 run function sa:goals/_lib/give_dependency_check with storage sa:goals_ctx ctx
