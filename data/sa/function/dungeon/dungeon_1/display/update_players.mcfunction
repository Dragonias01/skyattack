# ============================================================================
# DUNGEON 1 - DISPLAY: Spieleranzahl
# Schreibt die aktuelle Spieleranzahl in Storage, dann per Macro ins Display.
# ============================================================================

execute store result storage sa:dungeon_1_display players int 1 run scoreboard players get server dungeon_1_players
function sa:dungeon/dungeon_1/display/set_players with storage sa:dungeon_1_display
