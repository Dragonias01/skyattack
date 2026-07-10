# ============================================================================
# DUNGEON 1 - UPDATE COUNTS
# zählt Spieler in Dungeon und Bossdimension
# ============================================================================

scoreboard players set server dg3_players_dungeon 0
scoreboard players set server dg3_players_boss 0

execute as @a[tag=dg3_in_dungeon] in sa:dungeon3 run scoreboard players add server dg3_players_dungeon 1
execute as @a[tag=dg3_in_boss] in sa:dungeon_arena_1 run scoreboard players add server dg3_players_boss 1
#TODO: ARNEA
