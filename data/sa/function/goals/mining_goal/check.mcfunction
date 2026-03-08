# ============================================================================
# GOAL: Mining Raum - Check
# Datei: sa:goals/mining_goal/check
# Version: 1.21.11
# ============================================================================
data modify entity @e[type=text_display,tag=display_mining,limit=1,sort=nearest] text set from storage sa:mining_goal_text text

# ── Dependency: Skill Rooms ───────────────────────────────────────────────
execute unless score server hub_skillrooms_done matches 1 run tellraw @s [{"text":"Voraussetzung nicht erfuellt! (Skill Rooms)","color":"red"}]
execute unless score server hub_skillrooms_done matches 1 run return 0
say hi
# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
# item_name muss exakt dem Format des Wood Merchant entsprechen: [{text:...,italic:false}]
execute store result score @s temp_hub_mining run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_mining matches 0 run tellraw @s [{"text":"Du hast keine Double Compressed Log!","color":"red"}]
execute if score @s temp_hub_mining matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_mining matches 11.. run scoreboard players set @s temp_hub_mining 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_mining_rem = server hub_mining_cost
scoreboard players operation server hub_mining_rem -= server hub_mining

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_mining_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_mining_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_mining < server hub_mining_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_mining matches 1 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 1
execute if score @s temp_hub_mining matches 2 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 2
execute if score @s temp_hub_mining matches 3 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 3
execute if score @s temp_hub_mining matches 4 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 4
execute if score @s temp_hub_mining matches 5 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 5
execute if score @s temp_hub_mining matches 6 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 6
execute if score @s temp_hub_mining matches 7 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 7
execute if score @s temp_hub_mining matches 8 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 8
execute if score @s temp_hub_mining matches 9 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 9
execute if score @s temp_hub_mining matches 10 run clear @s minecraft:oak_wood[item_name=[{"text":"double_compressed_log","italic":false}]] 10

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server hub_mining += @s temp_hub_mining

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_mining"},"color":"green"},{"text":" Double Compressed Log abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_mining,limit=1,sort=nearest] text set from storage sa:mining_goal_text text
execute if score server hub_mining >= server hub_mining_cost run function sa:goals/mining_goal/reward
