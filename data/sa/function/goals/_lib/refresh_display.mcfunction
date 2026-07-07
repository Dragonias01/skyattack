# Aufruf: function sa:goals/_lib/refresh_display {goal:"ship_goal",display_tag:"display_goal_ship"}
# WICHTIG: beide Felder muessen im Aufruf mitgegeben werden - ein Macro kennt
# nur die Werte, die es beim Aufruf selbst bekommen hat.
# Setzt das Text-Display auf progress/current_cost aus der Config - z.B. noetig
# direkt nach einem Join, wenn sich current_cost erhoeht hat, damit die Anzeige
# auch ohne neue Abgabe sofort stimmt.

$execute store result score p goal_math run data get storage sa:config config.goals.$(goal).goal_progress
$execute store result score t goal_math run data get storage sa:config config.goals.$(goal).current_cost

$execute if entity @e[type=text_display,tag=$(display_tag),limit=1] run data modify entity @e[type=text_display,tag=$(display_tag),limit=1,sort=nearest] text set value [{"score":{"name":"p","objective":"goal_math"},color:"green"},{"text":"/",color:"white"},{"score":{"name":"t","objective":"goal_math"},color:"white"}]
