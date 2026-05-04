# ============================================================================
# GOAL: Techniker - Check
# Datei: sa:goals/techniker_goal/check
# Version: 1.21.11
# ============================================================================
    data modify entity @e[type=text_display,tag=display_techniker,limit=1,sort=nearest] text set from storage sa:techniker_goal_text text

# ── Dependency: Skill Rooms ─────────────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschrittspruefung ersetzen
    execute unless score server hub_skillrooms_done matches 1 run tellraw @s [{"text":"Dependency not met! (Skill Rooms)","color":"red"}]
    execute unless score server hub_skillrooms_done matches 1 run return 0

# ── Dependency: Dungeon ─────────────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschrittspruefung ersetzen
    execute unless score server hub_dungeon_done matches 1 run tellraw @s [{"text":"Dependency not met! (Dungeon)","color":"red"}]
    execute unless score server hub_dungeon_done matches 1 run return 0

# ── Schritt 1: Items zaehlen (entfernt nichts) ───────────────────────────
# PLATZHALTER ITEM: minecraft:paper[item_name="techniker_ressource"] - Ersetzen!
# TODO: Ressource noch nicht definiert!
    execute store result score @s temp_hub_techniker run clear @s minecraft:paper[item_name="techniker_ressource"] 0

# ── Schritt 2: Keine Items → Fehlermeldung & Abbruch ─────────────────────
    execute if score @s temp_hub_techniker matches 0 run tellraw @s [{"text":"You have no Techniker-Ressource!","color":"red"}]
    execute if score @s temp_hub_techniker matches 0 run return 0

# ── Schritt 3: Auf maximal 10 begrenzen ──────────────────────────────────
    execute if score @s temp_hub_techniker matches 11.. run scoreboard players set @s temp_hub_techniker 10

# ── Schritt 4: Verbleibenden Platz berechnen ─────────────────────────────
    scoreboard players operation server hub_techniker_rem = server hub_techniker_cost
    scoreboard players operation server hub_techniker_rem -= server hub_techniker

# ── Schritt 5: Goal bereits voll → Abbruch ───────────────────────────────
    execute if score server hub_techniker_rem matches ..0 run tellraw @s [{"text":"The delivery goal is already completed!","color":"red"}]
    execute if score server hub_techniker_rem matches ..0 run return 0

# ── Schritt 6: Overflow-Schutz ────────────────────────────────────────────
    scoreboard players operation @s temp_hub_techniker < server hub_techniker_rem

# ── Schritt 7: Items entfernen ────────────────────────────────────────────
    execute if score @s temp_hub_techniker matches 1 run clear @s minecraft:paper[item_name="techniker_ressource"] 1
    execute if score @s temp_hub_techniker matches 2 run clear @s minecraft:paper[item_name="techniker_ressource"] 2
    execute if score @s temp_hub_techniker matches 3 run clear @s minecraft:paper[item_name="techniker_ressource"] 3
    execute if score @s temp_hub_techniker matches 4 run clear @s minecraft:paper[item_name="techniker_ressource"] 4
    execute if score @s temp_hub_techniker matches 5 run clear @s minecraft:paper[item_name="techniker_ressource"] 5
    execute if score @s temp_hub_techniker matches 6 run clear @s minecraft:paper[item_name="techniker_ressource"] 6
    execute if score @s temp_hub_techniker matches 7 run clear @s minecraft:paper[item_name="techniker_ressource"] 7
    execute if score @s temp_hub_techniker matches 8 run clear @s minecraft:paper[item_name="techniker_ressource"] 8
    execute if score @s temp_hub_techniker matches 9 run clear @s minecraft:paper[item_name="techniker_ressource"] 9
    execute if score @s temp_hub_techniker matches 10 run clear @s minecraft:paper[item_name="techniker_ressource"] 10

# ── Schritt 8: Score addieren ────────────────────────────────────────────
    scoreboard players operation server hub_techniker += @s temp_hub_techniker

# ── Schritt 9: Bestaetigung ───────────────────────────────────────────────
    tellraw @s [{"text":"You have given ","color":"green"},{"score":{"name":"@s","objective":"temp_hub_techniker"},"color":"green"},{"text":" Techniker-Ressource!","color":"green"}]
    playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

# ── Schritt 10: Text Display & Zielcheck ─────────────────────────────────
    data modify entity @e[type=text_display,tag=display_techniker,limit=1,sort=nearest] text set from storage sa:techniker_goal_text text
    execute if score server hub_techniker >= server hub_techniker_cost run function sa:goals/techniker_goal/reward
