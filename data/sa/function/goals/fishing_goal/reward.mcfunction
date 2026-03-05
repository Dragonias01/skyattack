# ============================================================================
# GOAL: Fishing Raum - Reward
# Datei: sa:goals/fishing_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_fishing]
kill @e[type=text_display,tag=display_fishing]
kill @e[type=block_display,tag=block_fishing]

# PLATZHALTER KOORDINATEN - Anpassen!
setblock -20 99 10 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_FISHING_GOAL -20 99 10

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_fishing_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Fishing Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
