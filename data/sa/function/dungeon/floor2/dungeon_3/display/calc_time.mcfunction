# ============================================================================
# DUNGEON 1 - CALC TIME DISPLAY
# Zeigt Timer einfach als Sekunden an (später MM:SS möglich)
# ============================================================================
    execute if score server dg3_state matches 1..4 run data modify entity @e[type=text_display,tag=d3_display_timer,limit=1] text set value [{"text":"Time: ","color":"gold","italic":false},{"score":{"name":"server","objective":"dg3_timer"},"color":"white","italic":false}]
