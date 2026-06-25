# ============================================================================
# DUNGEON 1 - ON ENTER DUNGEON
# ============================================================================

execute if entity @s[tag=dg1_in_dungeon] run return 0
execute if entity @s[tag=dg1_in_dungeon] run say already in dungeon --- IGNORE ---

gamemode adventure @s
tag @s add dg1_player

# Dungeon generieren wenn nötig
    execute if score server dg1_state matches 1 if score server dg1_generated matches 0 run function sa:dungeon/floor1/dungeon_1/generate

# Erst danach Tag setzen (damit generate sicher durchläuft)
    tag @s add dg1_in_dungeon
    tag @s remove dg1_in_boss
    tag @s remove transfer_to_dungeon1

# Spieler teleportieren
    function sa:dungeon/internal/tp_random with storage sa:dungeon_1_coords

