# ============================================================================
# GOAL: Skill Rooms - Reward
# Datei: sa:goals/skillrooms_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_skillrooms]
kill @e[type=text_display,tag=display_skillrooms]
kill @e[type=block_display,tag=block_skillrooms]

setblock 0 99 -22 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_SKILLROOMS_GOAL 0 99 -22

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
scoreboard players set server hub_skillrooms_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Skill Rooms Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]

# ── Skillroom + Logging Raum platzieren ───────────────────────────────────
execute in sa:hub run place template sa:skillroom -11 96 -58
execute in sa:hub run fill 1 99 -23 -1 102 -23 air
execute in sa:hub run place template sa:logging -6 96 -70
execute in sa:hub run fill -1 99 -58 1 102 -58 air

# ── Wood Merchant spawnen ─────────────────────────────────────────────────
function sa:npc/villager/wood_merchant

# ── Mining Goal spawnen (nächste Stufe der Kette) ─────────────────────────
execute in sa:hub run function sa:setup/hub/goal_setup/mining_goal

# ── DungeonMaster NPC spawnen ─────────────────────────────────────────────
# (DungeonMaster erklärt das Dungeon-System und hat das Dungeon-Goal hinter sich)
execute in sa:hub run function sa:npc/dungeon_master

# ── Dungeon Goal spawnen (hinter dem DungeonMaster, bei 22 99 0) ──────────
execute in sa:hub run function sa:setup/hub/goal_setup/dungeon_goal
