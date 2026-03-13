# LEADERBOARD SETUP: Fishing
# Datei: sa:setup/hub/leaderboard/fishing
# Version: 1.21.11

kill @e[type=text_display,tag=lb_fsh]

scoreboard objectives add lb_fsh_score dummy

summon minecraft:text_display 0 102.2 47 {Tags:["lb_fsh","lb_fsh_title"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"🎣 Fishing Top 5","color":"blue","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}

summon minecraft:text_display 0 101.4 47 {Tags:["lb_fsh","lb_fsh_r1"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"#1  ---  0","color":"gold"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 0 100.8 47 {Tags:["lb_fsh","lb_fsh_r2"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"#2  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 0 100.2 47 {Tags:["lb_fsh","lb_fsh_r3"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"#3  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 0 99.6 47 {Tags:["lb_fsh","lb_fsh_r4"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"#4  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}
summon minecraft:text_display 0 99.0 47 {Tags:["lb_fsh","lb_fsh_r5"],billboard:"fixed",Rotation:[180f,0f],text:{"text":"#5  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

scoreboard players set lb_slot1_taken lb_fsh_score 0
scoreboard players set lb_slot2_taken lb_fsh_score 0
scoreboard players set lb_slot3_taken lb_fsh_score 0
scoreboard players set lb_slot4_taken lb_fsh_score 0
scoreboard players set lb_slot5_taken lb_fsh_score 0
