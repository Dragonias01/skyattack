# ============================================================================
# NPC INTERACT - Wird beim Klicken auf eine interaction-Entity mit Tag "npc" ausgeführt
# Datei: sa:npc/interact
# Version: 1.21.11
# ============================================================================

advancement revoke @s only npc_interact

# ── Tutorial NPC ──────────────────────────────────────────────────────────
    execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run scoreboard players enable @s itrigger
    execute as @s if score @s island matches ..1 if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:start

# ── Pilot NPC ─────────────────────────────────────────────────────────────
    execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] run function sa:npc/pilot/function


execute as @s if entity @e[type=mannequin,tag=loot_master,distance=..5] run tellraw @a ["[",{"text":"Loot Master","color":"yellow"},"] ",{"text":"Möchtest du eine Lootbox für ","color":"yellow"},{"text":"100 Level","color":"green"},{"text":" Kaufen? ","color":"yellow"},{"text":"[","color":"white"},{"text":"Kaufen","color":"yellow","click_event":{"action":"run_command","command":"trigger gambling_trigger"}},{"text":"]","color":"white"}]

# ── DungeonMaster NPC ─────────────────────────────────────────────────────
    execute unless score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=dungeon_master,distance=..5] run dialog show @s sa:chat/dungeon_master_intro
    execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=outdungeon,distance=..5] run function sa:tp/dungeonhub
    execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=interaction,tag=indungeon,distance=..5] run function sa:tp/hub


execute if entity @e[tag=dungeon_exit_npc,distance=..5,type=mannequin] run function sa:tp/hub
