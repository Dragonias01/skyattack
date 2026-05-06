# ============================================================================
# DUNGEON 1 - TICK (läuft jede Sekunde via updates.mcfunction)
# ============================================================================

# Timer runterzählen wenn Dungeon offen oder aktiv
    execute if score server dg1_state matches 1..4 run scoreboard players remove server dg1_timer 1
    # Wenn Timer abgelaufen -> Close + Cleanup
        execute if score server dg1_state matches 1..4 if score server dg1_timer matches ..0 run function sa:dungeon/dungeon_1/close

    # Player counts updaten
        execute if score server dg1_state matches 1..4 run function sa:dungeon/dungeon_1/update_counts

    # Portal Displays updaten
        function sa:dungeon/dungeon_1/update_display

    # Dungeon Eintritt nur wenn Spieler noch NICHT getaggt ist
        execute if score server dg1_state matches 1..4 as @a[tag=!dg1_in_dungeon,tag=transfer_to_dungeon1] in sa:dungeon1 run function sa:dungeon/dungeon_1/on_enter_dungeon

    # Boss Eintritt nur wenn Spieler noch NICHT getaggt ist
        execute if score server dg1_state matches 2..4 as @a[tag=!dg1_in_boss,tag=transfer_to_dungeon1_arena] in sa:dungeon_arena_1 run function sa:dungeon/dungeon_1/on_enter_boss


# Boss tick nur wenn Boss alive
    execute if score server dg1_boss_state matches 1 run function sa:dungeon/dungeon_1/boss/tick


# Displays
    execute if score server dg1_state matches 1..4 run function sa:dungeon/dungeon_1/sidebar/update_time

# tags zurücksetzen wenn Spieler nicht mehr in der Welt ist (z.B. durch /spawn)
    tag @a remove dg1_in_dungeon
    tag @a remove dg1_in_boss
    tag @a remove dg1_player
    # in dungeon tag setzten
        tag @a[predicate=sa:indungeon1] add dg1_in_dungeon

    # in boss tag setzten
        tag @a[predicate=sa:inboss1] add dg1_in_boss

    # player tag setzten
        tag @a[predicate=sa:indungeon1] add dg1_player
        tag @a[predicate=sa:inboss1] add dg1_player






