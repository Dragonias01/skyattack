# ============================================================================
# DUNGEON 1 - ON ENTER DUNGEON
# ============================================================================

execute if entity @s[tag=dg3_in_dungeon] run return 0
execute if entity @s[tag=dg3_in_dungeon] run say already in dungeon --- IGNORE ---

gamemode adventure @s
tag @s add dg3_player
advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt
# Dungeon generieren wenn nötig
    execute if score server dg3_state matches 1 if score server dg3_generated matches 0 run function sa:dungeon/floor2/dungeon_3/generate

# Erst danach Tag setzen (damit generate sicher durchläuft)
    tag @s add dg3_in_dungeon
    tag @s remove dg3_in_boss
    tag @s remove transfer_to_dungeon3

# Spieler teleportieren
    function sa:dungeon/internal/tp_random with storage sa:dungeon_3_coords

