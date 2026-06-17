# ============================================================
# Liest alle relevanten Scores des ausführenden Spielers (@s)
# und speichert sie als Zahlen im Storage sa:stats unter "v".
# Wird IMMER mit @s als ausführendem Spieler aufgerufen,
# z.B. über "execute as <Spieler> run function sa:stats/load_scores"
# ============================================================

# Generelle Infos
    execute store result storage sa:stats v.island int 1 run scoreboard players get @s island

# --- Mining ---
    execute store result storage sa:stats v.mining_lvl int 1 run scoreboard players get @s mining_lvl
    execute store result storage sa:stats v.mining_xp int 1 run scoreboard players get @s mining_xp
    execute store result storage sa:stats v.mining_goal int 1 run scoreboard players get @s mining_goal
    execute store result storage sa:stats v.mining_drop int 1 run scoreboard players get @s Mining_Dropchance_Percent
    execute store result storage sa:stats v.mining_boost int 1 run scoreboard players get @s mining_xp_boost

# --- Farming ---
    execute store result storage sa:stats v.farming_lvl int 1 run scoreboard players get @s farming_lvl
    execute store result storage sa:stats v.farming_xp int 1 run scoreboard players get @s farming_xp
    execute store result storage sa:stats v.farming_goal int 1 run scoreboard players get @s farming_goal
    execute store result storage sa:stats v.farming_drop int 1 run scoreboard players get @s Farming_Dropchance_Percent
    execute store result storage sa:stats v.farming_boost int 1 run scoreboard players get @s farming_xp_boost

# --- Logging ---
    execute store result storage sa:stats v.logging_lvl int 1 run scoreboard players get @s logging_lvl
    execute store result storage sa:stats v.logging_xp int 1 run scoreboard players get @s logging_xp
    execute store result storage sa:stats v.logging_goal int 1 run scoreboard players get @s logging_goal
    execute store result storage sa:stats v.logging_drop int 1 run scoreboard players get @s Logging_Dropchance_Percent
    execute store result storage sa:stats v.logging_boost int 1 run scoreboard players get @s logging_xp_boost

# --- Fishing ---
    execute store result storage sa:stats v.fishing_lvl int 1 run scoreboard players get @s fishing_lvl
    execute store result storage sa:stats v.fishing_xp int 1 run scoreboard players get @s fishing_xp
    execute store result storage sa:stats v.fishing_goal int 1 run scoreboard players get @s fishing_goal
    execute store result storage sa:stats v.fishing_drop int 1 run scoreboard players get @s fishing_Dropchance_Percent
    execute store result storage sa:stats v.fishing_boost int 1 run scoreboard players get @s fishing_xp_boost

# --- Combat ---
    execute store result storage sa:stats v.combat_lvl int 1 run scoreboard players get @s combat_lvl
    execute store result storage sa:stats v.combat_xp int 1 run scoreboard players get @s combat_xp
    execute store result storage sa:stats v.combat_goal int 1 run scoreboard players get @s combat_goal
    execute store result storage sa:stats v.combat_drop int 1 run scoreboard players get @s Combat_Dropchance_Percent
    execute store result storage sa:stats v.combat_boost int 1 run scoreboard players get @s combat_xp_boost

# Nachdem alle Werte geladen sind, Dialog mit den Werten anzeigen
    function sa:menue/skills/show_dialog with storage sa:stats v

scoreboard players reset @s menue
