# ============================================================================
# LEADERBOARD UPDATE: Logging
# Datei: sa:leaderboard/logging/update
# Version: 1.21.11
# ============================================================================

# ── Schritt 1: Sort ───────────────────────────────────────────────────────
function sa:leaderboard/logging/sort

# ── Schritt 2: Displays direkt mit Selector setzen ────────────────────────
# {"selector":"@p[scores={lb_log_name=1},limit=1]"} wird beim Rendern
# des text_display ausgewertet - zeigt den Namen des Spielers in Slot 1.
# Kein Storage-Umweg nötig.

execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r1,limit=1] text set value [{"text":"#1 ","color":"gold","bold":true},{"selector":"@a[scores={lb_log_name=1},limit=1]","color":"yellow"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s1","objective":"lb_log_score"},"color":"green"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r2,limit=1] text set value [{"text":"#2 ","color":"white"},{"selector":"@a[scores={lb_log_name=2},limit=1]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s2","objective":"lb_log_score"},"color":"green"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r3,limit=1] text set value [{"text":"#3 ","color":"white"},{"selector":"@a[scores={lb_log_name=3},limit=1]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s3","objective":"lb_log_score"},"color":"green"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r4,limit=1] text set value [{"text":"#4 ","color":"gray"},{"selector":"@a[scores={lb_log_name=4},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s4","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r5,limit=1] text set value [{"text":"#5 ","color":"gray"},{"selector":"@a[scores={lb_log_name=5},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s5","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r6,limit=1] text set value [{"text":"#6 ","color":"gray"},{"selector":"@a[scores={lb_log_name=6},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s6","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r7,limit=1] text set value [{"text":"#7 ","color":"gray"},{"selector":"@a[scores={lb_log_name=7},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s7","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r8,limit=1] text set value [{"text":"#8 ","color":"gray"},{"selector":"@a[scores={lb_log_name=8},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s8","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r9,limit=1] text set value [{"text":"#9 ","color":"gray"},{"selector":"@a[scores={lb_log_name=9},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s9","objective":"lb_log_score"},"color":"gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r10,limit=1] text set value [{"text":"#10 ","color":"gray"},{"selector":"@a[scores={lb_log_name=10},limit=1]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s10","objective":"lb_log_score"},"color":"gray"}]
