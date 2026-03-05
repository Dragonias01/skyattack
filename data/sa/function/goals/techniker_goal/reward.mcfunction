# ============================================================================
# GOAL: Techniker - Reward
# Datei: sa:goals/techniker_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_techniker]
kill @e[type=text_display,tag=display_techniker]
kill @e[type=block_display,tag=block_techniker]

setblock 3 99 -11 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_TECHNIKER_GOAL 3 99 -11

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_techniker_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Techniker Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
