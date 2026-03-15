#============================================================================
# MINING SYSTEM - XP VERGABE
# Wird aufgerufen von: sa:skill/mining/mine.mcfunction
# Version: 1.21.11
# ============================================================================


# timer Für die Action bar 
scoreboard players set @s timer 0

# 1. Fallback: Wenn Goal nicht initialisiert, setze auf 100
execute unless score @s mining_goal matches 1.. run scoreboard players set @s mining_goal 100



scoreboard players set @s m_xp_gain 100
scoreboard players operation @s m_xp_gain += @s mining_xp_boost_gain
scoreboard players operation @s m_xp_gain += server eventboost_mining
#scoreboard players operation @s m_xp_gain += @s m_xp_fruit_gain

#100%
    execute as @s[scores={m_xp_gain=100}] run scoreboard players add @s mining_xp 1
    execute as @s[scores={m_xp_gain=100}] if score @s xp_cat matches 1 run experience add @s 1 points
    execute as @s[scores={m_xp_gain=100}] if score @s xp_cat matches 2 run experience add @s 1 levels
#200%
    execute as @s[scores={m_xp_gain=200}] run scoreboard players add @s mining_xp 2
    execute as @s[scores={m_xp_gain=200}] if score @s xp_cat matches 1 run experience add @s 2 points
    execute as @s[scores={m_xp_gain=200}] if score @s xp_cat matches 2 run experience add @s 2 levels
#300%
    execute as @s[scores={m_xp_gain=300}] run scoreboard players add @s mining_xp 3
    execute as @s[scores={m_xp_gain=300}] if score @s xp_cat matches 1 run experience add @s 3 points
    execute as @s[scores={m_xp_gain=300}] if score @s xp_cat matches 2 run experience add @s 3 levels
#400%
    execute as @s[scores={m_xp_gain=400}] run scoreboard players add @s mining_xp 4
    execute as @s[scores={m_xp_gain=400}] if score @s xp_cat matches 1 run experience add @s 4 points
    execute as @s[scores={m_xp_gain=400}] if score @s xp_cat matches 2 run experience add @s 4 levels
#500%
    execute as @s[scores={m_xp_gain=500}] run scoreboard players add @s mining_xp 5
    execute as @s[scores={m_xp_gain=500}] if score @s xp_cat matches 1 run experience add @s 5 points
    execute as @s[scores={m_xp_gain=500}] if score @s xp_cat matches 2 run experience add @s 5 levels
#600%
    execute as @s[scores={m_xp_gain=600}] run scoreboard players add @s mining_xp 6
    execute as @s[scores={m_xp_gain=600}] if score @s xp_cat matches 1 run experience add @s 6 points
    execute as @s[scores={m_xp_gain=600}] if score @s xp_cat matches 2 run experience add @s 6 levels
#700%
    execute as @s[scores={m_xp_gain=700}] run scoreboard players add @s mining_xp 7
    execute as @s[scores={m_xp_gain=700}] if score @s xp_cat matches 1 run experience add @s 7 points
    execute as @s[scores={m_xp_gain=700}] if score @s xp_cat matches 2 run experience add @s 7 levels
#800%
    execute as @s[scores={m_xp_gain=800}] run scoreboard players add @s mining_xp 8
    execute as @s[scores={m_xp_gain=800}] if score @s xp_cat matches 1 run experience add @s 8 points
    execute as @s[scores={m_xp_gain=800}] if score @s xp_cat matches 2 run experience add @s 8 levels
#900%
    execute as @s[scores={m_xp_gain=900}] run scoreboard players add @s mining_xp 9
    execute as @s[scores={m_xp_gain=900}] if score @s xp_cat matches 1 run experience add @s 9 points
    execute as @s[scores={m_xp_gain=900}] if score @s xp_cat matches 2 run experience add @s 9 levels
#1000%
    execute as @s[scores={m_xp_gain=1000}] run scoreboard players add @s mining_xp 10
    execute as @s[scores={m_xp_gain=1000}] if score @s xp_cat matches 1 run experience add @s 10 points
    execute as @s[scores={m_xp_gain=1000}] if score @s xp_cat matches 2 run experience add @s 10 levels

#funktioniert
function sa:skill/mining/event/drops