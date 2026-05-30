# ============================================================================
# SERVER KONSTANTEN
# Datei: sa:setup/constants
# Version: 1.21.11
# Wird von load.mcfunction als ERSTE Funktion aufgerufen (immer, kein Guard).
# Enthält alle server-seitigen Konstanten an einer einzigen Stelle.
# ============================================================================

# ── Allgemeine Zahlen ─────────────────────────────────────────────────────
    scoreboard objectives add one dummy
    scoreboard objectives add two dummy
    scoreboard objectives add five dummy
    scoreboard players set server one 1
    scoreboard players set server two 2
    scoreboard players set server five 5

# ── Mathematik ────────────────────────────────────────────────────────────
    scoreboard objectives add const_100 dummy
    scoreboard objectives add const_10 dummy
    scoreboard players set server const_100 100
    scoreboard players set server const_10 10

# ── Maximales Skill-Level (einzige Stelle!) ───────────────────────────────
    scoreboard objectives add max_level dummy
    scoreboard players set server max_level 1000

# ── Level-Skalierung ──────────────────────────────────────────────────────
    scoreboard objectives add scale_fast_num dummy
    scoreboard objectives add scale_fast_den dummy
    scoreboard objectives add scale_mid_num dummy
    scoreboard objectives add scale_mid_den dummy
    scoreboard objectives add scale_slow_num dummy
    scoreboard objectives add scale_slow_den dummy
    scoreboard players set server scale_fast_num 15
    scoreboard players set server scale_fast_den 10
    scoreboard players set server scale_mid_num 11
    scoreboard players set server scale_mid_den 10
    scoreboard players set server scale_slow_num 101
    scoreboard players set server scale_slow_den 100

# ── Dungeon Timer-Konstante ───────────────────────────────────────────────
    scoreboard objectives add d1_const_60 dummy
    scoreboard players set server d1_const_60 60

# ── Event-Boost Defaults (add, damit bestehende Werte nicht überschrieben) ──
    scoreboard objectives add eventboost_combat dummy
    scoreboard objectives add eventboost_logging dummy
    scoreboard objectives add eventboost_mining dummy
    scoreboard objectives add eventboost_farming dummy
    scoreboard objectives add eventboost_fishing dummy
    scoreboard players add server eventboost_combat 0
    scoreboard players add server eventboost_logging 0
    scoreboard players add server eventboost_mining 0
    scoreboard players add server eventboost_farming 0
    scoreboard players add server eventboost_fishing 0
