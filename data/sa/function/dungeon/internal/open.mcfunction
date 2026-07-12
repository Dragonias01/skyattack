# ============================================================================
# DUNGEON 1 - OPEN
# Key wird benutzt -> Dungeon global geöffnet für 15 Minuten
# dg1_state = 1
# ============================================================================
# Key entfernen (du musst hier ggf. dein echtes Key-Item anpassen!)
    clear @s minecraft:trial_key[item_name={text:"dungeon_key",italic:0b}] 1
    $tag @s add transfer_to_dungeon$(nr)

$scoreboard players set server dg$(nr)_timer 900
#Umwandeln in Storages
$scoreboard players set server dg$(nr)_state 1
$scoreboard players set server dg$(nr)_generated 0
$scoreboard players set server dg$(nr)_loot_generated 0

$tellraw @a {"text":"Dungeon $(nr) is now OPEN for 15 minutes!","color":"gold"}

