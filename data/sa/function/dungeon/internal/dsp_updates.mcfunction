# --- INAKTIV ---
    $execute if score server dg$(nr)_state matches 0 run data modify entity @e[type=text_display,tag=d$(nr)_display_players,limit=1] text set value {"text":"Player: ---","color":"gray","italic":false}
    $execute if score server dg$(nr)_state matches 0 run data modify entity @e[type=text_display,tag=d$(nr)_display_timer,limit=1] text set value {"text":"Inactive","color":"red","italic":false}

# --- AKTIV ---
    $execute if score server dg$(nr)_state matches 1..4 run function sa:dungeon/internal/display/update_players with storage sa:config dungeon/floor$(floor)/dungeon$(nr)
    $execute if score server dg$(nr)_state matches 1..4 run function sa:dungeon/internal/display/calc_time with storage sa:config dungeon/floor$(floor)/dungeon$(nr)

$scoreboard players set server dg$(nr)_players_dungeon 0
$scoreboard players set server dg$(nr)_players_boss 0

$execute as @a[tag=dg$(nr)_in_dungeon] in $(dimension) run scoreboard players add server dg$(nr)_players_dungeon 1
$execute as @a[tag=dg$(nr)_in_boss] in sa:dungeon_arena_$(nr) run scoreboard players add server dg$(nr)_players_boss 1
