# LEADERBOARD: Swap (Macro) für Mining
# Datei: sa:leaderboard/mining/do_swap
# Version: 1.21.11

$scoreboard players operation lb_min_swap_tmp lb_min_score = $(a) lb_min_score
$scoreboard players operation $(a) lb_min_score = $(b) lb_min_score
$scoreboard players operation $(b) lb_min_score = lb_min_swap_tmp lb_min_score

$scoreboard players set @a[scores={lb_min_name=$(na)}] lb_min_name -1
$scoreboard players set @a[scores={lb_min_name=$(nb)}] lb_min_name $(na)
$scoreboard players set @a[scores={lb_min_name=-1}]    lb_min_name $(nb)
