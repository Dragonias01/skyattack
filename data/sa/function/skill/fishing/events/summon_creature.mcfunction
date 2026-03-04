#custom mob #1 placeholder 5%
# ============================================================================
# FISHING SYSTEM - CREATURE SPAWN EVENTS
# Wird aufgerufen wenn ein besonderer Fisch geangelt wird
# Version: 1.21.11
# ============================================================================


# Prüfe ob Spieler einen Guardian-Spawn-Egg hat (von Loot-Tabelle)
execute as @e[type=item,nbt={Item:{id:"minecraft:guardian_spawn_egg",components:{"minecraft:item_name":"guardian"}}}] at @s run function sa:skill/fishing/events/summons/guardian
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_spawn_egg",components:{"minecraft:item_name":"spawn_slime"}}}] at @s run function sa:skill/fishing/events/summons/slime
execute as @e[type=item,nbt={Item:{id:"minecraft:drowned_spawn_egg",components:{"minecraft:item_name":"spawn_drowned"}}}] at @s run function sa:skill/fishing/events/summons/drowned
execute as @e[type=item,nbt={Item:{id:"minecraft:bogged_spawn_egg",components:{"minecraft:item_name":"spawn_bogged"}}}] at @s run function sa:skill/fishing/events/summons/bogged


# ============================================================================
# CLEANUP: Lösche alle Creature Spawn Eggs nach dem Spawn
# ============================================================================

execute as @e[type=item,nbt={Item:{id:"minecraft:guardian_spawn_egg",components:{"minecraft:item_name":"guardian"}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:slime_spawn_egg",components:{"minecraft:item_name":"spawn_slime"}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:drowned_spawn_egg",components:{"minecraft:item_name":"spawn_drowned"}}}] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:bogged_spawn_egg",components:{"minecraft:item_name":"spawn_bogged"}}}] run kill @s




