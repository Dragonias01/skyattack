place template sa:ship_1 -46 93 -39
place template sa:ship_2 -46 93 9
kill @e[type=interaction,tag=goal_ship]
kill @e[type=text_display,tag=display_goal_ship]
kill @e[type=block_display,tag=block_goal_ship]
setblock -6 102 10 minecraft:air
scoreboard players set server goal1 1

title @a title [{"text":"Goal 1 Completet!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"green"}]