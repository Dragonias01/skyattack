# ============================================================================
# DUNGEON 1 - CALC TIME (MM:SS)
# Liest dg1_timer (Sekunden) und schreibt formatiert in Text Display
# ============================================================================

# Minuten = dg1_timer / 60
    scoreboard players operation server d1_tmp_minutes = server dg1_timer
    scoreboard players operation server d1_tmp_minutes /= server d1_const_60

# Sekunden = dg1_timer % 60
    scoreboard players operation server d1_tmp_seconds = server dg1_timer
    scoreboard players operation server d1_tmp_seconds %= server d1_const_60

# Ausgabe vorbereiten (Timer wird einfach als Zahl geschrieben, optional schöner später)
#execute store result entity @e[type=text_display,tag=d1_display_timer,limit=1] text run tellraw @s [{"text":"Time: ","color":"gold"},{"score":{"name":"server","objective":"dg1_timer"},"color":"white"}]
