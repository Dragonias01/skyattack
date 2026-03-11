# ============================================================================
# LEADERBOARD TICK - Steuerung aller Bestenlisten
# Datei: sa:leaderboard/tick
# Version: 1.21.11
#
# Wird aufgerufen von: sa:tick (jeden Tick)
# Nutzt lb_tick_counter um Updates zu drosseln (alle 200 Ticks ≈ 10 Sek.)
#
# ERWEITERUNG: Neue Bestenliste hinzufügen:
#   execute if score server lb_tick matches 200 run function sa:leaderboard/mining/update
#   (oder anderen Tick-Offset nutzen damit nicht alles gleichzeitig läuft)
# ============================================================================

scoreboard players add server lb_tick 1

# ── Logging Bestenliste: Update alle 200 Ticks ────────────────────────────
execute if score server lb_tick matches 20.. run function sa:leaderboard/logging/update

# ── Counter zurücksetzen ──────────────────────────────────────────────────
execute if score server lb_tick matches 20.. run scoreboard players set server lb_tick 0

# ── ERWEITERUNG: Weitere Leaderboards mit Offset ──────────────────────────
# Beispiel Mining (läuft bei Tick 100, also versetzt zu Logging):
# execute if score server lb_tick matches 100 run function sa:leaderboard/mining/update
# execute if score server lb_tick matches 100 run scoreboard players set server lb_tick_mining 0
