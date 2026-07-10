# ============================================================================
# DUNGEON 1 - UPDATE COUNTS
# zählt Spieler in Dungeon und Bossdimension
# ============================================================================

scoreboard players set server dg1_players_dungeon 0
scoreboard players set server dg1_players_boss 0

execute as @a[tag=dg1_in_dungeon] in sa:dungeon1 run scoreboard players add server dg1_players_dungeon 1
execute as @a[tag=dg1_in_boss] in sa:dungeon_arena_1 run scoreboard players add server dg1_players_boss 1
