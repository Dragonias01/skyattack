# ============================================================================
# DUNGEON 1 - ON ENTER DUNGEON
# ============================================================================

execute if entity @s[tag=dg2_in_dungeon] run return 0
execute if entity @s[tag=dg2_in_dungeon] run say already in dungeon --- IGNORE ---

gamemode adventure @s
tag @s add dg2_player

# Dungeon generieren wenn nötig
    execute if score server dg2_state matches 1 if score server dg2_generated matches 0 run function sa:dungeon/floor1/dungeon_2/generate

# Erst danach Tag setzen (damit generate sicher durchläuft)
    tag @s add dg2_in_dungeon
    tag @s remove dg2_in_boss
    tag @s remove transfer_to_dungeon2

# Spieler teleportieren
    function sa:dungeon/internal/tp_random with storage sa:dungeon_2_coords

    