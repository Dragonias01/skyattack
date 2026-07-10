# ============================================================================
# DUNGEON 2 - SIDEBAR TIME UPDATE
# Berechnet min/sec aus dg4_timer und updated Team suffix
# ============================================================================

# Minuten = dg4_timer / 60
    scoreboard players operation server d4_tmp_minutes = server dg4_timer
    scoreboard players operation server d4_tmp_minutes /= server d4_const_60

# Sekunden = dg4_timer % 60
    scoreboard players operation server d4_tmp_seconds = server dg4_timer
    scoreboard players operation server d4_tmp_seconds %= server d4_const_60

# Werte in Storage schreiben (für Macro usage)
    execute store result storage sa:dg4_time min int 1 run scoreboard players get server d4_tmp_minutes
    execute store result storage sa:dg4_time sec int 1 run scoreboard players get server d4_tmp_seconds

# Wenn Sekunden < 10 -> padding version
    execute if score server d4_tmp_seconds matches 0..9 run function sa:dungeon/floor2/dungeon_4/sidebar/set_suffix_pad with storage sa:dg4_time

# Normal
    execute if score server d4_tmp_seconds matches 10..59 run function sa:dungeon/floor2/dungeon_4/sidebar/set_suffix with storage sa:dg4_time

