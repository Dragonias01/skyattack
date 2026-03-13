# LEADERBOARD SETUP: Mining
# Datei: sa:setup/hub/leaderboard/mining
# Version: 1.21.11

kill @e[type=text_display,tag=lb_min]

scoreboard objectives add lb_min_score dummy

summon minecraft:text_display -11 102.2 40 {Tags:["lb_min","lb_min_title"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"⛏ Mining Top 5","color":"aqua","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}

summon minecraft:text_display -11 101.4 40 {Tags:["lb_min","lb_min_r1"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#1  ---  0","color":"gold"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 100.8 40 {Tags:["lb_min","lb_min_r2"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#2  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 100.2 40 {Tags:["lb_min","lb_min_r3"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#3  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 99.6 40 {Tags:["lb_min","lb_min_r4"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#4  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display -11 99.0 40 {Tags:["lb_min","lb_min_r5"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#5  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

scoreboard players set lb_slot1_taken lb_min_score 0
scoreboard players set lb_slot2_taken lb_min_score 0
scoreboard players set lb_slot3_taken lb_min_score 0
scoreboard players set lb_slot4_taken lb_min_score 0
scoreboard players set lb_slot5_taken lb_min_score 0
