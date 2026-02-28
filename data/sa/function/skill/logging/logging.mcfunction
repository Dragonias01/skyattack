#Check
execute as @a[scores={oak_mined=1..,mining_lvl=0..999}] run function sa:skill/logging/lvl/xp

execute as @a[scores={oak_mined=1..}] run scoreboard players set @s oak_mined 0