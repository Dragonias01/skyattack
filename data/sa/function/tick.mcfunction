
#InselWahl
execute as @a[scores={itrigger=100}] run function sa:island/create
execute as @a[scores={itrigger=21..28}] run function sa:island/join

scoreboard players enable @a gambling_trigger
execute as @a[scores={gambling_trigger=1..}] run function sa:system/lotterie/check_levels


function sa:item/reset/check
function sa:actionbar/actionbar
function sa:protection/compiler

# ============================================================================
# SKILL UPDATES
# ============================================================================

function sa:skill/fishing/events/summon_creature
function sa:skill/update_xp

#Menue check
execute as @a unless predicate sa:menue if score @s menue_open matches 1 run scoreboard players set @s menue_open 0
scoreboard players enable @a menue

execute as @a unless score @s player_initialized matches 1 run function sa:setup/player_init

execute as @a[scores={menue=1..}] run function sa:menue/compiler

function sa:leaderboard/tick
function sa:dungeon/boss_check
function sa:system/updates
function sa:system/events/check
function sa:setup/scoreboard/counter
function sa:item/function/xp_catalysator/checkinv
function sa:system/death/check_death
function sa:item/function/xpfruits/update

