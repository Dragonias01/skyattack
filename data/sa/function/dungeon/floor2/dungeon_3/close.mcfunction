# ============================================================================
# DUNGEON 1 - CLOSE
# Hardcut: teleport alle Spieler raus und cleanup
# ============================================================================

tellraw @a {"text":"Dungeon 3 has closed!","color":"red"}
function sa:dungeon/internal/clean_up with storage sa:config dungeon.floor2.dungeon3

