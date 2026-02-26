# ============================================================================
# FISHING SYSTEM - XP-Check 
# Wird aufgerufen von: sa:tick
# ============================================================================

# Prüfung: Hat der Spieler genug XP für Level Up?
# Bedingungen:
# 1. fishing_xp >= fishing_goal (hat genug XP)
# 2. fishing_lvl < max_level (ist nicht schon max-level)
execute as @a[scores={fishing_xp=0..}] unless score @s fishing_lvl >= server max_level run execute if score @s fishing_xp >= @s fishing_goal run function sa:skill/fishing/lvl/lvlup
 

# ============================================================================
# Mining SYSTEM - XP-Check
# Wird aufgerufen von: sa:tick
# ============================================================================


#Lvl check
execute as @a[scores={mining_xp=0..}] unless score @s mining_lvl >= server max_level run execute if score @s mining_xp >= @s mining_goal run function sa:skill/mining/lvl/lvlup
function sa:skill/mining/mine