# ============================================================================
# LEADERBOARD SETUP: Logging
# Datei: sa:setup/hub/leaderboard/logging
# Version: 1.21.11
# Kontext: execute in sa:hub run function sa:setup/hub/leaderboard/logging
#
# ERWEITERUNG: Um eine neue Bestenliste hinzuzufügen, kopiere diese Datei,
#              passe den Tag-Prefix (lb_log → lb_XXX) und die Koordinaten an.
# ============================================================================

# ── Alte Entities entfernen (Re-Setup Sicherheit) ─────────────────────────
kill @e[type=text_display,tag=lb_log]

# ── Scoreboards für dieses Leaderboard ───────────────────────────────────
# Score-Slots (Fake-Player): lb_log_s1 .. lb_log_s10
# Werden in leaderboard/logging/update befüllt
scoreboard objectives add lb_log_score dummy

# ── Hintergrund-Panel (optional, 1 block_display als Tafel) ──────────────
# Rotation 270f = Richtung Osten
# Y-Positionen: Slot 1 (oben) = 104.4, Slot 10 (unten) = 99.0
# Abstand pro Zeile: 0.6 Blöcke

# ── Titel-Display ─────────────────────────────────────────────────────────
summon minecraft:text_display -11 102.0 36 {Tags:["lb_log","lb_log_title"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"🪓 Logging Top 5","color":"gold","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}
# ── Zeile 6 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 101.4 36 {Tags:["lb_log","lb_log_r1"],billboard:"fixed",Rotation:[270f,0f],text:{"text":" - ","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 7 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 100.8 36 {Tags:["lb_log","lb_log_r2"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"-","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 8 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 100.2 36 {Tags:["lb_log","lb_log_r3"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"-","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 9 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 99.6 36 {Tags:["lb_log","lb_log_r4"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"-","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 10 ──────────────────────────────────────────────────────────────
summon minecraft:text_display -11 99.0 36 {Tags:["lb_log","lb_log_r5"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"-","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}



execute unless score lb_slot1_taken lb_log_score matches 0..1 run scoreboard players set lb_slot1_taken lb_log_score 0
execute unless score lb_slot2_taken lb_log_score matches 0..1 run scoreboard players set lb_slot2_taken lb_log_score 0
execute unless score lb_slot3_taken lb_log_score matches 0..1 run scoreboard players set lb_slot3_taken lb_log_score 0
execute unless score lb_slot4_taken lb_log_score matches 0..1 run scoreboard players set lb_slot4_taken lb_log_score 0
execute unless score lb_slot5_taken lb_log_score matches 0..1 run scoreboard players set lb_slot5_taken lb_log_score 0
execute unless score lb_slot6_taken lb_log_score matches 0..1 run scoreboard players set lb_slot6_taken lb_log_score 0
execute unless score lb_slot7_taken lb_log_score matches 0..1 run scoreboard players set lb_slot7_taken lb_log_score 0
execute unless score lb_slot8_taken lb_log_score matches 0..1 run scoreboard players set lb_slot8_taken lb_log_score 0
execute unless score lb_slot9_taken lb_log_score matches 0..1 run scoreboard players set lb_slot9_taken lb_log_score 0
execute unless score lb_slot10_taken lb_log_score matches 0..1 run scoreboard players set lb_slot10_taken lb_log_score 0
