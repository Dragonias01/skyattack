# ============================================================================
# GOAL: Mining Raum - Reward
# Datei: sa:goals/mining_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
kill @e[type=interaction,tag=goal_mining]
kill @e[type=text_display,tag=display_mining]
kill @e[type=block_display,tag=block_mining]

setblock 10 99 -35 minecraft:air

# ── Struktur platzieren ───────────────────────────────────────────────────
# TODO: Struktur-Template einsetzen
place template sa:hub/mining 12 96 -41
fill 11 99 -36 11 102 -34 minecraft:air

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
scoreboard players set server hub_mining_done 1

# ── Ankuendigung ──────────────────────────────────────────────────────────
title @a title [{"text":"Mining Room Goal Completed!","color":"green"}]
execute as @a run playsound ui.toast.challenge_complete player @a
title @a subtitle [{"text":"WIP","color":"gray"}]

# ── Mining Merchant spawnen ───────────────────────────────────────────────
# (Verkauft Double Compressed Stone – wird für das Fishing Goal benötigt)
function sa:npc/villager/mining_merchant

# ── Fishing Goal spawnen (nächste Stufe der Kette) ────────────────────────
execute in sa:hub run function sa:setup/hub/goal_setup/fishing_goal
