# Display für Spieler die noch nicht max-level sind
execute as @s[scores={farming_lvl=0..999}] run title @s actionbar [{"text":"🧪 farming XP: ","color":"gray"},{"score":{"name":"@s","objective":"farming_xp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"farming_goal"},"color":"gray"},{"text":" ","color":"gray"},{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"farming_lvl"},"color":"green"}]

# Display für Spieler die max-level erreicht haben
execute as @s[scores={farming_lvl=1000}] run title @s actionbar [{"text":"🧪 Fishing max Level! (1000)","color":"gold"}]
