# LEADERBOARD: Swap (Macro) für Combat
# Datei: sa:leaderboard/combat/do_swap
# Version: 1.21.11

$scoreboard players operation lb_com_swap_tmp lb_com_score = $(a) lb_com_score
$scoreboard players operation $(a) lb_com_score = $(b) lb_com_score
$scoreboard players operation $(b) lb_com_score = lb_com_swap_tmp lb_com_score

$scoreboard players set @a[scores={lb_com_name=$(na)}] lb_com_name -1
$scoreboard players set @a[scores={lb_com_name=$(nb)}] lb_com_name $(na)
$scoreboard players set @a[scores={lb_com_name=-1}]    lb_com_name $(nb)
