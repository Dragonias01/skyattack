# ============================================================================
# GOAL SETUP: Skill Rooms
# Datei: sa:setup/hub/goal_setup/skillrooms_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/skillrooms_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_skillrooms]
kill @e[type=text_display,tag=display_skillrooms]
kill @e[type=block_display,tag=block_skillrooms]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 0 99 -22 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction 0 100 -22 {width:1.0f,height:1.0f,Tags:["goal","goal_skillrooms"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:block_display 0.0 100.0 -22.0 {block_state:{Name:"minecraft:polished_basalt"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_skillrooms"]}

# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display 0 101 -22 {text:{"text":"0/200"},Tags:["display_skillrooms"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:skillrooms_goal_text text set value [{"score":{"objective":"hub_skillrooms","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_skillrooms_cost","name":"server"},"color":"white"}]
