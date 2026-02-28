# ============================================================================
# FISHING SYSTEM - XP-Check 
# Wird aufgerufen von: sa:tick
# ============================================================================

# Prüfung: Hat der Spieler genug XP für Level Up?
# Bedingungen:
# 1. fishing_xp >= fishing_goal (hat genug XP)
# 2. fishing_lvl < max_level (ist nicht schon max-level)
#Lvl check
execute as @a[scores={mining_xp=0..}] unless score @s mining_lvl >= server max_level run execute if score @s mining_xp >= @s mining_goal run function sa:skill/mining/lvl/lvlup
execute as @a[scores={farming_xp=0..}] unless score @s farming_lvl >= server max_level run execute if score @s farming_xp >= @s farming_goal run function sa:skill/farming/lvl/lvlup
execute as @a[scores={logging_xp=0..}] unless score @s logging_lvl >= server max_level run execute if score @s logging_xp >= @s logging_goal run function sa:skill/farming/lvl/lvlup
execute as @a[scores={fishing_xp=0..}] unless score @s fishing_lvl >= server max_level run execute if score @s fishing_xp >= @s fishing_goal run function sa:skill/fishing/lvl/lvlup
 

# ============================================================================
# Mining SYSTEM - XP-Check
# Wird aufgerufen von: sa:tick
# ============================================================================




#Mining
execute as @a[scores={cstone_mined=1..}] run function sa:skill/mining/mine
execute as @a[scores={stone_mined=1..}] run function sa:skill/mining/mine

#Farming
execute as @a[scores={potato_mined=1..}] run function sa:skill/farming/farm
#logging
execute as @a[scores={oak_mined=1..}] run function sa:skill/logging/logging