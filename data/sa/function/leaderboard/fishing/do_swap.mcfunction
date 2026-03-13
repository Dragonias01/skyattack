# LEADERBOARD: Swap (Macro) für Fishing
# Datei: sa:leaderboard/fishing/do_swap
# Version: 1.21.11

$scoreboard players operation lb_fsh_swap_tmp lb_fsh_score = $(a) lb_fsh_score
$scoreboard players operation $(a) lb_fsh_score = $(b) lb_fsh_score
$scoreboard players operation $(b) lb_fsh_score = lb_fsh_swap_tmp lb_fsh_score

$scoreboard players set @a[scores={lb_fsh_name=$(na)}] lb_fsh_name -1
$scoreboard players set @a[scores={lb_fsh_name=$(nb)}] lb_fsh_name $(na)
$scoreboard players set @a[scores={lb_fsh_name=-1}]    lb_fsh_name $(nb)
