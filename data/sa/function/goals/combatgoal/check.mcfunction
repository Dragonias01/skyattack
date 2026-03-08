# ============================================================================
# GOAL: Combat Raum - Check
# Datei: sa:goals/combatgoal/check
# Version: 1.21.11
# Item:   minecraft:paper[item_name="double_compressed_crop"]
#         → wird vom Farming Merchant verkauft  (PLATZHALTER – Item anpassen)
# ============================================================================
data modify entity @e[type=text_display,tag=display_combat,limit=1,sort=nearest] text set from storage sa:combat_goal_text text

# ── Dependency: Farming Raum ──────────────────────────────────────────────
execute unless score server hub_farming_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Farming Raum)","color":"red"}]
execute unless score server hub_farming_done matches 1 run return 0

# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
# PLATZHALTER ITEM: minecraft:paper[item_name="double_compressed_crop"] - Ersetzen!
execute store result score @s temp_hub_combat run clear @s minecraft:paper[item_name="double_compressed_crop"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_combat matches 0 run tellraw @s [{"text":"Du hast keine Double Compressed Crop!","color":"red"}]
execute if score @s temp_hub_combat matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_combat matches 11.. run scoreboard players set @s temp_hub_combat 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_combat_rem = server hub_combat_cost
scoreboard players operation server hub_combat_rem -= server hub_combat

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_combat_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_combat_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_combat < server hub_combat_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_combat matches 1 run clear @s minecraft:paper[item_name="double_compressed_crop"] 1
execute if score @s temp_hub_combat matches 2 run clear @s minecraft:paper[item_name="double_compressed_crop"] 2
execute if score @s temp_hub_combat matches 3 run clear @s minecraft:paper[item_name="double_compressed_crop"] 3
execute if score @s temp_hub_combat matches 4 run clear @s minecraft:paper[item_name="double_compressed_crop"] 4
execute if score @s temp_hub_combat matches 5 run clear @s minecraft:paper[item_name="double_compressed_crop"] 5
execute if score @s temp_hub_combat matches 6 run clear @s minecraft:paper[item_name="double_compressed_crop"] 6
execute if score @s temp_hub_combat matches 7 run clear @s minecraft:paper[item_name="double_compressed_crop"] 7
execute if score @s temp_hub_combat matches 8 run clear @s minecraft:paper[item_name="double_compressed_crop"] 8
execute if score @s temp_hub_combat matches 9 run clear @s minecraft:paper[item_name="double_compressed_crop"] 9
execute if score @s temp_hub_combat matches 10 run clear @s minecraft:paper[item_name="double_compressed_crop"] 10

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server hub_combat += @s temp_hub_combat

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_combat"},"color":"green"},{"text":" Double Compressed Crop abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_combat,limit=1,sort=nearest] text set from storage sa:combat_goal_text text
execute if score server hub_combat >= server hub_combat_cost run function sa:goals/combatgoal/reward
