# ============================================================================
# GOAL SETUP: Dungeon
# Datei: sa:setup/hub/goal_setup/dungeon_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/dungeon_goal"
# HINWEIS: Wird nicht mehr beim Start gespawnt, sondern durch skillrooms_goal/reward
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_dungeon]
kill @e[type=text_display,tag=display_dungeon]
kill @e[type=block_display,tag=block_dungeon]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 22 99 0 minecraft:reinforced_deepslate

# ── Interaction Entity ────────────────────────────────────────────────────
summon minecraft:interaction 22 100 0 {width:1.0f,height:1.0f,Tags:["goal","goal_dungeon"]}

# ── Zombie Head Block Display ─────────────────────────────────────────────
# Zombie-Kopf (block_display) sauber über dem Deepslate zentriert.
# Der block_display wird an die Blockposition (22 100 0) gesetzt.
# Der Zombie-Kopf nimmt im Block-Modell die untere Hälfte ein (8/16 px),
# ist horizontal zentriert (4-12 px). Scale 1 = native Größe.
# rotation "8" = Kopf schaut nach Norden (Richtung Hub-Mitte).
summon minecraft:block_display 22.0 100.0 0.0 {block_state:{Name:"minecraft:zombie_head",Properties:{powered:"false",rotation:"8"}},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1.0f,1.0f,1.0f],translation:[0.0f,0.0f,0.0f]},Tags:["goal","block_dungeon"]}

# ── Text Display (2 Blöcke über dem Deepslate) ────────────────────────────
summon minecraft:text_display 22 101 0 {text:{"text":"0/50"},Tags:["display_dungeon"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:dungeon_goal_text text set value [{"score":{"objective":"hub_dungeon","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_dungeon_cost","name":"server"},"color":"white"}]
