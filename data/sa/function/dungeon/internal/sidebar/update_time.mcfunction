# ============================================================================
# DUNGEON 1 - SIDEBAR TIME UPDATE
# Berechnet min/sec aus dg1_timer und updated Team suffix
# ============================================================================

# Minuten = dg1_timer / 60
    $scoreboard players operation server d$(nr)_tmp_minutes = server dg$(nr)_timer
    $scoreboard players operation server d$(nr)_tmp_minutes /= server d$(nr)_const_60

# Sekunden = dg1_timer % 60
    $scoreboard players operation server d$(nr)_tmp_seconds = server dg$(nr)_timer
    $scoreboard players operation server d$(nr)_tmp_seconds %= server d$(nr)_const_60

# Werte in Storage schreiben (für Macro usage)
    $execute store result storage sa:config dungeon.floor$(floor).dungeon$(nr).min int 1 run scoreboard players get server d$(nr)_tmp_minutes
    $execute store result storage sa:config dungeon.floor$(floor).dungeon$(nr).sec int 1 run scoreboard players get server d$(nr)_tmp_seconds

# Wenn Sekunden < 10 -> padding version
    $execute if score server d$(nr)_tmp_seconds matches 0..9 run function sa:dungeon/internal/sidebar/set_suffix_pad with storage sa:config dungeon.floor$(floor).dungeon$(nr)

# Normal
    $execute if score server d$(nr)_tmp_seconds matches 10..59 run function sa:dungeon/internal/sidebar/set_suffix with storage sa:config dungeon.floor$(floor).dungeon$(nr)


