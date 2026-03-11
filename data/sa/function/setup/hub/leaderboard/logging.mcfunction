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
summon minecraft:text_display -11 105.2 36 {Tags:["lb_log","lb_log_title"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"🪓 Logging Top 10","color":"gold","bold":true},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 1 (#1 Platz) ────────────────────────────────────────────────────
summon minecraft:text_display -11 104.4 36 {Tags:["lb_log","lb_log_r1"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#1  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 2 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 103.8 36 {Tags:["lb_log","lb_log_r2"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#2  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 3 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 103.2 36 {Tags:["lb_log","lb_log_r3"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#3  ---  0","color":"white"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 4 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 102.6 36 {Tags:["lb_log","lb_log_r4"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#4  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 5 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 102.0 36 {Tags:["lb_log","lb_log_r5"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#5  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 6 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 101.4 36 {Tags:["lb_log","lb_log_r6"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#6  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 7 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 100.8 36 {Tags:["lb_log","lb_log_r7"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#7  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 8 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 100.2 36 {Tags:["lb_log","lb_log_r8"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#8  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 9 ───────────────────────────────────────────────────────────────
summon minecraft:text_display -11 99.6 36 {Tags:["lb_log","lb_log_r9"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#9  ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}

# ── Zeile 10 ──────────────────────────────────────────────────────────────
summon minecraft:text_display -11 99.0 36 {Tags:["lb_log","lb_log_r10"],billboard:"fixed",Rotation:[270f,0f],text:{"text":"#10 ---  0","color":"gray"},background:0,shadow:true,text_opacity:255,line_width:200}
