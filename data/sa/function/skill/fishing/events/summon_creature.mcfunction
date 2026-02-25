#custom mob #1 placeholder 5%
# ============================================================================
# FISHING SYSTEM - CREATURE SPAWN EVENTS
# Wird aufgerufen wenn ein besonderer Fisch geangelt wird
# Version: 1.21.11
# ============================================================================

# ============================================================================
# GUARDIAN SPAWN EVENT (10% Chance - 100 Weight)
# ============================================================================

# Prüfe ob Spieler einen Guardian-Spawn-Egg hat (von Loot-Tabelle)
execute as @e[type=item,nbt={Item:{id:"minecraft:guardian_spawn_egg",components:{"minecraft:item_name":"guardian"}}}] at @s run function sa:skill/fishing/events/summons/guardian


# ============================================================================
# CLEANUP: Lösche alle Creature Spawn Eggs nach dem Spawn
# ============================================================================

execute as @e[type=item,nbt={Item:{id:"minecraft:guardian_spawn_egg"}}] run kill @s


# ============================================================================
# WEITERE CREATURE EVENTS (Später erweiterbar)
# ============================================================================

# Hier können später weitere Creatures hinzugefügt werden:
# - Drowned
# - Axolotl
# - Tropical Fish
# - Pufferfish
# - etc.

