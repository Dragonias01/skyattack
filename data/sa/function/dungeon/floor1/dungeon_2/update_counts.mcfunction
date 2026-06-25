# ============================================================================
# DUNGEON 2 - UPDATE COUNTS
# zählt Spieler in Dungeon und Bossdimension
# ============================================================================

scoreboard players set server dg2_players_dungeon 0
scoreboard players set server dg2_players_boss 0

execute as @a[tag=dg2_in_dungeon] in sa:dungeon2 run scoreboard players add server dg2_players_dungeon 1
execute as @a[tag=dg2_in_boss] in sa:dungeon_arena_1 run scoreboard players add server dg2_players_boss 1
