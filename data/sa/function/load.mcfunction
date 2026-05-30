# ============================================================================
# LOAD FUNCTION - Datapack Initialisierung
# Datei: sa:load
# Version: 1.21.11
# ============================================================================
# Diese Datei orchestriert NUR den Startablauf.
# Keine Scoreboard-Logik, keine Spieler-Befehle.
# ============================================================================

# ── Phase 0: Konstanten (immer, kein Guard) ───────────────────────────────
    function sa:setup/constants

# ── Phase 1: Scoreboards registrieren (immer, idempotent) ─────────────────
    function sa:setup/scoreboards

# ── Phase 2: Gamerule ─────────────────────────────────────────────────────
    gamerule show_death_messages false

# ── Phase 3: Server-Einmalsetup Overworld (Guard: setup1) ─────────────────
    execute unless score server setup1 matches 1 run function sa:setup/overworld/main

# ── Phase 4: Overworld Goals (Guard: goals_initialized) ───────────────────
    execute unless score server goals_initialized matches 1 run function sa:setup/overworld/goals

# ── Phase 5: Skill-Initialisierung (je ein Guard pro Skill) ───────────────
    execute unless score server fishing_initialized matches 1 run function sa:setup/skills/fishing
    execute unless score server mining_initialized matches 1 run function sa:setup/skills/mining
    execute unless score server farming_initialized matches 1 run function sa:setup/skills/farming
    execute unless score server logging_initialized matches 1 run function sa:setup/skills/logging
    execute unless score server combat_initialized matches 1 run function sa:setup/skills/combat

# ── Phase 6: Hub Goals (Guard: hub_goals_initialized) ─────────────────────
    execute unless score server hub_goals_initialized matches 1 run function sa:setup/hub/goals

# ── Phase 7: Leaderboard (Guard: lb_initialized) ──────────────────────────
    execute unless score server lb_initialized matches 1 run function sa:leaderboard/setup

# ── Phase 8: Scoreboard-Sidebar und Teams (Guard: scoreboard_teams_init) ──
    execute unless score server scoreboard_teams_init matches 1 run function sa:setup/scoreboard/setup_scoreboard

# ── Phase 9: Dungeon System (immer – Funktion selbst ist idempotent) ───────
    function sa:dungeon/dungeon_1/load

# ── Phase 10: NPCs (immer – kill+respawn Pattern) ─────────────────────────
    function sa:setup/npc

# ── Phase 11: Tool-Learn Scores für neue Spieler initialisieren ───────────
    scoreboard players add @a ERod_learn 0
    scoreboard players add @a ESword_learn 0
    scoreboard players add @a EAxe_learn 0
    scoreboard players add @a EPickaxe_learn 0
    scoreboard players add @a EHoe_learn 0
