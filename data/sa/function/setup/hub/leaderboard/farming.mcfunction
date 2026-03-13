# LEADERBOARD SETUP: Farming
# Datei: sa:setup/hub/leaderboard/farming
# Version: 1.21.11

kill @e[type=text_display,tag=lb_far]

scoreboard objectives add lb_far_score dummy

summon minecraft:text_display 11 102.2 40 {Tags:["lb_far","lb_far_title"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"🌾 Farming Top 5","color":"green","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}

summon minecraft:text_display 11 101.4 40 {Tags:["lb_far","lb_far_r1"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"#1  ---  0","color":"gold"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 11 100.8 40 {Tags:["lb_far","lb_far_r2"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"#2  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 11 100.2 40 {Tags:["lb_far","lb_far_r3"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"#3  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 11 99.6 40 {Tags:["lb_far","lb_far_r4"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"#4  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 11 99.0 40 {Tags:["lb_far","lb_far_r5"],billboard:"fixed",Rotation:[90f,0f],text:{"text":"#5  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

scoreboard players set lb_slot1_taken lb_far_score 0
scoreboard players set lb_slot2_taken lb_far_score 0
scoreboard players set lb_slot3_taken lb_far_score 0
scoreboard players set lb_slot4_taken lb_far_score 0
scoreboard players set lb_slot5_taken lb_far_score 0
