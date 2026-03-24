#============================================================================
# logging SYSTEM - XP VERGABE
# Wird aufgerufen von: sa:skill/logging/mine.mcfunction
# Version: 1.21.11
# ============================================================================


# timer Für die Action bar 
scoreboard players set @s timer 280

# 1. Fallback: Wenn Goal nicht initialisiert, setze auf 100
execute unless score @s logging_goal matches 1.. run scoreboard players set @s logging_goal 100



scoreboard players set @s logging_xp_gain 100
scoreboard players operation @s logging_xp_gain += @s logging_xp_boost_gain
scoreboard players operation @s fishing_xp_gain += server eventboost_logging
scoreboard players operation @s logging_xp_gain += @s Logging_fruit_gain

#100%
    execute as @s[scores={logging_xp_gain=100}] run scoreboard players add @s logging_xp 1
    execute as @s[scores={logging_xp_gain=100}] if score @s xp_cat matches 1 run experience add @s 1 points
#200%
    execute as @s[scores={logging_xp_gain=200}] run scoreboard players add @s logging_xp 2
    execute as @s[scores={logging_xp_gain=200}] if score @s xp_cat matches 1 run experience add @s 2 points
#300%
    execute as @s[scores={logging_xp_gain=300}] run scoreboard players add @s logging_xp 3
    execute as @s[scores={logging_xp_gain=300}] if score @s xp_cat matches 1 run experience add @s 3 points
#400%
    execute as @s[scores={logging_xp_gain=400}] run scoreboard players add @s logging_xp 4
    execute as @s[scores={logging_xp_gain=400}] if score @s xp_cat matches 1 run experience add @s 4 points
#500%
    execute as @s[scores={logging_xp_gain=500}] run scoreboard players add @s logging_xp 5
    execute as @s[scores={logging_xp_gain=500}] if score @s xp_cat matches 1 run experience add @s 5 points
#600%
    execute as @s[scores={logging_xp_gain=600}] run scoreboard players add @s logging_xp 6
    execute as @s[scores={logging_xp_gain=600}] if score @s xp_cat matches 1 run experience add @s 6 points
#700%
    execute as @s[scores={logging_xp_gain=700}] run scoreboard players add @s logging_xp 7
    execute as @s[scores={logging_xp_gain=700}] if score @s xp_cat matches 1 run experience add @s 7 points
#800%
    execute as @s[scores={logging_xp_gain=800}] run scoreboard players add @s logging_xp 8
    execute as @s[scores={logging_xp_gain=800}] if score @s xp_cat matches 1 run experience add @s 8 points
#900%
    execute as @s[scores={logging_xp_gain=900}] run scoreboard players add @s logging_xp 9
    execute as @s[scores={logging_xp_gain=900}] if score @s xp_cat matches 1 run experience add @s 9 points
#1000%
    execute as @s[scores={logging_xp_gain=1000}] run scoreboard players add @s logging_xp 10
    execute as @s[scores={logging_xp_gain=1000}] if score @s xp_cat matches 1 run experience add @s 10 points

#funktioniert
function sa:skill/logging/event/drops