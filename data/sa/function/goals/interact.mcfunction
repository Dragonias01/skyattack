advancement revoke @s only goal_interact

# ── Overworld Goals ───────────────────────────────────────────────────────
execute as @a if entity @e[type=interaction,tag=goal_ship,distance=..5] run function sa:goals/goal_ship/check

# ── Hub Goals ─────────────────────────────────────────────────────────────
execute as @a if entity @e[type=interaction,tag=goal_levelbaum,distance=..5] run function sa:goals/levelbaum_goal/check
execute as @a if entity @e[type=interaction,tag=goal_dungeon,distance=..5] run function sa:goals/dungeon_goal/check
execute as @a if entity @e[type=interaction,tag=goal_skillrooms,distance=..5] run function sa:goals/skillrooms_goal/check
execute as @a if entity @e[type=interaction,tag=goal_mining,distance=..5] run function sa:goals/mining_goal/check
execute as @a if entity @e[type=interaction,tag=goal_farming,distance=..5] run function sa:goals/farming_goal/check
execute as @a if entity @e[type=interaction,tag=goal_fishing,distance=..5] run function sa:goals/fishing_goal/check
execute as @a if entity @e[type=interaction,tag=goal_fishing_pond,distance=..5] run function sa:goals/fishing_pond_goal/check
execute as @a if entity @e[type=interaction,tag=goal_combat,distance=..5] run function sa:goals/combatgoal/check
execute as @a if entity @e[type=interaction,tag=goal_schmied,distance=..5] run function sa:goals/schmied_goal/check
execute as @a if entity @e[type=interaction,tag=goal_techniker,distance=..5] run function sa:goals/techniker_goal/check
