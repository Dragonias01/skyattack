# ============================================================================
# GOAL: Dungeon - Reward
# Datei: sa:goals/dungeon_goal/reward
# Version: 1.21.11
# ============================================================================

# ── Entities entfernen ────────────────────────────────────────────────────
    kill @e[type=interaction,tag=goal_dungeon]
    kill @e[type=text_display,tag=display_dungeon]
    kill @e[type=block_display,tag=block_dungeon]

setblock 22 99 0 minecraft:air
fill 23 99 1 23 102 -1 air

# ── Struktur platzieren ───────────────────────────────────────────────────
    place template sa:dungeon_room 24 97 -8

# ── Goal abgeschlossen markieren ──────────────────────────────────────────
    scoreboard players set server hub_dungeon_done 1
    data modify storage sa:goal goal_dungeon set value {"completed":true}
    # ── Ankuendigung ──────────────────────────────────────────────────────────
        title @a title [{"text":"Dungeon Goal Completed!","color":"green"}]
        execute as @a run playsound ui.toast.challenge_complete player @a
        title @a subtitle [{"text":"WIP","color":"gray"}]

    function sa:setup/hub/dungeon
    function sa:npc/dungeon_master

