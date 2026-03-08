# ============================================================================
# GOAL: Fishing Pond - Check
# Datei: sa:goals/fishing_pond_goal/check
# Version: 1.21.11
# Item:   minecraft:paper[item_name="double_compressed_fish"]
#         → wird vom Fishing Merchant verkauft (selber Merchant wie Farming Goal)
# HINWEIS: Fishing Pond Goal spawnt gleichzeitig mit Farming Goal (nach Fishing done)
# ============================================================================
data modify entity @e[type=text_display,tag=display_fishpond,limit=1,sort=nearest] text set from storage sa:fishpond_goal_text text

# ── Dependency: Fishing Raum ──────────────────────────────────────────────
execute unless score server hub_fishing_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Fishing Raum)","color":"red"}]
execute unless score server hub_fishing_done matches 1 run return 0

# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
execute store result score @s temp_hub_fishpond run clear @s minecraft:paper[item_name="double_compressed_fish"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_fishpond matches 0 run tellraw @s [{"text":"Du hast keine Double Compressed Fish!","color":"red"}]
execute if score @s temp_hub_fishpond matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_fishpond matches 11.. run scoreboard players set @s temp_hub_fishpond 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_fishpond_rem = server hub_fishpond_cost
scoreboard players operation server hub_fishpond_rem -= server hub_fishpond

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_fishpond_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_fishpond_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_fishpond < server hub_fishpond_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_fishpond matches 1 run clear @s minecraft:paper[item_name="double_compressed_fish"] 1
execute if score @s temp_hub_fishpond matches 2 run clear @s minecraft:paper[item_name="double_compressed_fish"] 2
execute if score @s temp_hub_fishpond matches 3 run clear @s minecraft:paper[item_name="double_compressed_fish"] 3
execute if score @s temp_hub_fishpond matches 4 run clear @s minecraft:paper[item_name="double_compressed_fish"] 4
execute if score @s temp_hub_fishpond matches 5 run clear @s minecraft:paper[item_name="double_compressed_fish"] 5
execute if score @s temp_hub_fishpond matches 6 run clear @s minecraft:paper[item_name="double_compressed_fish"] 6
execute if score @s temp_hub_fishpond matches 7 run clear @s minecraft:paper[item_name="double_compressed_fish"] 7
execute if score @s temp_hub_fishpond matches 8 run clear @s minecraft:paper[item_name="double_compressed_fish"] 8
execute if score @s temp_hub_fishpond matches 9 run clear @s minecraft:paper[item_name="double_compressed_fish"] 9
execute if score @s temp_hub_fishpond matches 10 run clear @s minecraft:paper[item_name="double_compressed_fish"] 10

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server hub_fishpond += @s temp_hub_fishpond

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_fishpond"},"color":"green"},{"text":" Double Compressed Fish abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_fishpond,limit=1,sort=nearest] text set from storage sa:fishpond_goal_text text
execute if score server hub_fishpond >= server hub_fishpond_cost run function sa:goals/fishing_pond_goal/reward
