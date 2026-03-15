scoreboard players reset -------- skyattack 
scoreboard players reset Event:/ skyattack 
scoreboard players reset ________ skyattack 

scoreboard players reset TickSpeed_x2 skyattack 
scoreboard players reset TickSpeed_x4 skyattack 
scoreboard players reset Combat_XP_+ skyattack 
scoreboard players reset Logging_XP_+ skyattack 
scoreboard players reset Mining_XP_+ skyattack 
scoreboard players reset Farming_XP_+ skyattack 
scoreboard players reset Fishing_XP_+ skyattack 
scoreboard players reset Verbleibend skyattack 

scoreboard players reset ───────────── skyattack 
scoreboard players reset ------------------- skyattack 



# ── Pseudo-Spieler den Teams zuweisen ────────────────────────────────────
team join ev_gold _
team join ev_time Verbleibend
team join ev_green TickSpeed_x2
team join ev_green TickSpeed_x4
team join ev_green Combat_XP_+
team join ev_green Logging_XP_+
team join ev_green Mining_XP_+
team join ev_green Farming_XP_+
team join ev_green Fishing_XP_+
team join ev_gray ─────────────
team join ev_gray -------------------
# Trennlinie
scoreboard players set ───────────── skyattack 19
scoreboard players set ------------------- skyattack 0

# Timer-Zeile (Countdown in Sekunden, wird extern gesetzt)
#scoreboard players set Verbleibend skyattack 1

# Leerzeile

# ── Stündliche Events ────────────────────────────────────────────────────
# Wert 1 = aktiv (sichtbar) | zum Deaktivieren: Zeile auskommentieren / reset
execute if score server event_num matches 1 run scoreboard players set TickSpeed_x2 skyattack 2
execute if score server event_num matches 2 run scoreboard players set TickSpeed_x4 skyattack 2
execute if score server event_num matches 3 run scoreboard players set Combat_XP_+ skyattack 2
execute if score server event_num matches 4 run scoreboard players set Logging_XP_+ skyattack 2 
execute if score server event_num matches 5 run scoreboard players set Mining_XP_+ skyattack 2
execute if score server event_num matches 6 run scoreboard players set Farming_XP_+ skyattack 2
execute if score server event_num matches 7 run scoreboard players set Fishing_XP_+ skyattack 2


team modify ev_green suffix " (Time: 00:00)"
function sa:setup/scoreboard/calculate/time