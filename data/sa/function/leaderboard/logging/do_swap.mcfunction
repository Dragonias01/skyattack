# sa:leaderboard/logging/do_swap
$scoreboard players operation lb_swap_tmp lb_log_score = $(a) lb_log_score
$scoreboard players operation $(a) lb_log_score = $(b) lb_log_score
$scoreboard players operation $(b) lb_log_score = lb_swap_tmp lb_log_score
$scoreboard players set @a[scores={lb_log_name=$(na)}] lb_log_name -1
$scoreboard players set @a[scores={lb_log_name=$(nb)}] lb_log_name $(na)
$scoreboard players set @a[scores={lb_log_name=-1}] lb_log_name $(nb)
