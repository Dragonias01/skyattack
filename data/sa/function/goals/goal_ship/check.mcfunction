# ── Schritt 1: Items zählen (entfernt nichts) ──────────────────────────────
execute store result score @s temp_goal_ship_check run clear @s minecraft:basalt[item_name="compressed_log"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ──────────────────────
execute as @s if score @s temp_goal_ship_check matches 0 run tellraw @s [{"text":"✗ Du hast keine Compressed Log!","color":"red"}]
execute as @s if score @s temp_goal_ship_check matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ───────────────────────────────────
execute if score @s temp_goal_ship_check matches 11.. run scoreboard players set @s temp_goal_ship_check 10

# ── Schritt 4: Verbleibenden Platz berechnen ──────────────────────────────
scoreboard players operation server goal_ship_remaining = server goal1_cost
scoreboard players operation server goal_ship_remaining -= server goal_ship

# ── Schritt 5: Goal bereits voll → Abbruch ────────────────────────────────
execute if score server goal_ship_remaining matches ..0 run tellraw @s [{"text":"✗ Das Abgabe-Ziel ist bereits erfüllt!","color":"red"}]
execute if score server goal_ship_remaining matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
# Nimmt das MINIMUM aus: was der Spieler hat vs. was noch fehlt
scoreboard players operation @s temp_goal_ship_check < server goal_ship_remaining

# ── Schritt 7: Items entfernen (exakt so viele wie temp_goal_ship_check) ──
execute if score @s temp_goal_ship_check matches 1 run clear @s minecraft:basalt[item_name="compressed_log"] 1
execute if score @s temp_goal_ship_check matches 2 run clear @s minecraft:basalt[item_name="compressed_log"] 2
execute if score @s temp_goal_ship_check matches 3 run clear @s minecraft:basalt[item_name="compressed_log"] 3
execute if score @s temp_goal_ship_check matches 4 run clear @s minecraft:basalt[item_name="compressed_log"] 4
execute if score @s temp_goal_ship_check matches 5 run clear @s minecraft:basalt[item_name="compressed_log"] 5
execute if score @s temp_goal_ship_check matches 6 run clear @s minecraft:basalt[item_name="compressed_log"] 6
execute if score @s temp_goal_ship_check matches 7 run clear @s minecraft:basalt[item_name="compressed_log"] 7
execute if score @s temp_goal_ship_check matches 8 run clear @s minecraft:basalt[item_name="compressed_log"] 8
execute if score @s temp_goal_ship_check matches 9 run clear @s minecraft:basalt[item_name="compressed_log"] 9
execute if score @s temp_goal_ship_check matches 10 run clear @s minecraft:basalt[item_name="compressed_log"] 10

# ── Schritt 8: Score addieren ─────────────────────────────────────────────
scoreboard players operation server goal_ship += @s temp_goal_ship_check

# ── Schritt 9: Chat-Bestätigung mit tatsächlicher Menge ──────────────────
tellraw @s [{"text":"✔ Du hast ","color":"green"},{"score":{"name":"@s","objective":"temp_goal_ship_check"},"color":"green"},{"text":" Compressed Log abgegeben!","color":"green"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1


# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
data modify entity @e[type=text_display,tag=display_goal_ship,limit=1,sort=nearest] text set from storage sa:goal_ship_text text
execute if score server goal_ship >= server goal1_cost run function sa:goals/goal_ship/reward