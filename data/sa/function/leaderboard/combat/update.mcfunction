# LEADERBOARD UPDATE: Combat
# Datei: sa:leaderboard/combat/update
# Version: 1.21.11

function sa:leaderboard/combat/sort

execute in sa:hub if entity @a[scores={lb_com_name=1}] run data modify entity @e[type=text_display,tag=lb_com_r1,limit=1] text set value [{"text":"#1 ","color":"gold","bold":true},{"selector":"@a[scores={lb_com_name=1},limit=1]","color":"yellow"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_com_s1","objective":"lb_com_score"},"color":"green"}]
execute in sa:hub if entity @a[scores={lb_com_name=2}] run data modify entity @e[type=text_display,tag=lb_com_r2,limit=1] text set value [{"text":"#2 ","color":"white","bold":false},{"selector":"@a[scores={lb_com_name=2},limit=1]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_com_s2","objective":"lb_com_score"},"color":"green"}]
execute in sa:hub if entity @a[scores={lb_com_name=3}] run data modify entity @e[type=text_display,tag=lb_com_r3,limit=1] text set value [{"text":"#3 ","color":"white","bold":false},{"selector":"@a[scores={lb_com_name=3},limit=1]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_com_s3","objective":"lb_com_score"},"color":"green"}]
execute in sa:hub if entity @a[scores={lb_com_name=4}] run data modify entity @e[type=text_display,tag=lb_com_r4,limit=1] text set value [{"text":"#4 ","color":"gray","bold":false},{"selector":"@a[scores={lb_com_name=4},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_com_s4","objective":"lb_com_score"},"color":"gray"}]
execute in sa:hub if entity @a[scores={lb_com_name=5}] run data modify entity @e[type=text_display,tag=lb_com_r5,limit=1] text set value [{"text":"#5 ","color":"gray","bold":false},{"selector":"@a[scores={lb_com_name=5},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_com_s5","objective":"lb_com_score"},"color":"gray"}]
