# ============================================================================
# GOAL SETUP: Combat Raum
# Datei: sa:setup/hub/goal_setup/combatgoal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/combatgoal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_combat]
kill @e[type=text_display,tag=display_combat]
kill @e[type=block_display,tag=block_combat]

# PLATZHALTER KOORDINATEN - Anpassen!
# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock -20 99 15 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction -20 100 15 {width:1.0f,height:1.0f,Tags:["goal","goal_combat"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
summon minecraft:block_display -20.0 100.0 15.0 {block_state:{Name:"minecraft:emerald_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_combat"]}

# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display -20 101 15 {text:{"text":"0/100"},Tags:["display_combat"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:combat_goal_text text set value [{"score":{"objective":"hub_combat","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_combat_cost","name":"server"},"color":"white"}]
