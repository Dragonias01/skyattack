# /function sa:goals/reset
# Setzt ALLE Goals auf ihren initial_cost zurueck (z.B. fuer einen neuen Reset/Season-Start).
# Neuen Goal hinzugefuegt? Hier eine Zeile ergaenzen.

function sa:goals/_lib/reset_goal {goal:"ship_goal"}
function sa:goals/_lib/reset_goal {goal:"skillroom_goal"}
function sa:goals/_lib/reset_goal {goal:"dungeon_goal"}
function sa:goals/_lib/reset_goal {goal:"mining_goal"}
function sa:goals/_lib/reset_goal {goal:"farming_goal"}
function sa:goals/_lib/reset_goal {goal:"fishing_goal"}
function sa:goals/_lib/reset_goal {goal:"combat_goal"}
function sa:goals/_lib/reset_goal {goal:"fishing_pond_goal"}
function sa:goals/_lib/reset_goal {goal:"level_baum_goal"}
function sa:goals/_lib/reset_goal {goal:"schmied_goal"}
function sa:goals/_lib/reset_goal {goal:"techniker_goal"}

function sa:goals/_lib/refresh_all_displays
tellraw @a [{"text":"✔ Alle Goals wurden zurückgesetzt.","color":"green"}]
