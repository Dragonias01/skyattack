# ============================================================================
# DUNGEON 2 - SIDEBAR TIME UPDATE
# Berechnet min/sec aus dg2_timer und updated Team suffix
# ============================================================================

# Minuten = dg2_timer / 60
    scoreboard players operation server d2_tmp_minutes = server dg2_timer
    scoreboard players operation server d2_tmp_minutes /= server d2_const_60

# Sekunden = dg2_timer % 60
    scoreboard players operation server d2_tmp_seconds = server dg2_timer
    scoreboard players operation server d2_tmp_seconds %= server d2_const_60

# Werte in Storage schreiben (für Macro usage)
    execute store result storage sa:dg2_time min int 1 run scoreboard players get server d2_tmp_minutes
    execute store result storage sa:dg2_time sec int 1 run scoreboard players get server d2_tmp_seconds

# Wenn Sekunden < 10 -> padding version
    execute if score server d2_tmp_seconds matches 0..9 run function sa:dungeon/floor1/dungeon_2/sidebar/set_suffix_pad with storage sa:dg2_time

# Normal
    execute if score server d2_tmp_seconds matches 10..59 run function sa:dungeon/floor1/dungeon_2/sidebar/set_suffix with storage sa:dg2_time

