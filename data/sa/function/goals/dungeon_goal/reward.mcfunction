# ============================================================================
# GOAL: Dungeon - Reward
# Datei: sa:goals/dungeon_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_dungeon]
kill @e[type=text_display,tag=display_dungeon]
kill @e[type=block_display,tag=block_dungeon]

setblock 13 99 5 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_DUNGEON_GOAL 13 99 5

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_dungeon_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Dungeon Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
