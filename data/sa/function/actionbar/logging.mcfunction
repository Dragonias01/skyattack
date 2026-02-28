# Display für Spieler die noch nicht max-level sind
execute as @s[scores={logging_lvl=0..999}] run title @s actionbar [{"text":"🪓 logging XP: ","color":"gray"},{"score":{"name":"@s","objective":"logging_xp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"logging_goal"},"color":"gray"},{"text":" ","color":"gray"},{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"logging_lvl"},"color":"green"}]

# Display für Spieler die max-level erreicht haben
execute as @s[scores={logging_lvl=1000}] run title @s actionbar [{"text":"🪓 Logging max Level! (1000)","color":"gold"}]
