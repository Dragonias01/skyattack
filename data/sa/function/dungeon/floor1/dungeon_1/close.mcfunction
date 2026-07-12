# ============================================================================
# DUNGEON 1 - CLOSE
# Hardcut: teleport alle Spieler raus und cleanup
# ============================================================================

tellraw @a {"text":"Dungeon 1 has closed!","color":"red"}

function sa:dungeon/internal/clean_up with storage sa:config dungeon.floor1.dungeon1

