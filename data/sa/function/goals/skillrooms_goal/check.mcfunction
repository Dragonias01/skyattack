# ============================================================================
# GOAL: Skill Rooms - Check
# Datei: sa:goals/skillrooms_goal/check
# Version: 1.21.11
# ============================================================================


# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
execute store result score @s temp_hub_skillrooms run clear @s minecraft:basalt[item_name="compressed_log"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
execute if score @s temp_hub_skillrooms matches 0 run tellraw @s [{"text":"Du hast keine Compressed Log!","color":"red"}]
execute if score @s temp_hub_skillrooms matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
execute if score @s temp_hub_skillrooms matches 11.. run scoreboard players set @s temp_hub_skillrooms 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
scoreboard players operation server hub_skillrooms_rem = server hub_skillrooms_cost
scoreboard players operation server hub_skillrooms_rem -= server hub_skillrooms

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
execute if score server hub_skillrooms_rem matches ..0 run tellraw @s [{"text":"Das Abgabe-Ziel ist bereits erfuellt!","color":"red"}]
execute if score server hub_skillrooms_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
scoreboard players operation @s temp_hub_skillrooms < server hub_skillrooms_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
execute if score @s temp_hub_skillrooms matches 1 run clear @s minecraft:basalt[item_name="compressed_log"] 1
execute if score @s temp_hub_skillrooms matches 2 run clear @s minecraft:basalt[item_name="compressed_log"] 2
execute if score @s temp_hub_skillrooms matches 3 run clear @s minecraft:basalt[item_name="compressed_log"] 3
execute if score @s temp_hub_skillrooms matches 4 run clear @s minecraft:basalt[item_name="compressed_log"] 4
execute if score @s temp_hub_skillrooms matches 5 run clear @s minecraft:basalt[item_name="compressed_log"] 5
execute if score @s temp_hub_skillrooms matches 6 run clear @s minecraft:basalt[item_name="compressed_log"] 6
execute if score @s temp_hub_skillrooms matches 7 run clear @s minecraft:basalt[item_name="compressed_log"] 7
execute if score @s temp_hub_skillrooms matches 8 run clear @s minecraft:basalt[item_name="compressed_log"] 8
execute if score @s temp_hub_skillrooms matches 9 run clear @s minecraft:basalt[item_name="compressed_log"] 9
execute if score @s temp_hub_skillrooms matches 10 run clear @s minecraft:basalt[item_name="compressed_log"] 10

# ── Schritt 8: Score addieren ────────────────────────────────────────────
scoreboard players operation server hub_skillrooms += @s temp_hub_skillrooms

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
tellraw @s [{"text":"Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_skillrooms"},"color":"green"},{"text":" Compressed Log abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_skillrooms,limit=1,sort=nearest] text set from storage sa:skillrooms_goal_text text
execute if score server hub_skillrooms >= server hub_skillrooms_cost run function sa:goals/skillrooms_goal/reward
