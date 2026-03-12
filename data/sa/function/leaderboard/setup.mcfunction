# ============================================================================
# LEADERBOARD SETUP - Einmalige Initialisierung
# Datei: sa:leaderboard/setup
# Version: 1.21.11
#
# Wird aufgerufen von: load (execute unless score server lb_initialized matches 1)
# Spawnt alle Leaderboard-Entities.
#
# ERWEITERUNG: Neue Bestenliste hier eintragen:
#   execute in sa:hub run function sa:setup/hub/leaderboard/mining
# ============================================================================

# ── Logging Bestenliste spawnen ───────────────────────────────────────────
execute in sa:hub run function sa:setup/hub/leaderboard/logging

# ── Als initialisiert markieren ───────────────────────────────────────────
scoreboard players set server lb_initialized 1