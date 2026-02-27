
#InselWahl
execute as @a[scores={itrigger=100}] run function sa:island/create
execute as @a[scores={itrigger=21..28}] run function sa:island/join

function sa:item/reset/check
function sa:actionbar/actionbar

# ============================================================================
# SKILL UPDATES
# ============================================================================

function sa:skill/fishing/events/summon_creature
function sa:skill/update_xp

#Menue check
execute as @a unless predicate sa:menue if score @s menue_open matches 1 run scoreboard players set @s menue_open 0
scoreboard players enable @a menue

execute as @a[scores={player_initialized=..0}] run function sa:setup/player_init

execute as @a[scores={menue=1..}] run function sa:menue/compiler