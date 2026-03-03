advancement revoke @s only interact

execute as @a if entity @e[type=interaction,tag=goal_ship,distance=..5] run function sa:goals/goal_check
execute as @a if entity @e[type=mannequin,tag=tutorial,distance=..5] run scoreboard players enable @s itrigger
execute as @a if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:start
