# ============================================================================
# GOAL: Farming Raum - Check
# Datei: sa:goals/farming_goal/check
# Version: 1.21.11
# ============================================================================

# ── Dependency: Mining Raum ─────────────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschrittspruefung ersetzen
execute unless score server hub_mining_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Mining Raum)","color":"red"}]
execute unless score server hub_mining_done matches 1 run return 0

# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
# PLATZHALTER ITEM: minecraft:paper[item_name="double_compressed_stone"] - Ersetzen!
execute store result score @s temp_hub_farming run clear @s minecraft:paper[item_name="double_compressed_stone"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_farming matches 0 run tellraw @s [{"text":"Du hast keine Double Compressed Stone!","color":"red"}]
execute if score @s temp_hub_farming matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_farming matches 11.. run scoreboard players set @s temp_hub_farming 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_farming_rem = server hub_farming_cost
scoreboard players operation server hub_farming_rem -= server hub_farming

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_farming_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_farming_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_farming < server hub_farming_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_farming matches 1 run clear @s minecraft:paper[item_name="double_compressed_stone"] 1
execute if score @s temp_hub_farming matches 2 run clear @s minecraft:paper[item_name="double_compressed_stone"] 2
execute if score @s temp_hub_farming matches 3 run clear @s minecraft:paper[item_name="double_compressed_stone"] 3
execute if score @s temp_hub_farming matches 4 run clear @s minecraft:paper[item_name="double_compressed_stone"] 4
execute if score @s temp_hub_farming matches 5 run clear @s minecraft:paper[item_name="double_compressed_stone"] 5
execute if score @s temp_hub_farming matches 6 run clear @s minecraft:paper[item_name="double_compressed_stone"] 6
execute if score @s temp_hub_farming matches 7 run clear @s minecraft:paper[item_name="double_compressed_stone"] 7
execute if score @s temp_hub_farming matches 8 run clear @s minecraft:paper[item_name="double_compressed_stone"] 8
execute if score @s temp_hub_farming matches 9 run clear @s minecraft:paper[item_name="double_compressed_stone"] 9
execute if score @s temp_hub_farming matches 10 run clear @s minecraft:paper[item_name="double_compressed_stone"] 10

# ── Schritt 8: Score addieren ────────────────────────────────────────────
scoreboard players operation server hub_farming += @s temp_hub_farming

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_farming"},"color":"green"},{"text":" Double Compressed Stone abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_farming,limit=1,sort=nearest] text set from storage sa:farming_goal_text text
execute if score server hub_farming >= server hub_farming_cost run function sa:goals/farming_goal/reward
