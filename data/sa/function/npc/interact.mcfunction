# ============================================================================
# NPC INTERACT - Wird beim Klicken auf eine interaction-Entity mit Tag "npc" ausgeführt
# Datei: sa:npc/interact
# Version: 1.21.11
# ============================================================================

advancement revoke @s only npc_interact

# ── Tutorial NPC ──────────────────────────────────────────────────────────
    execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] if score @s island matches ..0 run scoreboard players enable @s itrigger
    execute as @s if score @s island matches ..0 if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:chat/welcome
    execute as @s if score @s island matches 1.. if entity @e[type=mannequin,tag=tutorial,distance=..5] if data storage sa:goal {goal_ship:{completed:false}} run dialog show @s sa:chat/unlock_ship
    execute as @s if score @s island matches 1.. if entity @e[type=mannequin,tag=tutorial,distance=..5] if data storage sa:goal {goal_ship:{completed:true}} run dialog show @s sa:chat/nothing_to_say
    # ── Pilot NPC ─────────────────────────────────────────────────────────────
        execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] if predicate sa:inhub run dialog show @s sa:chat/pilot_quest_hub
        execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] if predicate sa:inoverworld run dialog show @s sa:chat/pilot_quest


execute as @s if entity @e[type=mannequin,tag=loot_master,distance=..5] run tellraw @s ["[",{"text":"Loot Master","color":"yellow"},"] ",{"text":"Do you want to buy a Lootbox for ","color":"yellow"},{"text":"100 Level","color":"green"},{"text":"? ","color":"yellow"},{"text":"[","color":"white"},{"text":"Kaufen","color":"yellow","click_event":{"action":"run_command","command":"trigger gambling_trigger"}},{"text":"]","color":"white"}]

# ── DungeonMaster NPC ─────────────────────────────────────────────────────
    execute unless score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=dungeon_master,distance=..5] run dialog show @s sa:chat/dungeon_master_intro
    execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=outdungeon,distance=..5] run function sa:tp/dungeonhub
    execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=interaction,tag=indungeon,distance=..5] run function sa:tp/hub


execute if entity @e[tag=dungeon_exit_npc,distance=..5,type=mannequin] run function sa:tp/hub
