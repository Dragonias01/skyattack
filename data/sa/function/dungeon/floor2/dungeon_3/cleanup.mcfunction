# ============================================================================
# DUNGEON 1 - CLEANUP
# Löscht alle Dungeon Entities (tag=dg1_entity)
# Resettet Tags bei Spielern
# ============================================================================

kill @e[tag=dg1_entity]

# Bossbar entfernen falls vorhanden
    function sa:dungeon/floor1/boss/clear_bossbar

# Loot chest entfernen (Position anpassen!)
    execute in sa:dungeon_arena_1 run setblock 0 100 5 air

# Player tags entfernen
    tag @a remove dg1_player
    tag @a remove dg1_in_dungeon
    tag @a remove dg1_in_boss
