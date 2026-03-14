scoreboard players reset @a calc_temp
# ============================================================
# LOGGING PROXIMITY CALC
# Berechnet für alle Spieler: eigener Level / Max * 100 (0–100)
# Ergebnis liegt in: logging_proximity (Objective muss existieren)
# ============================================================

# 1. Max-Level vom Leaderboard holen (Platz 1 = höchster Wert)
scoreboard players operation server logging_max_player_level = lb_log_s1 lb_log_score

# 2. Abbruch wenn Max = 0 (Division durch 0 verhindern)
execute unless score server logging_max_player_level matches 1.. run return 0

# 3. Für jeden Spieler den Prozentwert berechnen
execute as @a run scoreboard players operation @s calc_temp = @s logging_lvl
execute as @a run scoreboard players operation @s calc_temp *= server const_100
execute as @a run scoreboard players operation @s calc_temp /= server logging_max_player_level
scoreboard players operation @a logging_proximity = @a calc_temp

# 4. Auf 10er-Schritte runden (floor)
execute as @a run scoreboard players operation @s logging_proximity /= server const_10
execute as @a run scoreboard players operation @s logging_proximity *= server const_10

# 5. Cleanup
scoreboard players reset @a calc_temp

# 6.
execute as @a[scores={logging_proximity=0..20}] run scoreboard players set @s logging_xp_boost_gain 700
execute as @a[scores={logging_proximity=21..40}] run scoreboard players set @s logging_xp_boost_gain 500
execute as @a[scores={logging_proximity=41..60}] run scoreboard players set @s logging_xp_boost_gain 300
execute as @a[scores={logging_proximity=61..80}] run scoreboard players set @s logging_xp_boost_gain 200
execute as @a[scores={logging_proximity=81..90}] run scoreboard players set @s logging_xp_boost_gain 100
execute as @a[scores={logging_proximity=91..100}] run scoreboard players set @s logging_xp_boost_gain 0

