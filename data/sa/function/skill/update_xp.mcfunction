# ============================================================================
# FISHING SYSTEM - XP-Prüfung (Teil des Tick-Systems)
# Wird aufgerufen von: sa:tick
# Frequenz: Jeden Tick (20 mal pro Sekunde)
# ============================================================================

# Prüfung: Hat der Spieler genug XP für Level Up?
# Bedingungen:
# 1. fishing_xp >= fishing_goal (hat genug XP)
# 2. fishing_lvl < max_level (ist nicht schon max-level)
execute as @a[scores={fishing_xp=0..}] unless score @s fishing_lvl >= server max_level run execute if score @s fishing_xp >= @s fishing_goal run function sa:skill/fishing/lvl/lvlup
 