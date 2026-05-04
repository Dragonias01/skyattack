# ============================================================================
# GOAL: Dungeon - Check
# Datei: sa:goals/dungeon_goal/check
# Version: 1.21.11
# ============================================================================
    data modify entity @e[type=text_display,tag=display_dungeon,limit=1,sort=nearest] text set from storage sa:dungeon_goal_text text


# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
    execute store result score @s temp_hub_dungeon run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
    execute if score @s temp_hub_dungeon matches 0 run tellraw @s [{"text":"You have no Compressed Mob Mesh!","color":"red"}]
    execute if score @s temp_hub_dungeon matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
    execute if score @s temp_hub_dungeon matches 11.. run scoreboard players set @s temp_hub_dungeon 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
    scoreboard players operation server hub_dungeon_rem = server hub_dungeon_cost
    scoreboard players operation server hub_dungeon_rem -= server hub_dungeon

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
    execute if score server hub_dungeon_rem matches ..0 run tellraw @s [{"text":"The delivery goal is already fulfilled!","color":"red"}]
    execute if score server hub_dungeon_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
    scoreboard players operation @s temp_hub_dungeon < server hub_dungeon_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
    execute if score @s temp_hub_dungeon matches 1 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 1
    execute if score @s temp_hub_dungeon matches 2 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 2
    execute if score @s temp_hub_dungeon matches 3 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 3
    execute if score @s temp_hub_dungeon matches 4 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 4
    execute if score @s temp_hub_dungeon matches 5 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 5
    execute if score @s temp_hub_dungeon matches 6 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 6
    execute if score @s temp_hub_dungeon matches 7 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 7
    execute if score @s temp_hub_dungeon matches 8 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 8
    execute if score @s temp_hub_dungeon matches 9 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 9
    execute if score @s temp_hub_dungeon matches 10 run clear @s minecraft:zombie_head[item_name="compressed_mob_mesh"] 10

# ── Schritt 8: Score addieren ────────────────────────────────────────────
    scoreboard players operation server hub_dungeon += @s temp_hub_dungeon

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
    tellraw @s [{"text":"You have given ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_dungeon"},"color":"green"},{"text":" Compressed Mob Mesh!","color":"green"}]
    playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
    data modify entity @e[type=text_display,tag=display_dungeon,limit=1,sort=nearest] text set from storage sa:dungeon_goal_text text
    execute if score server hub_dungeon >= server hub_dungeon_cost run function sa:goals/dungeon_goal/reward
