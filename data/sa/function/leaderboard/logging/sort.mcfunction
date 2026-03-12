# sa:leaderboard/logging/sort
scoreboard players set lb_log_s1 lb_log_score 0
scoreboard players set lb_log_s2 lb_log_score 0
scoreboard players set lb_log_s3 lb_log_score 0
scoreboard players set lb_log_s4 lb_log_score 0
scoreboard players set lb_log_s5 lb_log_score 0
scoreboard players reset @a lb_log_name
scoreboard players set lb_insert_idx lb_log_score 0
execute as @a run function sa:leaderboard/logging/insert_player
function sa:leaderboard/logging/sort_pass
