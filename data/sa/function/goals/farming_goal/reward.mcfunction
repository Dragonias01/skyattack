# ============================================================================
# GOAL: Farming Raum - Reward
# Datei: sa:goals/farming_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_farming]
kill @e[type=text_display,tag=display_farming]
kill @e[type=block_display,tag=block_farming]

setblock -10 99 -47 minecraft:air
fill -11 99 -46 -11 102 -48 air

# ── Struktur platzieren ───────────────────────────────────────────────────
place template sa:farming -23 96 -53

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
scoreboard players set server hub_farming_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Farming Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]

# ── Farming Merchant spawnen ──────────────────────────────────────────────
# (Verkauft Double Compressed Crop – wird für Combat Goal benötigt)
function sa:npc/villager/farming_merchant

# ── Combat Goal spawnen (letzte Stufe der Kette) ──────────────────────────
execute in sa:hub run function sa:setup/hub/goal_setup/combatgoal
