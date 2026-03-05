# ============================================================================
# GOAL SETUP: Fishing Pond
# Datei: sa:setup/hub/goal_setup/fishing_pond_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/fishing_pond_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_fishing_pond]
kill @e[type=text_display,tag=display_fishpond]
kill @e[type=item_display,tag=item_fishpond]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 0 99 22 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction 0 100 22 {width:1.0f,height:1.0f,Tags:["goal","goal_fishing_pond"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:item_display 0 100.5 22 {item:{id:experience_bottle},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.7f,0.7f,0.7f],translation:[0f,0f,0f]},Tags:["goal","item_fishpond"],billboard:"vertical"}


# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display 0 101 22 {text:{"text":"0/1000"},Tags:["display_fishpond"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:fishpond_goal_text text set value [{"score":{"objective":"hub_fishpond","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_fishpond_cost","name":"server"},"color":"white"}]
