# ============================================================================
# GOAL: Fishing Raum - Reward
# Datei: sa:goals/fishing_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_fishing]
kill @e[type=text_display,tag=display_fishing]
kill @e[type=block_display,tag=block_fishing]

setblock 10 99 -47 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_FISHING_GOAL 10 99 -47

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
scoreboard players set server hub_fishing_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Fishing Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]

# ── Fishing Merchant spawnen ──────────────────────────────────────────────
# (Verkauft Double Compressed Fish – wird für Farming Goal & Fishing Pond benötigt)
function sa:npc/villager/fishing_merchant

# ── Farming Goal spawnen ──────────────────────────────────────────────────
execute in sa:hub run function sa:setup/hub/goal_setup/farming_goal

# ── Fishing Pond Goal spawnen ─────────────────────────────────────────────
execute in sa:hub run function sa:setup/hub/goal_setup/fishing_pond_goal
