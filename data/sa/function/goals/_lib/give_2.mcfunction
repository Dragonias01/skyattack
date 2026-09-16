execute store result score uses_xp goal_math run data get storage sa:goals_ctx ctx.uses_xp

execute unless score uses_xp goal_math matches 1 run function sa:goals/_lib/give_2_item with storage sa:goals_ctx ctx
execute if score uses_xp goal_math matches 1 run function sa:goals/_lib/give_2_xp with storage sa:goals_ctx ctx
