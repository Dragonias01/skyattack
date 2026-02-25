# ============================================================================
# FISHING SYSTEM - XP Vergabe
# Wird aufgerufen von: sa:skill/fishing/fish
# Effekt: Gibt 1 XP-Punkt und aktualisiert Actionbar
# ============================================================================

# 1. Prüfung ob fishing_goal initialisiert ist (Fallback-Check)
execute unless score @s fishing_goal matches 1.. run scoreboard players set @s fishing_goal 100

# 2. XP-Punkt hinzufügen
scoreboard players add @s fishing_xp 1

# 3. Timer auf Actionbar-Range setzen (90-170)
# Dies triggert die fishing.mcfunction im actionbar-System
scoreboard players set @s timer 90

# 4. Minecraft-Experience-Points hinzufügen (für natürliches Feeling)
experience add @s 1 points

