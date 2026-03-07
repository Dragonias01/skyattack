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
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_skillrooms_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Skill Rooms Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]


#place room 
execute in sa:hub run place template sa:skillroom -11 96 -58
execute in sa:hub run fill 1 99 -23 -1 102 -23 air
execute in sa:hub run place template sa:logging -6 96 -70
execute in sa:hub run fill -1 99 -58 1 102 -58 air

function sa:npc/villager/wood_merchant
function sa:setup/hub/goal_setup/mining_goal