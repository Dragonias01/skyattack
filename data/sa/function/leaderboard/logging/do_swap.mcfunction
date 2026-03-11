# ============================================================================
# LEADERBOARD: Swap ausführen
# Datei: sa:leaderboard/logging/do_swap
# Version: 1.21.11
#
# Tauscht Score und Namen zwischen Slot A und Slot B.
# Wird nur aufgerufen wenn Score(A) < Score(B) bestätigt.
# ============================================================================

# ============================================================================
# LEADERBOARD: Swap ausführen
# Datei: sa:leaderboard/logging/do_swap
# Version: 1.21.11
#
# Tauscht Score (lb_log_score) zwischen Slot A und B.
# Tauscht gleichzeitig die lb_log_name-Werte:
#   Der Spieler in Slot A bekommt den Slot-Wert von B und umgekehrt.
# ============================================================================

# ── Score tauschen via Temp ────────────────────────────────────────────────
$scoreboard players operation lb_swap_tmp lb_log_score = $(a) lb_log_score
$scoreboard players operation $(a) lb_log_score = $(b) lb_log_score
$scoreboard players operation $(b) lb_log_score = lb_swap_tmp lb_log_score

# ── lb_log_name Werte tauschen ────────────────────────────────────────────
# Hole die Slot-Nummern aus den Fake-Player-Namen ($(na) und $(nb) sind z.B. "1" und "2")
# Setze alle Spieler die Slot-Nummer $(na) haben auf $(nb) und umgekehrt
# Zwischenwert nötig um Kollision zu vermeiden → temp Wert 99
$scoreboard players set @a[scores={lb_log_name=$(na)}] lb_log_name 99
$scoreboard players set @a[scores={lb_log_name=$(nb)}] lb_log_name $(na)
$scoreboard players set @a[scores={lb_log_name=99}]   lb_log_name $(nb)
