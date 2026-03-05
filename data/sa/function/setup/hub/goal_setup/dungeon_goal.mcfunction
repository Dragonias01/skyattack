# ============================================================================
# GOAL SETUP: Dungeon
# Datei: sa:setup/hub/goal_setup/dungeon_goal  |  Version: 1.21.11
# Kontext: Wird aufgerufen mit "execute in sa:hub run function sa:setup/hub/goal_setup/dungeon_goal"
# ============================================================================

# ── Bestehende Entities entfernen (Re-Setup Sicherheit) ───────────────────
kill @e[type=interaction,tag=goal_dungeon]
kill @e[type=text_display,tag=display_dungeon]
kill @e[type=block_display,tag=block_dungeon]

# ── Deepslate setzen ──────────────────────────────────────────────────────
setblock 13 99 5 minecraft:reinforced_deepslate

# ── Interaction Entity (1x1x1 auf dem Deepslate-Block) ────────────────────
summon minecraft:interaction 13 100 5 {width:1.0f,height:1.0f,Tags:["goal","goal_dungeon"]}

# ── Block Display: zentriert, halbe Groesse (scale 0.4) ───────────────────
# Position = Blockmitte (x, y+1, z)
# translation [0.3, 0.3, 0.3] zentriert einen 0.4-skalierten Block im 1x1-Feld
# TODO: block_state → passendes Symbol-Item ersetzen
#summon minecraft:block_display 12.7 100.0 4.7 {block_state:{Name:"minecraft:zombie_head"},transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[1f,1f,1f],translation:[0.3f,0.3f,0.3f]},Tags:["goal","block_dungeon"]}
summon minecraft:block_display 14.3125 100 6.3125 {block_state: {Name: "minecraft:zombie_head", Properties: {powered: "false", rotation: "0"}}, transformation: {left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.f, 1.0f, 1.f], translation: [-0.3f, 0.3f, -0.3f]},Tags:["goal","block_dungeon"]}


# ── Text Display (zentriert, 2 Blöcke über dem Deepslate) ─────────────────
summon minecraft:text_display 13 101 5 {text:{"text":"0/50"},Tags:["display_dungeon"],billboard:"center"}

# ── Storage Text setzen ───────────────────────────────────────────────────
data modify storage sa:dungeon_goal_text text set value [{"score":{"objective":"hub_dungeon","name":"server"},"color":"green"},{"text":"/","color":"white"},{"score":{"objective":"hub_dungeon_cost","name":"server"},"color":"white"}]
