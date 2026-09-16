$execute store result score @s goal_temp run clear @s $(item)[item_name=[{text:"$(item_name)",italic:0b}]] 0

execute if score @s goal_temp matches 0 run tellraw @s [{"text":"✗ You don't have this item!","color":"red"}]
execute if score @s goal_temp matches 0 run return 0

$execute unless score @s goal_temp matches ..$(max) run scoreboard players set @s goal_temp $(max)

$execute store result score total goal_math run data get storage sa:config goals.$(goal).current_cost
$execute store result score progress goal_math run data get storage sa:config goals.$(goal).goal_progress

scoreboard players operation remaining goal_math = total goal_math
scoreboard players operation remaining goal_math -= progress goal_math

execute if score remaining goal_math matches ..0 run tellraw @s [{"text":"✗ this goal is already completed!","color":"red"}]
execute if score remaining goal_math matches ..0 run return 0

# Overflow-Schutz: nimm das Minimum aus "was der Spieler hat" und "was noch fehlt"
    scoreboard players operation @s goal_temp < remaining goal_math

execute store result storage sa:goals_ctx ctx.count int 1 run scoreboard players get @s goal_temp
function sa:goals/_lib/give_3_item with storage sa:goals_ctx ctx
