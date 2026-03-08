# ============================================================================
# GOAL: Fishing Raum - Check
# Datei: sa:goals/fishing_goal/check
# Version: 1.21.11
# Item:   minecraft:deepslate[item_name="double_compressed_stone"]
#         → wird vom Mining Merchant verkauft
# ============================================================================
data modify entity @e[type=text_display,tag=display_fishing,limit=1,sort=nearest] text set from storage sa:fishing_goal_text text

# ── Dependency: Mining Raum ───────────────────────────────────────────────
execute unless score server hub_mining_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Mining Raum)","color":"red"}]
execute unless score server hub_mining_done matches 1 run return 0

# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
execute store result score @s temp_hub_fishing run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_fishing matches 0 run tellraw @s [{"text":"Du hast keine Double Compressed Stone!","color":"red"}]
execute if score @s temp_hub_fishing matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_fishing matches 11.. run scoreboard players set @s temp_hub_fishing 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_fishing_rem = server hub_fishing_cost
scoreboard players operation server hub_fishing_rem -= server hub_fishing

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_fishing_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_fishing_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_fishing < server hub_fishing_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_fishing matches 1 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 1
execute if score @s temp_hub_fishing matches 2 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 2
execute if score @s temp_hub_fishing matches 3 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 3
execute if score @s temp_hub_fishing matches 4 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 4
execute if score @s temp_hub_fishing matches 5 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 5
execute if score @s temp_hub_fishing matches 6 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 6
execute if score @s temp_hub_fishing matches 7 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 7
execute if score @s temp_hub_fishing matches 8 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 8
execute if score @s temp_hub_fishing matches 9 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 9
execute if score @s temp_hub_fishing matches 10 run clear @s minecraft:deepslate[item_name="double_compressed_stone"] 10

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server hub_fishing += @s temp_hub_fishing

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_fishing"},"color":"green"},{"text":" Double Compressed Stone abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_fishing,limit=1,sort=nearest] text set from storage sa:fishing_goal_text text
execute if score server hub_fishing >= server hub_fishing_cost run function sa:goals/fishing_goal/reward
