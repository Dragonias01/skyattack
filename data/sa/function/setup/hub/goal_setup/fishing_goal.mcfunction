# ============================================================================
# GOAL SETUP: Fishing Raum
# Datei: sa:setup/hub/goal_setup/fishing_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/fishing_goal"
# HINWEIS: Wird durch mining_goal/reward gespawnt, nicht beim Start.
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_fishing]
kill @e[type=text_display,tag=display_fishing]
kill @e[type=block_display,tag=block_fishing]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 10 99 -47 minecraft:reinforced_deepslate

# ── Interaction Entity ────────────────────────────────────────────────────
summon minecraft:interaction 10 100 -47 {width:1.0f,height:1.0f,Tags:["goal","goal_fishing"]}

# ── Block Display ─────────────────────────────────────────────────────────
# TODO: block_state → passendes Symbol ersetzen (z.B. fishing_rod item_display)
summon minecraft:block_display 10.0 100.0 -47.0 {block_state:{Name:"minecraft:emerald_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_fishing"]}

# ── Text Display ──────────────────────────────────────────────────────────
summon minecraft:text_display 10 101 -47 {text:{"text":"0/100"},Tags:["display_fishing"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:fishing_goal_text text set value [{"score":{"objective":"hub_fishing","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_fishing_cost","name":"server"},"color":"white"}]
