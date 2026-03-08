================================================================================
                    SKYBLOCK TODO-LISTE - JAVA 1.21.11
         Format: Item | Schwierigkeit | Ziel | Dependency | Notiz | Status

         Legende:
           ☐  = Offen / Noch nicht implementiert
           X  = Implementiert / Erledigt
           WT = Lösbar via Wandering Trader
================================================================================

- Goal System überarbeiten 
- inseln und deren Spawn näher an den spawn verlegen und mehr inseln spawnen lassen.
- Villager hinzufügen
- Dungeon Hinzufügen
- Hub ausbauen
- hub goals Hinzufügen

Goals:
[Progress unbinded]
- goal_ship (Ressource: Mob Mesh 25xpro Spieler) [Schaltet dass Flugschiff Frei mit dem man in den Hub kommt] pos: -6 102 10 in minecraft:overworld     X
- Levelbaum_goal (ressource: Level 1000xpro Spieler) [Schaltet den LEvelbaum Frei] pos: 0 99 10       X
- Dungeon_goal (ressource: Mob Mesh 50xpro Spieler) [Schaltet den Dungeon Hub frei] pos: 13 99 5 in sa:hub      X
- skillrooms_goal (ressource: Compressed_stone 200xpro Spieler) [Reward: Schaltet einen verteiler Raum für die Skills frei und den Raum für Logging.] pos: 0 99 -22 in sa:hub     X
[progress binded]
- Mining_goal (ressource: double_compressed_log 100xpro Spieler) [Schaltet den Mining Raum Frei, Dependencie: Skillrooms goal]      X
- Farming_goal (ressource: double_compressed_stone 100xpro Spieler) [Schaltet den Farming Raum Frei, Dependencie: Mining goal]
- Fishing_goal (ressource: double_compressed_biomass 100xpro Spieler) [Schaltet den Fishing Raum Frei, Dependencie: Farming goal]
- Fishing_pond_goal (ressource: Experience 1000xpro Spieler) [Schaltet den Fishing Pond Frei, Dependencie: Fishing_goal] pos: 0 99 22 in sa:hub       X
- Combatgoal (ressource: double_compressed_fish 100xpro Spieler) [Schaltet den Combat Raum Frei, Dependencie: Fishing goal]

- Schmied_goal (ressource: ?) [Schaltet den Schmied Frei, Dependencie: Skillrooms goal] pos: -11 99 3 in sa:hub
- Techniker_goal (ressource: ?) [Schaltet den Techniker Frei, Dependencie: Skillrooms goal und, Dungeon goal] pos: 3 99 -11 in sa:hub




