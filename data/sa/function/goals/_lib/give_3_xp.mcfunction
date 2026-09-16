execute store result storage sa:goals_ctx ctx.neg_count int -1 run scoreboard players get @s goal_temp
$experience add @s $(neg_count) levels

function sa:goals/_lib/give_4 with storage sa:goals_ctx ctx
