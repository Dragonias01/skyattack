# ============================================================================
# DUNGEON 1 - ON ENTER BOSS
# Boss spawnt beim ersten Eintritt
# ============================================================================

tag @s add dg1_in_boss
tag @s remove dg1_in_dungeon

gamemode adventure @s

# Boss spawn nur wenn noch nicht gespawnt
    execute if score server dg1_boss_state matches 0 run function sa:dungeon/dungeon_1/boss/spawn

# State korrekt setzen
    execute if score server dg1_boss_state matches 1 run scoreboard players set server dg1_state 3
    execute if score server dg1_boss_state matches 2 run scoreboard players set server dg1_state 4
