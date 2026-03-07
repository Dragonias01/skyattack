advancement revoke @s only npc_interact

execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run scoreboard players enable @s itrigger
execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:start


execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] run function sa:npc/pilot/function
