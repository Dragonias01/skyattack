execute as @s[scores={combat_lvl=0..999}] run title @s actionbar [{"text":"⚔ combat XP: ","color":"gray"},{"score":{"name":"@s","objective":"combat_xp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"combat_goal"},"color":"gray"},{"text":" ","color":"gray"},{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"combat_lvl"},"color":"green"}]

# Display für Spieler die max-level erreicht haben
execute as @s[scores={combat_lvl=1000}] run title @s actionbar [{"text":"⚔ Combat max Level! (1000)","color":"gold"}]