# ============================================================================
# DUNGEON 1 - UPDATE PLAYERS DISPLAY
# ============================================================================
    execute if score server dg1_state matches 1..4 run data modify entity @e[type=text_display,tag=d1_display_players,limit=1] text set value [{"text":"Player: ","color":"gray","italic":false},{"score":{"name":"server","objective":"dg1_players_dungeon"},"color":"white","italic":false}]
