
#InselWahl
execute as @a[scores={itrigger=100}] run function sa:island/create
execute as @a[scores={itrigger=21..28}] run function sa:island/join

scoreboard players enable @a gambling_trigger
execute as @a[scores={gambling_trigger=1..}] run function sa:system/lotterie/check_levels

function sa:actionbar/actionbar
function sa:protection/compiler

# ============================================================================
# SKILL UPDATES
# ============================================================================

function sa:skill/fishing/events/summon_creature
function sa:skill/update_xp

#Menue check
scoreboard players enable @a menue
scoreboard players enable @a logging_collection_collect
scoreboard players enable @a mining_collection_collect
scoreboard players enable @a farming_collection_collect
scoreboard players enable @a combat_collection_collect
scoreboard players enable @a fishing_collection_collect

execute as @a unless score @s player_initialized matches 1 run function sa:setup/player_init

# = Trigger checks = 
# Stats
    execute as @a[scores={menue=1..10}] run function sa:menue/skills/compiler

# Teleporter
    execute as @a[scores={menue=11..20}] run function sa:menue/teleporter/compiler

# Collections
    execute as @a[scores={menue=21..120}] run function sa:menue/collections/compiler

# Claim Collections
    execute as @a[scores={logging_collection_collect=1..}] run function sa:menue/collections/claim_reward
    execute as @a[scores={mining_collection_collect=1..}] run function sa:menue/collections/claim_reward
    execute as @a[scores={farming_collection_collect=1..}] run function sa:menue/collections/claim_reward
    execute as @a[scores={combat_collection_collect=1..}] run function sa:menue/collections/claim_reward
    execute as @a[scores={fishing_collection_collect=1..}] run function sa:menue/collections/claim_reward

function sa:leaderboard/tick
function sa:dungeon/boss_check
function sa:system/updates
function sa:system/events/check
function sa:setup/scoreboard/counter
function sa:item/function/xp_catalysator/checkinv
function sa:system/death/check_death
function sa:item/function/xpfruits/update

