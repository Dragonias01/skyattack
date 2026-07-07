# Wird 1x pro Spieler-Join aus setup/player_init.mcfunction aufgerufen.
# Ersetzt die alten Zeilen wie:
#   scoreboard players add server hub_dungeon_cost 50
# Neuen Goal hinzufuegen? -> hier einfach eine Zeile ergaenzen.

function sa:goals/_lib/add_player_cost {goal:"ship_goal"}
function sa:goals/_lib/add_player_cost {goal:"skillroom_goal"}
function sa:goals/_lib/add_player_cost {goal:"dungeon_goal"}
function sa:goals/_lib/add_player_cost {goal:"mining_goal"}
function sa:goals/_lib/add_player_cost {goal:"farming_goal"}
function sa:goals/_lib/add_player_cost {goal:"fishing_goal"}
function sa:goals/_lib/add_player_cost {goal:"combat_goal"}
function sa:goals/_lib/add_player_cost {goal:"fishing_pond_goal"}
function sa:goals/_lib/add_player_cost {goal:"level_baum_goal"}
function sa:goals/_lib/add_player_cost {goal:"schmied_goal"}
function sa:goals/_lib/add_player_cost {goal:"techniker_goal"}

function sa:goals/_lib/refresh_all_displays
