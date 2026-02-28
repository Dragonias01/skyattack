# Display für Spieler die noch nicht max-level sind
execute as @s[scores={mining_lvl=0..999}] run title @s actionbar [{"text":"⛏ Mining XP: ","color":"gray"},{"score":{"name":"@s","objective":"mining_xp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"mining_goal"},"color":"gray"},{"text":" ","color":"gray"},{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"mining_lvl"},"color":"green"}]

# Display für Spieler die max-level erreicht haben
execute as @s[scores={mining_lvl=1000}] run title @s actionbar [{"text":"⛏ Mining max Level! (1000)","color":"gold"}]
