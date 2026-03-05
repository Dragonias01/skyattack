advancement revoke @s only goal_interact

#Goal 1
execute as @a if entity @e[type=interaction,tag=goal_ship,distance=..5] run function sa:goals/goal_ship/check