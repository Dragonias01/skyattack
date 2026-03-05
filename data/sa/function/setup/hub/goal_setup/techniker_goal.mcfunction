# ============================================================================
# GOAL SETUP: Techniker
# Datei: sa:setup/hub/goal_setup/techniker_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/techniker_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_techniker]
kill @e[type=text_display,tag=display_techniker]
kill @e[type=block_display,tag=block_techniker]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 3 99 -11 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction 3 100 -11 {width:1.0f,height:1.0f,Tags:["goal","goal_techniker"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:block_display 3.0 100.0 -11.0 {block_state:{Name:"minecraft:emerald_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_techniker"]}

# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display 3 101 -11 {text:{"text":"0/100"},Tags:["display_techniker"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:techniker_goal_text text set value [{"score":{"objective":"hub_techniker","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_techniker_cost","name":"server"},"color":"white"}]
