# ============================================================================
# NPC INTERACT - Wird beim Klicken auf eine interaction-Entity mit Tag "npc" ausgeführt
# Datei: sa:npc/interact
# Version: 1.21.11
# ============================================================================

advancement revoke @s only npc_interact

# ── Tutorial NPC ──────────────────────────────────────────────────────────
execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run scoreboard players enable @s itrigger
execute as @s if entity @e[type=mannequin,tag=tutorial,distance=..5] run dialog show @s sa:start

# ── Pilot NPC ─────────────────────────────────────────────────────────────
execute as @s if entity @e[type=mannequin,tag=pilot,distance=..5] run function sa:npc/pilot/function

# ── DungeonMaster NPC ─────────────────────────────────────────────────────
execute as @s if entity @e[type=mannequin,tag=dungeon_master,distance=..5] run dialog show @s sa:dungeon_master
