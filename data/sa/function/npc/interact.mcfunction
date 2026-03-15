# ============================================================================
# NPC INTERACT - Wird beim Klicken auf eine interaction-Entity mit Tag "npc" ausgeführt
# Datei: sa:npc/interact
# Version: 1.21.11
# ============================================================================

advancement revoke @s only npc_interact

# ── Tutorial NPC ──────────────────────────────────────────────────────────
execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run scoreboard players enable @s itrigger
execute as @s if score @s island > server one if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:start

# ── Pilot NPC ─────────────────────────────────────────────────────────────
execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] run function sa:npc/pilot/function

# ── DungeonMaster NPC ─────────────────────────────────────────────────────
execute unless score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=dungeon_master,distance=..5] run dialog show @s sa:chat/dungeon_master_intro
execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=outdungeon,distance=..5] run function sa:tp/dungeonhub
execute if score server hub_dungeon_done matches 1 as @s if entity @e[type=mannequin,tag=indungeon,distance=..5] run function sa:tp/hub