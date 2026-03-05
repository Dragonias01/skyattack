# ============================================================================
# GOAL: Fishing Pond - Reward
# Datei: sa:goals/fishing_pond_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_fishing_pond]
kill @e[type=text_display,tag=display_fishpond]
kill @e[type=block_display,tag=block_fishpond]

setblock 0 99 22 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_FISHING_POND_GOAL 0 99 22

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_fishpond_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Fishing Pond Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
