# ============================================================================
# GOAL: Farming Raum - Reward
# Datei: sa:goals/farming_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_farming]
kill @e[type=text_display,tag=display_farming]
kill @e[type=block_display,tag=block_farming]

# PLATZHALTER KOORDINATEN - Anpassen!
setblock -20 99 5 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_FARMING_GOAL -20 99 5

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_farming_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Farming Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
