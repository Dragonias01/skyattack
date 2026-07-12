# reset values
    $scoreboard players set server dg$(nr)_state 0
    $scoreboard players set server dg$(nr)_timer 0
    $scoreboard players set server dg$(nr)_players_dungeon 0
    $scoreboard players set server dg$(nr)_players_boss 0
    $scoreboard players set server f$(floor)_boss_state 0
    $scoreboard players set server dg$(nr)_generated 0
    $scoreboard players set server dg$(nr)_loot_generated 0

# teleport players out of dungeon dimension
    $execute in sa:dungeon$(nr) as @a[tag=dg$(nr)_in_dungeon] run tp @s 0 100 0
    $execute in sa:dungeon$(nr) as @a[tag=dg$(nr)_in_dungeon] run execute in sa:hub run tp @s 0 100 0

# teleport players out of boss dimension
    $execute in sa:dungeon_arena_$(floor) as @a[tag=dg$(nr)_in_dungeon] run tp @s[tag=dg$(nr)_in_dungeon] 0 100 0
    $execute in sa:dungeon_arena_$(floor) as @a[tag=dg$(nr)_in_dungeon] run execute in sa:hub run tp @s[tag=dg$(nr)_in_dungeon] 0 100 0

# Player tags entfernen
    $tag @a remove dg$(nr)_player
    $tag @a remove dg$(nr)_in_dungeon
