# ============================================================================
# GOAL SETUP: Mining Raum
# Datei: sa:setup/hub/goal_setup/mining_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/mining_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_mining]
kill @e[type=text_display,tag=display_mining]
kill @e[type=block_display,tag=block_mining]

# PLATZHALTER KOORDINATEN - Anpassen!
# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock -20 99 0 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction -20 100 0 {width:1.0f,height:1.0f,Tags:["goal","goal_mining"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:block_display -20.0 100.0 0.0 {block_state:{Name:"minecraft:cobbled_deepslate"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_mining"]}

# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display -20 101 0 {text:{"text":"0/100"},Tags:["display_mining"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:mining_goal_text text set value [{"score":{"objective":"hub_mining","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_mining_cost","name":"server"},"color":"white"}]
