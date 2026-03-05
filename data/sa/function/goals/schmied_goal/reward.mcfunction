# ============================================================================
# GOAL: Schmied - Reward
# Datei: sa:goals/schmied_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_schmied]
kill @e[type=text_display,tag=display_schmied]
kill @e[type=block_display,tag=block_schmied]

setblock -11 99 3 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_SCHMIED_GOAL -11 99 3

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_schmied_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Schmied Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
