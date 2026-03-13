# LEADERBOARD SETUP: Logging
# Datei: sa:setup/hub/leaderboard/logging
# Version: 1.21.11

kill @e[type=text_display,tag=lb_log]

scoreboard objectives add lb_log_score dummy

summon minecraft:text_display -11 102.2 32 {Tags:["lb_log","lb_log_title"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"🪓 Logging Top 5","color":"gold","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}

summon minecraft:text_display -11 101.4 32 {Tags:["lb_log","lb_log_r1"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#1  ---  0","color":"gold"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 100.8 32 {Tags:["lb_log","lb_log_r2"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#2  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 100.2 32 {Tags:["lb_log","lb_log_r3"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#3  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 99.6 32 {Tags:["lb_log","lb_log_r4"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#4  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 99.0 32 {Tags:["lb_log","lb_log_r5"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#5  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

scoreboard players set lb_slot1_taken lb_log_score 0
scoreboard players set lb_slot2_taken lb_log_score 0
scoreboard players set lb_slot3_taken lb_log_score 0
scoreboard players set lb_slot4_taken lb_log_score 0
scoreboard players set lb_slot5_taken lb_log_score 0
