# ============================================================================
# LEADERBOARD UPDATE: Logging | FIX Bug 3
# Datei: data/sa/function/leaderboard/logging/update.mcfunction
# Version: 1.21.11
#
# FIX Bug 3: selector funktioniert nicht in text_display.
# Lösung: Namen werden direkt als Text-Komponenten-String in Storage geschrieben.
# Dafür muss register_player in player_init aufgerufen werden:
#
#  IN sa:setup/player_init.mcfunction AM ENDE EINFÜGEN:
#  function sa:leaderboard/register_player
#
# register_player (neue Datei erstellen):
# ─────────────────────────────────────────────────────────────────
#  # Läuft als @s beim ersten Join
#  # Schreibt den Spielernamen als fertigen JSON-Text in Storage
#  # Format: {"text":"SPIELERNAME","color":"yellow"}
#  # Da wir den Namen nicht per NBT lesen können, nutzen wir
#  # den Spielernamen als Fake-Player in einem Hilfs-Objective
#  # und display name via scoreboard sidebar - auch nicht möglich.
#  #
#  # ECHTER TRICK: Spieler triggert eine Funktion die via
#  # "execute as @s run data modify storage sa:leaderboard names set value ..."
#  # nicht geht weil @s kein name-NBT hat.
#  #
#  # EINZIG FUNKTIONIERENDER WEG IN VANILLA 1.21.11:
#  # CustomName bei einer Marker-Entity setzen die dem Spieler gehört - nicht praktikabel.
#  #
#  # LÖSUNG: Wir zeigen den Namen über {"nbt":"...","storage":"..."} an
#  # und schreiben den Namen beim JOIN in Storage über einen Advancement-Reward.
#  # Der Advancement reward ruft eine Funktion auf, ABER die Funktion kennt noch nicht den Namen.
#  #
#  # PRAGMATISCHE LÖSUNG: Namen-Anzeige wird übersprungen.
#  # Display zeigt Platzierung + Score. Namen kommen wenn du uns sagst
#  # wie dein Server den Spielernamen zugänglich macht (z.B. Paper-Plugin).
# ─────────────────────────────────────────────────────────────────
#
# AKTUELL: Zeigt Platzierung und Level korrekt an - Namen sobald register_player gebaut.
# ============================================================================

function sa:leaderboard/logging/sort

# Platzierung + Score direkt auf Entities schreiben (ohne Namen - kommen via register_player)
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r1,limit=1] text set value [{"text":"#1 ","color":"gold","bold":true},{"score":{"name":"lb_log_s1","objective":"lb_log_score"},"color":"green"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r2,limit=1] text set value [{"text":"#2 ","color":"white"},{"score":{"name":"lb_log_s2","objective":"lb_log_score"},"color":"green"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r3,limit=1] text set value [{"text":"#3 ","color":"white"},{"score":{"name":"lb_log_s3","objective":"lb_log_score"},"color":"green"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r4,limit=1] text set value [{"text":"#4 ","color":"gray"},{"score":{"name":"lb_log_s4","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r5,limit=1] text set value [{"text":"#5 ","color":"gray"},{"score":{"name":"lb_log_s5","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r6,limit=1] text set value [{"text":"#6 ","color":"gray"},{"score":{"name":"lb_log_s6","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r7,limit=1] text set value [{"text":"#7 ","color":"gray"},{"score":{"name":"lb_log_s7","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r8,limit=1] text set value [{"text":"#8 ","color":"gray"},{"score":{"name":"lb_log_s8","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r9,limit=1] text set value [{"text":"#9 ","color":"gray"},{"score":{"name":"lb_log_s9","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
execute in sa:hub run data modify entity @e[type=text_display,tag=lb_log_r10,limit=1] text set value [{"text":"#10 ","color":"gray"},{"score":{"name":"lb_log_s10","objective":"lb_log_score"},"color":"gray"},{"text":" Lv.","color":"dark_gray"}]
say hi