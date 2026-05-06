# ============================================================================
# DUNGEON 1 - BOSS SPAWN
# Spawn nur einmal pro Run
# ============================================================================

execute if score server dg1_boss_state matches 1..2 run return 1

# Boss spawn (Entity + Tags)
    execute in sa:dungeon_arena_1 run summon minecraft:zombie 0 100 0 {Tags:["dg1_boss","dg1_entity"]}

scoreboard players set server dg1_boss_state 1
scoreboard players set server dg1_state 3

tellraw @a {"text":"The Boss has spawned!","color":"dark_red"}
