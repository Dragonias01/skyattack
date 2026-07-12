$team modify dg_d$(nr)_timer suffix " $(min):$(sec)"
$execute if score server dg$(nr)_state matches 1..4 run data modify entity @e[type=text_display,tag=d$(nr)_display_timer,limit=1] text set value [{"text":"Time: ","color":"gold","italic":false},{"text":" $(min):$(sec)","color":"white","italic":false}]
