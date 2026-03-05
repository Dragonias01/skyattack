# ============================================================================
# GOAL: Mining Raum - Reward
# Datei: sa:goals/mining_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_mining]
kill @e[type=text_display,tag=display_mining]
kill @e[type=block_display,tag=block_mining]

# PLATZHALTER KOORDINATEN - Anpassen!
setblock -20 99 0 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
# place template sa:TEMPLATE_MINING_GOAL -20 99 0

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
# TODO: SERVER PROGRESS SYSTEM - Durch Fortschritts-Event ersetzen
scoreboard players set server hub_mining_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Mining Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]
