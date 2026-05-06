# ============================================================================
# DUNGEON 1 - OPEN
# Key wird benutzt -> Dungeon global geöffnet für 15 Minuten
# dg1_state = 1
# ============================================================================

execute unless score server dg1_state matches 0 run tellraw @s {"text":"Dungeon is already open.","color":"red"}
execute unless score server dg1_state matches 0 run return 1

# Key entfernen (du musst hier ggf. dein echtes Key-Item anpassen!)
    clear @s minecraft:trial_key[item_name={text:"dungeon_key",italic:0b}] 1
    tag @s add transfer_to_dungeon1

scoreboard players set server dg1_state 1
scoreboard players set server dg1_timer 900

scoreboard players set server dg1_generated 0
scoreboard players set server dg1_boss_state 0
scoreboard players set server dg1_loot_generated 0

tellraw @a {"text":"Dungeon 1 is now OPEN for 15 minutes!","color":"gold"}
