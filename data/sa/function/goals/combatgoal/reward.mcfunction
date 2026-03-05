# ============================================================================
# GOAL: Combat Raum - Reward
# Datei: sa:goals/combatgoal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_combat]
kill @e[type=text_display,tag=display_combat]
kill @e[type=block_display,tag=block_combat]

# PLATZHALTER KOORDINATEN - Anpassen!
setblock -20 99 15 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_COMBATGOAL -20 99 15

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_combat_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Combat Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
