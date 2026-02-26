# Break Stone 
execute as @a[scores={stone_mined=1..,mining_lvl=0..999}] run function sa:skill/mining/lvl/xp
# Break cobbledStone
execute as @a[scores={cstone_mined=1..,mining_lvl=0..1000}] run function sa:skill/mining/lvl/xp


#execute as @a[scores={cstone_mined=1..,mining_lvl=0..1000}] run scoreboard players add @s stone_mined_total 1
#execute as @a[scores={stone_mined=1..,mining_lvl=0..999}] run scoreboard players add @s stone_mined_total 1


execute as @a[scores={stone_mined=1..,mining_lvl=1000}] run say maxLVL

# Zurücksetzen des stone_mined Scores
execute as @a[scores={stone_mined=1..}] run scoreboard players set @s stone_mined 0
execute as @a[scores={cstone_mined=1..}] run scoreboard players set @s cstone_mined 0


