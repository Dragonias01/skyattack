# ============================================================================
# DUNGEON 1 - UPDATE PLAYERS DISPLAY
# ============================================================================
    $execute if score server dg$(nr)_state matches 1..4 run data modify entity @e[type=text_display,tag=d$(nr)_display_players,limit=1] text set value [{"text":"Player: ","color":"gray","italic":false},{"score":{"name":"server","objective":"dg$(nr)_players_dungeon"},"color":"white","italic":false}]
