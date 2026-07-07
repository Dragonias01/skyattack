# XP-Variante (z.B. Fishing Pond): Waehrung sind XP-Level statt Items.
# Entspricht 1:1 deinem alten "experience query @s levels" / "temp_hub_fishpond"-Code,
# nur generisch fuer beliebige XP-Goals.

execute store result score @s goal_temp run experience query @s levels

execute if score @s goal_temp matches ..0 run tellraw @s [{"text":"✗ Du hast nicht genug Level!","color":"red"}]
execute if score @s goal_temp matches ..0 run return 0

$execute unless score @s goal_temp matches ..$(max) run scoreboard players set @s goal_temp $(max)

$execute store result score total goal_math run data get storage sa:config config.goals.$(goal).current_cost
$execute store result score progress goal_math run data get storage sa:config config.goals.$(goal).goal_progress

scoreboard players operation remaining goal_math = total goal_math
scoreboard players operation remaining goal_math -= progress goal_math

execute if score remaining goal_math matches ..0 run tellraw @s [{"text":"✗ Dieses Ziel ist bereits erfüllt!","color":"red"}]
execute if score remaining goal_math matches ..0 run return 0

# Overflow-Schutz: nimm das Minimum aus "was der Spieler hat" und "was noch fehlt"
scoreboard players operation @s goal_temp < remaining goal_math

execute store result storage sa:goals_ctx ctx.count int 1 run scoreboard players get @s goal_temp
function sa:goals/_lib/give_3_xp with storage sa:goals_ctx ctx
