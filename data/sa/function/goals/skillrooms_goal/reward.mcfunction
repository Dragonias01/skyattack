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
say Feature in Work
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
