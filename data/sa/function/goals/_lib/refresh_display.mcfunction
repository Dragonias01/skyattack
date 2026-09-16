$execute store result score p goal_math run data get storage sa:config goals.$(goal).goal_progress
$execute store result score t goal_math run data get storage sa:config goals.$(goal).current_cost

$execute if entity @e[type=text_display,tag=$(display_tag),limit=1] run data modify entity @e[type=text_display,tag=$(display_tag),limit=1,sort=nearest] text set value [{"score":{"name":"p","objective":"goal_math"},color:"green"},{"text":"/",color:"white"},{"score":{"name":"t","objective":"goal_math"},color:"white"}]
