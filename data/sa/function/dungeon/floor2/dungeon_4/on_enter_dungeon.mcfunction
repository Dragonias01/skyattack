# ============================================================================
# DUNGEON 1 - ON ENTER DUNGEON
# ============================================================================

execute if entity @s[tag=dg4_in_dungeon] run return 0
execute if entity @s[tag=dg4_in_dungeon] run say already in dungeon --- IGNORE ---

gamemode adventure @s
tag @s add dg4_player
advancement grant @s only sa:skyattack/the_other_world/ultimate_trading/the_catacombs/the_crypt/the_crypt

# Dungeon generieren wenn nötig
    execute if score server dg4_state matches 1 if score server dg4_generated matches 0 run function sa:dungeon/floor2/dungeon_4/generate

# Erst danach Tag setzen (damit generate sicher durchläuft)
    tag @s add dg4_in_dungeon
    tag @s remove dg4_in_boss
    tag @s remove transfer_to_dungeon2

# Spieler teleportieren
    function sa:dungeon/internal/tp_random with storage sa:dungeon_2_coords

    