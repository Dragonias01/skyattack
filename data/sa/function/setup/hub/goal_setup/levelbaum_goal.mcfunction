# ============================================================================
# GOAL SETUP: Levelbaum
# Datei: sa:setup/hub/goal_setup/levelbaum_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/levelbaum_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_levelbaum]
kill @e[type=text_display,tag=display_levelbaum]
kill @e[type=item_display,tag=item_levelbaum]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 0 99 10 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction 0 100 10 {width:1.0f,height:1.0f,Tags:["goal","goal_levelbaum"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:item_display 0 100.5 10 {item:{id:experience_bottle},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f]},Tags:["goal","item_levelbaum"],billboard:"vertical"}

# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display 0 101 10 {text:{"text":"0/1000"},Tags:["display_levelbaum"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:levelbaum_goal_text text set value [{"score":{"objective":"hub_levelbaum","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_levelbaum_cost","name":"server"},"color":"white"}]
