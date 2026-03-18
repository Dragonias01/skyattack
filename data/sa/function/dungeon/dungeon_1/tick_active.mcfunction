# ============================================================================
# DUNGEON 1 - TICK ACTIVE
# Läuft jede Sekunde solange der Dungeon aktiv ist.
# ============================================================================

# Timer dekrementieren
scoreboard players remove server dungeon_1_timer 1

# Spieleranzahl im Dungeon zählen und speichern
scoreboard players set server dungeon_1_players 0
execute in sa:dungeon1 as @a run scoreboard players add server dungeon_1_players 1

# ── Dungeon HUD Team-Zuweisung ─────────────────────────────────────────
# Alle Spieler aus dg_players entfernen, dann Spieler in Dungeon wieder hinzufügen.
# So verlassen Spieler die den Dungeon verlassen automatisch das HUD.
team empty dg_players
execute in sa:dungeon1 as @a run team join dg_players @s

# ── Dungeon HUD Pseudo-Spieler aktualisieren ───────────────────────────
# Dungeon-Name (Zeile 1) - statisch, Wert 4 = höchste Position
scoreboard players set DG_Name dungeon_hud 4

# Spieleranzahl (Zeile 2) - Wert 3
execute store result score DG_Spieler dungeon_hud run scoreboard players get server dungeon_1_players

# Timer-Zeile (Wert 2) - Suffix wird per calc_time gesetzt
scoreboard players set DG_Timer dungeon_hud 2

# Trennlinie (Wert 1) immer sichtbar
scoreboard players set DG_Sep dungeon_hud 1

# Display und Timer-Suffix aktualisieren
function sa:dungeon/dungeon_1/update_display

# Timer abgelaufen → Dungeon beenden
execute if score server dungeon_1_timer matches ..0 run function sa:dungeon/dungeon_1/end
