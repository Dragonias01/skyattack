# LEADERBOARD: Swap (Macro) für Farming
# Datei: sa:leaderboard/farming/do_swap
# Version: 1.21.11

$scoreboard players operation lb_far_swap_tmp lb_far_score = $(a) lb_far_score
$scoreboard players operation $(a) lb_far_score = $(b) lb_far_score
$scoreboard players operation $(b) lb_far_score = lb_far_swap_tmp lb_far_score

$scoreboard players set @a[scores={lb_far_name=$(na)}] lb_far_name -1
$scoreboard players set @a[scores={lb_far_name=$(nb)}] lb_far_name $(na)
$scoreboard players set @a[scores={lb_far_name=-1}]    lb_far_name $(nb)
