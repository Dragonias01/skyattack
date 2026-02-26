
# timer Für die Action bar 
scoreboard players set @s timer 0


scoreboard players set @s m_xp_gain 100
#scoreboard players operation @s m_xp_gain += @s m_xp_boost_gain
#scoreboard players operation @s m_xp_gain += @s m_xp_fruit_gain

#100%
    execute as @s[scores={m_xp_gain=100}] run scoreboard players add @s mining_xp 1
    execute as @s[scores={m_xp_gain=100}] run experience add @s 1 points
#200%
    execute as @s[scores={m_xp_gain=200}] run scoreboard players add @s mining_xp 2
    execute as @s[scores={m_xp_gain=200}] run experience add @s 2 points
#300%
    execute as @s[scores={m_xp_gain=300}] run scoreboard players add @s mining_xp 3
    execute as @s[scores={m_xp_gain=300}] run experience add @s 3 points
#400%
    execute as @s[scores={m_xp_gain=400}] run scoreboard players add @s mining_xp 4
    execute as @s[scores={m_xp_gain=400}] run experience add @s 4 points
#500%
    execute as @s[scores={m_xp_gain=500}] run scoreboard players add @s mining_xp 5
    execute as @s[scores={m_xp_gain=500}] run experience add @s 5 points
#600%
    execute as @s[scores={m_xp_gain=600}] run scoreboard players add @s mining_xp 6
    execute as @s[scores={m_xp_gain=600}] run experience add @s 6 points
#700%
    execute as @s[scores={m_xp_gain=700}] run scoreboard players add @s mining_xp 7
    execute as @s[scores={m_xp_gain=700}] run experience add @s 7 points
#800%
    execute as @s[scores={m_xp_gain=800}] run scoreboard players add @s mining_xp 8
    execute as @s[scores={m_xp_gain=800}] run experience add @s 8 points
#900%
    execute as @s[scores={m_xp_gain=900}] run scoreboard players add @s mining_xp 9
    execute as @s[scores={m_xp_gain=900}] run experience add @s 9 points
#1000%
    execute as @s[scores={m_xp_gain=1000}] run scoreboard players add @s mining_xp 10
    execute as @s[scores={m_xp_gain=1000}] run experience add @s 10 points

#funktioniert
function sa:skill/mining/event/drops