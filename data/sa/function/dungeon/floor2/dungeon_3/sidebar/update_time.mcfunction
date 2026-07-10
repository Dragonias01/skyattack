# ============================================================================
# DUNGEON 1 - SIDEBAR TIME UPDATE
# Berechnet min/sec aus dg1_timer und updated Team suffix
# ============================================================================

# Minuten = dg1_timer / 60
    scoreboard players operation server d3_tmp_minutes = server dg3_timer
    scoreboard players operation server d3_tmp_minutes /= server d1_const_60

# Sekunden = dg1_timer % 60
    scoreboard players operation server d3_tmp_seconds = server dg3_timer
    scoreboard players operation server d3_tmp_seconds %= server d1_const_60

# Werte in Storage schreiben (für Macro usage)
    execute store result storage sa:dg1_time min int 1 run scoreboard players get server d3_tmp_minutes
    execute store result storage sa:dg1_time sec int 1 run scoreboard players get server d3_tmp_seconds

# Wenn Sekunden < 10 -> padding version
    execute if score server d3_tmp_seconds matches 0..9 run function sa:dungeon/floor1/dungeon_1/sidebar/set_suffix_pad with storage sa:dg1_time

# Normal
    execute if score server d3_tmp_seconds matches 10..59 run function sa:dungeon/floor1/dungeon_1/sidebar/set_suffix with storage sa:dg1_time

