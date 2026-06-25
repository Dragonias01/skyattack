# ============================================================================
# DUNGEON 1 - TICK (läuft jede Sekunde via updates.mcfunction)
# ============================================================================

# Timer runterzählen wenn Dungeon offen oder aktiv
    execute if score server dg2_state matches 1..4 run scoreboard players remove server dg2_timer 1
    # Wenn Timer abgelaufen -> Close + Cleanup
        execute if score server dg2_state matches 1..4 if score server dg2_timer matches ..0 run function sa:dungeon/floor1/dungeon_2/close

    # Player counts updaten
        execute if score server dg2_state matches 1..4 run function sa:dungeon/floor1/dungeon_2/update_counts

    # Portal Displays updaten
        function sa:dungeon/floor1/dungeon_2/update_display

    # Dungeon Eintritt nur wenn Spieler noch NICHT getaggt ist
        execute if score server dg2_state matches 1..4 as @a[tag=!dg2_in_dungeon,tag=transfer_to_dungeon2] in sa:dungeon2 run function sa:dungeon/floor1/dungeon_2/on_enter_dungeon

    # Boss Eintritt nur wenn Spieler noch NICHT getaggt ist
        execute if score server dg2_state matches 2..4 as @a[tag=!dg2_in_boss,tag=transfer_to_dungeon2_arena] in sa:dungeon_arena_1 run function sa:dungeon/floor1/dungeon_2/on_enter_boss


# Boss tick nur wenn Boss alive
# überprüfen weil nicht vorahdnen
#execute if score server dg2_boss_state matches 1 run function sa:dungeon/floor1/dungeon_2/boss/tick


# Displays
    execute if score server dg2_state matches 1..4 run function sa:dungeon/floor1/dungeon_2/sidebar/update_time

# tags zurücksetzen wenn Spieler nicht mehr in der Welt ist (z.B. durch /spawn)
    tag @a remove dg2_in_dungeon
    tag @a remove dg2_in_boss
    tag @a remove dg2_player
    # in dungeon tag setzten
        tag @a[predicate=sa:indungeon2] add dg2_in_dungeon

    # in boss tag setzten
        tag @a[predicate=sa:inboss1] add dg2_in_boss

    # player tag setzten
        tag @a[predicate=sa:indungeon2] add dg2_player
        tag @a[predicate=sa:inboss1] add dg2_player

    # überprüfen anscheinend nicht vorhanden
    #function sa:dungeon/floor1/dungeon_2/boss/tick


