# ============================================================================
# DUNGEON 1 - TICK (läuft jede Sekunde via updates.mcfunction)
# ============================================================================

# Timer runterzählen wenn Dungeon offen oder aktiv
    execute if score server dg1_state matches 1..4 run scoreboard players remove server dg1_timer 1
    # Wenn Timer abgelaufen -> Close + Cleanup
        execute if score server dg1_state matches 1..4 if score server dg1_timer matches ..0 run function sa:dungeon/floor1/dungeon_1/close

    # Player counts updaten
        execute if score server dg1_state matches 1..4 run function sa:dungeon/internal/dsp_updates with storage sa:config dungeon.floor1.dungeon1

    # Displays
        execute if score server dg1_state matches 1..4 run function sa:dungeon/internal/sidebar/update_time with storage sa:config dungeon.floor1.dungeon1

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

        # überprüfen anscheinend nicht vorhanden
        #function sa:dungeon/floor1/dungeon_1/boss/tick

        # ============================================================================
        # DUNGEON 2 - TICK (läuft jede Sekunde via updates.mcfunction)
        # ============================================================================

        # Timer runterzählen wenn Dungeon offen oder aktiv
            execute if score server dg2_state matches 1..4 run scoreboard players remove server dg2_timer 1
            # Wenn Timer abgelaufen -> Close + Cleanup
                execute if score server dg2_state matches 1..4 if score server dg2_timer matches ..0 run function sa:dungeon/floor1/dungeon_2/close

            # Player counts updaten
                execute if score server dg2_state matches 1..4 run function sa:dungeon/internal/dsp_updates with storage sa:config dungeon.floor1.dungeon2

            # Displays
                execute if score server dg2_state matches 1..4 run function sa:dungeon/internal/sidebar/update_time with storage sa:config dungeon.floor1.dungeon2

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


        # ============================================================================
        # DUNGEON 3 - TICK (läuft jede Sekunde via updates.mcfunction)
        # ============================================================================

        # Timer runterzählen wenn Dungeon offen oder aktiv
            execute if score server dg3_state matches 1..4 run scoreboard players remove server dg3_timer 1
            # Wenn Timer abgelaufen -> Close + Cleanup
                execute if score server dg3_state matches 1..4 if score server dg3_timer matches ..0 run function sa:dungeon/floor2/dungeon_3/close

            # Player counts updaten
                execute if score server dg3_state matches 1..4 run function sa:dungeon/internal/dsp_updates with storage sa:config dungeon.floor2.dungeon3

            # Displays
                execute if score server dg3_state matches 1..4 run function sa:dungeon/internal/sidebar/update_time with storage sa:config dungeon.floor2.dungeon3


        # tags zurücksetzen wenn Spieler nicht mehr in der Welt ist (z.B. durch /spawn)
            tag @a remove dg3_in_dungeon
            tag @a remove dg3_in_boss
            tag @a remove dg3_player
            # in dungeon tag setzten
                tag @a[predicate=sa:indungeon3] add dg3_in_dungeon

            # in boss tag setzten
                tag @a[predicate=sa:inboss2] add dg3_in_boss

            # player tag setzten
                tag @a[predicate=sa:indungeon3] add dg3_player
                tag @a[predicate=sa:inboss2] add dg3_player

            # ============================================================================
            # DUNGEON 4 - TICK (läuft jede Sekunde via updates.mcfunction)
            # ============================================================================

            # Timer runterzählen wenn Dungeon offen oder aktiv
                execute if score server dg4_state matches 1..4 run scoreboard players remove server dg4_timer 1
                # Wenn Timer abgelaufen -> Close + Cleanup
                    execute if score server dg4_state matches 1..4 if score server dg4_timer matches ..0 run function sa:dungeon/floor2/dungeon_4/close

                # Player counts updaten
                    execute if score server dg4_state matches 1..4 run function sa:dungeon/internal/dsp_updates with storage sa:config dungeon.floor2.dungeon4

                # Displays
                    execute if score server dg4_state matches 1..4 run function sa:dungeon/internal/sidebar/update_time with storage sa:config dungeon.floor2.dungeon4

                # tags zurücksetzen wenn Spieler nicht mehr in der Welt ist (z.B. durch /spawn)
                    tag @a remove dg4_in_dungeon
                    tag @a remove dg4_in_boss
                    tag @a remove dg4_player
                    # in dungeon tag setzten
                        tag @a[predicate=sa:indungeon4] add dg4_in_dungeon

                    # in boss tag setzten
                        tag @a[predicate=sa:inboss2] add dg4_in_boss

                    # player tag setzten
                        tag @a[predicate=sa:indungeon4] add dg4_player
                        tag @a[predicate=sa:inboss2] add dg4_player
