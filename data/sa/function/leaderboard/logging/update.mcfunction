# ============================================================================
# LEADERBOARD UPDATE: Logging
# Datei: sa:leaderboard/logging/update
# Version: 1.21.11
#
# Namen-Konzept:
#  lb_log_name ist ein Scoreboard-Objective.
#  Jeder Spieler hat lb_log_name = Slot-Nummer (1-10) gesetzt.
#  {"selector":"@a[scores={lb_log_name=1}]"} zeigt den Namen von Slot 1.
#
# ERWEITERUNG: Tags + Objectives anpassen (lb_log → lb_XXX)
# ============================================================================

# ── Schritt 1: Sort ───────────────────────────────────────────────────────
function sa:leaderboard/logging/sort

# ── Schritt 2: Text-Arrays in Storage bauen ───────────────────────────────
data modify storage sa:lb_build r1 set value [{"text":"#1 ","color":"gold","bold":true},{"selector":"@a[scores={lb_log_name=1}]","color":"yellow"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s1","objective":"lb_log_score"},"color":"green"}]
data modify storage sa:lb_build r2 set value [{"text":"#2 ","color":"white"},{"selector":"@a[scores={lb_log_name=2}]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s2","objective":"lb_log_score"},"color":"green"}]
data modify storage sa:lb_build r3 set value [{"text":"#3 ","color":"white"},{"selector":"@a[scores={lb_log_name=3}]","color":"white"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s3","objective":"lb_log_score"},"color":"green"}]
data modify storage sa:lb_build r4 set value [{"text":"#4 ","color":"gray"},{"selector":"@a[scores={lb_log_name=4}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s4","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r5 set value [{"text":"#5 ","color":"gray"},{"selector":"@a[scores={lb_log_name=5}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s5","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r6 set value [{"text":"#6 ","color":"gray"},{"selector":"@a[scores={lb_log_name=6}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s6","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r7 set value [{"text":"#7 ","color":"gray"},{"selector":"@a[scores={lb_log_name=7}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s7","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r8 set value [{"text":"#8 ","color":"gray"},{"selector":"@a[scores={lb_log_name=8}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s8","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r9 set value [{"text":"#9 ","color":"gray"},{"selector":"@a[scores={lb_log_name=9}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s9","objective":"lb_log_score"},"color":"gray"}]
data modify storage sa:lb_build r10 set value [{"text":"#10 ","color":"gray"},{"selector":"@a[scores={lb_log_name=10}]","color":"gray"},{"text":" Lv.","color":"dark_gray"},{"score":{"name":"lb_log_s10","objective":"lb_log_score"},"color":"gray"}]

# ── Schritt 3: text_display Entities aktualisieren ────────────────────────
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r1,limit=1] text set from storage sa:lb_build r1
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r2,limit=1] text set from storage sa:lb_build r2
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r3,limit=1] text set from storage sa:lb_build r3
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r4,limit=1] text set from storage sa:lb_build r4
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r5,limit=1] text set from storage sa:lb_build r5
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r6,limit=1] text set from storage sa:lb_build r6
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r7,limit=1] text set from storage sa:lb_build r7
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r8,limit=1] text set from storage sa:lb_build r8
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r9,limit=1] text set from storage sa:lb_build r9
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r10,limit=1] text set from storage sa:lb_build r10
