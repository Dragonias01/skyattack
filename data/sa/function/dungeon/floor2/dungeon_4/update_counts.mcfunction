# ============================================================================
# DUNGEON 2 - UPDATE COUNTS
# zählt Spieler in Dungeon und Bossdimension
# ============================================================================

scoreboard players set server dg4_players_dungeon 0
scoreboard players set server dg4_players_boss 0

execute as @a[tag=dg4_in_dungeon] in sa:dungeon4 run scoreboard players add server dg4_players_dungeon 1
execute as @a[tag=dg4_in_boss] in sa:dungeon_arena_1 run scoreboard players add server dg4_players_boss 1
