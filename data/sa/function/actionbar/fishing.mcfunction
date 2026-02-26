# ============================================================================
# FISHING SYSTEM - Actionbar-Anzeige
# Wird aufgerufen von: sa:actionbar/actionbar (timer 90-170)
# Frequenz: Etwa jede Tick wenn Spieler in Fishing-Range ist
# Version: 1.21.11
# ============================================================================




# Display für Spieler die noch nicht max-level sind
execute as @a[scores={fishing_lvl=0..999}] as @a[scores={timer=90..170}] run title @s actionbar [{"text":"🎣 Fishing XP: ","color":"gray"},{"score":{"name":"@s","objective":"fishing_xp"},"color":"green"},{"text":" / ","color":"gray"},{"score":{"name":"@s","objective":"fishing_goal"},"color":"gray"},{"text":" ","color":"gray"},{"text":"Level: ","color":"gray"},{"score":{"name":"@s","objective":"fishing_lvl"},"color":"green"}]

# Display für Spieler die max-level erreicht haben
execute as @a[scores={fishing_lvl=1000}] as @a[scores={timer=90..170}] run title @s actionbar [{"text":"🎣 Fishing max Level! (1000)","color":"gold"}]
