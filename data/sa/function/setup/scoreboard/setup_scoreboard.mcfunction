scoreboard objectives remove skyattack
scoreboard objectives add skyattack dummy "- §aSkyAttack -"
scoreboard players set -------- skyattack 2
scoreboard players set Event:/ skyattack 1
scoreboard players set ________ skyattack 0


# ── Teams für Farben ──────────────────────────────────────────────────────
team add ev_gold
team modify ev_gold color gold
team modify ev_gold prefix ""

team add ev_time
team modify ev_time color aqua
team modify ev_time prefix "⏱ "

team add ev_green
team modify ev_green color green
team modify ev_green prefix "✔ Event: "

team add ev_gray
team modify ev_gray color gray
team modify ev_gray prefix ""

team add ev_yellow
team modify ev_yellow color yellow
team modify ev_yellow prefix ""




scoreboard objectives setdisplay sidebar skyattack