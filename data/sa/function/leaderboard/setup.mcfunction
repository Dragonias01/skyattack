# LEADERBOARD SETUP - Einmalige Initialisierung
# Datei: sa:leaderboard/setup
# Version: 1.21.11

execute in sa:hub run function sa:setup/hub/leaderboard/logging
execute in sa:hub run function sa:setup/hub/leaderboard/mining
execute in sa:hub run function sa:setup/hub/leaderboard/fishing
execute in sa:hub run function sa:setup/hub/leaderboard/farming
execute in sa:hub run function sa:setup/hub/leaderboard/combat

scoreboard players set server lb_initialized 1
