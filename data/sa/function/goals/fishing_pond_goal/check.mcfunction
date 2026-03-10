# ============================================================================
# GOAL: Fishing Pond - Check
# Datei: sa:goals/fishing_pond_goal/check
# Version: 1.21.11
# Währung: fishing_lvl (wird dem Spieler abgezogen)
# ============================================================================
data modify entity @e[type=text_display,tag=display_fishpond,limit=1,sort=nearest] text set from storage sa:fishpond_goal_text text

# ── Dependency: Fishing Raum ──────────────────────────────────────────────
execute unless score server hub_fishing_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Fishing Raum)","color":"red"}]
execute unless score server hub_fishing_done matches 1 run return 0

# ── Schritt 1: Aktuelle Fishing Level des Spielers lesen ─────────────────
execute store result score @s temp_hub_fishpond run experience query @s levels

# ── Schritt 2: Keine Level → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_fishpond matches ..0 run tellraw @s [{"text":"Du hast nicht Genügend Level!","color":"red"}]
execute if score @s temp_hub_fishpond matches ..0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_fishpond matches 11.. run scoreboard players set @s temp_hub_fishpond 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_fishpond_rem = server hub_fishpond_cost
scoreboard players operation server hub_fishpond_rem -= server hub_fishpond

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_fishpond_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_fishpond_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ───────────────────────────────────────────
scoreboard players operation @s temp_hub_fishpond < server hub_fishpond_rem

# ── Schritt 7: Fishing Level abziehen & XP zurücksetzen ──────────────────
execute if score @s temp_hub_fishpond matches 1 run experience add @s -1 levels
execute if score @s temp_hub_fishpond matches 2 run experience add @s -2 levels
execute if score @s temp_hub_fishpond matches 3 run experience add @s -3 levels
execute if score @s temp_hub_fishpond matches 4 run experience add @s -4 levels
execute if score @s temp_hub_fishpond matches 5 run experience add @s -5 levels
execute if score @s temp_hub_fishpond matches 6 run experience add @s -6 levels
execute if score @s temp_hub_fishpond matches 7 run experience add @s -7 levels
execute if score @s temp_hub_fishpond matches 8 run experience add @s -8 levels
execute if score @s temp_hub_fishpond matches 9 run experience add @s -9 levels
execute if score @s temp_hub_fishpond matches 10.. run experience add @s -10 levels

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server hub_fishpond += @s temp_hub_fishpond

# ── Schritt 9: Bestätigung ────────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_fishpond"},"color":"green"},{"text":" Level abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_fishpond,limit=1,sort=nearest] text set from storage sa:fishpond_goal_text text
execute if score server hub_fishpond >= server hub_fishpond_cost run function sa:goals/fishing_pond_goal/reward
