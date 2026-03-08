# ============================================================================
# GOAL SETUP: Combat Raum
# Datei: sa:setup/hub/goal_setup/combatgoal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/combatgoal"
# HINWEIS: Wird durch farming_goal/reward gespawnt, nicht beim Start.
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_combat]
kill @e[type=text_display,tag=display_combat]
kill @e[type=block_display,tag=block_combat]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock -10 99 -35 minecraft:reinforced_deepslate

# ── Interaction Entity ────────────────────────────────────────────────────
summon minecraft:interaction -10 100 -35 {width:1.0f,height:1.0f,Tags:["goal","goal_combat"]}

# ── Block Display ─────────────────────────────────────────────────────────
# TODO: block_state → passendes Symbol ersetzen
summon minecraft:block_display -10.0 100.0 -35.0 {block_state:{Name:"minecraft:emerald_block"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[0.4f,0.4f,0.4f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_combat"]}

# ── Text Display ──────────────────────────────────────────────────────────
summon minecraft:text_display -10 101 -35 {text:{"text":"0/100"},Tags:["display_combat"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:combat_goal_text text set value [{"score":{"objective":"hub_combat","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_combat_cost","name":"server"},"color":"white"}]
