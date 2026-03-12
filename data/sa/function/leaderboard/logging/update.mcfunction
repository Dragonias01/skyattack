# sa:leaderboard/logging/update
function sa:leaderboard/logging/sort

# Slot 1
execute in sa:hub if score lb_log_s1 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r1,limit=1] text set value [{"text":"#1  ","color":"gold","bold":true},{"selector":"@a[scores={lb_log_name=1},limit=1]","color":"yellow"},{"text":"  Lv: ","color":"gray"},{"score":{"name":"lb_log_s1","objective":"lb_log_score"},"color":"green"}]
execute in sa:hub unless score lb_log_s1 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r1,limit=1] text set value {"text":"-","color":"gray"}

# Slot 2
execute in sa:hub if score lb_log_s2 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r2,limit=1] text set value [{"text":"#2  ","color":"white"},{"selector":"@a[scores={lb_log_name=2},limit=1]","color":"white"},{"text":"  Lv: ","color":"gray"},{"score":{"name":"lb_log_s2","objective":"lb_log_score"},"color":"green"}]
execute in sa:hub unless score lb_log_s2 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r2,limit=1] text set value {"text":"-","color":"gray"}

# Slot 3
execute in sa:hub if score lb_log_s3 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r3,limit=1] text set value [{"text":"#3  ","color":"white"},{"selector":"@a[scores={lb_log_name=3},limit=1]","color":"white"},{"text":"  Lv: ","color":"gray"},{"score":{"name":"lb_log_s3","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub unless score lb_log_s3 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r3,limit=1] text set value {"text":"-","color":"gray"}

# Slot 4
execute in sa:hub if score lb_log_s4 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r4,limit=1] text set value [{"text":"#4  ","color":"gray"},{"selector":"@a[scores={lb_log_name=4},limit=1]","color":"gray"},{"text":"  Lv: ","color":"gray"},{"score":{"name":"lb_log_s4","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub unless score lb_log_s4 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r4,limit=1] text set value {"text":"-","color":"gray"}

# Slot 5
execute in sa:hub if score lb_log_s5 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r5,limit=1] text set value [{"text":"#5  ","color":"gray"},{"selector":"@a[scores={lb_log_name=5},limit=1]","color":"gray"},{"text":"  Lv: ","color":"gray"},{"score":{"name":"lb_log_s5","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub unless score lb_log_s5 lb_log_score matches 1.. run data modify entity @e[type=text_display,tag=lb_log_r5,limit=1] text set value {"text":"-","color":"gray"}
